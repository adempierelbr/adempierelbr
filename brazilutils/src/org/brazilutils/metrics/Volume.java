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
public class Volume {
	
	public Volume(){
		
	}
	
	/**
	 * @param volume
	 * @return double 
	 */
	public double cubicMeterToLitre(int volume){
		double result = volume*1000;
		return result;		
	}
	
	/**
	 * @param litres
	 * @return double
	 */
	public double litreToCubicMeter(double litres){
	   double result = litres/1000;
	   return result;
	}
	
	/**
	 * @param litres
	 * @return double
	 */
	public double litreToUSgallon(double litres){
		double result = litres/3.785;
		return result;
	}
	
	/**
	 * @param gallon
	 * @return double
	 */
	public double usGallonToLitre(double gallon){
		double result = gallon*3.785;
		return result;
	}
	

}
