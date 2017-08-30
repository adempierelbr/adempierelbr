package org.adempierelbr.process;

import java.io.File;
import java.math.BigDecimal;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;

import org.adempiere.model.POWrapper;
import org.adempierelbr.model.MLBRCFOP;
import org.adempierelbr.wrapper.I_W_AD_OrgInfo;
import org.compiere.model.MBPartner;
import org.compiere.model.MOrgInfo;
import org.compiere.model.MSysConfig;
import org.compiere.model.X_I_Order;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.DB;
import org.compiere.util.Env;

import br.gov.fazenda.receita.siscomex.Adicao;
import br.gov.fazenda.receita.siscomex.DeclaracaoImportacaoConsulta;
import br.gov.fazenda.receita.siscomex.DetalheMercadoria;
import br.gov.fazenda.receita.siscomex.ListaDeclaracoes;
import br.gov.fazenda.receita.siscomex.ListaDeclaracoesDocument;

/**
 * 		Import XML File from SISCOMEX web
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: ImportSISCOMEX.java, v1.0 2015/11/13 22:14:44 PM, ralexsander Exp $
 */
public class ImportSISCOMEX extends SvrProcess
{
	/**	File	            */
	private String 		p_FilePath = null;
	
	/**	Regex				*/
	private String 		p_ProductRegex = "";
	
	/**	Organization			*/
	private Integer 	p_AD_Org_ID;
	
	/** Business Partner	*/	
	private Integer		p_C_BPartner_ID;
	
	/** Document Type Target	*/	
	private Integer		p_C_DocTypeTarget_ID;
	
	/**	Business Partner Location			*/
	private Integer 	p_C_BPartner_Location_ID;
	
	/**	Price List			*/
	private Integer 	p_M_PriceList_ID;
	
	/**	Payment Term			*/
	private Integer 	p_C_PaymentTerm_ID;
	
	/**	Warehouse			*/
	private Integer 	p_M_Warehouse_ID;
	
	/** Date Document	*/
	private Timestamp	p_DateDoc;
	
	/** CFOP	*/
	private int			p_LBR_CFOP_ID = 0;
	
	/**	Delete old Imported				*/
	private boolean			m_deleteOldImported = false;
	
	List<ImportFormat> list = new ArrayList<ImportFormat>();
	
	/**
	 *  Prepare - e.g., get Parameters.
	 */
	protected void prepare()
	{
		ProcessInfoParameter[] para = getParameter();
		for (int i = 0; i < para.length; i++)
		{
			String name = para[i].getParameterName();
			if (para[i].getParameter() == null)
				;
			else if(name.equals("FileName"))
			{
				p_FilePath = para[i].getParameter().toString();
			}
			else if(name.equals("AD_Org_ID"))
			{
				p_AD_Org_ID = para[i].getParameterAsInt();
			}
			else if(name.equals("C_BPartner_ID"))
			{
				p_C_BPartner_ID = para[i].getParameterAsInt();
			}
			else if(name.equals("C_DocTypeTarget_ID"))
			{
				p_C_DocTypeTarget_ID = para[i].getParameterAsInt();
			}
			else if(name.equals("C_BPartner_Location_ID"))
			{
				p_C_BPartner_Location_ID = para[i].getParameterAsInt();
			}
			else if(name.equals("M_PriceList_ID"))
			{
				p_M_PriceList_ID = para[i].getParameterAsInt();
			}
			else if(name.equals("C_PaymentTerm_ID"))
			{
				p_C_PaymentTerm_ID = para[i].getParameterAsInt();
			}
			else if(name.equals("M_Warehouse_ID"))
			{
				p_M_Warehouse_ID = para[i].getParameterAsInt();
			}
			else if(name.equals("DateDoc"))
			{
				p_DateDoc = (Timestamp) para[i].getParameter();
			}
			else if (name.equals("LBR_CFOP_ID"))
			{
				p_LBR_CFOP_ID = para[i].getParameterAsInt();
			}
			else if (name.equals("DeleteOldImported"))
			{
				m_deleteOldImported = "Y".equals(para[i].getParameter());
			}
			else
				log.log(Level.SEVERE, "prepare - Unknown Parameter: " + name);
		}
	}	//	prepare

