/*
 *  Ean13Renderer.java
 *
 *  BrazilUtils API Project
 *
 *  This library is free software; you can redistribute it and/or
 *  modify it under the terms of the GNU Lesser General Public
 *  License as published by the Free Software Foundation; either
 *  version 2.1 of the License, or (at your option) any later version.
 *
 *  This library is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 *  Lesser General Public License for more details.
 *
 *  You should have received a copy of the GNU Lesser General Public
 *  License along with this library; if not, write to the Free Software
 *  Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA
 */

package org.brazilutils.barcode.impl;

import java.awt.Color;
import java.awt.Font;
import java.awt.FontMetrics;
import java.awt.Graphics2D;
import java.awt.GraphicsConfiguration;
import java.awt.geom.Rectangle2D;
import java.awt.image.BufferedImage;

import org.brazilutils.barcode.AbstractBarCodeRenderer;
import org.brazilutils.barcode.BarCodeBar;
import org.brazilutils.barcode.BarCodePattern;
import org.brazilutils.barcode.BinaryPatternIterator;
import org.brazilutils.barcode.IncompatibleBarCodePatternException;

/**
 *  A reusable class capable of rendering an EAN-13 barcode symbology.
 *
 *  @author Daniel Gon�alves
 *  @version $Id: Ean13Renderer.java,v 1.1 2005/11/18 14:44:18 rawfosgod Exp $
 *
 *  @see Ean13Encoder
 *  @see Ean13Pattern
 */
public class Ean13Renderer extends AbstractBarCodeRenderer {

      private static final Font defaultFont = new Font("sans-serif", Font.PLAIN, 7);

      /**
       *  Constructs a new barcode renderer instance for the EAN-13 symbology.
       */
      public Ean13Renderer() {
            super();
      }

      /** {@inheritDoc} */
      public BufferedImage render(BarCodePattern pattern) {
            return render(pattern, false, null);
      }

      /** {@inheritDoc} */
      public BufferedImage render(BarCodePattern pattern, boolean label) {
            return render(pattern, label, defaultFont);
      }

