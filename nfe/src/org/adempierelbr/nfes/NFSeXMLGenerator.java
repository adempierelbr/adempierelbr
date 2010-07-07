package org.adempierelbr.nfes;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;
import java.util.logging.Level;

import org.adempierelbr.model.MNotaFiscal;
import org.adempierelbr.model.MNotaFiscalLine;
import org.adempierelbr.nfes.beans.BtpCPFCNPJ;
import org.adempierelbr.nfes.beans.BtpChaveRPS;
import org.adempierelbr.nfes.beans.BtpEndereco;
import org.adempierelbr.nfes.beans.BtpRPS;
import org.adempierelbr.util.POLBR;
import org.compiere.Adempiere;
import org.compiere.model.MBPartner;
import org.compiere.model.MDocType;
import org.compiere.model.MProduct;
import org.compiere.model.X_C_City;
import org.compiere.model.X_LBR_NFTax;
import org.compiere.model.X_LBR_TaxGroup;
import org.compiere.util.CLogMgt;
import org.compiere.util.CLogger;
import org.compiere.util.Env;

import com.thoughtworks.xstream.XStream;

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
	
	/**	Round 			*/
	private static final int ROUND = BigDecimal.ROUND_HALF_UP;
	
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
		//
		XStream xs = new XStream();
		//
		xs.alias("RPS", BtpRPS.class);
		//
		String result = xs.toXML(generateNFSe(LBR_NotaFiscal_ID, trxName));
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
	public static BtpRPS generateNFSe (int LBR_NotaFiscal_ID, String trxName) throws Exception
	{
		Properties ctx = Env.getCtx();
		MNotaFiscal nf = new MNotaFiscal (ctx, LBR_NotaFiscal_ID, trxName);
		MDocType dt = new MDocType (ctx, nf.getC_DocTypeTarget_ID(), trxName);
		MNotaFiscalLine[] nfLines = nf.getLines("");
		MBPartner bp = new MBPartner (Env.getCtx(), nf.getC_BPartner_ID(), null);
		//
		Integer vC_City_ID = POLBR.getC_City_ID(nf.getlbr_BPCity(), 
				nf.getlbr_BPRegion(), 139, null);	//	Only needed for Brazilian Cities
		X_C_City c = new X_C_City (Env.getCtx(), vC_City_ID, null);
		String cityCode = "";
		//
		if (c != null && c.get_ValueAsString("lbr_CityCode") != null)
			cityCode = c.get_ValueAsString("lbr_CityCode");
		//
		BtpChaveRPS tpChaveRPS 			= new BtpChaveRPS(); 
		BtpRPS tpRPS					= new BtpRPS();
		
		tpChaveRPS.setInscricaoEstadual(nf.getlbr_IE());
		tpChaveRPS.setNumero(nf.getDocumentNo());
		tpChaveRPS.setSerieRPS(dt.get_ValueAsString("lbr_NFSerie"));
		
		tpRPS.setChaveRPS(tpChaveRPS);
		tpRPS.setTipoRPS(dt.get_ValueAsString("lbr_NFModel"));
		tpRPS.setDataEmissao(nf.getDateDoc());
		tpRPS.setStatusRPS("N");						//	FIXME
		tpRPS.setTributacaoRPS("T");					//	FIXME
		tpRPS.setValorServicos(nf.getlbr_ServiceTotalAmt());
		tpRPS.setValorDeducoes(Env.ZERO);
		tpRPS.setValorPIS(nf.getTaxAmt("PIS"));
		tpRPS.setValorCOFINS(nf.getTaxAmt("COFINS"));
		tpRPS.setValorINSS(nf.getTaxAmt("INSS"));
		tpRPS.setValorIR(nf.getTaxAmt("IR"));
		tpRPS.setValorCSLL(nf.getTaxAmt("CSLL"));
		//
		BtpCPFCNPJ cpfcnpj = new BtpCPFCNPJ();
		//
		if (nf.getlbr_BPTypeBR() != null 
				&& nf.getlbr_BPTypeBR().equals("PF"))
			cpfcnpj.setCPF(nf.getlbr_BPCNPJ());
		else
			cpfcnpj.setCNPJ(nf.getlbr_BPCNPJ());
		//
		tpRPS.setCNPJCPFTomador(cpfcnpj);
		if (bp != null && cityCode.equals("3550308")) // São Paulo
			tpRPS.setInscricaoMunicipalTomador(bp.getlbr_CCM());
		//
		tpRPS.setInscricaoEstadualTomador(nf.getlbr_BPIE());
		tpRPS.setRazaoSocialTomador(nf.getBPName());
		//
		BtpEndereco end = new BtpEndereco();
		end.setTipoLogradouro(nf.getlbr_BPAddress1());
		end.setLogradouro(nf.getlbr_BPAddress1());
		end.setNumeroEndereco(nf.getlbr_BPAddress2());
		end.setBairro(nf.getlbr_BPAddress3());
		end.setComplementoEndereco(nf.getlbr_BPAddress4());
		end.setCEP(nf.getlbr_BPPostal());
		end.setCidade(cityCode);	//	Cod. da Cidade
		end.setUF(nf.getlbr_BPRegion());
		tpRPS.setEnderecoTomador(end);
		//
		BigDecimal aliquota = Env.ZERO;
		String serviceCode = "";
		String discriminacao = nf.getDescription();
		
		//	Linhas
		for (MNotaFiscalLine nfLine : nfLines)
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
		tpRPS.setCodigoServicos(serviceCode);
		tpRPS.setDiscriminacao(discriminacao);
		//
		tpRPS.setEmailTomador(nf.getEMail());
		//
		return tpRPS;
	}	//	generateNFSe
	
	/**
	 * 	Retorna o valor das deduções
	 * 
	 * @param nf
	 * @return
	 */
	private static BigDecimal getDeducoes (MNotaFiscal nf)
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
	
	public static void main(String[] args) 
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
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		System.out.println("Process OK");
	}
}	//	NFSeXMLGenerator
