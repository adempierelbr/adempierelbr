package org.adempierelbr.util;

import java.util.ArrayList;
import java.util.List;
import org.xml.sax.SAXException;
import org.xml.sax.SAXParseException;

/** 
 * 
 * @author Dilnei Cunha 
 */  
 public class ErrorHandler implements org.xml.sax.ErrorHandler {  
       
     final List<String> handlerList= new ArrayList<String>();  
       
     @Override  
     public void warning(SAXParseException exception) throws SAXException {  
         handlerList.add("ATENÇÃO: " + exception.getMessage());  
     }  
   
     @Override  
     public void error(SAXParseException exception) throws SAXException {  
         handlerList.add("ERRO: " + exception.getMessage());  
     }  
   
     @Override  
     public void fatalError(SAXParseException exception) throws SAXException {  
         handlerList.add("ERRO FATAL: " + exception.getMessage());  
     }  
 }  
