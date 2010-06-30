/*
 *  Modulo10Calculator.java
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

import java.util.regex.Pattern;
import java.util.regex.Matcher;

/**
 *  Computes the modulo 10 checksum digit for the data, providing a
 *  basic algorithm for the checksum calculation based on summing up
 *  alternated weights multiplied by data digits.
 *
 *  <p>The modulo 10 algorithm is based on weights. Suppose the data
 *  <code>"1234"</code> and the weights 3 and 1. The first step is done
 *  multiplying each data digit by the weights:</p>
 *
 *  <pre>
 *   1   2   3   4  --> data
 *   1   3   1   3  --> weights
 *  ---------------
 *   1   6   3  12
 *  </pre>
 *
 *  <p>Then the results are summed <code>1 + 6 + 3 + 12 = 22</code></p>
 *
 *  <p>The checksum is 22, but just one digit is returned, so the next
 *  multiple of 10 is 30. The difference is 8 that is the checksum digit.
 *  If the result is a multiple of 10, the checksum digit will be 0.</p>
 *
 *  <p><strong>NOTE</strong> The weights are applied from right to left.</p>
 *
 *  @author Daniel Gon�alves
 *  @version $Id: Modulo10Calculator.java,v 1.1 2005/11/18 14:44:17 rawfosgod Exp $
 */
public class Modulo10Calculator implements ChecksumCalculator {

      private int[] weights;

      /**
       *  Constructs a <tt>Modulo10Calculator</tt> instance
       *  with default weights <tt>3</tt> and <tt>1</tt>.
       */
      public Modulo10Calculator() {
            weights = new int[] { 3, 1 };
      }

      /**
       *  Sets the weights to be applied. Remember that weights are
       *  applied from right to left.
       *
       *  @throws NullPointerException if the argument is null.
       */
      public void setWeights(int[] weights) {
            if (weights == null)
                  throw new NullPointerException("Weights cannot be null.");
            this.weights = weights;
      }

      /**
       *  Gets the current weights.
       */
      public int[] getWeights() {
            return weights;
      }

      /**
       *  {@inheritDoc}
       *
       *  @throws NullPointerException if data is null.
       *  @throws IllegalArgumentException if data doesn't contains only numeric digits.
       *  @throws IllegalStateException if the weights are set as empty array.
       */
      public int compute(String data) {

            if (data == null)
                  throw new NullPointerException("Data is null.");

            if (weights.length == 0)
                  throw new IllegalStateException("Weights are empty.");

            Matcher m = Pattern.compile("[0123456789]+").matcher(data);
            if (!m.matches())
                  throw new IllegalArgumentException("Data must contains only numeric digits.");

            char[] digit = data.toCharArray();

            int idx = 0;
            int sum = 0;
            int csd = 0;

            for (int i = digit.length - 1; i >= 0; i--) {
                  sum += (weights[idx++] * (digit[i] - 48));
                  if (idx >= weights.length) idx = 0;
            }

            csd = (10 - (sum % 10));

            return (csd == 10 ? 0 : csd);
      }

} // {{{ Modulo10Calculator }}}
