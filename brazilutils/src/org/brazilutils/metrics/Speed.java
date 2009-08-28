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
public class Speed {
	
	public Speed(){
		
	}
	
	/**
	 * @param speed
	 * @return double
	 */
	public double machToKilometersPerHour(double speed){
		double result = speed*1226;
		return result;
	}
	
	/**
	 * @param speed
	 * @return double
	 */
	public double kilometerToMachPerHour(double speed){
		double result = speed/1226;
		return result;
	}
	
	
	/**
	 * @param miles
	 * @return double
	 */
	public double milesToKilometerPerHour(int miles){
		double result = miles*1.609;
		return result;
	}
	
	/**
	 * @param kilometers
	 * @return double
	 */
	public double kilometerToMilesPerHour(int kilometers){
		double result = kilometers/1.609;
		return result;
	}

}
