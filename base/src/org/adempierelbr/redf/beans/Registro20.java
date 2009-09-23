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

import java.sql.Timestamp;

import org.adempierelbr.util.TextUtil;

/**
 *	Dados de Identificação da Nota Fiscal 
 *	
 *	Registro obrigatório, identificador da Nota Fiscal, 
 *		modelo 1 ou 1-A. Deve ser informado no 
 *		mínimo 1 (um) registro por arquivo. 
 *	
 *	@author Ricardo Santana (Kenos, www.kenos.com.br)
 * 	@version 	$Id: Registro20,v 1.2 2009/08/06 12:01:00 ralexsander Exp $
 */
public class Registro20
{
	private final String		PIPE = "|";
	private final String 		TipoDeRegistro = "20";
	private String 				FuncaoDoRegistro;
	private String 				JustCancelamento;
	private String 				NaturezaOp;
	private String 				SerieNF;
	private String 				NumeroNF;
	private Timestamp			DataEmissaoNF;
	private Timestamp			DataEntSaiNF;
	private String				TipoNF;
	private String				CFOP;
	private String				IE;
	private String				IM;
	private String				CNPJDest;
	private String				RazaoSocial;
	private String				Logradouro;
	private String				Numero;
	private String				Complemento;
	private String				Bairro;
	private String				NomeMunicipio;
	private String				UF;
	private String				CEP;
	private String				NomePais;
	private String				Telefone;
	private String				IEDest;
		
	/**
	 * Constructor
	 */
	public Registro20 (String FuncaoDoRegistro, String JustCancelamento, 
			String NaturezaOp, String SerieNF, String NumeroNF, Timestamp DataEmissaoNF, 
			Timestamp DataEntSaiNF, String TipoNF, String CFOP, String IE, String IM, 
			String CNPJDest, String RazaoSocial, String Logradouro, String Numero, 
			String Complemento, String Bairro, String NomeMunicipio, String UF, String CEP, 
			String NomePais, String Telefone, String IEDest)
	{	
		this. FuncaoDoRegistro	 = FuncaoDoRegistro;
		this. JustCancelamento	 = JustCancelamento;
		this. NaturezaOp		 = NaturezaOp;
		this. SerieNF			 = SerieNF;
		this. NumeroNF			 = NumeroNF;
		this. DataEmissaoNF		 = DataEmissaoNF;
		this. DataEntSaiNF		 = DataEntSaiNF;
		this. TipoNF			 = TipoNF;
		this. CFOP				 = CFOP;
		this. IE				 = IE;
		this. IM				 = IM;
		this. CNPJDest			 = CNPJDest;
		this. RazaoSocial		 = RazaoSocial;
		this. Logradouro		 = Logradouro;
		this. Numero			 = Numero;
		this. Complemento		 = Complemento;
		this. Bairro			 = Bairro;
		this. NomeMunicipio		 = NomeMunicipio;
		this. UF				 = UF;
		this. CEP				 = CEP;
		this. NomePais			 = NomePais;
		this. Telefone			 = Telefone;
		this. IEDest			 = IEDest;
	}	//	Registro20
	
	/**
	 * Formata o Registro 20
	 * 
	 * @return
	 */
	public StringBuffer format()
	{
		String mask = "dd/MM/yyyy hh:mm:ss";
		int sizeCNPJ = CNPJDest != null && CNPJDest.length() < 15 ? 11 : 14;
		sizeCNPJ = CNPJDest == null ? 0 : sizeCNPJ;
		boolean isCancelled = FuncaoDoRegistro.equals("C") ? true : false;
		//
		return new StringBuffer(TipoDeRegistro 								+ PIPE +
				FuncaoDoRegistro 											+ PIPE +
				TextUtil.checkSize(JustCancelamento, 15, 255, isCancelled) 	+ PIPE + 
				TextUtil.checkSize(NaturezaOp, 1, 60) 						+ PIPE + 
				TextUtil.checkSize(SerieNF, 1, 3) 							+ PIPE + 
				TextUtil.checkSize(NumeroNF, 1, 9) 							+ PIPE + 
				TextUtil.timeToString(DataEmissaoNF, mask) 					+ PIPE + 
				TextUtil.timeToString(DataEntSaiNF, mask, false) 			+ PIPE + 
				TextUtil.lPad(TipoNF, 1) 									+ PIPE + 
				TextUtil.lPad(CFOP, 4) 										+ PIPE + 
				TextUtil.checkSizeN(IE, 1, 14, false) 						+ PIPE + 
				TextUtil.checkSizeN(IM, 1, 15, false) 						+ PIPE + 
				TextUtil.lPad(CNPJDest, sizeCNPJ) 							+ PIPE + 
				TextUtil.checkSize(RazaoSocial, 1, 60) 						+ PIPE + 
				TextUtil.checkSize(Logradouro, 1, 60) 						+ PIPE + 
				TextUtil.checkSize(Numero, 1, 60) 							+ PIPE + 
				TextUtil.checkSize(Complemento, 1, 60, false) 				+ PIPE + 
				TextUtil.checkSize(Bairro, 1, 60) 							+ PIPE + 
				TextUtil.checkSize(NomeMunicipio, 1, 60) 					+ PIPE + 
				TextUtil.rPad(UF, 2) 										+ PIPE + 
				TextUtil.lPad(CEP, CEP == null ? 0 : 8) 					+ PIPE + 
				TextUtil.checkSize(NomePais, 1, 60)  						+ PIPE + 
				TextUtil.checkSizeN(Telefone, 1, 10, false)  				+ PIPE + 
				TextUtil.checkSizeN(IEDest, 0, 14, false) 					+ PIPE + TextUtil.EOL_WIN32);
	}
}	//	Registro20