/******************************************************************************
 * Copyright (C) 2011 Kenos Assessoria e Consultoria de Sistemas Ltda         *
 * Copyright (C) 2011 Ricardo Santana                                         *
 * This program is free software; you can redistribute it and/or modify it    *
 * under the terms version 2 of the GNU General Public License as published   *
 * by the Free Software Foundation. This program is distributed in the hope   *
 * that it will be useful, but WITHOUT ANY WARRANTY; without even the implied *
 * warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.           *
 * See the GNU General Public License for more details.                       *
 * You should have received a copy of the GNU General Public License along    *
 * with this program; if not, write to the Free Software Foundation, Inc.,    *
 * 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA.                     *
 *****************************************************************************/
package org.adempierelbr.nfse;

import java.math.BigDecimal;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.Properties;
import java.util.logging.Level;

import org.adempierelbr.model.MLBRNotaFiscal;
import org.adempierelbr.model.MLBRNotaFiscalLine;
import org.adempierelbr.model.X_LBR_NFTax;
import org.adempierelbr.model.X_LBR_TaxGroup;
import org.adempierelbr.util.BPartnerUtil;
import org.adempierelbr.util.NFeUtil;
import org.compiere.Adempiere;
import org.compiere.model.MBPartner;
import org.compiere.model.MBPartnerLocation;
import org.compiere.model.MDocType;
import org.compiere.model.MLocation;
import org.compiere.model.MOrgInfo;
import org.compiere.model.MProduct;
import org.compiere.model.MSequence;
import org.compiere.model.MSysConfig;
import org.compiere.model.X_C_City;
import org.compiere.util.CLogMgt;
import org.compiere.util.CLogger;
import org.compiere.util.Env;

import br.gov.sp.prefeitura.nfe.tipos.TpCPFCNPJ;
import br.gov.sp.prefeitura.nfe.tipos.TpChaveRPS;
import br.gov.sp.prefeitura.nfe.tipos.TpEndereco;
import br.gov.sp.prefeitura.nfe.tipos.TpRPS;
import br.gov.sp.prefeitura.nfe.tipos.TpStatusNFe;
import br.gov.sp.prefeitura.nfe.tipos.TpTipoRPS;

/**
 * Gera o arquivo XML da NFS-e (Nota Fiscal de Serviços Eletrônica)
 * 	
 * 	Cada prefeitura pode ter um layout diferente para sua NFS-e.
 * 
 * @author Ricardo Santana
 * @version $Id: NFSeXMLGenerator.java, v1.0 2010/05/14 5:21:12 PM, ralexsander Exp $
 */
public class NFSeXMLGenerator
{
	/** Log				*/
	private static CLogger log = CLogger.getCLogger(NFSeXMLGenerator.class);
	
	/**
	 * 	Gera a NFS-e
	 * 
	 * @param 	LBR_NotaFiscal_ID
	 * @return	Error msg or ""
	 */
	public static String generateXML (int LBR_NotaFiscal_ID) throws Exception
	{
		return generateXML (LBR_NotaFiscal_ID, null);
	}	//	generateNFSe
	
	/**
	 * 	Gera a NFS-e
	 * 
	 * @param 	LBR_NotaFiscal_ID
	 * @param 	TrxName
	 * @return	Error msg or ""
	 */
	public static String generateXML (int LBR_NotaFiscal_ID, String trxName) throws Exception
	{
		log.info("init");
		TpRPS rps = generateNFSe (LBR_NotaFiscal_ID, trxName);
		String result = rps.xmlText (NFeUtil.getXmlOpt ());
		log.finer(result);
		log.fine("final");
		//
		return result;
	}	//	generateNFSe
	
	/**
	 * 	Gera a NFS-e
	 * 
	 * @param 	LBR_NotaFiscal_ID
	 * @param 	TrxName
	 * @return	Error msg or ""
	 */
	public static TpRPS generateNFSe (int LBR_NotaFiscal_ID, String trxName) throws Exception
	{
		return generateNFSe (LBR_NotaFiscal_ID, false, trxName);
	}	//	generateNFSe
	
