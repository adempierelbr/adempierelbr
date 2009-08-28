/*
 *  Ean13Pattern.java
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

import java.util.regex.Pattern;
import java.util.regex.Matcher;

import org.brazilutils.barcode.BarCodePattern;
import org.brazilutils.barcode.BinaryPatternIterator;
import org.brazilutils.barcode.BarCodeDataException;
import org.brazilutils.barcode.BarCodePatternException;

/**
 *  Encapsulates the results of an encoded EAN-13 data.
 *  Usually an object of <tt>Ean13Pattern</tt> is created by
 *  the encoder class (default {@link Ean13Encoder}).
 *
 *  <p>This class is taken as a result for the data encoded, and must
 *  be passed to a renderer class (default {@link Ean13Renderer})
 *  that actually knows how to render the pattern.</p>
 *
 *  @author Daniel Gonçalves
 *  @version $Id: Ean13Pattern.java,v 1.1 2005/11/18 14:44:17 rawfosgod Exp $
 */
public class Ean13Pattern implements BarCodePattern {

      /** The expected length for EAN-13 data. */
      public static final int DATA_LENGTH = 13;

      /** The expected length for the binary pattern. */
      public static final int BINARY_PATTERN_LENGTH = 95;

      private String data;
      private String pattern;

      /**
       *  Constructs a new <tt>Ean13Pattern</tt> object.
       *
       *  @param data the data that have been generated the <tt>pattern</tt> and
       *         must contains only numeric digits and 13 digits length.
       *
       *  @param pattern is the result of the encoded <tt>data</tt>. This is
       *         argument must be a series of <tt>0</tt>s and <tt>1</tt>s
       *         representing the barcode bars and spaces.
       *
       *  @throws NullPointerException if either of the arguments are null.
       *
       *  @throws BarCodeDataException if data doesn't match the data rules for
       *          EAN-13 barcodes.
       *
       *  @throws BarCodePatternException if the encoded pattern doesn't contains
       *          only <tt>0</tt>s and <tt>1</tt>s or doesn't have XXX in length.
       */
      public Ean13Pattern(String data, String pattern) {

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

            if (data.length() != 13)
                  throw new BarCodeDataException("Invalid barcode data length (expected " +
                               DATA_LENGTH + ", but was " + data.length() + ").");

            if (pattern.length() != BINARY_PATTERN_LENGTH)
                  throw new BarCodePatternException("Invalid binary pattern length (expected " +
                               BINARY_PATTERN_LENGTH + ", but was " + pattern.length() + ").");

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

} // {{{ Ean13Pattern }}}
