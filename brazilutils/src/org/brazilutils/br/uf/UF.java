/**
 * 
 */
package org.brazilutils.br.uf;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

import org.brazilutils.br.uf.ie.InscricaoEstadual;
import org.brazilutils.br.uf.ie.InscricaoEstadualAC;
import org.brazilutils.br.uf.ie.InscricaoEstadualAL;
import org.brazilutils.br.uf.ie.InscricaoEstadualAM;
import org.brazilutils.br.uf.ie.InscricaoEstadualAP;
import org.brazilutils.br.uf.ie.InscricaoEstadualBA;
import org.brazilutils.br.uf.ie.InscricaoEstadualCE;
import org.brazilutils.br.uf.ie.InscricaoEstadualDF;
import org.brazilutils.br.uf.ie.InscricaoEstadualES;
import org.brazilutils.br.uf.ie.InscricaoEstadualGO;
import org.brazilutils.br.uf.ie.InscricaoEstadualMA;
import org.brazilutils.br.uf.ie.InscricaoEstadualMG;
import org.brazilutils.br.uf.ie.InscricaoEstadualMS;
import org.brazilutils.br.uf.ie.InscricaoEstadualMT;
import org.brazilutils.br.uf.ie.InscricaoEstadualPA;
import org.brazilutils.br.uf.ie.InscricaoEstadualPB;
import org.brazilutils.br.uf.ie.InscricaoEstadualPE;
import org.brazilutils.br.uf.ie.InscricaoEstadualPI;
import org.brazilutils.br.uf.ie.InscricaoEstadualPR;
import org.brazilutils.br.uf.ie.InscricaoEstadualRJ;
import org.brazilutils.br.uf.ie.InscricaoEstadualRN;
import org.brazilutils.br.uf.ie.InscricaoEstadualRO;
import org.brazilutils.br.uf.ie.InscricaoEstadualRR;
import org.brazilutils.br.uf.ie.InscricaoEstadualRS;
import org.brazilutils.br.uf.ie.InscricaoEstadualSC;
import org.brazilutils.br.uf.ie.InscricaoEstadualSE;
import org.brazilutils.br.uf.ie.InscricaoEstadualSP;
import org.brazilutils.br.uf.ie.InscricaoEstadualTO;
import org.brazilutils.territory.TU;

/**
 * Represents a brazilian territory division unit.
 * Brazilian territory division unit are called states except for DF 
 * that is not a state, is a district.
 * 
 * @author Douglas Siviotti
 * 
 */
public final class UF extends TU{
    
	/** Acre */
	public static final UF AC = new UF("AC", "Acre", new InscricaoEstadualAC());

	/** Alagoas */
	public static final UF AL = new UF("AL", "Alagoas",new InscricaoEstadualAL());

	/** Amazonas */
	public static final UF AM = new UF("AM", "Amazobas",new InscricaoEstadualAM());

	/** Amap� */
	public static final UF AP = new UF("AP", "Amap�", new InscricaoEstadualAP());

	/** Bahia */
	public static final UF BA = new UF("BA", "Bahia", new InscricaoEstadualBA());

	/** Cear� */
	public static final UF CE = new UF("CE", "Cear�", new InscricaoEstadualCE());

	/** Distrito Federal */
	public static final UF DF = new UF("DF", "Distrito Federal",new InscricaoEstadualDF());

	/** Esp�rito Santo */
	public static final UF ES = new UF("ES", "Esp�rito Santo",new InscricaoEstadualES());

	/** Goi�s */
	public static final UF GO = new UF("GO", "Goi�s", new InscricaoEstadualGO());

	/** Maranh�o */
	public static final UF MA = new UF("MA", "Maranh�o",new InscricaoEstadualMA());

	/** Minas Gerais */
	public static final UF MG = new UF("MG", "Minas Gerais",new InscricaoEstadualMG());

	/** Mato Grosso do Sul */
	public static final UF MS = new UF("MS", "Mato Grosso do Sul",new InscricaoEstadualMS());

	/** Mato Grosso */
	public static final UF MT = new UF("MT", "Mato Grosso",new InscricaoEstadualMT());

