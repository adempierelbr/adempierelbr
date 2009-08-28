/*
 *  AbstractBarCodeRenderer.java
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
import java.awt.GraphicsConfiguration;
import java.awt.GraphicsDevice;
import java.awt.GraphicsEnvironment;


/**
 *  Provides the minimum functionality for an abstract barcode renderer.
 *  All concrete barcode renderer classes should consider extend this class
 *  instead of only implementing {@link BarCodeRenderer}.
 *
 *  @author Daniel Gonçalves
 *  @version $Id: AbstractBarCodeRenderer.java,v 1.1 2005/11/18 14:44:13 rawfosgod Exp $
 */
public abstract class AbstractBarCodeRenderer implements BarCodeRenderer {

      public static final int DEFAULT_NARROW_ELEMENT_WIDTH = 1;

      public static final int DEFAULT_LEADING_QUIETZONE_WIDTH = 20;

      public static final int DEFAULT_TRAILING_QUIETZONE_WIDTH = 20;

      public static final int DEFAULT_Y_MARGIN = 4;

      public static final int DEFAULT_HEIGHT = 40;

      protected int narrowElementWidth;
      protected int leadingQuietZoneWidth;
      protected int trailingQuietZoneWidth;
      protected int yMargin;
      protected int height;

      protected Color backgroundColor;
      protected Color darkBarColor;
      protected Color lightBarColor;
      protected Color labelColor;

      protected GraphicsConfiguration graphicsConfiguration;

      /**
       *  Constructs a new abstract barcode renderer with default
       *  widths and height.
       */
      public AbstractBarCodeRenderer() {

            narrowElementWidth     = DEFAULT_NARROW_ELEMENT_WIDTH;
            leadingQuietZoneWidth  = DEFAULT_LEADING_QUIETZONE_WIDTH;
            trailingQuietZoneWidth = DEFAULT_TRAILING_QUIETZONE_WIDTH;

            yMargin = DEFAULT_Y_MARGIN;
            height  = DEFAULT_HEIGHT;

            backgroundColor = Color.white;
            darkBarColor    = Color.black;
            lightBarColor   = Color.white;
            labelColor      = Color.black;
      }

      /**
       *  Sets the graphics configuration object. The renderer will use this
       *  graphics configuration to create the graphics context that the barcode
       *  will be rendered.
       *
       *  @param graphicsConfiguration the graphics configuration object.
       */
      public void setGraphicsConfiguration(GraphicsConfiguration graphicsConfiguration) {
            this.graphicsConfiguration = graphicsConfiguration;
      }

      /**
       *  Gets the associated graphics configuration object. At first, the
       *  graphics configuration object is null until the first call to the method
       *  <tt>render</tt>. So, you may expect to get a null value returned by this
       *  method.
       *
       *  @return The graphics configuration object or null, if no graphics
       *          configuration was been set and/or the <tt>render</tt> method
       *          wasn't already called.
       */
      public GraphicsConfiguration getGraphicsConfiguration() {
            return graphicsConfiguration;
      }

      /**
       *  {@inheritDoc}
       *  @throws IllegalArgumentException if width is less than or equal to zero.
       */
      public void setNarrowElementWidth(int width) {
            if (width <= 0)
                  throw new IllegalArgumentException("Narrow element width <= 0.");
            narrowElementWidth = width;
      }

      /** {@inheritDoc} */
      public int getNarrowElementWidth() {
            return narrowElementWidth;
      }

      /**
       *  {@inheritDoc}
       *  @throws IllegalArgumentException if width is less than or equal to zero.
       */
      public void setLeadingQuietZoneWidth(int width) {
            if (width <= 0)
                  throw new IllegalArgumentException("Leading quiet zone width <= 0.");
            leadingQuietZoneWidth = width;
      }

      /** {@inheritDoc} */
      public int getLeadingQuietZoneWidth() {
            return leadingQuietZoneWidth;
      }

      /**
       *  {@inheritDoc}
       *  @throws IllegalArgumentException if width is less than or equal to zero.
       */
      public void setTrailingQuietZoneWidth(int width) {
            if (width <= 0)
                  throw new IllegalArgumentException("Trailing quiet zone width <= 0.");
            trailingQuietZoneWidth = width;
      }

      /** {@inheritDoc} */
      public int getTrailingQuietZoneWidth() {
            return trailingQuietZoneWidth;
      }

      /**
       *  {@inheritDoc}
       *  @throws IllegalArgumentException if margin is less than zero.
       */
      public void setYMargin(int yMargin) {
            if (yMargin < 0)
                  throw new IllegalArgumentException("Y margin value less than zero.");
            this.yMargin = yMargin;
      }

      /** {@inheritDoc} */
      public int getYMargin() {
            return yMargin;
      }

      /**
       *  {@inheritDoc}
       *  @throws IllegalArgumentException if height is less than or equal to zero.
       */
      public void setHeight(int height) {
            if (height <= 0)
                  throw new IllegalArgumentException("Height less than or equal to zero.");
            this.height = height;
      }

      /** {@inheritDoc} */
      public int getHeight() {
            return height;
      }

      /** {@inheritDoc} */
      public void setBackgroundColor(Color backgroundColor) {
            if (backgroundColor == null)
                  throw new NullPointerException("Background color cannot be null.");
            this.backgroundColor = backgroundColor;
      }

      /** {@inheritDoc} */
      public Color getBackgroundColor() {
            return backgroundColor;
      }

      /** {@inheritDoc} */
      public void setDarkBarColor(Color darkBarColor) {
            if (backgroundColor == null)
                  throw new NullPointerException("Dark bar color cannot be null.");
            this.darkBarColor = darkBarColor;
      }

      /** {@inheritDoc} */
      public Color getDarkBarColor() {
            return darkBarColor;
      }

      /** {@inheritDoc} */
      public void setLightBarColor(Color lightBarColor) {
            if (backgroundColor == null)
                  throw new NullPointerException("Light bar color cannot be null.");
            this.lightBarColor = lightBarColor;
      }

      /** {@inheritDoc} */
      public Color getLightBarColor() {
            return lightBarColor;
      }

      /** {@inheritDoc} */
      public void setLabelColor(Color labelColor) {
            if (backgroundColor == null)
                  throw new NullPointerException("Label color cannot be null.");
            this.labelColor = labelColor;
      }

      /** {@inheritDoc} */
      public Color getLabelColor() {
            return labelColor;
      }

      /**
       *  Configures the graphics configuration object. If no graphics configuration
       *  was been set by the user, then this method will create one for the default
       *  screen device based on the local graphics environment.
       *
       *  @return The configured <tt>java.awt.GraphicsConfiguration</tt> object.
       */
      protected GraphicsConfiguration configureGraphics() {
            if (graphicsConfiguration == null) {
                  GraphicsEnvironment ge = GraphicsEnvironment.getLocalGraphicsEnvironment();
                  GraphicsDevice device = ge.getDefaultScreenDevice();
                  graphicsConfiguration = device.getDefaultConfiguration();
            }
            return graphicsConfiguration;
      }


} // {{{ AbstractBarCodeRenderer }}}
