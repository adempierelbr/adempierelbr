/*
 *  SampleFrame.java
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

import java.awt.*;
import java.awt.event.*;
import java.awt.image.*;
import java.awt.print.*;

import java.io.File;

import java.util.Map;
import java.util.Iterator;
import java.util.Vector;

import javax.imageio.ImageIO;
import javax.swing.*;
import javax.swing.filechooser.FileFilter;

import org.brazilutils.barcode.BarCodeEncoder;

/**
 *  Application main frame.
 *
 *  @author Daniel Gonçalves
 *  @version $Id: SampleFrame.java,v 1.1 2005/11/18 14:44:20 rawfosgod Exp $
 */
public class SampleFrame extends JFrame {

      private JComboBox   symbolCombo;
      private JTextField  dataField;
      private JCheckBox   labelCheck;
      private SamplePanel samplePanel;

      private Map knownImpl;

      public SampleFrame(Map impl) {

            super("BrazilUtils API Barcode Sample");

            setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
            setSize(500, 520);

            //
            //  create the list of known implementations
            //
            knownImpl = impl;

            Vector symbologies = new Vector();
            Iterator iter = knownImpl.keySet().iterator();
            while (iter.hasNext()) symbologies.add(iter.next());

            //
            //  create the main components
            //
            symbolCombo = new JComboBox(symbologies);
            dataField   = new JTextField();
            labelCheck  = new JCheckBox("Show label");
            samplePanel = new SamplePanel();

            //
            //  the buttons panel
            //
            JPanel buttonsPanel = new JPanel();
            buttonsPanel.setLayout(new FlowLayout(FlowLayout.LEFT));

            JButton updateButton = new JButton("Update");
            JButton saveAsButton = new JButton("Save as...");
            JButton printButton  = new JButton("Print...");
            JButton exitButton   = new JButton("Exit");

            updateButton.addActionListener(new ActionListener() {
                  public void actionPerformed(ActionEvent event) {
                        updateButtonHandler();
                  }
            });

            saveAsButton.addActionListener(new ActionListener() {
                  public void actionPerformed(ActionEvent event) {
                        saveAsButtonHandler();
                  }
            });

            printButton.addActionListener(new ActionListener() {
                  public void actionPerformed(ActionEvent event) {
                        Runnable runner = new Runnable() {
                              public void run() {
                                    printButtonHandler();
                              }
                        };
                        EventQueue.invokeLater(runner);
                  }
            });

            exitButton.addActionListener(new ActionListener() {
                  public void actionPerformed(ActionEvent event) {
                        exitButtonHandler();
                  }
            });

            buttonsPanel.add(updateButton);
            buttonsPanel.add(saveAsButton);
            buttonsPanel.add(printButton);
            buttonsPanel.add(exitButton);

            //
            //  components to get the user input
            //
            JPanel topPanel = new JPanel();
            topPanel.setLayout(new GridBagLayout());

            GridBagConstraints gbc = new GridBagConstraints();

            gbc.gridx      = 0;
            gbc.gridy      = 0;
            gbc.gridwidth  = 1;
            gbc.gridheight = 1;
            gbc.weightx    = 100;
            gbc.weighty    = 0;
            gbc.fill       = GridBagConstraints.NONE;
            gbc.anchor     = GridBagConstraints.WEST;
            gbc.insets     = new Insets(4, 4, 1, 4);
            topPanel.add(new JLabel("Symbology"), gbc);

            gbc.gridx      = 0;
            gbc.gridy      = 1;
            gbc.gridwidth  = 1;
            gbc.gridheight = 1;
            gbc.weightx    = 100;
            gbc.weighty    = 0;
            gbc.fill       = GridBagConstraints.NONE;
            topPanel.add(symbolCombo, gbc);

            gbc.gridx      = 0;
            gbc.gridy      = 2;
            gbc.gridwidth  = 1;
            gbc.gridheight = 1;
            gbc.weightx    = 100;
            gbc.weighty    = 0;
            gbc.fill       = GridBagConstraints.NONE;
            topPanel.add(new JLabel("Data to be encoded"), gbc);

            gbc.gridx      = 0;
            gbc.gridy      = 3;
            gbc.gridwidth  = 1;
            gbc.gridheight = 1;
            gbc.weightx    = 100;
            gbc.weighty    = 0;
            gbc.fill       = GridBagConstraints.HORIZONTAL;
            topPanel.add(dataField, gbc);

            gbc.gridx      = 0;
            gbc.gridy      = 4;
            gbc.gridwidth  = 1;
            gbc.gridheight = 1;
            gbc.weightx    = 100;
            gbc.weighty    = 0;
            gbc.fill       = GridBagConstraints.NONE;
            gbc.insets     = new Insets(4, 0, 1, 4);
            topPanel.add(labelCheck, gbc);

            gbc.gridx      = 0;
            gbc.gridy      = 5;
            gbc.gridwidth  = 1;
            gbc.gridheight = 1;
            gbc.weightx    = 100;
            gbc.weighty    = 0;
            gbc.fill       = GridBagConstraints.NONE;
            gbc.insets     = new Insets(12, 0, 4, 0);
            topPanel.add(buttonsPanel, gbc);

            //
            //  create the scrollable sample panel
            //
            JScrollPane bottomPanel = new JScrollPane(samplePanel);
            bottomPanel.setBorder(BorderFactory.createCompoundBorder(
                      BorderFactory.createEmptyBorder(4, 4, 4, 4),
                      bottomPanel.getBorder()));

            //
            //  place components together
            //
            Container content = getContentPane();
            content.setLayout(new BorderLayout());
            content.add(topPanel,    BorderLayout.CENTER);
            content.add(bottomPanel, BorderLayout.SOUTH);

      } // constructor


