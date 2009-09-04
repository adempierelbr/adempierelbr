package org.adempierelbr.util;

import java.io.*;

public class CriarArquivoXML 
{
	public void retorna (String[] txt) throws Exception 
	{
		System.setProperty("file.encoding", "UTF-8");
		//
		FileWriter fileWriter;
		fileWriter = new FileWriter(txt[0], false);
		//
		for (int i = 1; i < txt.length; i++) 
		{
			fileWriter.write(txt[i]);

			fileWriter.flush();
			fileWriter.close();
		}
	}	//	retorna
}	//	CriarArquivoXML