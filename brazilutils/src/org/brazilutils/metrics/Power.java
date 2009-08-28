/*
 * Created on 23/05/2005
 */
package org.brazilutils.metrics;
/**
 * @author D´Artagnan Ramos Dias Neto
 *
 */

public class Power {

   public Power(){
	   
   }
   
   /**
    * @param energy
    * @return double
    */
   public double hpToWatt(double energy){
      
	  double result=energy*745.7;
	  return result;	   
   }
   
   /**
    * @param energy
    * @return double
    */
   
   public double wattToHp(double energy){
	   double result=energy/745.7;
	   return result;
   }
	
}
