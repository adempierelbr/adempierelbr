package org.adempierelbr.util;

import org.adempierelbr.nfe.beans.ChaveNFE;

public class ChaveDeAcesso {

	public int getChave(ChaveNFE campos) {
		int dv = 0;
		ChaveNFE camp = campos;

		try {
			String chave = camp.getCUF() + camp.getAAMM() + camp.getCNPJ()
					+ camp.getMod() + camp.getSerie() + camp.getNNF()
					+ camp.getCNF();
			NFeUtil ger = new NFeUtil();
			dv = ger.GerarDigito(chave);
		} catch (Exception e) {
		}

		return dv;

	}

}
