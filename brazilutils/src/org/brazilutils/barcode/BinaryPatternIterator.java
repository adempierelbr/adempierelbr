/*
 *  BinaryPatternIterator.java
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
 *  TODO
 *
 *  @author Daniel Gonçalves
 *  @version $Id: BinaryPatternIterator.java,v 1.1 2005/11/18 14:44:16 rawfosgod Exp $
 */
public class BinaryPatternIterator {

      private String pattern;
      private int    position;

      public BinaryPatternIterator(String pattern) {

            Matcher m = Pattern.compile("[01]+").matcher(pattern);
            if (!m.matches())
                  throw new IllegalArgumentException("Invalid pattern spec '" + pattern + "'.");

            this.pattern = pattern;
            this.position = 0;
      }

      public boolean hasMoreBars() {
            return position <= (pattern.length() - 1);
      }

      public BarCodeBar nextBar() {

            StringBuffer bar = new StringBuffer();

            char bit = pattern.charAt(position);
            bar.append(bit);

            position++;

            for ( ; position < pattern.length(); position++) {
                  char nextBit = pattern.charAt(position);
                  if (bit != nextBit) break;
                  bar.append(nextBit);
            }

            return new BarCodeBar(bar.toString());
      }

} // {{{ BinaryPatternIterator }}}