	/**
	 *  Perform process.
	 *  @return Message
	 *  @throws Exception if not successful
	 */
	protected String doIt() throws Exception
	{
		//	Delete Old Imported
		if (m_deleteOldImported)
		{
			StringBuffer sql = new StringBuffer ("DELETE I_Order WHERE AD_Client_ID=")
					.append (Env.getAD_Client_ID(Env.getCtx()));
			int no = DB.executeUpdate(sql.toString(), get_TrxName());
			log.fine("Delete Old Impored =" + no);
		}
			
		//	Regex para Identificar a Chave de Busca do Produto no Arquivo XML		
		p_ProductRegex = MSysConfig.getValue("KNS_SISCOMEX_PRODUCT_REGEX", Env.getAD_Client_ID(Env.getCtx()));
		
		// Read XML from SISCOMEX and put it on Import Format
		XMLtoImportFormat();
		
		// Get XML and Add on Import Order
		return GenerateImportOrder();
		
	}	//	doIt
	
	/**
	 * Read XML from SISCOMEX and put it on Import Format
	 * 
	 * @throws Exception
	 */
	public void XMLtoImportFormat() throws Exception
	{
		//	Get XML File
		ListaDeclaracoesDocument decDoc = ListaDeclaracoesDocument.Factory.parse (new File(p_FilePath));
		ListaDeclaracoes dec = decDoc.getListaDeclaracoes();		
		BigDecimal total = Env.ZERO;
		BigDecimal insurance = Env.ZERO;
		BigDecimal freight = Env.ZERO;
		
		int counter = 1;
		int counterDI = 0;
		
		I_W_AD_OrgInfo oi = POWrapper.create (MOrgInfo.get (getCtx(), p_AD_Org_ID, null), I_W_AD_OrgInfo.class);

		// Read the XML File from Siscomex
		for (DeclaracaoImportacaoConsulta di : dec.getDeclaracaoImportacaoArray())
		{
			for (Adicao adicao : di.getAdicaoArray())
			{
				counterDI++;
				BigDecimal multiplier = toBD (adicao.getCondicaoVendaValorReais())
								.divide(toBD (adicao.getCondicaoVendaValorMoeda()), 17, BigDecimal.ROUND_HALF_UP)
								.divide(Env.ONEHUNDRED, 6, BigDecimal.ROUND_HALF_UP);
				//
				BigDecimal freightAdi = Env.ZERO;
				BigDecimal insuranceAdi = Env.ZERO;
				int index = 1;
				int totalItems = adicao.getMercadoriaArray().length;
				//
				for (DetalheMercadoria det : adicao.getMercadoriaArray())
				{
					ImportFormat imp = new ImportFormat();
					imp.setLine(counter++);
					imp.setnDI(di.getNumeroDI());
					imp.setnADI(adicao.getNumeroAdicao());
					imp.setnNCM(adicao.getDadosMercadoriaCodigoNcm());
					imp.setQty(toBD (det.getQuantidade(), 5));
					String descr = det.getDescricaoMercadoria().trim().replace("\n", "");
					if (p_ProductRegex != null && descr.matches(p_ProductRegex))
						imp.setProductValue(descr.replaceAll(p_ProductRegex, "$1"));
					else
					{
						imp.setErrorMsg("Não foi possível determinar o código do produto");
						imp.setLineDesc(descr);
					}
					imp.setProductName(descr.substring(13));
					imp.setPrice(multiplier.multiply(toBD (det.getValorUnitario(), 5)));
					imp.setRateII(toBD (adicao.getIiAliquotaAdValorem()));
					imp.setAmtII(toBD (adicao.getIiAliquotaValorRecolher()));
					imp.setRateIPI(toBD (adicao.getIpiAliquotaAdValorem()));
					imp.setAmtIPI(toBD (adicao.getIpiAliquotaValorDevido()));
					imp.setRatePIS(toBD (adicao.getPisPasepAliquotaAdValorem()));
					imp.setAmtPIS(toBD (adicao.getPisPasepAliquotaValorDevido()));
					imp.setRateCOFINS(toBD (adicao.getCofinsAliquotaAdValorem()));
					imp.setAmtCOFINS(toBD (adicao.getCofinsAliquotaValorDevido()));
					imp.setRateICMS(new BigDecimal (18));	//	FIXME
					
					if (I_W_AD_OrgInfo.LBR_TAXREGIME_SimpleNational.equals(oi.getLBR_TaxRegime())
							|| I_W_AD_OrgInfo.LBR_TAXREGIME_SimpleNational_MEI.equals(oi.getLBR_TaxRegime()))
					{
						imp.setCstIPI("49");
						imp.setCstPIS("99");
						imp.setCstCOFINS("99");
						imp.setCstICMS("900");
					}
					else
					{
						imp.setCstIPI("00");
						imp.setCstPIS("50");
						imp.setCstCOFINS("50");
						imp.setCstICMS("00");
					}
					imp.setAmtICMS(Env.ZERO);
					imp.setAmtSISCOMEX(Env.ZERO);
					imp.setAmtOther(Env.ZERO);
					if (p_LBR_CFOP_ID > 0)
					{
						MLBRCFOP cfop = new MLBRCFOP(getCtx(), p_LBR_CFOP_ID, null);
						imp.setCFOP(cfop.getValue());
					}
					else
						imp.setCFOP("3.101");
					
					if (index == totalItems)
					{
						imp.setAmtInsurance (toBD (adicao.getSeguroValorReais()).subtract (insuranceAdi).setScale(2, BigDecimal.ROUND_HALF_UP));
						imp.setAmtFreight(toBD (adicao.getFreteValorReais()).subtract (freightAdi).setScale(2, BigDecimal.ROUND_HALF_UP));
					}
					else
					{
						imp.setAmtInsurance(toBD (adicao.getSeguroValorReais()).divide(new BigDecimal(totalItems), 2, BigDecimal.ROUND_HALF_UP));
						imp.setAmtFreight(toBD (adicao.getFreteValorReais()).divide(new BigDecimal(totalItems), 2, BigDecimal.ROUND_HALF_UP));
						insuranceAdi = insuranceAdi.add(imp.getAmtInsurance());
						freightAdi = freightAdi.add(imp.getAmtFreight());
					}
					
					//	Ajusta o preço unitário, descontando o frete e seguro
					//		somente para INCOTERM que o frete/seguro constam no preço
					if (!adicao.getCondicaoVendaIncoterm().startsWith("E") 
							&& !adicao.getCondicaoVendaIncoterm().startsWith("F"))
						imp.setPrice(imp.getPrice().subtract(imp.getAmtInsurance().add(imp.getAmtFreight()).divide(imp.getQty(), 17, BigDecimal.ROUND_HALF_UP)).setScale(7, BigDecimal.ROUND_HALF_UP));
					
					//	Ajusta o total da linha	
					imp.setTotalLine(imp.getAmtInsurance().add(imp.getAmtFreight()).add(imp.getQty().multiply(imp.getPrice())));

					total = total.add(imp.getTotalLine());
					insurance = insurance.add(imp.getAmtInsurance());
					freight = freight.add(imp.getAmtFreight());
					list.add(imp);
					index++;
				}
			}
		}
		
		BigDecimal siscomex = getSISCOMEX (counterDI);
		for (ImportFormat imp : list)
		{
			imp.setAmtSISCOMEX(siscomex.multiply(imp.getTotalLine()).divide(total, 2, BigDecimal.ROUND_HALF_UP));
		}

	}	//	XMLtoImportFormat
	
	
	/**
	 * Get Siscomex
	 * 
	 * @param qtyAdditions
	 * @return
	 */
	private static BigDecimal getSISCOMEX (int qtyAdditions)
	{
		BigDecimal result = Env.ZERO;
		
		for (int index=1; index <= qtyAdditions; index++)
		{
			if (index >= 21)
				result = result.add(new BigDecimal (5.9));
			else if (index >= 11)
				result = result.add(new BigDecimal (11.8));
			else if (index >= 6)
				result = result.add(new BigDecimal (17.7));
			else if (index >= 3)
				result = result.add(new BigDecimal (23.6));
			else if (index == 2)
				result = result.add(new BigDecimal (29.5));
			else if (index == 1)
				result = result.add(new BigDecimal (214.5));
		}
		
		return result.setScale(2, BigDecimal.ROUND_HALF_UP);
	}
	
