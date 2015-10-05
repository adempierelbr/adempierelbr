package org.adempierelbr.util;

import java.sql.Timestamp;

import javax.swing.text.MaskFormatter;

public class JasperUtil
{
	public static String maskCNPJF (String p_cnpjf)
	{
		try
		{
			if (p_cnpjf == null)
				return null;
			
			//	Numeric Only
			String cnpjf = TextUtil.toNumeric (p_cnpjf);
			MaskFormatter mf;
			
			if (cnpjf.length() == 14)
			{
				mf = new MaskFormatter("##.###.###/####-##");
				mf.setValueContainsLiteralCharacters(false);
			}
			else if (cnpjf.length() == 11)
			{
				mf = new MaskFormatter("###.###.###-##");
				mf.setValueContainsLiteralCharacters(false);
			}
			else
				return p_cnpjf;
			//
			return mf.valueToString (cnpjf);
		}
		catch (Exception e){}
		return p_cnpjf;
	}	//	maskCNPJF
	
	public static String maskCEP (String p_CEP)
	{
		try
		{
			if (p_CEP == null)
				return null;
			
			//	Numeric Only
			String cep = TextUtil.toNumeric (p_CEP);
			MaskFormatter mf;
			
			if (cep.length() == 8)
			{
				mf = new MaskFormatter("#####-###");
				mf.setValueContainsLiteralCharacters(false);
			}
			else
				return p_CEP;
			//
			return mf.valueToString (cep);
		}
		catch (Exception e){}
		return p_CEP;
	}	//	maskCEP

	public static String maskDANFE (String p_DANFE)
	{
		try
		{
			if (p_DANFE == null)
				return null;
			
			//	Numeric Only
			String danfe = TextUtil.toNumeric (p_DANFE);
			MaskFormatter mf;
			
			if (danfe.length() == 44)
			{
				mf = new MaskFormatter("#### #### #### #### #### #### #### #### #### #### ####");
				mf.setValueContainsLiteralCharacters(false);
			}
			else
				return p_DANFE;
			//
			return mf.valueToString (danfe);
		}
		catch (Exception e){}
		return p_DANFE;
	}	//	maskDANFE
	
	public static String maskNFeNo (String p_NFeNo)
	{
		try
		{
			if (p_NFeNo == null)
				return null;
			
			//	Numeric Only
			String nfe = TextUtil.toNumeric (p_NFeNo);
			MaskFormatter mf;
			
			if (nfe.length() > 0 && nfe.length() <= 9)
			{
				mf = new MaskFormatter("###.###.###");
				mf.setValueContainsLiteralCharacters(false);
			}
			else
				return p_NFeNo;
			//
			return mf.valueToString (TextUtil.lPad (nfe, 9));
		}
		catch (Exception e){}
		return p_NFeNo;
	}	//	maskNFeNo
	
	public static String maskSerieNo (String p_SerieNo)
	{
		try
		{
			if (p_SerieNo == null)
				return null;
			
			//	Numeric Only
			String serie = TextUtil.toNumeric (p_SerieNo);
			
			if (serie.length() > 0 && serie.length() <= 3)
				return TextUtil.lPad (serie, 3);
			
			else
				return p_SerieNo;
		}
		catch (Exception e){}
		return p_SerieNo;
	}	//	maskSerieNo
	
	public static Timestamp toTS (String p_TS)
	{
		if (p_TS == null)
			return null;
		
		try
		{
			String ts = (p_TS.length() == 19 || p_TS.length() == 10) ? p_TS : p_TS.substring(0, p_TS.length()-6);
			String mask = "";
			
			if (p_TS.length() == 10)
				mask = "yyyy-MM-dd";
			else
				mask = "yyyy-MM-dd'T'HH:mm:ss";
			
			return TextUtil.stringToTime (ts, mask);
		}
		catch (Exception e){}
		return null;
	}
	
	public static String maskNCM (String p_NCM)
	{
		try
		{
			if (p_NCM == null)
				return null;
			
			//	Numeric Only
			String ncm = TextUtil.toNumeric (p_NCM);
			MaskFormatter mf;
			
			if (ncm.length() == 8)
				mf = new MaskFormatter("####.##.##");

			else if (ncm.length() == 6)
				mf = new MaskFormatter("####.##");
			
			//	Retorn numerics only
			else if (ncm.length() == 4 || ncm.length() == 2)
				return ncm;

			//	Mask not found
			else
				return p_NCM;
			//
			mf.setValueContainsLiteralCharacters(false);
			return mf.valueToString (ncm);
		}
		catch (Exception e){}
		return p_NCM;
	}	//	maskNCM
	
	public static String maskCFOP (String p_CFOP)
	{
		try
		{
			if (p_CFOP == null)
				return null;
			
			//	Numeric Only
			String cfop = TextUtil.toNumeric (p_CFOP);
			MaskFormatter mf;
			
			if (cfop.length() == 4)
				mf = new MaskFormatter("#.###");

			//	Mask not found
			else
				return p_CFOP;
			//
			mf.setValueContainsLiteralCharacters(false);
			return mf.valueToString (cfop);
		}
		catch (Exception e){}
		return p_CFOP;
	}	//	maskCFOP
	
	public static String protocol (String p_Prot, String p_TS)
	{
		return p_Prot + " - " + TextUtil.timeToString (toTS (p_TS), "dd/MM/yyyy HH:mm:ss");
	}
	
	public static String freightCostRule (String p_Freight)
	{
		String result = null;
		try
		{
			// result = MRefList.getListName (Env.getCtx(), 1120147, p_Freight);
			//
			if (result == null)
			{
				if ("0".equals (p_Freight))
					result = "0 - Emitente";
				else if ("1".equals (p_Freight))
					result = "1 - Destinatário";
				else
					result = p_Freight;
			}
		}
		catch (Exception e){}
		return result;
	}
}	//	JasperUtil
