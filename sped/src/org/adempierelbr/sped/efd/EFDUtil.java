package org.adempierelbr.sped.efd;

import java.math.BigDecimal;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import java.util.Set;

import org.adempierelbr.model.MLBRFactFiscal;
import org.adempierelbr.model.MLBRNCM;
import org.adempierelbr.model.MLBRNFLineTax;
import org.adempierelbr.model.MLBRNotaFiscal;
import org.adempierelbr.model.MLBRNotaFiscalLine;
import org.adempierelbr.model.X_LBR_NFDI;
import org.adempierelbr.model.X_LBR_NFLineTax;
import org.adempierelbr.sped.CounterSped;
import org.adempierelbr.sped.RegSped;
import org.adempierelbr.sped.efd.bean.R0000;
import org.adempierelbr.sped.efd.bean.R0005;
import org.adempierelbr.sped.efd.bean.R0150;
import org.adempierelbr.sped.efd.bean.R0190;
import org.adempierelbr.sped.efd.bean.R0200;
import org.adempierelbr.sped.efd.bean.R0300;
import org.adempierelbr.sped.efd.bean.R1100;
import org.adempierelbr.sped.efd.bean.RC100;
import org.adempierelbr.sped.efd.bean.RC120;
import org.adempierelbr.sped.efd.bean.RC130;
import org.adempierelbr.sped.efd.bean.RC170;
import org.adempierelbr.sped.efd.bean.RC172;
import org.adempierelbr.sped.efd.bean.RC190;
import org.adempierelbr.util.AdempiereLBR;
import org.adempierelbr.util.BPartnerUtil;
import org.adempierelbr.util.TextUtil;
import org.adempierelbr.wrapper.I_W_AD_OrgInfo;
import org.adempierelbr.wrapper.I_W_C_BPartner;
import org.adempierelbr.wrapper.I_W_C_Country;
import org.adempierelbr.wrapper.I_W_M_Product;
import org.compiere.model.MAsset;
import org.compiere.model.MBPartner;
import org.compiere.model.MBPartnerLocation;
import org.compiere.model.MCountry;
import org.compiere.model.MElementValue;
import org.compiere.model.MLocation;
import org.compiere.model.MOrg;
import org.compiere.model.MOrgInfo;
import org.compiere.model.MPaymentTerm;
import org.compiere.model.MPeriod;
import org.compiere.model.MProduct;
import org.compiere.model.MUOM;
import org.compiere.model.MUser;
import org.compiere.util.CLogger;
import org.compiere.util.DB;
import org.compiere.util.Env;

/**
 *	Utilitarios para o EFD
 *
 * @author Mario Grigioni, mgrigioni
 * @version $Id: EFDUtil.java, 20/01/2011, 09:50:00, mgrigioni
 * 
 * @author Pablo Boff Pigozzo
 * @version $ 08/08/2012, 15:30 pablobp4 $
 */
public class EFDUtil
{

	/**	Logger			*/
	private static CLogger log = CLogger.getCLogger(EFDUtil.class);

	
	
	/**
	 * Retornar o bloco de registro ao qual o modelo de documento pertence
	 * 
	 * @param nfModel
	 * @return C100, C400, C500, D100, D500
	 */
	public static String getBlocoNFModel(String nfModel)
	{
		
		// 
		String nfReg = "";
		
		/*
		 *  BLOCO C100 - Nota Fiscal Produto
		 */
		if (nfModel.equals("01") || nfModel.equals("1B") ||
			nfModel.equals("04") || nfModel.equals("55")){
			nfReg = "C100";
		}
		
		/*
		 * BLOCO C400 - Cupom Fiscal
		 */
		else if (nfModel.equals("02") || nfModel.equals("2D")){
			nfReg = "C400";
		}
		
		/*
		 * BLOCO C500 - Nota Fiscal Energia Elétrica
		 */
		else if (nfModel.equals("06") || nfModel.equals("28") ||
				 nfModel.equals("29")){
			nfReg = "C500";
		}
		
		/*
		 * BLOCO D100 - Serviço de Transporte
		 */
		else if (nfModel.equals("07") || nfModel.equals("08") ||
				 nfModel.equals("8B") || nfModel.equals("09") ||
				 nfModel.equals("10") || nfModel.equals("11") ||
				 nfModel.equals("26") || nfModel.equals("27") ||
				 nfModel.equals("57")){
			nfReg = "D100";
		}
		
		/*
		 * BLOCO D500 - Serviço de Telecomunicações
		 */
		else if (nfModel.equals("21") || nfModel.equals("22")){
			nfReg = "D500";
		}
		
		return nfReg;
		
	} //getNFHeaderReg
	
	
	/**
	 * Formatar Registro 0000
	 * 
	 * @param ctx
	 * @param dateFrom
	 * @param dateTo
	 * @param factFiscal
	 * @param trxName
	 * @return
	 */
	public static R0000 createR0000(Timestamp dateFrom, Timestamp dateTo, MLBRFactFiscal factFiscal)
	{
		
		R0000 a = new R0000();
		
		a.setCNPJ("123.423.423-1111");
		
		return a;
		
		
		
		
		/*
		 *
		 *
		MOrgInfo orgInfo = MOrgInfo.get(getCtx(), AD_Org_ID, get_TrxName());
		MLocation orgLoc = new MLocation(getCtx(),orgInfo.getC_Location_ID(), get_TrxName());

		String COD_VER    = getCOD_VERSAO(dateFrom);
		String COD_FIN    = "0"; //REMESSA ORIGINAL //FIXME
		String NOME       = orgInfo.get_ValueAsString(I_W_AD_OrgInfo.COLUMNNAME_lbr_LegalEntity);
		String CNPJ       = orgInfo.get_ValueAsString(I_W_AD_OrgInfo.COLUMNNAME_lbr_CNPJ);
		String UF         = orgLoc.getC_Region().getName();
		String IE         = orgInfo.get_ValueAsString(I_W_AD_OrgInfo.COLUMNNAME_lbr_IE);
		String COD_MUN    = BPartnerUtil.getCityCode(orgLoc);
		String IM         = orgInfo.get_ValueAsString(I_W_AD_OrgInfo.COLUMNNAME_lbr_CCM);
		String SUFRAMA    = orgInfo.get_ValueAsString(I_W_AD_OrgInfo.COLUMNNAME_lbr_Suframa);
		String IND_PERFIL = "A"; // FIXME
		
		*
		 * Indicador de Atividade = 0-Industria  1-Outros(Comércio e outras coiasas)
		 *
		String IND_ATIV   = orgInfo.get_ValueAsString(I_W_AD_OrgInfo.COLUMNNAME_lbr_IndAtividade).endsWith("0") ? "0" : "1";
		 */
		

		//return null;
	} //createR0000
	
} //EFDUtil