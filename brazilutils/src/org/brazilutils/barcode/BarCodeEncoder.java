/*
 *  BarCodeEncoder.java
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
 *  This interface describe just one method that can encode
 *  a data string into a {@link BarCodePattern} that can be
 *  passed to a barcode renderer.
 *
 *  @author Daniel Gonçalves
 *  @version $Id: BarCodeEncoder.java,v 1.1 2005/11/18 14:44:14 rawfosgod Exp $
 */
public interface BarCodeEncoder {

      /**
       *  Encodes data as a {@link BarCodePattern} pattern wich can be
       *  rendered by a {@link BarCodeRenderer}.
       *
       *  @param data the data to be encoded.
       *
       *  @throws BarCodeDataException if the data string contains
       *          illegal characters for the encoder implementation.
       */
      public BarCodePattern encode(String data);

      /**
       *  Returns the friendly symbology name (or commercial name).
       */
      public String getSymbologyName();

      /**
       *  Creates a new instance for the default renderer for this encoder.
       */
      public BarCodeRenderer getDefaultRenderer();

} // {{{ BarCodeEncoder }}}