	/**
	 * 	Gera a NFS-e
	 * 
	 * @param 	LBR_NotaFiscal_ID
	 * @param	sign
	 * @param 	TrxName
	 * @return	Error msg or ""
	 */
	public static TpRPS generateNFSe (int LBR_NotaFiscal_ID, Boolean sign, String trxName) throws Exception
	{
		Properties ctx = Env.getCtx();
		MLBRNotaFiscal nf = new MLBRNotaFiscal (ctx, LBR_NotaFiscal_ID, trxName);
		MDocType dt = new MDocType (ctx, nf.getC_DocTypeTarget_ID(), trxName);
		MLBRNotaFiscalLine[] nfLines = nf.getLines ();
		MBPartner bp = new MBPartner (Env.getCtx(), nf.getC_BPartner_ID(), trxName);
		//
		MBPartnerLocation bpartLoc = new MBPartnerLocation(ctx, nf.getC_BPartner_Location_ID(), trxName);
		MLocation bpLoc = bpartLoc.getLocation(false);
		MLocation location = new MLocation(ctx, bpLoc.getC_Location_ID(), trxName);
		X_C_City c = BPartnerUtil.getX_C_City(ctx, location, null);
		String cityCode = "";
		//
		if (c != null && c.get_ValueAsString("lbr_CityCode") != null)
			cityCode = c.get_ValueAsString("lbr_CityCode");
		
		//	Gera a sequência de RPS neste momento
		if (!MSysConfig.getBooleanValue("LBR_REALTIME_RPS_NUMBER", true, nf.getAD_Client_ID())
				&& MLBRNotaFiscal.RPS_TEMP.equals(nf.getDocumentNo()))
		{
			nf.setDocumentNo(MSequence.getDocumentNo(nf.getC_DocTypeTarget_ID(), trxName, false));
			nf.save();
		}
		
		//
		TpChaveRPS tpChaveRPS 		= TpChaveRPS.Factory.newInstance(); 
		TpRPS tpRPS					= TpRPS.Factory.newInstance();
		
		tpChaveRPS.setInscricaoPrestador(toLong (MOrgInfo.get(ctx, nf.getAD_Org_ID(), null).get_ValueAsString("lbr_CCM")));
		tpChaveRPS.setNumeroRPS(toLong (nf.getDocumentNo()));
		tpChaveRPS.setSerieRPS(dt.get_ValueAsString("lbr_NFSerie"));
		
		Calendar cal = new GregorianCalendar ();
		cal.setTimeInMillis (nf.getDateDoc().getTime());
		
		tpRPS.setChaveRPS(tpChaveRPS);
		tpRPS.setTipoRPS(TpTipoRPS.RPS);
		tpRPS.setDataEmissao(cal);
		tpRPS.setStatusRPS(TpStatusNFe.N);				//	FIXME
		tpRPS.setTributacaoRPS("T");					//	FIXME
		tpRPS.setValorServicos(nf.getlbr_ServiceTotalAmt());
		tpRPS.setValorDeducoes(Env.ZERO);
		tpRPS.setValorPIS(nf.getTaxAmt("PIS"));
		tpRPS.setValorCOFINS(nf.getTaxAmt("COFINS"));
		tpRPS.setValorINSS(nf.getTaxAmt("INSS"));
		tpRPS.setValorIR(nf.getTaxAmt("IR"));
		tpRPS.setValorCSLL(nf.getTaxAmt("CSLL"));
		//
		TpCPFCNPJ tpCPFCNPJ = tpRPS.addNewCPFCNPJTomador();
		//
		if (MLBRNotaFiscal.LBR_BPTYPEBR_PF_Individual.equals(BPartnerUtil.getBPTypeBR (bp)))
			tpCPFCNPJ.setCPF(nf.getlbr_BPCNPJ());
		else
			tpCPFCNPJ.setCNPJ(nf.getlbr_BPCNPJ());
		//
		if (bp != null && "3550308".equals(cityCode)) // São Paulo
			tpRPS.setInscricaoMunicipalTomador (toLong (bp.get_ValueAsString ("lbr_CCM")));
		//
		tpRPS.setInscricaoEstadualTomador(toLong (nf.getlbr_BPIE()));
		tpRPS.setRazaoSocialTomador(nf.getBPName());
		//
		TpEndereco end = tpRPS.addNewEnderecoTomador();
		end.setTipoLogradouro(nf.getlbr_BPAddress1());
		end.setLogradouro(nf.getlbr_BPAddress1());
		end.setNumeroEndereco(nf.getlbr_BPAddress2());
		end.setBairro(nf.getlbr_BPAddress3());
		end.setComplementoEndereco(nf.getlbr_BPAddress4());
		end.setCEP(toInt (nf.getlbr_BPPostal()));
		end.setCidade(toInt (cityCode));	//	Cod. da Cidade
		end.setUF(nf.getlbr_BPRegion());
		//
		BigDecimal aliquota = Env.ZERO;
		String serviceCode = "";
		String discriminacao = nf.getDescription();
		
		//	Linhas
		for (MLBRNotaFiscalLine nfLine : nfLines)
		{
			if (!nfLine.islbr_IsService())
				continue;
			//
			if (nfLine.getM_Product_ID() > 0)
			{
				MProduct p = new MProduct (Env.getCtx(), nfLine.getM_Product_ID(), null);
				if (serviceCode.equals("") 
						&& p.get_ValueAsString("lbr_ServiceCode") != null)
				{
					serviceCode = p.get_ValueAsString("lbr_ServiceCode");	//	FIXME : Copiar para LBR_NotaFiscalLine
					aliquota = nfLine.getTaxRate("ISS");
					break;
				}
			}
		}
		//
		if (serviceCode == null || serviceCode.equals(""))
			log.log(Level.SEVERE, "No Service Code for Nota Fiscal");
		//
		tpRPS.setAliquotaServicos(aliquota);
		tpRPS.setCodigoServico(toInt (serviceCode));
		tpRPS.setDiscriminacao(discriminacao);
		//
		tpRPS.setEmailTomador(nf.getInvoiceContactEMail());
		tpRPS.setISSRetido(false);
		//
//		if (sign)
//			tpRPS.setAssinatura(nf.getAD_Org_ID());
		//
		return tpRPS;
	}	//	generateNFSe
	
