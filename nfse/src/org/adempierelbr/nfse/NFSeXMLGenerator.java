package org.adempierelbr.nfse;

import java.math.BigDecimal;
import java.util.Properties;
import java.util.logging.Level;

import org.adempierelbr.model.MLBRNotaFiscal;
import org.adempierelbr.model.MLBRNotaFiscalLine;
import org.adempierelbr.model.X_LBR_NFTax;
import org.adempierelbr.model.X_LBR_TaxGroup;
import org.adempierelbr.nfse.beans.BtpCPFCNPJ;
import org.adempierelbr.nfse.beans.BtpChaveRPS;
import org.adempierelbr.nfse.beans.BtpEndereco;
import org.adempierelbr.nfse.beans.BtpRPS;
import org.adempierelbr.util.BPartnerUtil;
import org.compiere.Adempiere;
import org.compiere.model.MBPartner;
import org.compiere.model.MBPartnerLocation;
import org.compiere.model.MDocType;
import org.compiere.model.MLocation;
import org.compiere.model.MProduct;
import org.compiere.model.X_C_City;
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
		XStream xs = new XStream();
		xs.alias("RPS", BtpRPS.class);
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
		MLBRNotaFiscal nf = new MLBRNotaFiscal (ctx, LBR_NotaFiscal_ID, trxName);
		MDocType dt = new MDocType (ctx, nf.getC_DocTypeTarget_ID(), trxName);
		MLBRNotaFiscalLine[] nfLines = nf.getLines("");
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
		if ("PF".equals(BPartnerUtil.getBPTypeBR(bp)))
			cpfcnpj.setCPF(nf.getlbr_BPCNPJ());
		else
			cpfcnpj.setCNPJ(nf.getlbr_BPCNPJ());
		//
		tpRPS.setCNPJCPFTomador(cpfcnpj);
		if (bp != null && "3550308".equals(cityCode)) // São Paulo
			tpRPS.setInscricaoMunicipalTomador(bp.get_ValueAsString("lbr_CCM"));
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
		tpRPS.setCodigoServicos(serviceCode);
		tpRPS.setDiscriminacao(discriminacao);
		//
		tpRPS.setEmailTomador(nf.getInvoiceContactEMail());
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