	/**
	 * String to BigDecimal
	 * 
	 * @param amt
	 * @return
	 */
	private static BigDecimal toBD (String amt)
	{
		return toBD (amt, 2);
	}	//	toBD
	
	/**
	 * String to BigDecimal
	 * @param amt
	 * @param qde
	 * @return
	 */
	private static BigDecimal toBD (String amt, int qde)
	{
		return new BigDecimal (new StringBuilder(amt)
						.insert(amt.length()-qde, ".").toString());
	}
	
	/**
	 * Generate Import Order From XML
	 * @return
	 */
	private String GenerateImportOrder()
	{
		// Business Partner
		MBPartner	partner = new MBPartner (Env.getCtx(), p_C_BPartner_ID, null);
		
		//	Purchase Order's Document Number
		String documentNo = "";
		
		//	Valid Variable List is NOT Null
		if (list == null)
			return "@Error@";
		
		//	Add XML to Import Order
		for (ImportFormat imp : list)
		{	
			//	Import Order
			X_I_Order purchaseOrder = new X_I_Order(Env.getCtx(), 0, get_TrxName());
			
			//	Add the same Purchase Order's Document Number to All Lines
			if (!"".equals(documentNo))
				purchaseOrder.setDocumentNo(documentNo);
			
			// Purchase Order's Head
			purchaseOrder.setAD_Org_ID(p_AD_Org_ID);
			purchaseOrder.setC_DocType_ID(p_C_DocTypeTarget_ID);
			purchaseOrder.setC_BPartner_ID(p_C_BPartner_ID);
			if (p_C_BPartner_Location_ID != null)
				purchaseOrder.setC_BPartner_Location_ID(p_C_BPartner_Location_ID);
			purchaseOrder.setM_PriceList_ID(p_M_PriceList_ID);
			if (p_C_PaymentTerm_ID != null)
				purchaseOrder.setC_PaymentTerm_ID(p_C_PaymentTerm_ID);
			purchaseOrder.setM_Warehouse_ID(p_M_Warehouse_ID);
			purchaseOrder.setBPartnerValue(partner.getValue());
			purchaseOrder.setName(partner.getName());
			purchaseOrder.setDateOrdered(p_DateDoc);
			purchaseOrder.setIsSOTrx(false);
			
			// Purchase Order's Lines
			purchaseOrder.set_ValueOfColumn("LBR_DI", imp.getnDI());
			purchaseOrder.set_ValueOfColumn("LBR_ADI", imp.getnADI());
			purchaseOrder.setQtyOrdered(imp.getQty());
			purchaseOrder.setProductValue(imp.getProductValue());
			purchaseOrder.setPriceActual(imp.getPrice());
			purchaseOrder.setLineDescription(imp.getLineDesc());
			
			// Puerchase Order's Lines Tax
			purchaseOrder.set_ValueOfColumn("LBR_IIRate", imp.getRateII());
			purchaseOrder.set_ValueOfColumn("LBR_IPIRate", imp.getRateIPI());
			purchaseOrder.set_ValueOfColumn("LBR_CSTIPI", imp.getCstIPI());
			purchaseOrder.set_ValueOfColumn("LBR_PISRate", imp.getRatePIS());
			purchaseOrder.set_ValueOfColumn("LBR_CSTPIS", imp.getCstPIS());
			purchaseOrder.set_ValueOfColumn("LBR_COFINSRate", imp.getRateCOFINS());
			purchaseOrder.set_ValueOfColumn("LBR_CSTCOFINS", imp.getCstCOFINS());
			purchaseOrder.set_ValueOfColumn("LBR_ICMSRate",imp.getRateICMS());
			purchaseOrder.set_ValueOfColumn("LBR_CSTICMS", imp.getCstICMS());
			
			// Amount Siscomex
			purchaseOrder.set_ValueOfColumn("lbr_SISCOMEXAmt", imp.getAmtSISCOMEX());
			
			// Amount Others Charge
			purchaseOrder.set_ValueOfColumn("LBR_AmtOther", imp.getAmtOther());
			
			// CFOP
			purchaseOrder.set_ValueOfColumn("LBR_CFOPName", imp.getCFOP());
			
			// Amount Insurance
			purchaseOrder.set_ValueOfColumn("lbr_InsuranceAmt", imp.getAmtInsurance());
			
			// Amount Freight
			purchaseOrder.set_ValueOfColumn("FreightAmt", imp.getAmtFreight());
			
			// Tax
			purchaseOrder.setTaxIndicator("BR");
			
			//	Errors
			if (imp.getErrorMsg() != null)
				purchaseOrder.setI_ErrorMsg(imp.getErrorMsg());
			
			purchaseOrder.save();
			
			// Get DocumentNo generate from the First Line and repeat on the orders
			if ("".equals(documentNo))
				documentNo = purchaseOrder.getDocumentNo();
		}
		
		return "@Sucess@ - Pedido " + documentNo + " adicionado a Janela Importar Pedido";
	}
	
}	//	ImportSISCOMEX