	/**
	 * 	Retorna o valor das deduções
	 * 
	 * @param nf
	 * @return
	 */
	@SuppressWarnings("unused")
	private static BigDecimal getDeducoes (MLBRNotaFiscal nf)
	{
		BigDecimal deducoes = Env.ZERO;
		//
		X_LBR_NFTax[] taxes = nf.getTaxes();
		for (X_LBR_NFTax tax : taxes)
		{
			X_LBR_TaxGroup tg = new X_LBR_TaxGroup (Env.getCtx(), tax.getLBR_TaxGroup_ID(), null);
			if (tg.getName() == null || tg.getName().equals("ISS"))	//	ISS ja e destacado normalmente
				continue;
			//
			if (tax.getlbr_TaxAmt().signum() == -1)
				deducoes = deducoes.add(tax.getlbr_TaxAmt().abs());
		}
		//
		return deducoes;
	}	//	getDeducoes

	private static Long toLong (String longStr)
	{
		if (longStr == null)
			return null;
		return new Long (longStr);
	}	//	toLong
	
	private static int toInt (String intStr)
	{
		if (intStr == null)
			return 0;
		
		try
		{
			return Integer.parseInt(intStr);
		}
		catch (Exception e)	{}
		return 0;
	}	//	toLong
	
	/**
	 * 	Testes
	 * 
	 * @param args
	 */
	public static void main (String[] args) 
	{
		Adempiere.startupEnvironment(false);
		CLogMgt.setLevel(Level.FINE);
		CLogMgt.enable(true);
		System.out.println("NFSe XML Test");
		System.out.println("-----------------------");
		
		try
		{
			NFSeXMLGenerator.generateXML (1000000);
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
		
		System.out.println("Process OK");
	}	//	main
}	//	NFSeXMLGenerator
