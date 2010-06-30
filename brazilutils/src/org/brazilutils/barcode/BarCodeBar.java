/*
 *  BarCodebar.java
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
 *  @author Daniel Gon�alves
 *  @version $Id: BarCodeBar.java,v 1.1 2005/11/18 14:44:14 rawfosgod Exp $
 */
public class BarCodeBar {

      public static final char BAR = '1';
      public static final char SPACE = '0';

      private String bar;

      public BarCodeBar(String bar) {

            Matcher m = Pattern.compile("0+|1+").matcher(bar);
            if (!m.matches())
                  throw new IllegalArgumentException("Invalid bar spec '" + bar + "'.");

            this.bar = bar;
      }

      public boolean isBar() {
            return bar.charAt(0) == BAR;
      }

      public boolean isSpace() {
            return bar.charAt(0) == SPACE;
      }

      public int getWide() {
            return bar.length();
      }

} // {{{ BarCodeBar }}}
