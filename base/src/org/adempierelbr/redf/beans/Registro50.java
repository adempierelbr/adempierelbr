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
package org.adempierelbr.redf.beans;

import java.math.BigDecimal;

import org.adempierelbr.util.TextUtil;
import org.compiere.util.Env;

/**
 *	Informações do Transporte da NF
 *	
 *	Tipo 50 - Informações sobre o transporte das mercadorias ou produtos. 
 *		Na hipótese de criação ou retificação de registro deverá ser informado 
 *		exatamente 1 (um) registro por documento; na hipótese de cancelamento, 
 *		este registro não deverá ser informado. 
 *	
 *	@author Ricardo Santana (Kenos, www.kenos.com.br)
 * 	@version 	$Id: Registro50,v 1.2 2009/08/06 12:01:00 ralexsander Exp $
 */
public class Registro50
{
	private final String		PIPE = "|";
	private final String 		TipoDeRegistro = "50";
	private String 				ModalidadeFrete;
	private String 				CNPJ_CPF;
	private String 				RazaoSocial;
	private String 				IE;
	private String				EnderecoCompleto;
	private String				NomeMunicipio;
	private String				UF;
	private String				PLACA;
	private String				SiglaUFPlaca;
	private BigDecimal			QtdVolumes;
	private String				EspecieVolumes;
	private String				MarcaVolumes;
	private String				NumDosVolumes;
	private BigDecimal			PesoLiq;
	private BigDecimal			PesoBruto;
		
	/**
	 * Constructor
	 */
	public Registro50 (String ModalidadeFrete, String CNPJ_CPF,
			String RazaoSocial,	String IE, String EnderecoCompleto,
			String NomeMunicipio, String UF, String PLACA, String SiglaUFPlaca, 
			BigDecimal QtdVolumes, String EspecieVolumes, String MarcaVolumes,
			String NumDosVolumes, BigDecimal PesoLiq, BigDecimal PesoBruto)
	{	
		this.ModalidadeFrete 	= ModalidadeFrete;
		this.CNPJ_CPF 			= CNPJ_CPF;
		this.RazaoSocial 		= RazaoSocial;
		this.IE					= IE;
		this.EnderecoCompleto 	= EnderecoCompleto;
		this.NomeMunicipio 		= NomeMunicipio;
		this.UF 				= UF;
		this.PLACA 				= PLACA;
		this.SiglaUFPlaca 		= SiglaUFPlaca;
		this.QtdVolumes 		= QtdVolumes;
		this.EspecieVolumes 	= EspecieVolumes;
		this.MarcaVolumes 		= MarcaVolumes;
		this.NumDosVolumes 		= NumDosVolumes;
		this.PesoLiq 			= PesoLiq;
		this.PesoBruto 			= PesoBruto;
	}	//	Registro50
	
	/**
	 * Formata o Registro 50
	 * 
	 * @return
	 */
	public StringBuffer format()
	{
		//
		if (QtdVolumes != null 	&& QtdVolumes.compareTo(Env.ZERO) == 0)
			QtdVolumes = null;
		if (PesoLiq != null 	&& PesoLiq.compareTo(Env.ZERO) == 0)
			PesoLiq = null;
		if (PesoBruto != null 	&& PesoBruto.compareTo(Env.ZERO) == 0)
			PesoBruto = null;
		//
		int sizeQtdVolumes = QtdVolumes == null || QtdVolumes.compareTo(Env.ZERO) == 0 ? 0 : 15;
		//
		return new StringBuffer(TipoDeRegistro 							+ PIPE +
				TextUtil.checkSize  (ModalidadeFrete, 	 1, 1) 			+ PIPE +
				TextUtil.checkSizeN (CNPJ_CPF, 		   	11, 14, false) 	+ PIPE +
				TextUtil.checkSize  (RazaoSocial, 		 1, 60, false)	+ PIPE +
				TextUtil.checkSizeN (IE, 				 2, 14, false) 	+ PIPE +
				TextUtil.checkSize  (EnderecoCompleto, 	 1, 60, false) 	+ PIPE +
				TextUtil.checkSize  (NomeMunicipio, 	 1, 60, false)	+ PIPE +
				TextUtil.checkSize  (UF, 				 2,  2, false)	+ PIPE +
				TextUtil.checkSize  (PLACA,				 1,  8, false) 	+ PIPE +
				TextUtil.checkSize  (SiglaUFPlaca,		 2,  2, false)	+ PIPE +
				TextUtil.lPad       (QtdVolumes, 		sizeQtdVolumes) + PIPE +
				TextUtil.checkSize  (EspecieVolumes,	 1, 60, false)	+ PIPE +
				TextUtil.checkSize  (MarcaVolumes,		 1, 60, false)	+ PIPE +
				TextUtil.checkSize  (NumDosVolumes,		 1, 60, false)	+ PIPE +
				TextUtil.toNumeric  (PesoLiq,			15, 15, false) 	+ PIPE +
				TextUtil.toNumeric  (PesoBruto, 		15, 15, false) 	+ PIPE + TextUtil.EOL_WIN32);
	}
}	//	Registro50