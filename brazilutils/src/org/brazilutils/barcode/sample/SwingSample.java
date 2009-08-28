/*
 *  SwingSample.java
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

package org.brazilutils.barcode.sample;

import java.util.Map;
import java.util.HashMap;

import org.brazilutils.barcode.BarCodeEncoder;

/**
 *  A sample swing-based application.
 *
 *  @author Daniel Gonçalves
 *  @version $Id: SwingSample.java,v 1.1 2005/11/18 14:44:21 rawfosgod Exp $
 */
public class SwingSample {

      public static void main(String[] argv) {

            String[] implClass = { "org.brazilutils.barcode.impl.Ean13Encoder",
                                   "org.brazilutils.barcode.impl.Interleaved2of5Encoder" };

            final Map impl = new HashMap();

            for (int i = 0; i < implClass.length; i++) {
                  try {
                        Class clazz = Class.forName(implClass[i]);
                        BarCodeEncoder encoder = (BarCodeEncoder)clazz.newInstance();

                        impl.put(encoder.getSymbologyName(), encoder);
                  }
                  catch (Exception e) {
                        e.printStackTrace();
                        System.exit(1);
                  }
            }

            Runnable runner = new Runnable() {
                  public void run() {
                        SampleFrame sf = new SampleFrame(impl);
                        sf.setVisible(true);
                  }
            };

            (new Thread(runner)).start();

      }

} // {{{ SwingSample }}}
