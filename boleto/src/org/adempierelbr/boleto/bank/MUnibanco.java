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
package org.adempierelbr.boleto.bank;

import java.io.FileWriter;
import java.io.IOException;
import java.math.BigDecimal;
import java.sql.Timestamp;
import java.util.HashMap;
import java.util.Properties;

import org.adempierelbr.boleto.I_Bank;
import org.adempierelbr.model.MLBRBoleto;
import org.adempierelbr.model.MLBRCNAB;
import org.adempierelbr.util.ReturnCNABUtil;
import org.adempierelbr.util.TextUtil;
import org.compiere.model.MBankAccount;
import org.compiere.util.Env;

/**
 * MUnibanco
 *
 * Bank Unibanco Model
 *
 * @author Mario Grigioni (Kenos, www.kenos.com.br)
 * @version $Id: MUnibanco.java, 12/11/2007 08:35:00 mgrigioni
 */
public class MUnibanco implements I_Bank
{

	@Override
	public void generateCNAB(MLBRBoleto boleto) {
		// TODO Auto-generated method stub

	}

	private void generateHeader(FileWriter fw, MBankAccount BankA) throws IOException{

		Properties ctx = Env.getCtx();

		/*
		MOrg    Org    = MOrg.get(ctx, Env.getContextAsInt(ctx,"#AD_Org_ID"));

		int indexCC = BankA.getAccountNo().indexOf('-');
		String cc   = BankA.getAccountNo().substring(0, indexCC);
		String dv   = BankA.getAccountNo().substring(indexCC+1);
		*/

		String agencia = BankA.get_ValueAsString("lbr_AgencyNo");

		TextUtil.addText(fw, "0"); //TIPO DE REGISTRO
		TextUtil.addText(fw, "1"); //OPERAÇÃO
		TextUtil.addText(fw, "REMESSA"); //LITERAL DE REMESSA
		TextUtil.addText(fw, "03"); //CÓDIGO DE SERVIÇO
		TextUtil.addText(fw, TextUtil.pad("COBR.  ESPECIAL", ' ', 15, false)); //LITERAL DE SERVIÇO
		TextUtil.addText(fw, TextUtil.pad(agencia, '0', 11, true, true, true)); //AGÊNCIA
		TextUtil.addText(fw, TextUtil.pad(null, ' ', 14, true)); //ZEROS
		TextUtil.addText(fw, TextUtil.pad(null, ' ', 2, true)); //COD. MENSAGEM
		TextUtil.addText(fw, TextUtil.pad(null, ' ', 41, true)); //USO DO BANCO
		TextUtil.addText(fw, MLBRCNAB.CNABDateFormat(Env.getContextAsDate(ctx, "#Date"))); //DATA DE GERAÇÃO
		TextUtil.addText(fw, "01600"); //DENSIDADE DO ARQUIVO
		TextUtil.addText(fw, "BPI"); //LITERAL DENSIDADE
		TextUtil.addText(fw, TextUtil.pad(null, ' ', 283, true)); //USO DO BANCO
		TextUtil.addText(fw, TextUtil.pad(null, ' ', 3, true)); //VERSAO DO ARQUIVO
		TextUtil.addText(fw, TextUtil.pad("1", '0', 6, true)); //NÚMERO SEQUENCIAL
		TextUtil.addEOL(fw);

	} //generateHeader

	private void generateTrailer(FileWriter fw, int numSeq) throws IOException{

		TextUtil.addText(fw, "9"); //TIPO DE REGISTRO
		TextUtil.addText(fw, TextUtil.pad("", ' ', 393, true)); //BRANCOS
		TextUtil.addText(fw, TextUtil.pad(numSeq, '0', 6, true)); //NÚMERO SEQUENCIAL
		TextUtil.addEOL(fw);

	} //generateTrailer

