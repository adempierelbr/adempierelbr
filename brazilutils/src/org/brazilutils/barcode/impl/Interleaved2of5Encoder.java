/*
 *  Interleaved2of5Encoder.java
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
 *  Encodes data for the <em>Interleaved 2 of 5</em> barcode symbology.
 *
 *  <p>This encoder class can be aware of the checksum digit that may or
 *  may not be included in the data to be encoded. In either case, check the
 *  documentation for constructor {@link #Interleaved2of5Encoder(boolean)}
 *  and for the method {@link #encode(String)}.
 *
 *  <p>The image seen below is an example of an Interleaved 2 of 5 barcode
 *  (the image was generated by BrazilUtils API
 *  {@link org.brazilutils.barcode.sample Barcode SwingSample application}):</p>
 *
 *  <center><img src="doc-files/i25-1.jpg" border="0"></center>
 *
 *  <p>If you're insterested in the specification of the Interleaved 2 of 5
 *  symbology visit:</p>
 *
 *  <p>
 *     <ul>
 *        <li><a href="http://www.barcodeisland.com" target="blank">BARCODE Island</a></li>
 *     </ul>
 *  </p>
 *
 *  <h3>About the checksum calculation</h3>
 *
 *  <p>The I25 symbology doesn't require a checksum digit. But the checksum
 *  digit can improve the trustee in the scanned barcode. If you're using a
 *  checksum aware instance of this encoder class, you must know that the
 *  calculation algorithm is one provided by the
 *  {@link org.brazilutils.barcode.Modulo10Calculator} class, with the
 *  weights <tt>3</tt> and <tt>1</tt>.</p>
 *
 *  <p>It's easy to replace the checksum digit calculation algorithm. Just
 *  write a class that implement the
 *  {@link org.brazilutils.barcode.ChecksumCalculator} interface and
 *  use the method <tt>setChecksumCalculator</tt> to inject the
 *  dependency. So, subsequent calls to the <tt>encode</tt> method will
 *  use the new checksum calculation algorithm.</p>
 *
 *  @author Daniel Gon�alves
 *  @version $Id: Interleaved2of5Encoder.java,v 1.1 2005/11/18 14:44:18 rawfosgod Exp $
 *
 *  @see Modulo10Calculator
 */
public class Interleaved2of5Encoder implements BarCodeEncoder {

      /** The friendly symbology name this encoder represents. */
      public static final String SYMBOLOGY_NAME = "Interleaved 2 of 5";

      private static final String START_SYMBOL = "NNNN";
      private static final String STOP_SYMBOL  = "WNN";

      private static final String[] I25_SYMBOLS = { "NNWWN", "WNNNW",
                                                    "NWNNW", "WWNNN",
                                                    "NNWNW", "WNWNN",
                                                    "NWWNN", "NNNWW",
                                                    "WNNWN", "NWNWN" };

      private boolean checksumAware;
      private ChecksumCalculator checksumCalculator;

      /**
       *  Constructs an encoder that isn't aware of the checksum
       *  digit for the data to be encoded. Thus, the data to be encoded
       *  must always have an even number of digits.
       */
      public Interleaved2of5Encoder() {
            checksumAware = false;
            checksumCalculator = null;
      }

      /**
       *  Constructs an encoder that is aware of the checksum digit in the
       *  data to be encoded. If the argument is set to true, than the
       *  <tt>encode()</tt> method will accept an even or odd data lenght.
       *
       *  @param checksumAware a boolean value that tell the instance
       *         to be aware of the checksum digit or not.
       *
       *  @see #encode(String)
       */
      public Interleaved2of5Encoder(boolean checksumAware) {
            this.checksumAware = checksumAware;
            this.checksumCalculator = null;
      }

      /** {@inheritDoc} */
      public String getSymbologyName() {
            return SYMBOLOGY_NAME;
      }

      /** {@inheritDoc} */
      public BarCodeRenderer getDefaultRenderer() {
            return new Interleaved2of5Renderer();
      }