/**
 * Classe Import Format
 * Get XML File From Siscomex and Add in this class Object
 *
 */
class ImportFormat
{
	String partnerValue;
	Integer line;
	String nDI;
	String nADI;
	String nNCM;
	BigDecimal qty;
	String productValue;
	String productName;
	BigDecimal price;
	BigDecimal totalLine;
	BigDecimal rateII;
	BigDecimal amtII;
	BigDecimal rateIPI;
	String cstIPI;
	BigDecimal amtIPI;
	BigDecimal rateICMS;
	String cstICMS;
	BigDecimal amtICMS;
	BigDecimal ratePIS;
	String cstPIS;
	BigDecimal amtPIS;
	BigDecimal rateCOFINS;
	String cstCOFINS;
	BigDecimal amtCOFINS;
	BigDecimal amtSISCOMEX;
	BigDecimal amtInsurance;
	BigDecimal amtFreight;
	BigDecimal amtOther;
	String CFOP;
	String errorMsg;
	String lineDesc;
	public String getPartnerValue()
	{
		return partnerValue;
	}
	public void setPartnerValue(String partnerValue)
	{
		this.partnerValue = partnerValue;
	}
	public Integer getLine()
	{
		return line;
	}
	public void setLine(Integer line)
	{
		this.line = line;
	}
	public String getnDI()
	{
		return nDI;
	}
	public void setnDI(String nDI)
	{
		this.nDI = nDI;
	}
	public String getnADI()
	{
		return nADI;
	}
	public void setnADI(String nADI)
	{
		this.nADI = nADI;
	}
	public String getnNCM()
	{
		return nNCM;
	}
	public void setnNCM(String nNCM)
	{
		this.nNCM = nNCM;
	}
	public BigDecimal getQty()
	{
		return qty;
	}
	public void setQty(BigDecimal qty)
	{
		this.qty = qty;
	}
	public String getProductValue()
	{
		return productValue;
	}
	public void setProductValue(String productValue)
	{
		this.productValue = productValue;
	}
	public String getProductName()
	{
		return productName;
	}
	public void setProductName(String productName)
	{
		this.productName = productName;
	}
	public BigDecimal getPrice()
	{
		return price;
	}
	public void setPrice(BigDecimal price)
	{
		this.price = price;
	}
	public BigDecimal getTotalLine()
	{
		return totalLine;
	}
	public void setTotalLine(BigDecimal totalLine)
	{
		this.totalLine = totalLine;
	}
	public BigDecimal getRateII()
	{
		return rateII;
	}
	public void setRateII(BigDecimal rateII)
	{
		this.rateII = rateII;
	}
	public BigDecimal getAmtII()
	{
		return amtII;
	}
	public void setAmtII(BigDecimal amtII)
	{
		this.amtII = amtII;
	}
	public BigDecimal getRateIPI()
	{
		return rateIPI;
	}
	public void setRateIPI(BigDecimal rateIPI)
	{
		this.rateIPI = rateIPI;
	}
	public String getCstIPI()
	{
		return cstIPI;
	}
	public void setCstIPI(String cstIPI)
	{
		this.cstIPI = cstIPI;
	}
	public BigDecimal getAmtIPI()
	{
		return amtIPI;
	}
	public void setAmtIPI(BigDecimal amtIPI)
	{
		this.amtIPI = amtIPI;
	}
	public BigDecimal getRateICMS()
	{
		return rateICMS;
	}
	public void setRateICMS(BigDecimal rateICMS)
	{
		this.rateICMS = rateICMS;
	}
	public String getCstICMS()
	{
		return cstICMS;
	}
	public void setCstICMS(String cstICMS)
	{
		this.cstICMS = cstICMS;
	}
	public BigDecimal getAmtICMS()
	{
		return amtICMS;
	}
	public void setAmtICMS(BigDecimal amtICMS)
	{
		this.amtICMS = amtICMS;
	}
	public BigDecimal getRatePIS()
	{
		return ratePIS;
	}
	public void setRatePIS(BigDecimal ratePIS)
	{
		this.ratePIS = ratePIS;
	}
	public String getCstPIS()
	{
		return cstPIS;
	}
	public void setCstPIS(String cstPIS)
	{
		this.cstPIS = cstPIS;
	}
	public BigDecimal getAmtPIS()
	{
		return amtPIS;
	}
	public void setAmtPIS(BigDecimal amtPIS)
	{
		this.amtPIS = amtPIS;
	}
	public BigDecimal getRateCOFINS()
	{
		return rateCOFINS;
	}
	public void setRateCOFINS(BigDecimal rateCOFINS)
	{
		this.rateCOFINS = rateCOFINS;
	}
	public String getCstCOFINS()
	{
		return cstCOFINS;
	}
	public void setCstCOFINS(String cstCOFINS)
	{
		this.cstCOFINS = cstCOFINS;
	}
	public BigDecimal getAmtCOFINS()
	{
		return amtCOFINS;
	}
	public void setAmtCOFINS(BigDecimal amtCOFINS)
	{
		this.amtCOFINS = amtCOFINS;
	}
	public BigDecimal getAmtSISCOMEX()
	{
		return amtSISCOMEX;
	}
	public void setAmtSISCOMEX(BigDecimal amtSISCOMEX)
	{
		this.amtSISCOMEX = amtSISCOMEX;
	}
	public BigDecimal getAmtInsurance()
	{
		return amtInsurance;
	}
	public void setAmtInsurance(BigDecimal amtInsurance)
	{
		this.amtInsurance = amtInsurance;
	}
	public BigDecimal getAmtFreight()
	{
		return amtFreight;
	}
	public void setAmtFreight(BigDecimal amtFreight)
	{
		this.amtFreight = amtFreight;
	}
	public BigDecimal getAmtOther()
	{
		return amtOther;
	}
	public void setAmtOther(BigDecimal amtOther)
	{
		this.amtOther = amtOther;
	}
	public String getCFOP()
	{
		return CFOP;
	}
	public void setCFOP(String cFOP)
	{
		CFOP = cFOP;
	}
	public String getErrorMsg()
	{
		return errorMsg;
	}
	public void setErrorMsg(String errorMsg)
	{
		this.errorMsg = errorMsg;
	}
	public String getLineDesc()
	{
		return lineDesc;
	}
	public void setLineDesc(String lineDesc)
	{
		this.lineDesc = lineDesc;
	}
	@Override
	public String toString()
	{	
		String sep = "	";
		return partnerValue + sep + line + sep + nDI + sep + nADI + sep + 
				nNCM + sep + qty + sep + productValue + sep + productName + sep + 
				price + sep + totalLine + sep + rateII + sep + amtII + sep + 
				rateIPI + sep + cstIPI + sep + amtIPI + sep + rateICMS + sep + 
				cstICMS + sep + amtICMS + sep + ratePIS + sep + cstPIS + sep + 
				amtPIS + sep + rateCOFINS + sep + cstCOFINS + sep + amtCOFINS + sep + 
				amtSISCOMEX + sep + amtInsurance + sep + amtFreight + sep + amtOther + sep + CFOP;
	}
}	//	importFormat