      /** {@inheritDoc} */
      public BufferedImage render(BarCodePattern pattern, boolean label, Font font) {

            if (!(pattern instanceof Ean13Pattern))
                  throw new IncompatibleBarCodePatternException("EAN-13 pattern is required.");

            Ean13Pattern p = (Ean13Pattern)pattern;
            BinaryPatternIterator iter = null;

            Font usingFont = null;
            if (label) {
                  if (font == null) usingFont = defaultFont;
                  else usingFont = font;
            }

            //
            // identifies the width and height required to render the barcode...
            //
            int height = 0;
            int width  = getLeadingQuietZoneWidth() +
                         getTrailingQuietZoneWidth();

            int fontLeftX  = 0;
            int fontRightX = 0;
            int fontFirstY = 0;
            int fontFirstX = 0;

            int fontY  = 0;

            int dataHeight = 0;
            int fontHeight = 0;
            int fontTop    = 0;

            // compute the width needed for the bars
            iter = p.getIterator();
            while (iter.hasMoreBars()) {
                  BarCodeBar bar = iter.nextBar();
                  width += (bar.getWide() * getNarrowElementWidth());
            }


            // compute the partial height
            height = getHeight() + (getYMargin() * 2);

            int h = getHeight();
            int x = getLeadingQuietZoneWidth() - 1;
            int y = getYMargin();

            // prepare the buffered image object
            GraphicsConfiguration gc = configureGraphics();
            BufferedImage image = gc.createCompatibleImage(width, height,
                                            java.awt.Transparency.OPAQUE);

            Graphics2D g = image.createGraphics();

            if (usingFont != null) {

                  g.setFont(usingFont);

                  FontMetrics fm = g.getFontMetrics();

                  fontHeight = fm.getAscent() + fm.getDescent();

                  // increase the width by the first system digit width
                  int first = fm.stringWidth(pattern.getData().substring(0, 1));
                  width = width + first;
                  x += first;

                  // compute the height for data bars
                  dataHeight = getHeight() - fm.getAscent();
                  fontTop    = (getYMargin() + dataHeight);

                  // compute the width needed for the left-hand bars
                  // including the left guard bars and center guard bars
                  // (need to find the X position for label at right-hand bars)
                  int leftWidth = 0;
                  BinaryPatternIterator bpi =
                        new BinaryPatternIterator(p.getPattern().substring(0, 50));
                            // 50 means:
                            //    3 is by the left guard bars;
                            //   42 is by the 6 first digits (7 in length each);
                            //    5 is by the center guard bars;

                  while (bpi.hasMoreBars())
                        leftWidth += (bpi.nextBar().getWide() * getNarrowElementWidth());

                  // compute the label positions
                  fontY      = dataHeight + getYMargin() + fm.getAscent();
                  fontLeftX  = x + (getNarrowElementWidth() * 3);
                  fontRightX = x + leftWidth;
                  fontFirstX = getLeadingQuietZoneWidth() - 1;

                  image = gc.createCompatibleImage(width, height,
                                          java.awt.Transparency.OPAQUE);

                  g = image.createGraphics();
            }
            else {
                  // not using label...
                  // compute the height of the left/right-hand bars as
                  // 10 percent less of the border and center guards
                  dataHeight = (int)(getHeight() - (getHeight() * 0.1));
            }


            //
            // rendering...
            //

            // paints the background
            g.setColor(getBackgroundColor());
            g.fillRect(0, 0, width, height);

            // render the left guard bars...
            iter = new BinaryPatternIterator(p.getPattern().substring(0, 3));
            while (iter.hasMoreBars()) {
                  BarCodeBar bar = iter.nextBar();
                  int w = (bar.getWide() * getNarrowElementWidth());

                  if (bar.isBar()) g.setColor(getDarkBarColor());
                  else             g.setColor(getLightBarColor());

                  g.fillRect(x, y, w, getHeight());
                  x += w;
            }

            // render the left-hand data
            iter = new BinaryPatternIterator(p.getPattern().substring(3, 45));
            while (iter.hasMoreBars()) {
                  BarCodeBar bar = iter.nextBar();
                  int w = (bar.getWide() * getNarrowElementWidth());

                  if (bar.isBar()) g.setColor(getDarkBarColor());
                  else             g.setColor(getLightBarColor());

                  g.fillRect(x, y, w, dataHeight);
                  x += w;
            }

            // render the center guard bars
            iter = new BinaryPatternIterator(p.getPattern().substring(45, 50));
            while (iter.hasMoreBars()) {
                  BarCodeBar bar = iter.nextBar();
                  int w = (bar.getWide() * getNarrowElementWidth());

                  if (bar.isBar()) g.setColor(getDarkBarColor());
                  else             g.setColor(getLightBarColor());

                  g.fillRect(x, y, w, getHeight());
                  x += w;
            }

            // render the right-hand data
            iter = new BinaryPatternIterator(p.getPattern().substring(50, 92));
            while (iter.hasMoreBars()) {
                  BarCodeBar bar = iter.nextBar();
                  int w = (bar.getWide() * getNarrowElementWidth());

                  if (bar.isBar()) g.setColor(getDarkBarColor());
                  else             g.setColor(getLightBarColor());

                  g.fillRect(x, y, w, dataHeight);
                  x += w;
            }

            // render the right guard bars
            iter = new BinaryPatternIterator(p.getPattern().substring(92));
            while (iter.hasMoreBars()) {
                  BarCodeBar bar = iter.nextBar();
                  int w = (bar.getWide() * getNarrowElementWidth());

                  if (bar.isBar()) g.setColor(getDarkBarColor());
                  else             g.setColor(getLightBarColor());

                  g.fillRect(x, y, w, getHeight());
                  x += w;
            }


            // render the label
            if (usingFont != null) {

                  String firstDigit = p.getData().substring(0, 1);
                  String leftData   = p.getData().substring(1, 7);
                  String rightData  = p.getData().substring(7);

                  g.setColor(getLabelColor());

                  g.drawString(firstDigit, fontFirstX, fontY - 4);
                  g.drawString(leftData, fontLeftX,  fontY);
                  g.drawString(rightData, fontRightX, fontY);

            }

            // done!

            return image;
      }

} // {{{ Ean13Renderer }}}