	public void generateFile(String FileName, Timestamp DateFrom, Timestamp DateTo, MBankAccount BankA, String trx) throws IOException{

		FileWriter fw = TextUtil.createFile(FileName, false);

		generateHeader(fw,BankA);

		int numseq = 2;

		//lbr_cnabfield6  = CONTA CORRENTE
		/*
		int indexCC = BankA.getAccountNo().indexOf('-');
		String cc   = MCNAB.CNABFormat(BankA.getAccountNo().substring(0, indexCC),5);

		String where =  "WHERE lbr_CNABField6 = '" + cc + "'";

		MCNAB[] lines = null;

		if (DateFrom != null && DateTo != null)
			lines = MCNAB.getFields(where, DateFrom, DateTo, trx);
		else
			lines = MCNAB.getFields(BankA.getC_BankAccount_ID(),trx);

		for(int i=0;i<lines.length;i++){

			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField1(), ' ', 1, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField2(), ' ', 2, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField3(), ' ', 14, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField4(), ' ', 4, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField5(), ' ', 2, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField6(), ' ', 5, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField7(), ' ', 1, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField8(), ' ', 4, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField9(), ' ', 4, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField10(), ' ', 25, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField11(), ' ', 8, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField12(), ' ', 13, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField13(), ' ', 3, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField14(), ' ', 21, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField15(), ' ', 1, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField16(), ' ', 2, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField17(), ' ', 10, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField18(), ' ', 6, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField19(), ' ', 13, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField20(), ' ', 3, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField21(), ' ', 5, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField22(), ' ', 2, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField23(), ' ', 1, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField24(), ' ', 6, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField25(), ' ', 2, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField26(), ' ', 2, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField27(), ' ', 13, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField28(), ' ', 6, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField29(), ' ', 13, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField30(), ' ', 13, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField31(), ' ', 13, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField32(), ' ', 2, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField33(), ' ', 14, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField34(), ' ', 30, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField35(), ' ', 10, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField36(), ' ', 40, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField37(), ' ', 12, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField38(), ' ', 8, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField39(), ' ', 15, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField40(), ' ', 2, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField41(), ' ', 30, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField42(), ' ', 4, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField43(), ' ', 6, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField44(), ' ', 2, false));
			TextUtil.addLine(fw, TextUtil.pad(lines[i].getlbr_CNABField45(), ' ', 1, false));
			TextUtil.addLine(fw, TextUtil.pad(numseq, '0', 6, true));
			TextUtil.addEOL(fw);

			numseq++;

		}
		*/

		generateTrailer(fw,numseq);

		TextUtil.closeFile(fw);

	} //generateFile

	public void returnCNAB(HashMap<Integer,String[]> occurType, String FilePath, String[] linhas, String trx) throws IOException{

		FileWriter fw = ReturnCNABUtil.createFile(FilePath);

		for (int i = 1;i<((linhas.length)-1);i++){

			String CodOcorren      = linhas[i].substring(108, 110); //Cód. Ocorrencia
			String[] DescOcorren   = (occurType.get(Integer.parseInt(CodOcorren)));
			String DocumentNo      = (linhas[i].substring(37, 62)).trim();   //Número da Fatura
			String NossoNo         = (linhas[i].substring(62, 76)).trim(); //Nosso Número
			Timestamp  DataOcorren = TextUtil.stringToTime((linhas[i].substring(110, 116)).trim(),"ddMMyy"); //Data Pagamento
			BigDecimal ValorTitulo = ReturnCNABUtil.stringTobigdecimal((linhas[i].substring(152, 165)).trim()); //Valor Titulo
			BigDecimal Desconto    = ReturnCNABUtil.stringTobigdecimal((linhas[i].substring(240, 253)).trim()); //Desconto
			BigDecimal Juros       = ReturnCNABUtil.stringTobigdecimal((linhas[i].substring(266, 279)).trim()); //Juros

			ReturnCNABUtil.processReturn(fw, CodOcorren, DescOcorren[1], DescOcorren[0], DocumentNo, NossoNo,
									  DataOcorren, ValorTitulo, Desconto, Juros, trx);

		}

		TextUtil.closeFile(fw);

	}

} //MUnibanco