      private void updateButtonHandler() {
            String symbolName = (String)symbolCombo.getSelectedItem();
            BarCodeEncoder encoder = (BarCodeEncoder)knownImpl.get(symbolName);

            if (encoder == null) {
                  JOptionPane.showMessageDialog(this,
                            "Symbology not found \"" + symbolName + "\".",
                            "Error", JOptionPane.ERROR_MESSAGE);
                  return;
            }

            samplePanel.updateSample(encoder, dataField.getText(),
                                              labelCheck.isSelected());
      }


      private void saveAsButtonHandler() {

            BufferedImage image = samplePanel.getImage();
            if (image == null) return;

            JFileChooser chooser = new JFileChooser(".");

            ImageFileFilter filter = new ImageFileFilter();

            chooser.setFileFilter(filter);
            chooser.setDialogTitle("Save barcode image");

            int retval = chooser.showSaveDialog(this);

            if (retval == JFileChooser.APPROVE_OPTION) {

                  File file = chooser.getSelectedFile();
                  if (file.exists()) {

                        int confirm = JOptionPane.showConfirmDialog(this, "File " +
                                         file.getName() + " already exists. Overwrite?",
                                         "Confirm Overwrite",
                                         JOptionPane.YES_NO_OPTION,
                                         JOptionPane.QUESTION_MESSAGE);

                        if (confirm == JOptionPane.NO_OPTION) return;
                  }

                  String format = null;

                  if (file.getName().toLowerCase().endsWith("png"))
                        format = "png";

                  else if (file.getName().toLowerCase().endsWith("jpg"))
                        format = "jpg";

                  else {
                        JOptionPane.showMessageDialog(this,
                                    "Can't save the given format.", "Oops!",
                                    JOptionPane.WARNING_MESSAGE);
                        return;
                  }

                  try {
                        if (ImageIO.write(image, format, file))
                              JOptionPane.showMessageDialog(this, "Saved in \"" + file.getName() + "\".");
                        else
                              JOptionPane.showMessageDialog(this, "Can't save \"" + file.getName() + "\".",
                                               "Oops!", JOptionPane.ERROR_MESSAGE);

                  }
                  catch (Exception ex) {
                        JOptionPane.showMessageDialog(this, ex.getMessage(),
                                            "Error", JOptionPane.ERROR_MESSAGE);
                  }

            }

      }


      private void printButtonHandler() {

            BufferedImage image = samplePanel.getImage();
            if (image == null) return;

            PrinterJob job = PrinterJob.getPrinterJob();
            PageFormat page = job.defaultPage();

            Book book = new Book();
            book.append(new PrintableBarCode(image), page, 1);

            job.setPageable(book);
            //job.setPrintable(new PrintableBarCode(image), page);
            job.setJobName("BrazilUtils API Barcode Sample");

            if (job.printDialog()) {
                  try {
                        job.print();
                  }
                  catch (Exception ex) {
                        JOptionPane.showMessageDialog(this, ex.getMessage(),
                                 "Print Error", JOptionPane.ERROR_MESSAGE);
                  }
            }

      }


      private void exitButtonHandler() {
            dispose();
      }


} // {{{ SampleFrame }}}


class ImageFileFilter extends FileFilter {

      public boolean accept(File f) {
            if (f.isDirectory()) return true;
            String name = f.getName().toLowerCase();
            return (name.endsWith(".png") || name.endsWith(".jpg"));
      }

      public String getDescription() {
            return "PNG/JPEG Images (*.png, *.jpg)";
      }

} // {{{ ImageFileFilter }}}


class PrintableBarCode implements Printable {

      private BufferedImage image;

      public PrintableBarCode(BufferedImage image) {
            this.image = image;
      }

      public int print(Graphics g, PageFormat page, int pageNo)
                 throws PrinterException {

            System.out.println("PAGE NUMBER = " + pageNo);

            if (pageNo > 0) return Printable.NO_SUCH_PAGE;

            Graphics2D g2 = (Graphics2D)g;

            g2.translate(page.getImageableX(), page.getImageableY());
            g2.drawImage(image, 0, 0, null);

            return Printable.PAGE_EXISTS;
      }

} // {{{ PrintableBarCode }}}
