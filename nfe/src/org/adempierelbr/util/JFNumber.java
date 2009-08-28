package org.adempierelbr.util;

import java.text.DecimalFormat;
import java.text.DecimalFormatSymbols;

public class JFNumber {
	public static String transform(double num) {
		return (transform(num, null));
	}

	public static String transform(double num, String mask) {
		DecimalFormat df = new DecimalFormat();
		DecimalFormatSymbols dfs = new DecimalFormatSymbols();
		// dfs.setCurrencySymbol("R$");
		dfs.setGroupingSeparator('.');
		dfs.setDecimalSeparator('.');
		df.setDecimalFormatSymbols(dfs);
		if (mask != null)
			df.applyPattern(mask);
		return (df.format(num));
	}
}
