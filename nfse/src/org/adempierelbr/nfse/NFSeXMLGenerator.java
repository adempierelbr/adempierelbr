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
import java.util.Properties;
import java.util.logging.Level;

import org.adempierelbr.model.MLBRNotaFiscal;
import org.adempierelbr.model.MLBRNotaFiscalLine;
import org.adempierelbr.model.X_LBR_NFTax;
import org.adempierelbr.model.X_LBR_TaxGroup;
import org.adempierelbr.util.BPartnerUtil;
import org.adempierelbr.util.NFeUtil;
import org.adempierelbr.util.SignatureUtil;
import org.adempierelbr.util.TextUtil;
import org.apache.xmlbeans.XmlCalendar;
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

import br.gov.sp.prefeitura.nfe.tipos.TpAssinatura;
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
@Deprecated
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
		
		Calendar cal = new XmlCalendar ();
		cal.setTimeInMillis (nf.getDateDoc().getTime());
		
		tpRPS.setChaveRPS(tpChaveRPS);
		tpRPS.setTipoRPS(TpTipoRPS.RPS);
		tpRPS.setDataEmissao(cal);
		tpRPS.setStatusRPS(TpStatusNFe.N);				//	FIXME
		tpRPS.setTributacaoRPS("T");					//	FIXME
		tpRPS.setValorServicos(toBD (nf.getlbr_ServiceTotalAmt()));
		tpRPS.setValorDeducoes(Env.ZERO);
		
		BigDecimal v_PIS 	= toBD (nf.getTaxAmt("PIS")).abs();
		BigDecimal v_COFINS = toBD (nf.getTaxAmt("COFINS")).abs();
		BigDecimal v_INSS 	= toBD (nf.getTaxAmt("INSS")).abs();
		BigDecimal v_IR 	= toBD (nf.getTaxAmt("IR")).abs();
		BigDecimal v_CSLL 	= toBD (nf.getTaxAmt("CSLL")).abs();
		
		if (v_PIS.signum() == 1)
			tpRPS.setValorPIS(v_PIS);
		
		if (v_COFINS.signum() == 1)
			tpRPS.setValorCOFINS(v_COFINS);
		
		if (v_INSS.signum() == 1)
			tpRPS.setValorINSS(v_INSS);
		
		if (v_IR.signum() == 1)
			tpRPS.setValorIR(v_IR);
		
		if (v_CSLL.signum() == 1)
			tpRPS.setValorCSLL(v_CSLL);
		//
		TpCPFCNPJ tpCPFCNPJ = tpRPS.addNewCPFCNPJTomador();
		//
		if (MLBRNotaFiscal.LBR_BPTYPEBR_PF_Individual.equals(BPartnerUtil.getBPTypeBR (bp)))
			tpCPFCNPJ.setCPF(TextUtil.toNumeric (nf.getlbr_BPCNPJ()));
		else
			tpCPFCNPJ.setCNPJ(TextUtil.toNumeric (nf.getlbr_BPCNPJ()));
		//
		String ccm = bp.get_ValueAsString ("lbr_CCM");
		if (bp != null && ccm != null && !ccm.trim().isEmpty() && "3550308".equals(cityCode)) // São Paulo
			tpRPS.setInscricaoMunicipalTomador (toLong (ccm));
		//
		tpRPS.setInscricaoEstadualTomador(toLong (nf.getlbr_BPIE()));
		tpRPS.setRazaoSocialTomador(nf.getBPName());
		//
		TpEndereco end = tpRPS.addNewEnderecoTomador();
//		end.setTipoLogradouro(nf.getlbr_BPAddress1());
		end.setLogradouro(nf.getlbr_BPAddress1());
		end.setNumeroEndereco(nf.getlbr_BPAddress2());
		end.setBairro(nf.getlbr_BPAddress3());
		if (nf.getlbr_BPAddress4() != null)
			end.setComplementoEndereco(nf.getlbr_BPAddress4());
		end.setCEP(TextUtil.toNumeric (nf.getlbr_BPPostal()));
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
					aliquota = toBD (nfLine.getTaxRate("ISS").divide(Env.ONEHUNDRED, 17, BigDecimal.ROUND_HALF_UP));
					break;
				}
			}
		}
		//
		if (serviceCode == null || serviceCode.equals(""))
			log.log(Level.SEVERE, "No Service Code for Nota Fiscal");
		//
		tpRPS.setAliquotaServicos(aliquota);
		tpRPS.setCodigoServico(TextUtil.toNumeric (serviceCode));
		
		if (discriminacao == null)
			discriminacao = "Prestação de Serviços";
		else
			discriminacao = discriminacao.replace("\n", "|").replace("  ", "").trim();
		tpRPS.setDiscriminacao(discriminacao);
		//
		if (nf.getLBR_EMailNFe() != null && nf.getLBR_EMailNFe().indexOf("@") > 1)
			tpRPS.setEmailTomador(nf.getLBR_EMailNFe());
		tpRPS.setISSRetido(false);
		//
		if (sign)
			sign (nf.getAD_Org_ID(), tpRPS);
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

	private static BigDecimal toBD (BigDecimal value)
	{
		if (value == null)
			return Env.ZERO;
		return value.setScale(2, BigDecimal.ROUND_HALF_UP).stripTrailingZeros();
	}
	
	private static Long toLong (String longStr)
	{
		if (longStr == null || TextUtil.toNumeric(longStr).trim().isEmpty())
			return (long) 0;
		return new Long (TextUtil.toNumeric(longStr));
	}	//	toLong
	
	private static int toInt (String intStr)
	{
		if (intStr == null)
			return 0;
		
		try
		{
			return Integer.parseInt(TextUtil.toNumeric(intStr));
		}
		catch (Exception e)	{}
		return 0;
	}	//	toLong
	
	private static void sign (int AD_Org_ID, TpRPS rps)
	{
		StringBuilder ascii = new StringBuilder ("");
		//
		String indicador = rps.getCPFCNPJTomador().getCPF() != null ? "1" : "2";
		
		ascii.append(TextUtil.lPad (rps.getChaveRPS().getInscricaoPrestador()+"", 8));
		ascii.append(TextUtil.rPad (rps.getChaveRPS().getSerieRPS(), 5));
		ascii.append(TextUtil.lPad (rps.getChaveRPS().getNumeroRPS()+"", 12));
		//
		ascii.append(TextUtil.lPad ((rps.getDataEmissao()+"").substring(0, 10), 8));
		ascii.append(rps.getTributacaoRPS());
		ascii.append(rps.getStatusRPS());
		ascii.append("true".equals (rps.getISSRetido()) ? "S" : "N");
		ascii.append(TextUtil.lPad (rps.getValorServicos(), 15));
		ascii.append(TextUtil.lPad (rps.getValorDeducoes(), 15));
		ascii.append(TextUtil.lPad (rps.getCodigoServico(), 5));
		ascii.append(indicador);
		ascii.append(TextUtil.lPad (indicador.equals("1") ? rps.getCPFCNPJTomador().getCPF() : rps.getCPFCNPJTomador().getCNPJ(), 14));
		//
		TpAssinatura tpAssinatura = TpAssinatura.Factory.newInstance();
		MOrgInfo oi = MOrgInfo.get (Env.getCtx(), AD_Org_ID, null);
		tpAssinatura.setStringValue(new SignatureUtil (oi, SignatureUtil.RPS).signASCII (ascii.toString()));
		rps.xsetAssinatura (tpAssinatura);
	}
	
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
