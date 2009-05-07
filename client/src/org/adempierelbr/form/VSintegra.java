package org.adempierelbr.form;

import java.awt.*;
import java.awt.event.*;
import java.beans.*;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.text.SimpleDateFormat;
import java.util.*;
import java.util.Calendar;
import java.util.Date;
import java.util.logging.*;

import javax.swing.*;

import org.compiere.apps.*;
import org.compiere.apps.form.FormFrame;
import org.compiere.apps.form.FormPanel;
import org.compiere.grid.*;
import org.compiere.grid.ed.*;
import org.compiere.model.*;
import org.compiere.plaf.*;
import org.compiere.swing.*;
import org.compiere.util.*;

/**
 * SINTEGRA
 *
 * @author Ricardo Santana
 * @version $Id: VSintegra.java,v 1.0 2007/01/14 00:51:28 ralexsander Exp $
 */
public class VSintegra extends CPanel
	implements FormPanel, ActionListener, VetoableChangeListener
{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	/**	Window No			*/
	private int         	m_WindowNo = 0;
	/**	FormFrame			*/
	private FormFrame 		m_frame;

	private Waiting         m_waiting;
	
	/** GridController          */
	private GridController  m_gridController = null;
	/** MWindow                 */
	private GridWindow      m_mWindow = null;
	/** MTab pointer            */
	private GridTab         m_mTab = null;

	private MQuery          m_staticQuery = null;
	/**	Logger			*/
	private static CLogger log = CLogger.getCLogger(VSintegra.class);
	//
	private CPanel 			mainPanel = new CPanel();
	private BorderLayout 	mainLayout = new BorderLayout();
	private CPanel 			parameterPanel = new CPanel();
	private JLabel 			dateFLabel = new JLabel();
	private VDate 			dateFField;
	private JLabel 			dateTLabel = new JLabel();
	private VDate 			dateTField;
	private GridBagLayout 	parameterLayout = new GridBagLayout();
	private CPanel 			southPanel = new CPanel();
	private BorderLayout 	southLayout = new BorderLayout();
	private ConfirmPanel 	confirmPanel = new ConfirmPanel(true, true, false, false, false, false, true);
	private StatusBar 		statusBar = new StatusBar();
	
	private CCheckBox 		todosEstados, arquivoUnico;
	private CComboBox		fRegion;
	private JEditorPane 	textRegistros;
	private CScrollPane 	scrollRegistros;
	private CButton			buttonSalvar;
	private TextFilter 		fTextFilter = new TextFilter();
	private String[] 		estados;
	private Date 			dateFrom, dateTo;

	/**
	 *	Initialize Panel
	 *  @param WindowNo window
	 *  @param frame frame
	 */
	public void init (int WindowNo, FormFrame frame)
	{
		log.info("");
		m_WindowNo = WindowNo;
		m_frame = frame;
		try
		{
			dynParameter();
			jbInit();
			dynInit();
			frame.getContentPane().add(mainPanel, BorderLayout.CENTER);
			frame.getContentPane().add(statusBar, BorderLayout.SOUTH);
		}
		catch(Exception ex)
		{
			log.log(Level.SEVERE, "", ex);
		}
	}	//	init


	/**
	 *  Static Init
	 *  @throws Exception
	 */
	void jbInit() throws Exception
	{
		CompiereColor.setBackground(this);
		mainPanel.setLayout(mainLayout);
		mainLayout.setVgap(10);
		parameterPanel.setLayout(parameterLayout);
		//
		dateFLabel.setText(Msg.translate(Env.getCtx(), "DateFrom"));
		dateTLabel.setText(Msg.translate(Env.getCtx(), "DateTo"));
		//
		todosEstados.setText(Msg.translate(Env.getCtx(), "All"));
		arquivoUnico.setText(Msg.translate(Env.getCtx(), "OneFile"));
		buttonSalvar.setText(Msg.translate(Env.getCtx(), "Save"));
		textRegistros.setFont(new Font("Courier New", Font.PLAIN, 13));
		//
		mainPanel.add(parameterPanel, BorderLayout.NORTH);
		
		parameterPanel.add(todosEstados, new GridBagConstraints(0, 0, 1, 1, 0.0, 0.0
				,GridBagConstraints.WEST, GridBagConstraints.NONE, new Insets(5, 5, 0, 5), 0, 0));
		parameterPanel.add(fRegion, new GridBagConstraints(1, 0, 1, 1, 0.0, 0.0
				,GridBagConstraints.WEST, GridBagConstraints.NONE, new Insets(5, 0, 0, 5), 0, 0));
		
		parameterPanel.add(dateFLabel, new GridBagConstraints(4, 0, 1, 1, 0.0, 0.0
			,GridBagConstraints.WEST, GridBagConstraints.NONE, new Insets(5, 5, 0, 5), 0, 0));
		parameterPanel.add(dateFField, new GridBagConstraints(5, 0, 1, 1, 0.0, 0.0
			,GridBagConstraints.WEST, GridBagConstraints.NONE, new Insets(5, 0, 0, 5), 0, 0));
		
		parameterPanel.add(dateTLabel, new GridBagConstraints(4, 1, 1, 1, 0.0, 0.0
			,GridBagConstraints.WEST, GridBagConstraints.NONE, new Insets(5, 5, 0, 5), 0, 0));
		parameterPanel.add(dateTField, new GridBagConstraints(5, 1, 1, 1, 0.0, 0.0
			,GridBagConstraints.WEST, GridBagConstraints.NONE, new Insets(5, 0, 0, 5), 0, 0));
		
		parameterPanel.add(buttonSalvar, new GridBagConstraints(1, 1, 1, 1, 0.0, 0.0
				,GridBagConstraints.WEST, GridBagConstraints.NONE, new Insets(5, 0, 0, 5), 0, 0));
		parameterPanel.add(arquivoUnico, new GridBagConstraints(0, 1, 1, 1, 0.0, 0.0
				,GridBagConstraints.WEST, GridBagConstraints.NONE, new Insets(5, 5, 0, 5), 0, 0));
		
		//
		southPanel.setLayout(southLayout);
		southPanel.add(confirmPanel, BorderLayout.NORTH);
		southPanel.add(statusBar, BorderLayout.SOUTH);
		mainPanel.add(southPanel, BorderLayout.SOUTH);
		mainPanel.setPreferredSize(new Dimension(650,500));
		//this.setPreferredSize(new Dimension (720,500));
	}   //  jbInit

	/**
	 *  Initialize Parameter fields
	 *  @throws Exception if Lookups cannot be initialized
	 */
	private void dynParameter() throws Exception
	{
		//  Dates
		dateFField = new VDate("DateFrom", false, false, true, DisplayType.Date, Msg.getMsg(Env.getCtx(), "DateFrom"));
		dateTField = new VDate("DateTo", false, false, true, DisplayType.Date, Msg.getMsg(Env.getCtx(), "DateTo"));
		//
		dateFField.setValue(getFirstDayOfLastMonth());
		dateTField.setValue(getLastDayOfLastMonth());

		fRegion = new CComboBox(MRegion.getRegions(Env.getCtx(), 139));
		fRegion.setEnabled(false);
		
		textRegistros = new JEditorPane();//new CTextArea();
		scrollRegistros = new CScrollPane(textRegistros);
		
		todosEstados = new CCheckBox(Msg.getMsg(Env.getCtx(), "All"), true);
		todosEstados.addActionListener(this);
		
		arquivoUnico = new CCheckBox(Msg.getMsg(Env.getCtx(), "OneFile"), true);
		arquivoUnico.addActionListener(this);
		arquivoUnico.setSelected(false);
		
		buttonSalvar = new CButton(Msg.getMsg(Env.getCtx(), "Save"));
		buttonSalvar.addActionListener(this);
		
		estados = new String[50];
		confirmPanel.addActionListener(this);
		statusBar.setStatusLine("");
	}   //  dynParameter

	/**
	 *  Dynamic Layout (Grid).
	 * 	Based on AD_Window: Material Transactions
	 */
	private void dynInit()
	{
		mainPanel.add(scrollRegistros, BorderLayout.CENTER);
	}   //  dynInit


	/**
	 * 	Dispose
	 */
	public void dispose()
	{
		if (m_gridController != null)
			m_gridController.dispose();
		m_gridController = null;
		m_mTab = null;
		if (m_mWindow != null)
			m_mWindow.dispose();
		m_mWindow = null;

		dateFField = null;
		dateTField = null;
		//
		if (m_frame != null)
			m_frame.dispose();
		m_frame = null;
	}	//	dispose

	private Date getFirstDayOfLastMonth()
	{
		Calendar c = Calendar.getInstance();
		c.setTime(new Date()); 
		//Subtract one Month
		c.add(Calendar.MONTH, -1);
		//Output first of month
		c.set(Calendar.DAY_OF_MONTH, 1);
		
		return c.getTime();
	}
	
	private Date getLastDayOfLastMonth()
	{
		Calendar c = Calendar.getInstance();
		c.setTime(new Date()); 
		//Subtract one Month
		c.add(Calendar.MONTH, -1);
		//Output last day of Month
		c.set(Calendar.DAY_OF_MONTH, c.getActualMaximum(Calendar.DAY_OF_MONTH));
		
		return c.getTime();
	}
	
	/**************************************************************************
	 *  Action Listener
	 *  @param e event
	 */
	public void actionPerformed (ActionEvent e)
	{
		if (e.getActionCommand().equals(ConfirmPanel.A_CANCEL))
			dispose();
		else if (e.getActionCommand().equals(ConfirmPanel.A_REFRESH)
				|| e.getActionCommand().equals(ConfirmPanel.A_OK))
		{
			dateFrom = (Date)dateFField.getValue();
			dateTo = (Date)dateTField.getValue();
			
			if(dateFrom==null || dateTo==null)
			{
				log.saveError("", "Data Inv�lida.");
				textRegistros.setText("        DATA INV�LIDA ");
			}
			else if(todosEstados.isSelected())
				textRegistros.setText("        SELECIONE APENAS UM ESTADO ");
			else
			{
				m_waiting = new Waiting (m_frame, Msg.getMsg(Env.getCtx(), "Processing"), false, 10);
				if (m_waiting != null)
				{
					m_waiting.toFront();
					m_waiting.setVisible(true);
				}
				m_frame.setBusy(true);
				
				new Thread()
				{
					public void run()
					{
						textRegistros.setText(pesquisaSintegra(dateFrom, dateTo, (String) fRegion.getSelectedItem().toString(), false));
					
						if (m_waiting != null)
							m_waiting.dispose();
						
						m_frame.setBusy(false);
					}
				}.start();
			}
		}
		else if (e.getActionCommand().equals(todosEstados.getActionCommand()))
		{
			if(todosEstados.isSelected())
			{
				arquivoUnico.setEnabled(true);
				fRegion.setEnabled(false);
			}
			else
			{
				arquivoUnico.setEnabled(false);
				arquivoUnico.setSelected(false);
				fRegion.setEnabled(true);
			}
		}
		else if (e.getActionCommand().equals(arquivoUnico.getActionCommand()))
		{
			;
		}
		else if (e.getActionCommand().equals(buttonSalvar.getActionCommand()))
		{
			m_waiting = new Waiting (m_frame, Msg.getMsg(Env.getCtx(), "Processing"), false, 10);
			if (m_waiting != null)
			{
				m_waiting.toFront();
				m_waiting.setVisible(true);
			}
			m_frame.setBusy(true);
			new Thread()
			{
				public void run()
				{
					saveAuto();
				
					if (m_waiting != null)
						m_waiting.dispose();
					
					m_frame.setBusy(false);
				}
			}.start();
		}
	}   //  actionPerformed

	private String pesquisaSintegra(Date dataInicial, Date dataFinal, String estado, Boolean arquivoUnico)
	{
		
		//Declara��es de Componentes
		int contReg50 = 0;
		int contReg51 = 0;
		int contReg54 = 0;
		int contReg70 = 0;
		int contReg75 = 0;
		int contReg99 = 0;
		
		StringBuffer resultado = new StringBuffer ("");

				/**		Tipo de Operação = 2	*/
		String 	sql10 = "SELECT  '10', " +
				        "LPAD(NVL(onlyNumbers(nf.CNPJ), '0'), 14, '0') CNPJ, " +
				        "RPAD(LPAD(NVL(noLeftZero(nf.IE), '0'), 12, '0'), 14, ' ') IE, " +
				        "'ELTEK SISTEMA DE ENERGIA IND. COM. SAO PAULO                     SP1164655656' FIXO, " +  
				        "? || ? DATAS, " +
				        "'321' CODES " +
						"FROM C_NotaFiscal nf " +
						"WHERE RowNum = 1";
		
		if(arquivoUnico || estado.equals("SP"))
		{
				/**		Tipo de Operação = 3	*/
				sql10 = "SELECT  '10', " +
				        "LPAD(NVL(onlyNumbers(nf.CNPJ), '0'), 14, '0') CNPJ, " +
				        "RPAD(LPAD(NVL(noLeftZero(nf.IE), '0'), 12, '0'), 14, ' ') IE, " +
				        "'ELTEK SISTEMA DE ENERGIA IND. COM. SAO PAULO                     SP1164655656' FIXO, " +  
				        "? || ? DATAS, " +
				        "'331' CODES " +
						"FROM C_NotaFiscal nf " +
						"WHERE RowNum = 1";
		}
		
		String sql11 =	"SELECT '11AVENIDA GUINLE                    03379                      CID IND SAT    07221070ALVARO AUGUSTO SIMOES DE OLI001164655659' " +
						"FROM DUAL";
		
		String sql50 =	"SELECT DISTINCT '50' AS Tipo, " +
						"LPAD(NVL(onlyNumbers(NVL(l.CNPJ, nf.BPCNPJ)), '0'), 14, '0') AS CNPJ, " +
						"CASE WHEN NVL(l.IE, nf.BPIE) IS NULL OR UPPER(NVL(l.IE, nf.BPIE)) LIKE '%ISENTO%' OR UPPER(NVL(l.IE, nf.BPIE)) LIKE '%ISENTA%'  THEN 'ISENTO        ' ELSE " +
						"RPAD(LPAD(NVL(noLeftZero(NVL(l.IE, nf.BPIE)), '0'), lengthIE(nf.RegionName), '0'), 14, ' ') END AS IE, " +
						"TO_CHAR(nf.DocDate, 'YYYY') AS ANO, " +
						"TO_CHAR(nf.DocDate, 'MM') AS MES, " +
						"TO_CHAR(nf.DocDate, 'DD') AS DIA, " +
						"NVL(SUBSTR(nf.RegionName, 0, 2), 'ER') AS ESTADO, " +
						"'01' AS MODELO, " +
						"(CASE WHEN INSTR(nf.NFENO || ' ', '-') = 0 THEN '   ' ELSE RPAD(onlyNumbers(SUBSTR(nf.NFENO, INSTR(nf.NFENO, '-'), 99)), 3, ' ') END) AS DIG, " +
						"LPAD(onlyNumbers(CASE WHEN nf.IsNFWriter = 'Y' AND nf.IsSoTrx = 'N' THEN SUBSTR(nf.NFENO, 0, (CASE WHEN INSTR(nf.NFENO, '-') = 0 THEN 6 ELSE INSTR(nf.NFENO, '-') -1 END)) ELSE nf.DocumentNo END), 6, '0') AS NF, " +
						"DECODE(nf.IsCancelled, 'Y', '0000', LPAD(onlyNumbers(NVL(l.CFOPName, nf.CFOPName)),   4,   '0')) AS CFOP, " +
						"(CASE WHEN NVL(l.CFOPName, nf.CFOPName) = '0000' THEN 'P' WHEN NVL(l.CFOPName, nf.CFOPName) > '4' THEN 'P' ELSE 'T' END) AS EMITENTE, " +
						"LPAD(DECODE(nf.IsCancelled, 'Y', 0, onlyNumbers(To_Char(NVL(SUM((nfl.Price * nfl.Qty) + nfl.TotalIPI) OVER (PARTITION BY nf.DocumentNo, nfl.RateICMS ORDER BY nfl.RateICMS), nf.TotalNF), '999999999999.99'))),   13,   '0') AS TOTAL_NF, " +
						"LPAD(DECODE(nf.IsCancelled, 'Y', 0, onlyNumbers(To_Char(NVL(SUM((((nfl.Price * nfl.Qty) + DECODE(nf.TaxType, 'C', nfl.TotalIPI, 0)) * DECODE(nfl.RateICMS, 0, 0, 1))) OVER (PARTITION BY nf.DocumentNo, nfl.RateICMS ORDER BY nfl.RateICMS),nf.BaseICMS), '999999999999.99'))),   13,   '0') AS BASE_ICMS, " +
						"LPAD(DECODE(nf.IsCancelled, 'Y', 0, onlyNumbers(To_Char(NVL(SUM(((nfl.Price * nfl.Qty) + DECODE(nf.TaxType, 'C', nfl.TotalIPI, 0)) * (nfl.RateICMS/100)) OVER (PARTITION BY nf.DocumentNo, nfl.RateICMS ORDER BY nfl.RateICMS),nf.TotalICMS), '999999999999.99'))),   13,   '0') AS TOTAL_ICMS, " +
						"LPAD(DECODE(nf.IsCancelled, 'Y', 0, onlyNumbers(To_Char(NVL(SUM(nfl.Price * nfl.Qty * DECODE(nfl.RateICMS, 0, 1, 0)) OVER (PARTITION BY nf.DocumentNo, nfL.rateicms ORDER BY nfl.RateICMS),DECODE(NVL(l.CFOPName, nf.CFOPName), '6.933', nf.TotalNF, '0')), '999999999999.99'))),   13,   '0') AS ISENTA_NAO_TRIBUTADA, " +
						"LPAD('0',   13,   '0') AS OUTRAS, " +
						"RPAD(LPAD(DECODE(nf.IsCancelled, 'Y', 0, NVL(nfl.RateICMS, '0')),   2,   '0'),   4,   '0') AS RATE_ICMS, " +
						"DECODE(nf.IsCancelled, 'Y', 'S', 'N') AS IsCancelled " +
						"FROM    C_NotaFiscal nf " +
						"LEFT JOIN C_NotaFiscalLine_V nfl ON nfl.C_NotaFiscal_ID=nf.C_NotaFiscal_ID " +
						"LEFT JOIN C_NFLetter_V l ON l.C_NotaFiscal_ID=nf.C_NotaFiscal_ID " +
						"WHERE "
	
				.concat(getWhereNF(arquivoUnico) + " UNION ")

				.concat("SELECT DISTINCT  '50' AS Tipo, " +
						"LPAD(NVL(onlyNumbers(SUBSTR(b.CNPJ, 0, 10) || bl.CNPJ), '0'), 14, '0') AS CNPJ, " +
						"DECODE(bl.IEExempt, 'Y', 'ISENTO        ','N', " +
						"RPAD(LPAD(NVL(noLeftZero(bl.IE), '0'), lengthIE(r.Name), '0'), 14, ' ')) AS IE, " +
						"TO_CHAR(i.DateAcct, 'YYYY') AS ANO, " +
						"TO_CHAR(i.DateAcct, 'MM') AS MES, " +
						"TO_CHAR(i.DateAcct, 'DD') AS DIA, " +
						"NVL(SUBSTR(r.Name, 0, 2), 'ER') AS ESTADO, " +
						"'01' AS MODELO, " +
						"(CASE WHEN INSTR(NVL(i.POReference, i.DocumentNo), '-') = 0 THEN '   ' ELSE RPAD(onlyNumbers(SUBSTR(NVL(i.POReference, i.DocumentNo), INSTR(NVL(i.POReference, i.DocumentNo), '-'), 99)), 3, ' ') END) AS DIG, " +
						"LPAD(onlyNumbers((CASE WHEN INSTR(NVL(i.POReference, i.DocumentNo), '-') = 0 THEN NVL(i.POReference, i.DocumentNo) ELSE SUBSTR(NVL(i.POReference, i.DocumentNo), 0, INSTR(NVL(i.POReference, i.DocumentNo), '-') -1) END)), 6, '0') NF, " +
						"LPAD(onlyNumbers(CASE WHEN c.Name='0.000' THEN cl.Name ELSE c.Name END),   4,   '0') AS CFOP, " +
						"(CASE WHEN c.Name < '4' THEN 'T' ELSE 'P' END) AS EMITENTE, " +
						"LPAD(onlyNumbers(To_Char(SUM((il.LineNetAmt + il.TaxAmt)) OVER (PARTITION BY il.C_Invoice_ID, t_ICMS.BaseRate ORDER BY t_ICMS.BaseRate), '999999999999.99')),   13,   '0') TOTAL_NF, " +
						"(CASE WHEN (SELECT SUM(BaseRate)/100 FROM C_Tax WHERE C_Tax.Parent_Tax_ID = il.C_Tax_ID AND C_Tax.TaxIndicator='ICMS') = 0 THEN LPAD(0,13,0) ELSE NVL(DECODE(t.TaxType, " +
						"          'C',  LPAD(onlyNumbers(To_Char(SUM((il.LineNetAmt + il.TaxAmt)) OVER (PARTITION BY il.C_Invoice_ID, t_ICMS.BaseRate ORDER BY t_ICMS.BaseRate), '999999999999.99')),   13,   '0'), " +
						"          'I',  LPAD(onlyNumbers(To_Char(SUM((il.LineNetAmt + il.TaxAmt) * (SELECT 1 - SUM(BaseRate)/100 FROM C_Tax WHERE C_Tax.Parent_Tax_ID = il.C_Tax_ID AND C_Tax.TaxIndicator='IPI')) OVER (PARTITION BY il.C_Invoice_ID, t_ICMS.BaseRate ORDER BY t_ICMS.BaseRate), '999999999999.99')),   13,   '0')),LPAD(0,13,0)) END) AS BASE_ICMS, " +
						"LPAD(onlyNumbers(To_Char(SUM((il.LineNetAmt + il.TaxAmt) * (SELECT  1 - (SUM(BaseRate)/100 * (CASE WHEN t.TaxType = 'I' THEN 1 ELSE 0 END)) FROM C_Tax WHERE C_Tax.Parent_Tax_ID = il.C_Tax_ID AND C_Tax.TaxIndicator='IPI') * (t_ICMS.BaseRate/100)) OVER (PARTITION BY il.C_Invoice_ID, t_ICMS.BaseRate ORDER BY t_ICMS.BaseRate), '999999999999.99')),   13,   '0') AS TOTAL_ICMS, " +
						"NVL(DECODE(t.TaxType, " +
						"          'C',  LPAD(onlyNumbers(To_Char(SUM((il.LineNetAmt + il.TaxAmt) * (SELECT MAX(CASE WHEN t.BaseRate = 0 THEN 1 ELSE 0 END) FROM C_Tax WHERE C_Tax.Parent_Tax_ID = il.C_Tax_ID AND C_Tax.TaxIndicator='ICMS')) OVER (PARTITION BY il.C_Invoice_ID, t_ICMS.BaseRate ORDER BY il.C_Invoice_ID, t_ICMS.BaseRate), '999999999999.99')),   13,   '0'), " +
						"          'I',  LPAD(onlyNumbers(To_Char(SUM((il.LineNetAmt + il.TaxAmt) * (SELECT MAX(CASE WHEN t.BaseRate = 0 THEN 1 ELSE 0 END) * (1 - SUM(BaseRate)/100) FROM C_Tax WHERE C_Tax.Parent_Tax_ID = il.C_Tax_ID AND C_Tax.TaxIndicator='ICMS')) OVER (PARTITION BY il.C_Invoice_ID, t_ICMS.BaseRate ORDER BY t_ICMS.BaseRate), '999999999999.99')),   13,   '0')),LPAD(0,13,0)) AS ISENTA_NAO_TRIBUTADA, " +
						"LPAD('0',   13,   '0') AS OUTRAS, " +
						"RPAD(LPAD( NVL(t_ICMS.BaseRate, 0),   2,   '0'),   4,   '0') AS RATE_ICMS, " +
						"'N' " +
						"FROM    C_Invoice i " +
						"INNER JOIN C_InvoiceLine il ON i.C_Invoice_ID = il.C_Invoice_ID " +
						"	LEFT JOIN C_CFOP cl ON il.C_CFOP_ID = cl.C_CFOP_ID " +
						"INNER JOIN C_Tax t ON t.C_Tax_ID = il.C_Tax_ID " +
						"   LEFT JOIN C_Tax t_ICMS ON (t_ICMS.Parent_Tax_ID = il.C_Tax_ID AND t_ICMS.TaxIndicator='ICMS') " +
						"INNER JOIN C_BPartner b ON i.C_BPartner_ID=b.C_BPartner_ID " +
						"INNER JOIN C_BPartner_Location bl ON i.C_BPartner_Location_ID=bl.C_BPartner_Location_ID " +
						"INNER JOIN C_Location l ON bl.C_Location_ID = l.C_Location_ID " +
						"INNER JOIN C_Region r ON r.C_Region_ID = l.C_Region_ID " +
						"INNER JOIN C_CFOP c ON i.C_CFOP_ID = c.C_CFOP_ID " +
						"WHERE ")
	
				.concat(getWhereInvoice(arquivoUnico, false))
	
				.concat("ORDER BY ANO, MES, DIA");
	
	
		String sql51 = 	"SELECT '51',          " +
						"LPAD(NVL(onlyNumbers(NVL(l.CNPJ, nf.BPCNPJ)), '0'), 14, '0') CNPJ, " +
						"CASE WHEN NVL(l.IE, nf.BPIE) IS NULL OR UPPER(NVL(l.IE, nf.BPIE)) LIKE '%ISENTO%' OR UPPER(NVL(l.IE, nf.BPIE)) LIKE '%ISENTA%' THEN 'ISENTO        ' ELSE " +
						"RPAD(LPAD(NVL(noLeftZero(NVL(l.IE, nf.BPIE)), '0'), lengthIE(nf.RegionName), '0'), 14, ' ') END IE, " +
						"TO_CHAR(nf.DocDate, 'YYYY') AS ANO, " +
						"TO_CHAR(nf.DocDate, 'MM') AS MES, " +
						"TO_CHAR(nf.DocDate, 'DD') AS DIA, " +
						"NVL(SUBSTR(nf.RegionName, 0, 2), 'ER') ESTADO, " +
						"(CASE WHEN INSTR(nf.NFENO || ' ', '-') = 0 THEN '   ' ELSE RPAD(onlyNumbers(SUBSTR(nf.NFENO, INSTR(nf.NFENO, '-'), 99)), 3, ' ') END) AS DIG, " +
						"LPAD(onlyNumbers(CASE WHEN nf.IsNFWriter = 'Y' AND nf.IsSoTrx = 'N' THEN SUBSTR(nf.NFENO, 0, (CASE WHEN INSTR(nf.NFENO, '-') = 0 THEN 6 ELSE INSTR(nf.NFENO, '-') -1 END)) ELSE nf.DocumentNo END), 6, '0') AS NF, " +
						"DECODE(nf.IsCancelled, 'Y', '0000', LPAD(onlyNumbers(NVL(l.CFOPName, nf.CFOPName)),   4,   '0')) AS CFOP, " +
						"LPAD(DECODE(nf.IsCancelled, 'Y', 0, onlyNumbers(To_Char(nf.TotalNF, '999999999999.99'))),   13,   '0') TOTAL_NF, " +
						"LPAD(DECODE(nf.IsCancelled, 'Y', 0, onlyNumbers(To_Char(nf.TotalIPI, '999999999999.99'))),   13,   '0') TOTAL_IPI, " +
						"LPAD(DECODE(nf.IsCancelled, 'Y', 0, onlyNumbers(To_Char((SELECT SUM(nfl.Price * nfl.Qty) FROM C_NotaFiscalLine_V nfl WHERE nfl.C_NotaFiscal_ID = nf.C_NotaFiscal_ID AND nfl.RateIPI = 0), '999999999999.99'))),   13,   '0') AS ISENTA_NAO_TRIBUTADA, " +
						"LPAD('0',   13,   '0') outras, " +
						"LPAD(' ',   20,   ' ') brancos, " +
						"DECODE(nf.IsCancelled, 'Y', 'S', 'N') AS IsCancelled " +
						"FROM    C_NotaFiscal nf " +
						"LEFT JOIN C_NFLetter_V l ON l.C_NotaFiscal_ID=nf.C_NotaFiscal_ID " +
						"WHERE " 
						
				.concat(getWhereNF(arquivoUnico) + " UNION ")

				.concat("SELECT DISTINCT '51', " +
						"LPAD(NVL(onlyNumbers(SUBSTR(b.CNPJ, 0, 10) || bl.CNPJ), '0'), 14, '0') CNPJ, " +
						"DECODE(bl.IEExempt, 'Y', 'ISENTO        ','N', " +
						"RPAD(LPAD(NVL(noLeftZero(bl.IE), '0'), lengthIE(r.Name), '0'), 14, ' ')) IE, " +
						"TO_CHAR(i.DateAcct, 'YYYY') AS ANO, " +
						"TO_CHAR(i.DateAcct, 'MM') AS MES, " +
						"TO_CHAR(i.DateAcct, 'DD') AS DIA, " +
						"NVL(SUBSTR(r.Name, 0, 2), 'ER') ESTADO, " +
						"(CASE WHEN INSTR(NVL(i.POReference, i.DocumentNo), '-') = 0 THEN '   ' ELSE RPAD(onlyNumbers(SUBSTR(NVL(i.POReference, i.DocumentNo), INSTR(NVL(i.POReference, i.DocumentNo), '-'), 99)), 3, ' ') END) AS DIG, " +
						"LPAD(onlyNumbers((CASE WHEN INSTR(NVL(i.POReference, i.DocumentNo), '-') = 0 THEN NVL(i.POReference, i.DocumentNo) ELSE SUBSTR(NVL(i.POReference, i.DocumentNo), 0, INSTR(NVL(i.POReference, i.DocumentNo), '-') -1) END)), 6, '0') NF, " +
						"LPAD(onlyNumbers(CASE WHEN c.Name='0.000' THEN cl.Name ELSE c.Name END),   4,   '0') AS CFOP, " +
						"LPAD(onlyNumbers(To_Char(SUM((il.LineNetAmt + il.TaxAmt)) OVER (PARTITION BY il.C_Invoice_ID, t_ICMS.BaseRate ORDER BY t_ICMS.BaseRate), '999999999999.99')),   13,   '0') TOTAL_NF, " +
						"LPAD(onlyNumbers(To_Char(SUM((il.LineNetAmt + il.TaxAmt) * (SELECT SUM(BaseRate)/100 FROM C_Tax WHERE C_Tax.Parent_Tax_ID = il.C_Tax_ID AND C_Tax.TaxIndicator='IPI')) OVER (PARTITION BY il.C_Invoice_ID ORDER BY il.C_Invoice_ID), '999999999999.99')),   13,   '0') TOTAL_IPI, " +
						"LPAD(onlyNumbers(To_Char(SUM((il.LineNetAmt + il.TaxAmt) * (SELECT MAX(CASE WHEN t.BaseRate = 0 THEN 1 ELSE 0 END) FROM C_Tax WHERE C_Tax.Parent_Tax_ID = il.C_Tax_ID AND C_Tax.TaxIndicator='IPI')) OVER (PARTITION BY il.C_Invoice_ID ORDER BY il.C_Invoice_ID), '999999999999.99')),   13,   '0') ISENTA_NAO_TRIBUTADA, " +
						"LPAD('0',   13,   '0') outras, " +
						"LPAD(' ',   20,   ' ') brancos, " +
						"'N' " +
						"FROM    C_Invoice i " +
						"INNER JOIN C_InvoiceLine il ON i.C_Invoice_ID = il.C_Invoice_ID " +
						"	LEFT JOIN C_CFOP cl ON il.C_CFOP_ID = cl.C_CFOP_ID " +
						"INNER JOIN C_Tax t ON t.C_Tax_ID = il.C_Tax_ID " +
						"   LEFT JOIN C_Tax t_ICMS ON (t_ICMS.Parent_Tax_ID = il.C_Tax_ID AND t_ICMS.TaxIndicator='ICMS') " +
						"INNER JOIN C_BPartner b ON i.C_BPartner_ID=b.C_BPartner_ID " +
						"INNER JOIN C_BPartner_Location bl ON i.C_BPartner_Location_ID=bl.C_BPartner_Location_ID " +
						"INNER JOIN C_Location l ON bl.C_Location_ID = l.C_Location_ID " +
						"INNER JOIN C_Region r ON r.C_Region_ID = l.C_Region_ID " +
						"INNER JOIN C_CFOP c ON i.C_CFOP_ID = c.C_CFOP_ID " +
						"WHERE ")

				.concat(getWhereInvoice(arquivoUnico, false))
	
				.concat("ORDER BY ANO, MES, DIA");
		
		String sql54 = 	"SELECT TO_CHAR(IDENT), TO_CHAR(CNPJ) AS CNPJ, TO_CHAR(ONE), TO_CHAR(DIG) AS DIG, TO_CHAR(NF) AS NF, TO_CHAR(CFOP), " +
						"TO_CHAR(SIT), " +
						"TO_CHAR(LPAD(COUNT(*) OVER (PARTITION BY CNPJ, DIG, NF ORDER BY CNPJ, DIG, NF ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW), 3, '0')) AS POS, " +
						"TO_CHAR(PRODUTO), " +
						"TO_CHAR(QTD), TO_CHAR(TOTAL_LINE), TO_CHAR(DESCONTO), TO_CHAR(BASE_ICMS), TO_CHAR(SUBST), TO_CHAR(TOTAL_IPI), TO_CHAR(ALIQ_ICMS) FROM " +
						"(SELECT  '54' IDENT, " +
						"LPAD(NVL(onlyNumbers(NVL(l.CNPJ, nf.BPCNPJ)), '0'), 14, '0') CNPJ, " +
						"'01' ONE, " +
						"(CASE WHEN INSTR(nf.NFENO || ' ', '-') = 0 THEN '   ' ELSE RPAD(onlyNumbers(SUBSTR(nf.NFENO, INSTR(nf.NFENO, '-'), 99)), 3, ' ') END) AS DIG, " +
						"LPAD(onlyNumbers(CASE WHEN nf.IsNFWriter = 'Y' AND nf.IsSoTrx = 'N' THEN SUBSTR(nf.NFENO, 0, (CASE WHEN INSTR(nf.NFENO, '-') = 0 THEN 6 ELSE INSTR(nf.NFENO, '-') -1 END)) ELSE nf.DocumentNo END), 6, '0') AS NF, " +
						"LPAD(onlyNumbers(NVL(l.CFOPName, nf.CFOPName)),   4,   '0') AS CFOP, " +
						"TO_CHAR(NVL(LPAD(nfl.TaxStatus,3,'0'),'000')) AS SIT, " +
						"RPAD(SUBSTR(NVL(TiraAcento(nfl.ProductValue), NVL(SUBSTR(TiraAcento(nfl.Description),1,INSTR(TiraAcento(nfl.Description),' ')), '0        ')),  0,  9),  14,  ' ') PRODUTO, " +
						"RPAD(LPAD(onlyNumbers(To_Char(nfl.Qty, '999999999999.99')),   8,   '0'),   11,   '0') QTD, " +
						"LPAD(onlyNumbers(To_Char(nfl.TotalLine, '999999999999.99')),   12,   '0') TOTAL_LINE, " +
						"LPAD('0',   12,   '0') DESCONTO, " +
						"LPAD(onlyNumbers(To_Char((CASE WHEN nfl.RateICMS = '0' THEN 0 WHEN nfl.TaxType = 'I' THEN nfl.TotalLine ELSE nfl.TotalLine + nfl.TotalIPI END), '999999999999.99')),   12,   '0') BASE_ICMS, " +
						"LPAD('0',   12,   '0') SUBST, " +
						"LPAD(onlyNumbers(To_Char(nfl.TotalIPI, '999999999999.99')),   12,   '0') TOTAL_IPI, " +
						"RPAD(LPAD(nfl.RateIcms,   2,   '0'),   4,   '0') ALIQ_ICMS " +
						"FROM C_NotaFiscal nf INNER JOIN C_NotaFiscalLine_V nfl ON nf.C_NotaFiscal_id = nfl.C_NotaFiscal_id " +
						"LEFT JOIN C_NFLetter_V l ON l.C_NotaFiscal_ID=nf.C_NotaFiscal_ID " +
						"WHERE "
						
				.concat(getWhereNF(arquivoUnico) + "AND nf.IsCancelled='N') Tabela UNION ")

				.concat("SELECT TO_CHAR(IDENT), TO_CHAR(CNPJ), TO_CHAR(ONE), TO_CHAR(DIG), TO_CHAR(NF), TO_CHAR(CFOP), TO_CHAR(SIT), " +
						"TO_CHAR(LPAD(COUNT(*) OVER (PARTITION BY CNPJ, DIG, NF ORDER BY CNPJ, DIG, NF ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW), 3, '0')) POS, " +
						"TO_CHAR(PRODUTO), TO_CHAR(QTD), TO_CHAR(CASE WHEN SINAL = '+' THEN TOTAL_LINE ELSE DESCONTO END), TO_CHAR(CASE WHEN SINAL = '-' THEN TOTAL_LINE ELSE DESCONTO END), TO_CHAR(BASE_ICMS), TO_CHAR(SUBST), TO_CHAR(TOTAL_IPI), TO_CHAR(ALIQ_ICMS) FROM " +
						"(SELECT DISTINCT '54' IDENT, il.C_InvoiceLine_ID, " +
						"LPAD(NVL(onlyNumbers(SUBSTR(b.CNPJ, 0, 10) || bl.CNPJ), '0'), 14, '0') CNPJ, " +
						"'01' ONE, " +
						"(CASE WHEN INSTR(NVL(i.POReference, i.DocumentNo), '-') = 0 THEN '   ' ELSE RPAD(onlyNumbers(SUBSTR(NVL(i.POReference, i.DocumentNo), INSTR(NVL(i.POReference, i.DocumentNo), '-'), 99)), 3, ' ') END) AS DIG, " +
						"LPAD(onlyNumbers((CASE WHEN INSTR(NVL(i.POReference, i.DocumentNo), '-') = 0 THEN NVL(i.POReference, i.DocumentNo) ELSE SUBSTR(NVL(i.POReference, i.DocumentNo), 0, INSTR(NVL(i.POReference, i.DocumentNo), '-') -1) END)), 6, '0') NF, " +
						"LPAD(onlyNumbers(CASE WHEN c.Name='0.000' THEN cl.Name ELSE c.Name END),   4,   '0') AS CFOP, " +
						"'000' SIT, " +
						"RPAD(SUBSTR(NVL(p.Value, NVL(SUBSTR(TiraAcento(ch.Name),1,INSTR(TiraAcento(ch.Name),' ')), NVL(SUBSTR(TiraAcento(il.Description),1,INSTR(TiraAcento(il.Description),' ')), '0        '))  ),  0,  9),  14,  ' ') PRODUTO, " +
						"RPAD(LPAD(onlyNumbers(To_Char(il.QtyEntered, '999999999999.99')),   8,   '0'),   11,   '0') QTD, " +
						"LPAD(onlyNumbers(To_Char((il.LineNetAmt + il.TaxAmt) * (SELECT 1 - SUM(BaseRate)/100 FROM C_Tax WHERE C_Tax.Parent_Tax_ID = il.C_Tax_ID AND C_Tax.TaxIndicator='IPI'), '999999999999.99')),   12,   '0') TOTAL_LINE, " +
						"LPAD('0',   12,   '0') DESCONTO, " +
						"(CASE WHEN (SELECT SUM(BaseRate)/100 FROM C_Tax WHERE C_Tax.Parent_Tax_ID = il.C_Tax_ID AND C_Tax.TaxIndicator='ICMS') = 0 THEN LPAD(0,12,0) ELSE NVL(DECODE(t.TaxType, " +
						"          'C',  LPAD(onlyNumbers(To_Char((il.LineNetAmt + il.TaxAmt), '999999999999.99')),   12,   '0'), " +
						"          'I',  LPAD(onlyNumbers(To_Char(((il.LineNetAmt + il.TaxAmt) * (SELECT 1 - SUM(BaseRate)/100 FROM C_Tax WHERE C_Tax.Parent_Tax_ID = il.C_Tax_ID AND C_Tax.TaxIndicator='IPI')), '999999999999.99')),   12,   '0')),LPAD(0,12,0)) END) BASE_ICMS, " +
						"LPAD('0',   12,   '0') SUBST, " +
						"(CASE WHEN il.LineNetAmt < 0 THEN '-' ELSE '+' END) AS Sinal, " +
						"LPAD(onlyNumbers(To_Char((il.LineNetAmt + il.TaxAmt) * (SELECT SUM(BaseRate)/100 FROM C_Tax WHERE C_Tax.Parent_Tax_ID = il.C_Tax_ID AND C_Tax.TaxIndicator='IPI'), '999999999999.99')),   12,   '0') TOTAL_IPI, " +
						"RPAD(LPAD((SELECT NVL(BaseRate,0) FROM C_Tax WHERE C_Tax.Parent_Tax_ID = il.C_Tax_ID AND C_Tax.TaxIndicator='ICMS'),   2,   '0'),   4,   '0') ALIQ_ICMS " +
						"FROM    C_Invoice i " +
						"INNER JOIN C_InvoiceLine il ON i.C_Invoice_ID = il.C_Invoice_ID " +
						"	LEFT JOIN C_CFOP cl ON il.C_CFOP_ID = cl.C_CFOP_ID " +
						"   LEFT JOIN M_Product p ON il.M_Product_ID = p.M_Product_ID " +
						"   LEFT JOIN C_Charge ch ON ch.C_Charge_ID = il.C_Charge_ID " +
						"INNER JOIN C_Tax t ON t.C_Tax_ID = il.C_Tax_ID " +
						"   LEFT JOIN C_Tax t_ICMS ON (t_ICMS.Parent_Tax_ID = il.C_Tax_ID AND t_ICMS.TaxIndicator='ICMS') " +
						"INNER JOIN C_BPartner b ON i.C_BPartner_ID=b.C_BPartner_ID " +
						"INNER JOIN C_BPartner_Location bl ON i.C_BPartner_Location_ID=bl.C_BPartner_Location_ID " +
						"INNER JOIN C_Location l ON bl.C_Location_ID = l.C_Location_ID " +
						"INNER JOIN C_Region r ON r.C_Region_ID = l.C_Region_ID " +
						"INNER JOIN C_CFOP c ON i.C_CFOP_ID = c.C_CFOP_ID " +
						"WHERE ") 
						
				.concat(getWhereInvoice(arquivoUnico, false) + ") Tabela ORDER BY CNPJ, DIG, NF, POS");
		
		String sql70 = 	"SELECT DISTINCT  '70',   " +
						"LPAD(NVL(onlyNumbers(SUBSTR(b.CNPJ, 0, 10) || bl.CNPJ), '0'), 14, '0') CNPJ, " +
						"DECODE(bl.IEExempt, 'Y', 'ISENTO        ','N', " +
						"RPAD(LPAD(NVL(noLeftZero(bl.IE), '0'), lengthIE(r.Name), '0'), 14, ' ')) IE, " +
						"TO_CHAR(i.DateAcct, 'YYYY') AS ANO, " +
						"TO_CHAR(i.DateAcct, 'MM') AS MES, " +
						"TO_CHAR(i.DateAcct, 'DD') AS DIA, " +
						"NVL(SUBSTR(r.Name, 0, 2), 'ER') ESTADO, " +
						"'08' MODELO, " +
						"(CASE WHEN INSTR(NVL(i.POReference, i.DocumentNo), '-') = 0 THEN '   ' ELSE RPAD(onlyNumbers(SUBSTR(NVL(i.POReference, i.DocumentNo), INSTR(NVL(i.POReference, i.DocumentNo), '-'), 99)), 3, ' ') END) DIG, " + 
						"LPAD(onlyNumbers((CASE WHEN INSTR(NVL(i.POReference, i.DocumentNo), '-') = 0 THEN NVL(i.POReference, i.DocumentNo) ELSE SUBSTR(NVL(i.POReference, i.DocumentNo), 0, INSTR(NVL(i.POReference, i.DocumentNo), '-') -1) END)), 6, '0') NF, " +
						"LPAD(onlyNumbers(CASE WHEN c.Name='0.000' THEN cl.Name ELSE c.Name END),   4,   '0') CFOP, " +
						"LPAD(onlyNumbers(To_Char(i.GrandTotal, '999999999999.99')),   13,   '0') TOTAL_NF, " +
						"(CASE WHEN (SELECT SUM(BaseRate)/100 FROM C_Tax WHERE C_Tax.Parent_Tax_ID = il.C_Tax_ID AND C_Tax.TaxIndicator='ICMS') = 0 THEN LPAD(0,14,0) ELSE NVL(DECODE(t.TaxType, " +
						"          'C',  LPAD(onlyNumbers(To_Char((il.LineNetAmt + il.TaxAmt), '999999999999.99')),   14,   '0'), " +
						"          'I',  LPAD(onlyNumbers(To_Char(((il.LineNetAmt + il.TaxAmt) * (SELECT 1 - SUM(BaseRate)/100 FROM C_Tax WHERE C_Tax.Parent_Tax_ID = il.C_Tax_ID AND C_Tax.TaxIndicator='IPI')), '999999999999.99')),   14,   '0')),LPAD(0,12,0)) END) BASE_ICMS, " +
						"LPAD(onlyNumbers(To_Char(SUM((il.LineNetAmt + il.TaxAmt) * (SELECT SUM(BaseRate)/100 FROM C_Tax WHERE C_Tax.Parent_Tax_ID = il.C_Tax_ID AND C_Tax.TaxIndicator='ICMS')) OVER (PARTITION BY il.C_Invoice_ID ORDER BY il.C_Invoice_ID), '999999999999.99')),   14,   '0') TOTAL_ICMS, " +
						"LPAD('0',   14,   '0') ISENTA_NAO_TRIBUTADA, " +
						"LPAD('0',   14,   '0') OUTRAS, " +
						"'1' CIF, " +
						"'N' " +
						"FROM    C_Invoice i " +
						"INNER JOIN C_InvoiceLine il ON i.C_Invoice_ID = il.C_Invoice_ID " +
						"	LEFT JOIN C_CFOP cl ON il.C_CFOP_ID = cl.C_CFOP_ID " +
						"INNER JOIN C_Tax t ON t.C_Tax_ID = il.C_Tax_ID " +
						"INNER JOIN C_BPartner b ON i.C_BPartner_ID=b.C_BPartner_ID " +
						"INNER JOIN C_BPartner_Location bl ON i.C_BPartner_Location_ID=bl.C_BPartner_Location_ID " +
						"INNER JOIN C_Location l ON bl.C_Location_ID = l.C_Location_ID " +
						"INNER JOIN C_Region r ON r.C_Region_ID = l.C_Region_ID " +
						"INNER JOIN C_CFOP c ON i.C_CFOP_ID = c.C_CFOP_ID " +
						"WHERE "
						
				.concat(getWhereInvoice(arquivoUnico, true))
				
				.concat("ORDER BY ANO, MES, DIA");
		
		
		String sql75 = 	"SELECT UNIQUE TO_CHAR(REG), TO_CHAR(DATAS), TO_CHAR(FIRST_VALUE(PRODUTO || NCM || PRODUTO_DESC || UOM_NAME || SIT || ZERO) OVER (PARTITION BY PRODUTO ORDER BY PRODUTO)) AS Produto FROM (SELECT '75' REG, " +
						//"SELECT UNIQUE TO_CHAR(REG), TO_CHAR(DATAS), TO_CHAR(FIRST_VALUE(PRODUTO || NCM || PRODUTO_DESC) OVER (PARTITION BY PRODUTO ORDER BY PRODUTO)) AS Produto, TO_CHAR(UOM_NAME), TO_CHAR(SIT), TO_CHAR(ZERO) FROM (SELECT '75' REG, " +
						"? || ? DATAS, " +
						"RPAD(SUBSTR(NVL(TiraAcento(nfl.ProductValue), NVL(SUBSTR(TiraAcento(nfl.Description),1,INSTR(TiraAcento(nfl.Description),' ')), '0        ')),  0,  9),  14,  ' ') PRODUTO, " +
						"LPAD(NVL(onlyNumbers(nfl.NameNCM),'0'),8,'0') NCM, " +
						"RPAD(SUBSTR(TiraAcento(NVL(NVL(nfl.ProductName, nfl.Description), ' ')),  0,  53),  53,  ' ') PRODUTO_DESC, " +
						"RPAD(nfl.NameUOM,6,' ') UOM_NAME, " +
						"NVL(LPAD(nfl.TaxStatus,3,'0'),'000') SIT, " +
						"'001800000000000000000000' ZERO " +
						"FROM C_NotaFiscal nf INNER JOIN C_NotaFiscalLine_V nfl ON nf.C_NotaFiscal_id = nfl.C_NotaFiscal_id " +
						"WHERE "
						
				.concat(getWhereNF(arquivoUnico) + "AND nf.IsCancelled='N') Tabela UNION ")
				
				.concat("SELECT UNIQUE TO_CHAR(REG), TO_CHAR(DATAS), TO_CHAR(FIRST_VALUE(PRODUTO || NCM || PRODUTO_DESC || UOM_NAME || SIT || ZERO) OVER (PARTITION BY PRODUTO ORDER BY PRODUTO)) FROM ( " +
						//"SELECT UNIQUE TO_CHAR(REG), TO_CHAR(DATAS), TO_CHAR(FIRST_VALUE(PRODUTO || NCM || PRODUTO_DESC) OVER (PARTITION BY PRODUTO ORDER BY PRODUTO)), TO_CHAR(UOM_NAME), TO_CHAR(SIT), TO_CHAR(ZERO) FROM ( " +
						"SELECT '75' REG, " +
						"? || ? DATAS, " +
						"RPAD(SUBSTR(NVL(TiraAcento(p.Value), NVL(SUBSTR(TiraAcento(ch.Name),1,INSTR(TiraAcento(ch.Name),' ')), NVL(SUBSTR(TiraAcento(il.Description),1,INSTR(TiraAcento(il.Description),' ')), '0        '))  ),  0,  9),  14,  ' ') PRODUTO, " +
						"LPAD(NVL(onlyNumbers(n.Name),'0'),8,'0') NCM, " +
						"RPAD(SUBSTR(TiraAcento(NVL(NVL(p.Name, nvl(SUBSTR(ch.Name,3+INSTR(ch.Name,' '),99), il.Description)), ' ')),  0,  53),  53,  ' ') PRODUTO_DESC, " +
						"RPAD('UN',6,' ') UOM_NAME, " +
						"NVL(LPAD('0',3,'0'),'000') SIT, " +
						"'001800000000000000000000' ZERO " +
						"FROM    C_Invoice i " +
						"INNER JOIN C_InvoiceLine il ON i.C_Invoice_ID = il.C_Invoice_ID " +
						"   LEFT JOIN M_Product p ON il.M_Product_ID = p.M_Product_ID " +
						"   LEFT JOIN C_Charge ch ON ch.C_Charge_ID = il.C_Charge_ID " +
						"   LEFT JOIN M_NCM n ON n.M_NCM_ID = p.M_NCM_ID " +
						"INNER JOIN C_Tax t ON t.C_Tax_ID = il.C_Tax_ID " +
						"INNER JOIN C_BPartner b ON i.C_BPartner_ID=b.C_BPartner_ID " +
						"INNER JOIN C_BPartner_Location bl ON i.C_BPartner_Location_ID=bl.C_BPartner_Location_ID " +
						"INNER JOIN C_Location l ON bl.C_Location_ID = l.C_Location_ID " +
						"INNER JOIN C_Region r ON r.C_Region_ID = l.C_Region_ID " +
						"INNER JOIN C_CFOP c ON i.C_CFOP_ID = c.C_CFOP_ID " +
						"WHERE ")
						
				.concat(getWhereInvoice(arquivoUnico, false) + ") Tabela ORDER BY Produto");
		try
		{
			PreparedStatement pstmt = DB.prepareStatement(sql10, null);
			pstmt.setString(1, pegaAno(dataInicial).concat(pegaMes(dataInicial)).concat(pegaDia(dataInicial)));
			pstmt.setString(2, pegaAno(dataFinal).concat(pegaMes(dataFinal)).concat(pegaDia(dataFinal)));
			log.fine("Executando Query 10");
			ResultSet rs = pstmt.executeQuery();
			log.fine("Gravando registro 10");
			while (rs.next())
			{
	        	for (int i=1; i <= rs.getMetaData().getColumnCount(); i++)
                { 
                	resultado.append(rs.getString(i));
                } 
	            resultado.append(System.getProperty("line.separator"));
			}
			
			pstmt = DB.prepareStatement(sql11, null);
			log.fine("Executando Query 11");
			rs = pstmt.executeQuery();
			log.fine("Gravando registro 11");
			while (rs.next())
			{
	        	for (int i=1; i <= rs.getMetaData().getColumnCount(); i++)
                { 
                	resultado.append(rs.getString(i));
                } 
	            resultado.append(System.getProperty("line.separator"));
			}
			int j = 1;
			pstmt = DB.prepareStatement(sql50, null);
			pstmt.setString(j++, pegaDia(dataInicial).concat("/"+pegaMes(dataInicial)).concat("/"+pegaAno(dataInicial)));	//1
			pstmt.setString(j++, pegaDia(dataFinal).concat("/"+pegaMes(dataFinal)).concat("/"+pegaAno(dataFinal)));			//2
			if(!arquivoUnico)
				pstmt.setString(j++, estado);																				//3
			pstmt.setString(j++, pegaDia(dataInicial).concat("/"+pegaMes(dataInicial)).concat("/"+pegaAno(dataInicial)));	//3..4
			pstmt.setString(j++, pegaDia(dataFinal).concat("/"+pegaMes(dataFinal)).concat("/"+pegaAno(dataFinal)));			//4..5
			if(!arquivoUnico)
				pstmt.setString(6, estado);																					//6
			log.fine("Executando Query 50");
			rs = pstmt.executeQuery();
			log.fine("Gravando registro 50");
			while (rs.next())
			{
	        	for (int i=1; i <= rs.getMetaData().getColumnCount(); i++)
                { 
                	resultado.append(rs.getString(i));
                } 
	            resultado.append(System.getProperty("line.separator"));
	            contReg50++;
			}
			
			j = 1;
			pstmt = DB.prepareStatement(sql51, null);
			pstmt.setString(j++, pegaDia(dataInicial).concat("/"+pegaMes(dataInicial)).concat("/"+pegaAno(dataInicial)));	//1
			pstmt.setString(j++, pegaDia(dataFinal).concat("/"+pegaMes(dataFinal)).concat("/"+pegaAno(dataFinal)));			//2
			if(!arquivoUnico)
				pstmt.setString(j++, estado);																				//3
			pstmt.setString(j++, pegaDia(dataInicial).concat("/"+pegaMes(dataInicial)).concat("/"+pegaAno(dataInicial)));	//3..4
			pstmt.setString(j++, pegaDia(dataFinal).concat("/"+pegaMes(dataFinal)).concat("/"+pegaAno(dataFinal)));			//4..5
			if(!arquivoUnico)
				pstmt.setString(j++, estado);																				//6
			log.fine("Executando Query 51");
			rs = pstmt.executeQuery();
			log.fine("Gravando registro 51");
			while (rs.next())
			{
	        	for (int i=1; i <= rs.getMetaData().getColumnCount(); i++)
                { 
                	resultado.append(rs.getString(i));
                } 
	            resultado.append(System.getProperty("line.separator"));
	            contReg51++;
			}
			
			j = 1;
			pstmt = DB.prepareStatement(sql54, null);
			pstmt.setString(j++, pegaDia(dataInicial).concat("/"+pegaMes(dataInicial)).concat("/"+pegaAno(dataInicial)));	//1
			pstmt.setString(j++, pegaDia(dataFinal).concat("/"+pegaMes(dataFinal)).concat("/"+pegaAno(dataFinal)));			//2
			if(!arquivoUnico)
				pstmt.setString(j++, estado);																				//3
			pstmt.setString(j++, pegaDia(dataInicial).concat("/"+pegaMes(dataInicial)).concat("/"+pegaAno(dataInicial)));	//3..4
			pstmt.setString(j++, pegaDia(dataFinal).concat("/"+pegaMes(dataFinal)).concat("/"+pegaAno(dataFinal)));			//4..5
			if(!arquivoUnico)
				pstmt.setString(j++, estado);																				//6
			log.fine("Executando Query 54");
			rs = pstmt.executeQuery();
			log.fine("Gravando registro 54");
			while (rs.next())
			{
	        	for (int i=1; i <= rs.getMetaData().getColumnCount(); i++)
                { 
                	resultado.append(rs.getString(i));
                } 
	            resultado.append(System.getProperty("line.separator"));
	            contReg54++;
			}
			
			j = 1;
			pstmt = DB.prepareStatement(sql70, null);
			pstmt.setString(j++, pegaDia(dataInicial).concat("/"+pegaMes(dataInicial)).concat("/"+pegaAno(dataInicial)));	//1
			pstmt.setString(j++, pegaDia(dataFinal).concat("/"+pegaMes(dataFinal)).concat("/"+pegaAno(dataFinal)));			//2
			if(!arquivoUnico)
				pstmt.setString(j++, estado);																				//3
			log.fine("Executando Query 70");
			rs = pstmt.executeQuery();
			log.fine("Gravando registro 70");
			while (rs.next())
			{
	        	for (int i=1; i <= rs.getMetaData().getColumnCount(); i++)
                { 
                	resultado.append(rs.getString(i));
                } 
	            resultado.append(System.getProperty("line.separator"));
	            contReg70++;
			}
			
			j = 1;
			pstmt = DB.prepareStatement(sql75, null);
			pstmt.setString(j++, pegaAno(dataInicial).concat(pegaMes(dataInicial)).concat(pegaDia(dataInicial)));			//1
			pstmt.setString(j++, pegaAno(dataFinal).concat(pegaMes(dataFinal)).concat(pegaDia(dataFinal)));					//2
			pstmt.setString(j++, pegaDia(dataInicial).concat("/"+pegaMes(dataInicial)).concat("/"+pegaAno(dataInicial)));	//3
			pstmt.setString(j++, pegaDia(dataFinal).concat("/"+pegaMes(dataFinal)).concat("/"+pegaAno(dataFinal)));			//4
			if(!arquivoUnico)
				pstmt.setString(j++, estado);																				//5
			pstmt.setString(j++, pegaAno(dataInicial).concat(pegaMes(dataInicial)).concat(pegaDia(dataInicial)));			//5..6
			pstmt.setString(j++, pegaAno(dataFinal).concat(pegaMes(dataFinal)).concat(pegaDia(dataFinal)));					//6..7
			pstmt.setString(j++, pegaDia(dataInicial).concat("/"+pegaMes(dataInicial)).concat("/"+pegaAno(dataInicial)));	//7..8
			pstmt.setString(j++, pegaDia(dataFinal).concat("/"+pegaMes(dataFinal)).concat("/"+pegaAno(dataFinal)));			//8..9
			if(!arquivoUnico)
				pstmt.setString(j++, estado);
			log.fine("Executando Query 75");
			rs = pstmt.executeQuery();																				//10
			log.fine("Gravando registro 75");
			while (rs.next())
			{
	        	for (int i=1; i <= rs.getMetaData().getColumnCount(); i++)
                { 
                	resultado.append(rs.getString(i));
                } 
	            resultado.append(System.getProperty("line.separator"));
	            contReg75++;
			}
			
			contReg99 = contReg50 + contReg51 + contReg54 + contReg70 + contReg75 + 3;
	        String sql99 = 	"SELECT DISTINCT '90', " +
					        "LPAD(NVL(onlyNumbers(nf.CNPJ), '0'), 14, '0') CNPJ, "+
					        "RPAD(LPAD(NVL(noLeftZero(nf.IE), '0'), 12, '0'), 14, ' ') IE, "+
	        				"RPAD( " +
	        				"(CASE WHEN " + contReg50 + " > 0 THEN '50'||LPAD('" + contReg50 + "',8,'0') END)|| " +
	        				"(CASE WHEN " + contReg51 + " > 0 THEN '51'||LPAD('" + contReg51 + "',8,'0') END)|| " +
	        				"(CASE WHEN " + contReg54 + " > 0 THEN '54'||LPAD('" + contReg54 + "',8,'0') END)|| " +
	        				"(CASE WHEN " + contReg70 + " > 0 THEN '70'||LPAD('" + contReg70 + "',8,'0') END)|| " +
	        				"(CASE WHEN " + contReg75 + " > 0 THEN '75'||LPAD('" + contReg75 + "',8,'0') END)|| " +
	        				"(CASE WHEN " + contReg99 + " > 0 THEN '99'||LPAD('" + contReg99 + "',8,'0') END) ,95,' '), '1' FROM C_NotaFiscal nf WHERE ROWNUM=1";
	        //pstmt.setString(1, estado);
	        pstmt = DB.prepareStatement(sql99, null);
	        log.fine("Executando Query 90");
	        rs = pstmt.executeQuery();
	        
	        while (rs.next ()) 
	        {
	        	for (int i=1; i <= rs.getMetaData().getColumnCount(); i++)
                { 
	        		resultado.append(rs.getString(i));
	            }
	        }
			
			rs.close();
			pstmt.close();
		}
		catch (SQLException e)
		{
			log.log(Level.SEVERE, sql10, e);
		}
		return resultado.toString();
	}
	
	/**************************************************************************
	 *  Refresh - Create Query and refresh grid
	 */
	private void refresh()
	{
		/**
		 *  Create Where Clause
		 */
		MQuery query = m_staticQuery.deepCopy();
		//  Organization
		//  DateFrom
		Timestamp ts = (Timestamp)dateFField.getValue();
		if (ts != null)
			query.addRestriction("TRUNC(DocDate)", MQuery.GREATER_EQUAL, ts);
		//  DateTO
		ts = (Timestamp)dateTField.getValue();
		if (ts != null)
			query.addRestriction("TRUNC(DocDate)", MQuery.LESS_EQUAL, ts);
		log.info( "VSintegra.refresh query=" + query.toString());

		/**
		 *  Refresh/Requery
		 */
		setCursor(Cursor.getPredefinedCursor(Cursor.WAIT_CURSOR));
		statusBar.setStatusLine(Msg.getMsg(Env.getCtx(), "StartSearch"), false);
		//
		m_mTab.setQuery(query);
		m_mTab.query(false);
		//
		setCursor(Cursor.getDefaultCursor());
		int no = m_mTab.getRowCount();
		statusBar.setStatusLine(" ", false);
		statusBar.setStatusDB(Integer.toString(no));
	}   //  refresh
	
	private boolean saveAuto()
	{
		dateFrom = (Date)dateFField.getValue();
		dateTo = (Date)dateTField.getValue();
		
		String query = 	"SELECT DISTINCT nf.RegionName " +
						"FROM    C_NotaFiscal nf "+
						"WHERE   "
						
				.concat(getWhereNF(true) + " UNION ")
		
				.concat("SELECT DISTINCT r.Name " +
						"FROM    C_Invoice i " +
						"INNER JOIN C_InvoiceLine il ON i.C_Invoice_ID = il.C_Invoice_ID " +
						"INNER JOIN C_Tax t ON t.C_Tax_ID = il.C_Tax_ID " +
						"INNER JOIN C_BPartner b ON i.C_BPartner_ID=b.C_BPartner_ID " +
						"INNER JOIN C_BPartner_Location bl ON i.C_BPartner_Location_ID=bl.C_BPartner_Location_ID " +
						"INNER JOIN C_Location l ON bl.C_Location_ID = l.C_Location_ID " +
						"INNER JOIN C_Region r ON r.C_Region_ID = l.C_Region_ID " +
						"INNER JOIN C_CFOP c ON i.C_CFOP_ID = c.C_CFOP_ID " +
						"WHERE ")
						
				.concat(getWhereInvoice(true, false) + "ORDER BY 1");
		
		int i=0;
		try
		{
			PreparedStatement pstmt = DB.prepareStatement(query, null);
			pstmt.setString(1, pegaDia(dateFrom).concat("/"+pegaMes(dateFrom)).concat("/"+pegaAno(dateFrom)));
			pstmt.setString(2, pegaDia(dateTo).concat("/"+pegaMes(dateTo)).concat("/"+pegaAno(dateTo)));
			pstmt.setString(3, pegaDia(dateFrom).concat("/"+pegaMes(dateFrom)).concat("/"+pegaAno(dateFrom)));
			pstmt.setString(4, pegaDia(dateTo).concat("/"+pegaMes(dateTo)).concat("/"+pegaAno(dateTo)));
			ResultSet rs = pstmt.executeQuery();
			while (rs.next())
			{
	    		estados[i] = rs.getString(1);
	    		i++;
			}
			rs.close();
			pstmt.close();
		}
		catch (SQLException e)
		{
			log.log(Level.SEVERE, query, e);
		}
		File file = null;
		
		JFileChooser fc = new JFileChooser ();
	
		//Start in current directory
		fc.setCurrentDirectory (new File ("."));
	
		//Set filter for web pages.
		fc.setFileFilter (fTextFilter);
	
		//Set to a default name for save.
		fc.setSelectedFile(new File ("Arquivo Automático.txt"));
	
		//Open chooser dialog
		int result = fc.showSaveDialog (this);
	
		if (result == JFileChooser.CANCEL_OPTION)
		{
			return true;
		}
		else if (result == JFileChooser.APPROVE_OPTION) 
		{
			file = fc.getSelectedFile();
			if (file.exists ())
			{
				int response = JOptionPane.showConfirmDialog (null,
				"Deseja substituir o arquivo existente?","Confirmar substitui��o",
				JOptionPane.YES_NO_OPTION,
				JOptionPane.QUESTION_MESSAGE);
				if ( response == JOptionPane.NO_OPTION) 
					return false;
			}
			
			System.out.println(estados.length);
			
			if(dateFrom==null || dateTo==null)
			{
				log.saveError("", "Data Inválida.");
				return false;
			}

			if(todosEstados.isSelected())
			{
				if(arquivoUnico.isSelected())
				{
					writeFile (new File( file.getParent()+ "\\SINTEGRA_" + pegaAno(dateFrom).concat(pegaMes(dateFrom)+"-"+pegaMes(dateTo)) + "_TODOS.txt"), pesquisaSintegra(dateFrom, dateTo, "", true));
				}
				else
				{
					for (int j=0; j < estados.length; j++)
					{
						if (estados[j]!=null)
							writeFile (new File( file.getParent()+ "\\SINTEGRA_" + pegaAno(dateFrom).concat(pegaMes(dateFrom)) + estados[j] + ".txt"), pesquisaSintegra(dateFrom, dateTo, estados[j], false));
					}
				}
			}
			else
			{
				writeFile (new File( file.getParent()+ "\\SINTEGRA_" + pegaAno(dateFrom).concat(pegaMes(dateFrom)) + (String) fRegion.getSelectedItem().toString() + ".txt"), pesquisaSintegra(dateFrom, dateTo, (String) fRegion.getSelectedItem().toString(), false));
			}
				
			return true;
		} else 
		{
			return false;
		}
	}
	
	private static boolean writeFile (File file, String data_string)
	{
		try
		{
			PrintWriter out = new PrintWriter (new BufferedWriter (new FileWriter (file)));
			out.print (data_string);
			out.flush ();
			out.close ();
		} catch  (IOException e) 
		{
			return false;
		}
		return true;
	
	} //writeFile
	
	public String pegaMes(Date data)
	{ 
		SimpleDateFormat f = new SimpleDateFormat("MM"); 
		return f.format(data); 
	}
	
	private String getWhereNF(Boolean arquivoUnico)
	{
		String where = 	"nf.DocDate BETWEEN TO_DATE(?,'DD/MM/YYYY') " +
						"AND TO_DATE(?,'DD/MM/YYYY') " +
						"AND nf.AD_Client_ID = " + Env.getAD_Client_ID(Env.getCtx()) + " " +
				 	   	"AND nf.BPTypeBR IN ('PJ', 'PF') " +
				 	   	"AND nf.TotalNF > 0 " +
				 	   	"AND nf.CFOPName NOT LIKE '%Z%' " +
				 	   	"AND nf.CFOPName NOT LIKE '%352' " +
						"AND nf.CFOPName NOT IN ('1.933', '2.933', '3.933', '5.933', '7.933') ";	
		if (!arquivoUnico)
			where += "AND nf.RegionName=? ";
		
		return where;
	}//getWhereNF
	
	private String getWhereInvoice(Boolean arquivoUnico, Boolean isTransporte)
	{
		String where = 	"i.DateAcct BETWEEN TO_DATE(?,'DD/MM/YYYY') " +
						"AND TO_DATE(?,'DD/MM/YYYY') " +
						"AND i.AD_Client_ID = " + Env.getAD_Client_ID(Env.getCtx()) + " " +
						"AND b.BPTypeBR IN ('PJ', 'PF') " +
						"AND i.GrandTotal > 0 " +
						"AND c.Name NOT LIKE '%Z%' " +
						"AND c.Name NOT IN ('1.933', '2.933', '3.933', '5.933', '7.933') " +
						"AND i.DocStatus IN ('CL','CO') " +
						"AND i.IsSOTrx = 'N' " +
						"AND i.C_NotaFiscal_ID IS NULL ";
		
		if(isTransporte)
			where += "AND c.Name LIKE '%352' ";
		else
			where += "AND c.Name NOT LIKE '%352' ";
		
		if (!arquivoUnico)
			where += "AND r.Name=? ";
		
		return where;
	}//getWhereInvoice
	
	public String pegaAno(Date data)
	{ 
		SimpleDateFormat f = new SimpleDateFormat("yyyy"); 
		return f.format(data); 
	}
	
	public String pegaDia(Date data)
	{ 
		SimpleDateFormat f = new SimpleDateFormat("dd"); 
		return f.format(data); 
	}
	
	class TextFilter extends javax.swing.filechooser.FileFilter 
	{
	  public boolean accept (File f) {
	    return f.getName ().toLowerCase ().endsWith (".txt")
	        || f.isDirectory ();
	  }
	
	  public String getDescription () {
	    return "Arquivos Sintegra (*.txt)";
	  }
	
	} // class TextFilter

	public void vetoableChange(PropertyChangeEvent evt) throws PropertyVetoException {
		// TODO Auto-generated method stub
		
	}

}   //  VSintegra