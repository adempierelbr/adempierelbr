/*
 *  BarCodePatternException.java
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

/**
 *  TODO
 *
 *  @author Daniel Gonçalves
 *  @version $Id: BarCodePatternException.java,v 1.1 2005/11/18 14:44:15 rawfosgod Exp $
 */
public class BarCodePatternException extends RuntimeException {

      public BarCodePatternException() {
            super();
      }

      public BarCodePatternException(String message) {
            super(message);
      }

      public BarCodePatternException(String message, Throwable cause) {
            super(message, cause);
      }

      public BarCodePatternException(Throwable cause) {
            super(cause);
      }

} // {{{ BarCodePatternException }}}