	/** Par� */
	public static final UF PA = new UF("PA", "Par�", new InscricaoEstadualPA());

	/** Para�ba */
	public static final UF PB = new UF("PB", "Para�ba",new InscricaoEstadualPB());

	/** Pernanbuco */
	public static final UF PE = new UF("PE", "Pernambuco",new InscricaoEstadualPE());

	/** Piau� */
	public static final UF PI = new UF("PI", "Piau�", new InscricaoEstadualPI());

	/** Paran� */
	public static final UF PR = new UF("PR", "Paran�",new InscricaoEstadualPR());

	/** Rio de Janeiro */
	public static final UF RJ = new UF("RJ", "Rio de Janeiro",new InscricaoEstadualRJ());

	/** Rio Grande do Norte */
	public static final UF RN = new UF("RN", "Rio Grande do Norte",new InscricaoEstadualRN());

	/** Rond�nia */
	public static final UF RO = new UF("RO", "Rond�nia",new InscricaoEstadualRO());

	/** Ror�ima */
	public static final UF RR = new UF("RR", "Roraima",new InscricaoEstadualRR());

	/** Rio Grande do Sul */
	public static final UF RS = new UF("RS", "Rio Grande do Sul",new InscricaoEstadualRS());

	/** Santa Catarina */
	public static final UF SC = new UF("SC", "Santa Catarina",new InscricaoEstadualSC());

	/** Sergipe */
	public static final UF SE = new UF("SE", "Sergipe",new InscricaoEstadualSE());

	/** S�o Paulo */
	public static final UF SP = new UF("SP", "S�o Paulo",new InscricaoEstadualSP());

	/** Tocantins */
	public static final UF TO = new UF("TO", "Tocantinns",new InscricaoEstadualTO());

    


	public static UF valueOf(String sigla) {
//    TODO usar Reflection
		if (sigla == null){
			return null;
		}
		Collection c = values();
		String s = sigla.toUpperCase();
		for (Iterator iter = c.iterator(); iter.hasNext();) {
			UF uf = (UF) iter.next();
			if (uf.getSigla().equals(sigla)){
				return uf;
			}
		}
		return null;
	}
	
	public static Collection values(){
        // TODO usar Reflection
		List l = new ArrayList();
		l.add(AC);
		l.add(AL);
		l.add(AM);
		l.add(AP);
		l.add(BA);
		l.add(CE);
		l.add(DF);
		l.add(ES);
		l.add(GO);
		l.add(MA);
		l.add(MG);
		l.add(MS);
		l.add(MT);
		l.add(PA);
		l.add(PB);
		l.add(PE);
		l.add(PI);
		l.add(PR);
		l.add(RJ);
		l.add(RN);
		l.add(RO);
		l.add(RR);
		l.add(RS);
		l.add(SC);
		l.add(SE);
		l.add(SP);
		l.add(TO);
		return l;
	}

	private String ufName;

	//private InscricaoEstadual inscricaoEstadual;

    /**
     * Este costrutor obriga a criar uma instancia de  
     * inscricaoEstadual sem saber se vci ser necess�rio
     * @deprecated
     */
    private UF(String sigla, String ufName, InscricaoEstadual inscricaoEstadual) {
        super("BR",sigla);
        this.ufName = ufName;
    }
    
    private UF(String sigla, String ufName) {
        super("BR",sigla);
        this.ufName = ufName;
    }
    
    /**
     * @deprecated use <code>Brasil.ie(numero)</code>;
     * @return 
     */
	public InscricaoEstadual getInscricaoEstadual() {
		return InscricaoEstadual.getInstance(this);
	}

	public String getUfName() {
		return ufName;
	}

    /**
     * @deprecated use #getShortCode()
     * @return
     */
	public String getSigla() {
		return this.getShortCode();
	}

	public boolean equals(Object other) {
		return other instanceof UF && code.equals(((UF)other).code);
	}

	public String toString() {
		return this.getCode();
	}

	public boolean placaMatches(String string)
	{
		// TODO Auto-generated method stub
		return false;
	}

}
