/******************************************************************************
 * Product: ADempiereLBR - ADempiere Localization Brazil                      *
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
package org.adempierelbr.process;

import java.util.logging.Level;

import org.adempierelbr.model.MDigitalCertificate;
import org.adempierelbr.util.BPartnerUtil;
import org.adempierelbr.util.NFeUtil;
import org.compiere.model.MBPartner;
import org.compiere.model.MBPartnerLocation;
import org.compiere.model.MLocation;
import org.compiere.model.MRegion;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.CLogger;

import br.inf.portalfiscal.www.nfe.wsdl.CadConsultaCadastro.CadConsultaCadastro;
import br.inf.portalfiscal.www.nfe.wsdl.CadConsultaCadastro.CadConsultaCadastroLocator;
import br.inf.portalfiscal.www.nfe.wsdl.CadConsultaCadastro.CadConsultaCadastroSoap;

/**
 * 	Processo para consultar o cadastro do contribuinte
 * 
 * @author Mario Grigioni
 * @version $Id: ProcConsultaCadastro.java, 05/03/2010 15:01:00 mgrigioni
 */
public class ProcConsultaCadastro extends SvrProcess 
{
	/** Parceiro de Negócios */
	private static Integer p_C_BPartner_ID   = 0;
	private static Integer p_C_BPLocation_ID = 0;
	
	/**	Logger			*/
	private static CLogger log = CLogger.getCLogger(ProcConsultaCadastro.class);

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
			else if (name.equals("C_BPartner_ID"))
				p_C_BPartner_ID = para[i].getParameterAsInt();
			else if (name.equals("C_BPartner_Location_ID"))
				p_C_BPLocation_ID = para[i].getParameterAsInt();
			else
				log.log(Level.SEVERE, "prepare - Unknown Parameter: " + name);
		}
	}	//	prepare
	
	/**
	 * 	DoIt
	 */
	protected String doIt() throws Exception 
	{

		if (p_C_BPartner_ID == 0)
			throw new IllegalArgumentException("Parceiro de Negócios == 0");
		
		if (p_C_BPLocation_ID == 0)
			throw new IllegalArgumentException("Localização == 0");
		
		MBPartner bp = new MBPartner(getCtx(),p_C_BPartner_ID,null);
		MBPartnerLocation bpl = new MBPartnerLocation(getCtx(),p_C_BPLocation_ID,null);
		MLocation location = new MLocation(getCtx(),bpl.getC_Location_ID(),null);
		MRegion region = new MRegion(getCtx(),location.getC_Region_ID(),null);
		
		String uf = null, ie = null, cnpj = null, cpf = null, CadResposta = null;
		
		uf   = region.getName();
		ie   = BPartnerUtil.getIE(bp, bpl);
		cnpj = BPartnerUtil.getCNPJ(bp,bpl);
		
		String BPTypeBR = bp.get_ValueAsString("lbr_BPTypeBR");
		if (!(BPTypeBR == null || BPTypeBR.equals("")))
		{
			if (BPTypeBR.equalsIgnoreCase("PF")){
				cpf  = cnpj;
				cnpj = null;
			}
		}
		
		if (ie.equalsIgnoreCase("ISENTO"))
			ie = null;
		
		String nfeCabecMsg 	= NFeUtil.geraCabecConsCad();
		String nfeDadosMsg 	= NFeUtil.geraDadosConsCad(uf, ie, cnpj, cpf);
		
		//INICIALIZA CERTIFICADO
		MDigitalCertificate.setCertificate(getCtx(), 2000000);
		//
		
		//CadConsultaCadastroLocator.ambiente = "1";
		CadConsultaCadastro consCad = new CadConsultaCadastroLocator();
		try 
		{
			//	Envio
			CadConsultaCadastroSoap cadConsCad = consCad.getCadConsultaCadastroSoap();
			CadResposta = cadConsCad.consultaCadastro(nfeCabecMsg, nfeDadosMsg);
		}
		catch (Throwable e1)
		{
			log.severe(e1.getLocalizedMessage());
			e1.printStackTrace();
		}
		
		return CadResposta;
	}	//	doIt
	
}	//	ProcConsultaCadastro