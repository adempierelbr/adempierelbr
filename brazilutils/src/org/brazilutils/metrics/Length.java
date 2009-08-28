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
 * TODO To change the template for this generated type comment go to Window -
 * Preferences - Java - Code Style - Code Templates
 */
public class Length {

	/**
	 * Constructor method
	 *  
	 */
	public Length() {

	}

	/**
	 * @param distance
	 * @return double
	 */
	public double milesToKilometer(double distance) {
		double result = distance * 1.609;
		return result;

	}
   
	/**
	 * @param distance
	 * @return double
	 */ 
	public double kilometerToMiles(double distance){
		double result = distance/1.609;
		return result;
	}
	
	/**
	 * @param extension
	 * @return double
	 */
	
	public double centimeterToInch(double extension){
		double result = extension/2.54;
		return result;
	}
	
	/**
	 * @param extension
	 * @return double
	 */
	public double inchToCentimeter(double extension){
		double result = extension*2.54;
		return result;		
	}
	
	/**
	 * @param extension
	 * @return
	 */
	public double inchToMeter(double extension){
		double result = extension/39.37;
		return result;
	}
	
	/**
	 * @param extension
	 * @return
	 */
	public double meterToInch(double extension){
		double result = extension*39.37;
		return result;
	}
	
	/**
	 * @param extension
	 * @return double
	 */
	public double feetToInch(double extension){
		double result = extension*12;
		return result;
	}
	
	/**
	 * @param extension
	 * @return double
	 */
	public double inchToFeet(double extension){
		double result = extension/12;
	    return result; 	
	}
	
	/**
	 * @param extension
	 * @return double
	 */
	public double feetToMeter(double extension){
		double result = extension*3.28;
		return result;
		
	}
	
	/**
	 * @param extension
	 * @return double
	 */
	public double meterToFeet(double extension){
		double result = extension/3.28;
		return result;
	}
	
 }