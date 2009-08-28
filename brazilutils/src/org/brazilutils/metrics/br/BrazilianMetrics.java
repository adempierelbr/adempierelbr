/*
 * Created on 23/04/2005
 * 
 */
package org.brazilutils.metrics.br;

public class BrazilianMetrics {
	
	public BrazilianMetrics(){
		
	}
	
	/**
	 * @param hectares
	 * @return
	 */
	public double hectaresToAcres(double hectares){
		double result=hectares*2.47;
		return result;
	}
	
	/**
	 * @param cattleArroba
	 * @return
	 */
	public double cattleArrobaToPounds(double cattleArroba){
		double result=cattleArroba*66;
		return result;
	}
	

}
