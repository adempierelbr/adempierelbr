/*
 *  BarCodePattern.java
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
 *  A barcode pattern, providing the data processed by the
 *  {@link BarCodeEncoder} encoder and the resulting pattern.
 *
 *  @author Daniel Gonçalves
 *  @version $Id: BarCodePattern.java,v 1.1 2005/11/18 14:44:15 rawfosgod Exp $
 */
public interface BarCodePattern {

      /**
       *  Gets the original data that produced the pattern. This
       *  information may be used by the renderers that want to
       *  render the data label.
       */
      public String getData();

      /**
       *  Gets the pattern produced by the {@link BarCodeEncoder}
       *  encoder class.
       */
      public String getPattern();

      /**
       *  Gets the binary pattern iterator associated with this
       *  pattern.
       */
      public BinaryPatternIterator getIterator();

} // {{{ BarCodePattern }}}