      /**
       *  Replaces the default checksum calculation algorithm. If the
       *  instance isn't aware of the checksum digit, the calculator will
       *  not be used anyway.
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
       *  {@inheritDoc}&nbsp;.
       *
       *  If an instance of this class is constructed with the optional
       *  constructor <tt>Interleaved2of5Encoder(boolean)</tt> there are
       *  three rules to consider:
       *
       *  <p>
       *  <ul>
       *
       *     <li>If the data length is even and the instance is checkum
       *     aware, then the last digit is compared with the calculated
       *     checksum and if it does not match, a <tt>BarCodeDataException</tt>
       *     will be thrown;</li>
       *
       *     <li>If the data length is odd and the instance is checksum
       *     aware, then the checksum digit is calculated and added to the
       *     encoded barcode;</li>
       *
       *     <li>Finally, if the data length is odd and this instance is not
       *     checksum aware, a <tt>BarCodeDataException</tt> will be thrown.</li>
       *
       *  </ul>
       *  </p>
       *
       *  <p>The basic default constructor constructs an instance that isn't
       *  aware of the checksum digit. Read the introduction for this class
       *  to know how the checksum digit is computed and how to replace the
       *  calculation algorithm.</p>
       *
       *  @throws NullPointerException if the data to be encoded is null.
       */
      public BarCodePattern encode(String data) {

            if (data == null)
                  throw new NullPointerException("Data to be encoded is null.");

            Matcher m = Pattern.compile("[0123456789]+").matcher(data);
            if (!m.matches())
                  throw new BarCodeDataException("Cannot encode the value '" + data + "'.");

            if (checksumAware) {

                  if (checksumCalculator == null)
                        checksumCalculator = new Modulo10Calculator();

                  if ((data.length() % 2) == 0) {
                        // the length is even, so compares the last digit with
                        // the calculated checksum digit...
                        int lastDigit = (data.charAt(data.length() - 1) - 48);
                        int checkdigit = checksumCalculator.compute(data.substring(0, data.length() - 1));

                        if (lastDigit != checkdigit)
                              throw new BarCodeDataException("Checksum digit invalid (expected to be " +
                                          checkdigit + ").");
                  }
                  else {
                        // the data length is odd, just add the checksum digit
                        data = data + checksumCalculator.compute(data);
                  }
            }
            else {
                  // this instance is unaware of the checksum digit, so
                  // the data length MUST BE even...
                  if ((data.length() % 2) != 0)
                        throw new BarCodeDataException("Data length must be even.");
            }

            StringBuffer encoded = new StringBuffer();

            for (int digit = 0; digit < data.length(); digit += 2) {

                  String symbol_A = I25_SYMBOLS[data.charAt(digit) - 48];
                  String symbol_B = I25_SYMBOLS[data.charAt(digit + 1) - 48];

                  System.out.println("char " + data.charAt(digit) +
                                     "(int " + (data.charAt(digit) - 48) +
                                     ") symbol(A) = " + symbol_A);

                  System.out.println("char " + data.charAt(digit + 1) +
                                     "(int " + (data.charAt(digit + 1) - 48) +
                                     ") symbol(B) = " + symbol_B);

                  System.out.println("---");

                  for (int i = 0; i < symbol_A.length(); i++)
                        encoded.append(symbol_A.charAt(i))
                               .append(symbol_B.charAt(i));

            }

            String binary = asBinary(START_SYMBOL) +
                            asBinary(encoded.toString()) +
                            asBinary(STOP_SYMBOL);

            System.out.println("   Data: \"" + data + "\"");
            System.out.println("Encoded: \"" + START_SYMBOL + "." + encoded.toString() + "." + STOP_SYMBOL + "\"");
            System.out.println(" Binary: \"" + binary + "\"");

            return new Interleaved2of5Pattern(data, binary);

      } // encode(String)

      /**
       *  Converts the String sequence to a binary pattern sequence
       *  representing the barcode encoding. Be aware that the argument
       *  is suposed to contains only 'N' and 'W' characters (this
       *  method does no effort to ensure this).
       *
       *  @param encoded the sequence to be converted.
       *
       *  @return The binary pattern sequence. To say, a string
       *          containing <tt>0</tt>s (representing the spaces or
       *          light bars) and <tt>1</tt> (representing the bars).
       */
      protected String asBinary(String encoded) {

            StringBuffer bin = new StringBuffer();
            boolean bar = true;
            char c = '1';

            for (int i = 0; i < encoded.length(); i++) {
                  if (bar) c = '1'; else c = '0';
                  if (encoded.charAt(i) == 'N') bin.append(c);
                  else bin.append(c).append(c);
                  bar = !bar;
            }

            return bin.toString();
      }

} // {{{ Interleaved2of5Encoder }}}

