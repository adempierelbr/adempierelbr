/*
 *  Ean13Encoder.java
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

import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.brazilutils.barcode.BarCodeDataException;
import org.brazilutils.barcode.BarCodeEncoder;
import org.brazilutils.barcode.BarCodePattern;
import org.brazilutils.barcode.BarCodeRenderer;
import org.brazilutils.barcode.ChecksumCalculator;
import org.brazilutils.barcode.Modulo10Calculator;

/**
 *  Encodes data for the EAN-13 barcode symbology.
 *
 *  <p>If you're insterested in the specification of the EAN-13
 *  symbology visit:</p>
 *
 *  <p>
 *     <ul>
 *        <li><a href="http://www.barcodeisland.com" target="blank">BARCODE Island</a></li>
 *     </ul>
 *  </p>
 *
 *  @author Daniel Gonçalves
 *  @version $Id: Ean13Encoder.java,v 1.1 2005/11/18 14:44:17 rawfosgod Exp $
 */
public class Ean13Encoder implements BarCodeEncoder {

      /** The friendly symbology name this encoder represents. */
      public static final String SYMBOLOGY_NAME = "EAN-13";

      private static final String[][] charsets = { { "0001101", "0011001",
                                                     "0010011", "0111101",
                                                     "0100011", "0110001",
                                                     "0101111", "0111011",
                                                     "0110111", "0001011" },
                                                   { "0100111", "0110011",
                                                     "0011011", "0100001",
                                                     "0011101", "0111001",
                                                     "0000101", "0010001",
                                                     "0001001", "0010111" } };

      private static final String[] rightHand = { "1110010", "1100110",
                                                  "1101100", "1000010",
                                                  "1011100", "1001110",
                                                  "1010000", "1000100",
                                                  "1001000", "1110100" };

      private static final int[][] parity = { { 0, 0, 0, 0, 0, 0, 0 },
                                              { 1, 0, 0, 1, 0, 1, 1 },
                                              { 2, 0, 0, 1, 1, 0, 1 },
                                              { 3, 0, 0, 1, 1, 1, 0 },
                                              { 4, 0, 1, 0, 0, 1, 1 },
                                              { 5, 0, 1, 1, 1, 0, 1 },
                                              { 6, 0, 1, 1, 1, 0, 0 },
                                              { 7, 0, 1, 0, 1, 0, 1 },
                                              { 8, 0, 1, 0, 0, 1, 0 },
                                              { 9, 0, 1, 1, 1, 1, 0 } };

      private static final String BORDER_GUARD = "101";
      private static final String CENTER_GUARD = "01010";

      private ChecksumCalculator checksumCalculator;

      /**
       *  Constructs an EAN-13 encoder.
       */
      public Ean13Encoder() {
            checksumCalculator = null;
      }

      /** {@inheritDoc} */
      public String getSymbologyName() {
            return SYMBOLOGY_NAME;
      }

      /** {@inheritDoc} */
      public BarCodeRenderer getDefaultRenderer() {
            return new Ean13Renderer();
      }

      /**
       *  Replaces the default checksum calculation algorithm.
       */
      public void setChecksumCalculator(ChecksumCalculator checksumCalculator) {
            this.checksumCalculator = checksumCalculator;
      }

      /**
       *  Gets the associated checksum calculator.
       */
      public ChecksumCalculator getChecksumCalculator() {
            return checksumCalculator;
      }

      /**
       *  {@inheritDoc}
       *
       *  TODO: encoding details...
       *
       */
      public BarCodePattern encode(String data) {

            if (data == null)
                  throw new NullPointerException("Data cannot be null.");

            Matcher m = Pattern.compile("[0123456789]+").matcher(data);
            if (!m.matches())
                  throw new BarCodeDataException("Cannot encode the value '" + data + "'.");

            // verify checksum digit

            int checkdigit = 0;

            if (checksumCalculator == null)
                  checksumCalculator = new Modulo10Calculator();

            if (data.length() == 12) {
                  // checkdigit must be computed and appended
                  data = (data + checksumCalculator.compute(data));
            }
            else if (data.length() == 13) {
                  // checkdigit must be checked
                  int expected = checksumCalculator.compute(data.substring(0,12));
                  checkdigit = (data.charAt(data.length() - 1) - 48);

                  if (checkdigit != expected)
                        throw new BarCodeDataException("Bad checksum digit (expected " + expected +
                                                       ", but was " + checkdigit + ").");
            }
            else {
                  // invalid EAN-13 data length
                  throw new BarCodeDataException("Data length must be 12 or 13 digits long.");
            }

            // break data in logical tokens and identifies the
            // correct parity table for the first system digit

            int system1st = (data.charAt(0) - 48);
            int system2nd = (data.charAt(1) - 48);

            int[] parityTable = parity[system1st];
            for (int i = 0; i < parityTable.length; i++)
                  System.out.print("" + parityTable[i] + ",");

            String manufact = data.substring(2, 7);
            String product  = data.substring(7, 12);

            StringBuffer encoded = new StringBuffer(BORDER_GUARD);

            // encode the 2nd system digit
            encoded.append(charsets[parityTable[1]][system2nd]);

            // encode the manufacturer
            for (int i = 0; i < manufact.length(); i++) {
                  int digit = (manufact.charAt(i) - 48);
                  encoded.append(charsets[parityTable[i + 2]][digit]);
            }

            // the center guard
            encoded.append(CENTER_GUARD);

            // encode the product code
            for (int i = 0; i < product.length(); i++) {
                  int digit = (product.charAt(i) - 48);
                  encoded.append(rightHand[digit]);
            }

            // encode the checksum digit and append end border guard
            encoded.append(rightHand[checkdigit])
                   .append(BORDER_GUARD);

            // done!

            return new Ean13Pattern(data, encoded.toString());
      }

} // {{{ Ean13Encoder }}}
