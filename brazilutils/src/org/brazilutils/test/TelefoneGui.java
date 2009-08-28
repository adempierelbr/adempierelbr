/*
 * Created on 03/05/2005
 */
package org.brazilutils.test;

import java.text.ParseException;

import javax.swing.JButton;
import javax.swing.JFormattedTextField;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JTextField;
import javax.swing.text.MaskFormatter;

import org.brazilutils.br.telefone.Telefone;
/**
 * @author Douglas Siviotti
 */
public class TelefoneGui extends JFrame {
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	/**
	 * 
	 */
	private Telefone telDefault = new Telefone("+55(21)2270-5855");
	private javax.swing.JPanel jContentPane = null;
	private JPanel jPanel = null;
	private JPanel jPanel1 = null;
	private JFormattedTextField txtInput = null;
	private JLabel jLabel = null;
	private JPanel jPanel2 = null;
	private JButton jButton1 = null;
	private JLabel jLabel1 = null;
	private JTextField txtOutput = null;
	private JFormattedTextField txtMask = null;
	private JLabel jLabel2 = null;
	/**
	 * This is the default constructor
	 */
	public TelefoneGui() {
		super();
		initialize();
	}
	/**
	 * This method initializes this
	 * 
	 * @return void
	 */
	private void initialize() {
		this.setSize(438, 355);
		this.setContentPane(getJContentPane());
		this.setTitle("JFrame");
	}
	/**
	 * This method initializes jContentPane
	 * 
	 * @return javax.swing.JPanel
	 */
	private javax.swing.JPanel getJContentPane() {
		if(jContentPane == null) {
			jContentPane = new javax.swing.JPanel();
			jContentPane.setLayout(new java.awt.BorderLayout());
			jContentPane.add(getJPanel(), java.awt.BorderLayout.NORTH);
			jContentPane.add(getJPanel1(), java.awt.BorderLayout.CENTER);
			jContentPane.add(getJPanel2(), java.awt.BorderLayout.EAST);
		}
		return jContentPane;
	}
	/**
	 * This method initializes jPanel	
	 * 	
	 * @return javax.swing.JPanel	
	 */    
	private JPanel getJPanel() {
		if (jPanel == null) {
			jPanel = new JPanel();
		}
		return jPanel;
	}
	/**
	 * This method initializes jPanel1	
	 * 	
	 * @return javax.swing.JPanel	
	 */    
	private JPanel getJPanel1() {
		if (jPanel1 == null) {
			jLabel2 = new JLabel();
			jLabel1 = new JLabel();
			jLabel = new JLabel();
			/** The Validator that executes the validation */			/** The Validator that executes the validation */jPanel1 = new JPanel();
			jPanel1.setLayout(null);
			jLabel.setBounds(15, 15, 99, 16);
			jLabel.setText("Input");
			jLabel1.setBounds(15, 66, 68, 17);
			jLabel1.setText("Output");
			jLabel2.setBounds(15, 130, 157, 15);
			jLabel2.setText("Mask");
			jPanel1.add(getTxtInput(), null);
			jPanel1.add(getTxtMask(), null);
			jPanel1.add(jLabel2, null);
			jPanel1.add(jLabel, null);
			jPanel1.add(jLabel1, null);
			jPanel1.add(getTxtOutput(), null);
		}
		return jPanel1;
	}
	/**
	 * This method initializes txtInput	
	 * 	
	 * @return javax.swing.JFormattedTextField	
	 */    
	private JFormattedTextField getTxtInput() {
		if (txtInput == null) {
			txtInput = new JFormattedTextField();
			txtInput.setBounds(14, 32, 160, 22);
		}
		return txtInput;
	}
	/**
	 * This method initializes jPanel2	
	 * 	
	 * @return javax.swing.JPanel	
	 */    
	private JPanel getJPanel2() {
		if (jPanel2 == null) {
			jPanel2 = new JPanel();
			jPanel2.setPreferredSize(new java.awt.Dimension(100,36));
			jPanel2.add(getJButton1(), null);
		}
		return jPanel2;
	}
	/**
	 * This method initializes jButton1	
	 * 	
	 * @return javax.swing.JButton	
	 */    
	private JButton getJButton1() {
		if (jButton1 == null) {
			jButton1 = new JButton();
			jButton1.setText("Test");
			jButton1.addActionListener(new java.awt.event.ActionListener() { 
				public void actionPerformed(java.awt.event.ActionEvent e) {    
					Telefone tel = new Telefone(txtInput.getText());
					System.out.println(tel.toString());
					MaskFormatter formatter = null;
					try {
                        formatter = new MaskFormatter(tel.getMask());
                    } catch (ParseException e1) {
                        e1.printStackTrace();
                    }
                    formatter.install(txtMask);
					txtOutput.setText(tel.toString());
				}
			});
		}
		return jButton1;
	}
	
	/**
	 * This method initializes txtOutput	
	 * 	
	 * @return javax.swing.JTextField	
	 */    
	private JTextField getTxtOutput() {
		if (txtOutput == null) {
			txtOutput = new JTextField();
			txtOutput.setBounds(15, 83, 158, 22);
		}
		return txtOutput;
	}
	/**
	 * This method initializes txtMask	
	 * 	
	 * @return javax.swing.JFormattedTextField	
	 */    
	private JFormattedTextField getTxtMask() {
		if (txtMask == null) {
		    txtMask = new JFormattedTextField();
			txtMask.setBounds(15, 146, 161, 21);
		}
		return txtMask;
	}
  }  //  @jve:decl-index=0:visual-constraint="10,10"
