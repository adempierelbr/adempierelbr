/*
 *  BarCodeRenderer.java
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

package org.brazilutils.barcode;

import java.awt.Color;
import java.awt.Font;
import java.awt.image.BufferedImage;

/**
 *  Classes capable of rendering barcode patterns must implement this
 *  interface. The main method is <tt>render(BarCodePattern)</tt> wich will
 *  draw the barcode image into a <tt>java.awt.image.BufferedImage</tt>.
 *
 *  <p><strong>NOTE</strong> This interface does not describe a method wich
 *  can be used to adjust the width for the widest bar, but only the width for
 *  the narrowest element (thin bars). Thus, the concrete renderer class
 *  should compute the width for the widest elements, since some barcodes
 *  can make use of three or more different bar widths.</p>
 *
 *  @author Daniel Gonçalves
 *  @version $Id: BarCodeRenderer.java,v 1.1 2005/11/18 14:44:16 rawfosgod Exp $
 *
 *  @see org.brazilutils.barcode.BarCodeEncoder
 *  @see org.brazilutils.barcode.BarCodePattern
 */
public interface BarCodeRenderer {

      /**
       *  Render the barcode pattern into a <tt>java.awt.image.BufferedImage</tt>.
       *  No data label will be rendered within this method.
       *
       *  @param pattern the barcode pattern returned by a
       *         {@link BarCodeEncoder#encode(String) encoder}.
       *
       *  @throws ImcompatibleBarCodePatternException if the pattern is
       *          incompatible with the barcode renderer implementation.
       */
      public BufferedImage render(BarCodePattern pattern);

      /**
       *  Render the barcode pattern into a <tt>java.awt.image.BufferedImage</tt>.
       *  A data label may be rendered with a default font.
       *
       *  @param pattern the barcode pattern returned by a
       *         {@link BarCodeEncoder#encode(String) encoder}.
       *
       *  @param label instructs the renderer to render a data label or not. The
       *         data label will be rendered below the barcode bars using a default
       *         font (XXXXXX, Xpt).
       *
       *  @throws IncompatibleBarCodePatternException if the pattern is
       *          incompatible with the barcode renderer implementation.
       */
      public BufferedImage render(BarCodePattern pattern, boolean label);

      /**
       *  Render the barcode pattern into a <tt>java.awt.image.BufferedImage</tt>.
       *  A data label may be rendered with the specied font.
       *
       *  @param pattern the barcode pattern returned by a
       *         {@link BarCodeEncoder#encode(String) encoder}.
       *
       *  @param label instructs the renderer to render a data label or not. The
       *         data label will be rendered below the barcode bars using the
       *         specified font.
       *
       *  @param labelFont the font to be used to render the data label (if the
       *         <tt>label</tt> argument is set to <tt>true</tt>). If <tt>null</tt>,
       *         a default font (XXXXXX, Xpt) will be used.
       *
       *  @throws IncompatibleBarCodePatternException if the pattern is
       *          incompatible with the barcode renderer implementation.
       */
      public BufferedImage render(BarCodePattern pattern, boolean label, Font labelFont);

      /**
       *  Sets the width (in pixels) for the narrow element (thin bars).
       */
      public void setNarrowElementWidth(int width);

      /**
       *  Gets the width (int pixels) for the narrow element (thin bars).
       */
      public int getNarrowElementWidth();

      /**
       *  Sets the width (in pixels) for the leading quiet zone.
       */
      public void setLeadingQuietZoneWidth(int width);

      /**
       *  Gets the width (in pixels) for the leading quiet zone.
       */
      public int getLeadingQuietZoneWidth();

      /**
       *  Sets the width (in pixels) for the trailing quiet zone.
       */
      public void setTrailingQuietZoneWidth(int width);

      /**
       *  Gets the width (in pixels) for the trailing quiet zone.
       */
      public int getTrailingQuietZoneWidth();

      /**
       *  Sets the Y margin (in pixels) for both top and bottom, just
       *  above and below the bars.
       */
      public void setYMargin(int yMargin);

      /**
       *  Gets the Y margin (in pixels).
       */
      public int getYMargin();

      /**
       *  Sets the height (in pixels) for the tallest bars. Some barcodes
       *  may produce different bar heights in the same barcode (e.g. EAN-UPC).
       */
      public void setHeight(int height);

      /**
       *  Gets the height (in pixels) for the tallest bars.
       */
      public int getHeight();

      /**
       *  Sets the background color (default is white).
       */
      public void setBackgroundColor(Color backgroundColor);

      /**
       *  Gets the background color.
       */
      public Color getBackgroundColor();

      /**
       *  Sets the dark bar color (default is black).
       */
      public void setDarkBarColor(Color darkBarColor);

      /**
       *  Gets the dark bar color.
       */
      public Color getDarkBarColor();

      /**
       *  Sets the light bar color (default is white).
       */
      public void setLightBarColor(Color lightBarColor);

      /**
       *  Gets the light bar color.
       */
      public Color getLightBarColor();

      /**
       *  Sets the label text color (default is black).
       */
      public void setLabelColor(Color labelColor);

      /**
       *  Gets the label text color.
       */
      public Color getLabelColor();

} // {{{ BarCodeRenderer }}}
