/*
 *  SamplePanel.java
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

import java.awt.Color;
import java.awt.Dimension;
import java.awt.Graphics;

import java.awt.image.BufferedImage;

import javax.swing.JOptionPane;
import javax.swing.JPanel;

import org.brazilutils.barcode.BarCodeEncoder;
import org.brazilutils.barcode.BarCodePattern;
import org.brazilutils.barcode.BarCodeRenderer;

/**
 *  A JPanel specialization used to render the barcode symbology.
 *
 *  @author Daniel Gonçalves
 *  @version $Id: SamplePanel.java,v 1.1 2005/11/18 14:44:21 rawfosgod Exp $
 */
public class SamplePanel extends JPanel {

      BufferedImage  barcodeImage;

      public SamplePanel() {

            super();

            setBackground(new Color(213, 213, 255));
            setPreferredSize(new Dimension(1024, 300));

            barcodeImage = null;
      }

      public BufferedImage getImage() {
            return barcodeImage;
      }

      public void updateSample(BarCodeEncoder encoder,
                         String dataToEncode, boolean showLabel) {

            BarCodeRenderer renderer = encoder.getDefaultRenderer();
            BarCodePattern pattern = null;

            try {
                  pattern = encoder.encode(dataToEncode);
                  barcodeImage = renderer.render(pattern, showLabel);
            }
            catch (Exception ex) {
                  JOptionPane.showMessageDialog(getParent(), ex.getMessage(),
                                    "Error", JOptionPane.WARNING_MESSAGE);
                  barcodeImage = null;
            }

            repaint(getBounds());

      }

      public void paintComponent(Graphics g) {
            super.paintComponent(g);
            if (barcodeImage != null)
                  g.drawImage(barcodeImage, 10, 10, null);

      }

} // {{{ SamplePanel }}}
