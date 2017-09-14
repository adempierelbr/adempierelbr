package org.adempierelbr.process;

import java.sql.Timestamp;
import java.util.logging.Level;

import org.adempierelbr.model.MLBRNotaFiscal;
import org.adempierelbr.model.MLBRPartnerDFe;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;

/**
 * 		Vincula as NFs ao DFs obtidos pela SeFaz
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: MatchDFe.java, v1.0 2016/MM/DD 11:37:56 AM, ralexsander Exp $
 */
public class MatchDFe extends SvrProcess
{
	/**	Date Trx **/
	private Timestamp dateTrx;
	private Timestamp dateTrxTo;
	
	/**
	 *  Prepare - e.g., get Parameters.
	 */
	protected void prepare ()
	{
		ProcessInfoParameter[] para = getParameter();
		for (int i = 0; i < para.length; i++)
		{
			String name = para[i].getParameterName();
			if (para[i].getParameter() == null)
				;
			
			else if ("DateTrx".equals(name))
			{
				dateTrx = (Timestamp) para[i].getParameter();
				dateTrxTo = (Timestamp) para[i].getParameter_To();
			}
			else
				log.log(Level.SEVERE, "Unknown Parameter: " + name);
		}		
	}	//	prepare

	/**
	 *  Perform process.
	 *  @return Message (variables are parsed)
	 *  @throws Exception if not successful e.g.
	 *  throw new AdempiereUserError ("@FillMandatory@  @C_BankAccount_ID@");
	 */
	protected String doIt () throws Exception
	{
		int count=0;
		MLBRNotaFiscal[] nfs = MLBRNotaFiscal.get (dateTrx, dateTrxTo, false, get_TrxName());
		
		for (MLBRNotaFiscal nf : nfs)
		{
			//	Ignorar documentos próprios e NFs vinculadas
			if (nf.islbr_IsOwnDocument() || nf.get_ValueAsInt(MLBRPartnerDFe.COLUMNNAME_LBR_PartnerDFe_ID) > 0)
				continue;
			
			MLBRPartnerDFe dfe = MLBRPartnerDFe.get (nf);
			//
			if (dfe != null)
			{
				nf.set_CustomColumn (MLBRPartnerDFe.COLUMNNAME_LBR_PartnerDFe_ID, dfe.getLBR_PartnerDFe_ID());
				nf.setlbr_NFeID(dfe.getlbr_NFeID());
				nf.setlbr_DigestValue(dfe.getlbr_DigestValue());
				if (nf.save())
					count++;
			}
		}
		return "@Success@ - " + count + " nota(s) vinculadas";
	}	//	doIt
}	//	MatchDFe
