/*
 * Created on 23/04/2005
 *
 * TODO To change the template for this generated file go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
package org.brazilutils.metrics;

/**
 * @author D´Artagnan Ramos Dias Neto
 *
 * TODO To change the template for this generated type comment go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
public class Mass {
 
	public Mass(){
		
	}
	
	/**
	 * @param heigth
	 * @return double
	 */
	public double kilogramToPound(double heigth){
		double result = heigth*2.2046;
		return result;
	}
	
	/**
	 * @param heigth
	 * @return double
	 */
	public double poundToKilogram(double heigth){
		double result = heigth/2.2046;
		return result;		
	}
	
	/**
	 * @param heigth
	 * @return double
	 */
	public double gramToPound(double heigth){
		double result = heigth/453.6;
		return result;
	}
	
	/**
	 * @param heigth
	 * @return double
	 */
	public double poundToGram(double heigth){
		double result = heigth*453.6;
		return result;		
	}
	
	/**
	 * @param heigth
	 * @return double
	 */
	public double kilogramToLug(double heigth){
		double result = heigth*0.06852;
		return result; 
	}
	
	/**
	 * @param heigth
	 * @return double
	 */
	public double lugToKilogram(double heigth){
		double result = heigth/0.06852;
		return result;
	}
	
	/**
	 * @param heigth
	 * @return double
	 */
	public double poundToLug(double heigth){
		double result = heigth*0.03108;
		return result;
	}
	
	/**
	 * @param heigth
	 * @return double
	 */
	public double lugToPound(double heigth){
		double result = heigth/0.03108;
		return result;
	}
	
	
	
	
	

}
