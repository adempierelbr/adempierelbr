/*
 *  Interleaved2of5Pattern.java
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

import org.brazilutils.barcode.BarCodePattern;
import org.brazilutils.barcode.BinaryPatternIterator;
import org.brazilutils.barcode.BarCodeDataException;
import org.brazilutils.barcode.BarCodePatternException;

import java.util.regex.Pattern;
import java.util.regex.Matcher;

/**
 *  Encapsulates the results of an encoded Interleaved 2 of 5 data.
 *  Usually an object of <tt>Interleaved2ofPattern</tt> is created by
 *  the encoder class (default {@link Interleaved2of5Encoder}).
 *
 *  <p>This class is taken as a result for the data encoded, and must
 *  be passed to a renderer class (default {@link Interleaved2of5Renderer})
 *  that actually knows how to render the pattern.</p>
 *
 *  @author Daniel Gon�alves
 *  @version $Id: Interleaved2of5Pattern.java,v 1.1 2005/11/18 14:44:18 rawfosgod Exp $
 */
public class Interleaved2of5Pattern implements BarCodePattern {

      private String data;
      private String pattern;

      /**
       *  Constructs a new <tt>Interleaved2of5</tt> object. The rules
       *  that apply to the <tt>data</tt> argument are the same for
       *  the method {@link org.brazilutils.barcode.BarCodeEncoder#encode(String)}.
       *
       *  @param data the data that have been generated the <tt>pattern</tt>.
       *
       *  @param pattern is the result of the encoded <tt>data</tt>. This is
       *         argument must be a series of <tt>0</tt>s and <tt>1</tt>s
       *         representing the barcode bars and spaces.
       *
       *  @throws NullPointerException if either of the arguments are null.
       *
       *  @throws BarCodeDataException if data doesn't match the data rules for
       *          the Interleaved 2 of 5 barcodes.
       *
       *  @throws BarCodePatternException if the encoded pattern doesn't match
       *          the pattern rules for the {@link Interleaved2of5Encoder} class.
       */
      public Interleaved2of5Pattern(String data, String pattern) {

            if (data == null)
                  throw new NullPointerException("Data cannot be null");

            if (pattern == null)
                  throw new NullPointerException("Pattern cannot be null");

            Matcher m = Pattern.compile("[0123456789]+").matcher(data);
            if (!m.matches())
                  throw new BarCodeDataException("Invalid barcode data '" + data + "'.");

            m = Pattern.compile("[01]+").matcher(pattern);
            if (!m.matches())
                  throw new BarCodePatternException("Invalid barcode pattern '" + pattern + "'.");

            this.data = data;
            this.pattern = pattern;
      }

      /** {@inheritDoc} */
      public String getData() {
            return data;
      }

      /** {@inheritDoc} */
      public String getPattern() {
            return pattern;
      }

      /** {@inheritDoc} */
      public BinaryPatternIterator getIterator() {
            return new BinaryPatternIterator(pattern);
      }

} // {{{ Interleaved2of5Pattern }}}
