/*
 *  Interleaved2of5Renderer.java
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
 *  A reusable class capable of rendering an Interleaved 2 of 5 barcode
 *  symbology. This renderer produces an image of the encoded data that
 *  looks like:
 *
 *  <p>
 *     <center><img src="doc-files/i25-1.jpg" border="0"></center>
 *  </p>
 *
 *  @author Daniel Gon�alves
 *  @version $Id: Interleaved2of5Renderer.java,v 1.1 2005/11/18 14:44:19 rawfosgod Exp $
 *
 *  @see Interleaved2of5Encoder
 *  @see Interleaved2of5Pattern
 */
public class Interleaved2of5Renderer extends AbstractBarCodeRenderer {

      private static final Font defaultFont = new Font("sans-serif", Font.PLAIN, 7);

      /**
       *  Constructs a new barcode renderer instance for the
       *  Interleaved 2 of 5 symbology.
       */
      public Interleaved2of5Renderer() {
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

            if (!(pattern instanceof Interleaved2of5Pattern))
                  throw new IncompatibleBarCodePatternException("Interleaved 2 of 5 pattern is required.");

            Interleaved2of5Pattern p = (Interleaved2of5Pattern)pattern;
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

            int fontX  = 0;
            int fontY  = 0;

            // compute the width needed for the bars
            iter = p.getIterator();
            while (iter.hasMoreBars()) {
                  BarCodeBar bar = iter.nextBar();
                  width += (bar.getWide() * getNarrowElementWidth());
            }

            // compute the height (considering the font object, if it's the case)
            height = getHeight() + (getYMargin() * 2);

            // prepare the buffered image object
            GraphicsConfiguration gc = configureGraphics();
            BufferedImage image = gc.createCompatibleImage(width, height,
                                            java.awt.Transparency.OPAQUE);

            Graphics2D g = image.createGraphics();

            if (usingFont != null) {

                  // apply the font and re-calculate the image dimensions

                  g.setFont(usingFont);

                  FontMetrics fm = g.getFontMetrics();

                  int fontW = fm.stringWidth(pattern.getData());

                  fontY = getHeight() + getYMargin() + fm.getAscent();
                  fontX = (int)((width - fontW) / 2);

                  height = height + fm.getHeight();
                  if (fontW > width) width = fontW;

                  image = gc.createCompatibleImage(width, height,
                                          java.awt.Transparency.OPAQUE);

                  g = image.createGraphics();
            }

            //
            // rendering...
            //

            // paints the background
            g.setColor(getBackgroundColor());
            g.fillRect(0, 0, width, height);

            // render the barcode
            int h = getHeight();
            int x = getLeadingQuietZoneWidth() - 1;
            int y = getYMargin();

            iter = p.getIterator();

            while (iter.hasMoreBars()) {

                  BarCodeBar bar = iter.nextBar();

                  int w = (bar.getWide() * getNarrowElementWidth());

                  if (bar.isBar()) g.setColor(getDarkBarColor());
                  else             g.setColor(getLightBarColor());

                  g.fillRect(x, y, w, h);
                  x += w;

            }

            // render the label
            if (usingFont != null) {
                  g.setColor(getLabelColor());
                  g.drawString(p.getData(), fontX, fontY);
            }

            // done!

            return image;
      }

} // {{{ Interleaved2of5Renderer }}}
