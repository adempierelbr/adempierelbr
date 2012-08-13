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

import org.adempiere.exceptions.AdempiereException;
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

	/**	
	 * Logger			
	 */
	private static CLogger log = CLogger.getCLogger(EFDUtil.class);

	/**
	 * TODO: ALTERAR E DEIXAR DINAMICO
	 * 
	 * Código da Versao
	 * Código da Finalidade
	 * Código do Perfil
	 */
	private static final String COD_VER = "005"; // A Partir de Jan/12
	private static final String COD_FIN = "0"; // Remessa do Arquivo Original
	private static final String IND_PERFIL = "A"; // Perfil A
	
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
	 * Formatar Registro R0000
	 * 
	 * @param dateFrom
	 * @param dateTo
	 * @param factFiscal
	 * @return
	 * @throws Exception
	 */
	 
	public static R0000 createR0000(Timestamp dateFrom, Timestamp dateTo, MLBRFactFiscal factFiscal) throws Exception
	{
		
		R0000 reg = new R0000();
			
		reg.setCOD_VER(COD_VER);
		reg.setCOD_FIN(COD_FIN);
		reg.setDT_INI(dateFrom);
		reg.setDT_INI(dateTo);
		reg.setNOME(factFiscal.getlbr_OrgName());
		reg.setCNPJ(factFiscal.getlbr_CNPJ());
		reg.setCPF(null);
		reg.setUF(factFiscal.getlbr_OrgRegion());
		reg.setIE(factFiscal.getlbr_IE());
		reg.setCOD_MUN(String.valueOf(factFiscal.getlbr_orgcitycode()));
		reg.setIM(factFiscal.getlbr_OrgCCM());
		reg.setSUFRAMA(factFiscal.getlbr_Suframa());
		reg.setIND_PERFIL(IND_PERFIL);
		
		reg.setIND_ATIV(null);
		
		reg.getIND_ATIV().charAt(4);
		
		// 0 - Industria ou equiparado a Industrial / 1 - Outros 
		reg.setIND_ATIV(factFiscal.getlbr_IndAtividade().equals("0") ? "0" : "1");
		
		// return
		return reg;		
	} 
	
} //EFDUtil