package org.adempierelbr.nfe.beans;

import javax.xml.bind.annotation.XmlElement;

public class ICMSBean {
	
	// ICMS - Definir Coluna ICMS de acordo com a Situa��o Tributaria

	private ICMSGrupoBean ICMS;
	private ICMSGrupoBean ICMS00;
	private ICMSGrupoBean ICMS10;
	private ICMSGrupoBean ICMS20;
	private ICMSGrupoBean ICMS30;
	private ICMSGrupoBean ICMS40;
	private ICMSGrupoBean ICMS51;
	private ICMS60Grp ICMS60;
	private ICMSGrupoBean ICMS70;
	private ICMSGrupoBean ICMS90;

	
	public ICMSGrupoBean getICMS() {
		return ICMS;
	}

	public void setICMS(ICMSGrupoBean icms) {
		ICMS = icms;
	}

	public ICMSGrupoBean getICMS00() {
		return ICMS00;
	}

	public void setICMS00(ICMSGrupoBean icms00) {
		ICMS00 = icms00;
	}

	public ICMSGrupoBean getICMS90() {
		return ICMS90;
	}

	public void setICMS90(ICMSGrupoBean icms90) {
		ICMS90 = icms90;
	}

	public ICMSGrupoBean getICMS10() {
		return ICMS10;
	}

	public void setICMS10(ICMSGrupoBean icms10) {
		ICMS10 = icms10;
	}

	public ICMSGrupoBean getICMS20() {
		return ICMS20;
	}

	public void setICMS20(ICMSGrupoBean icms20) {
		ICMS20 = icms20;
	}

	public ICMSGrupoBean getICMS30() {
		return ICMS30;
	}

	public void setICMS30(ICMSGrupoBean icms30) {
		ICMS30 = icms30;
	}

	public ICMSGrupoBean getICMS40() {
		return ICMS40;
	}

	public void setICMS40(ICMSGrupoBean icms40) {
		ICMS40 = icms40;
	}

	public ICMSGrupoBean getICMS51() {
		return ICMS51;
	}

	public void setICMS51(ICMSGrupoBean icms51) {
		ICMS51 = icms51;
	}

	public ICMS60Grp getICMS60() {
		return ICMS60;
	}

	public void setICMS60(ICMS60Grp icms60) {
		ICMS60 = icms60;
	}

	public ICMSGrupoBean getICMS70() {
		return ICMS70;
	}

	public void setICMS70(ICMSGrupoBean icms70) {
		ICMS70 = icms70;
	}

	 public static class ICMS60Grp {

         @XmlElement(required = true)
         protected String orig;
         @XmlElement(name = "CST", required = true)
         protected String CST;
         @XmlElement(name = "vBCST", required = true)
         protected String vBCST;
         @XmlElement(name = "vICMSST", required = true)
         protected String vICMSST;

         /**
          * Gets the value of the orig property.
          * 
          * @return
          *     possible object is
          *     {@link String }
          *     
          */
         public String getOrig() {
             return orig;
         }

         /**
          * Sets the value of the orig property.
          * 
          * @param value
          *     allowed object is
          *     {@link String }
          *     
          */
         public void setOrig(String value) {
             this.orig = value;
         }

         /**
          * Gets the value of the cst property.
          * 
          * @return
          *     possible object is
          *     {@link String }
          *     
          */
         public String getCST() {
             return CST;
         }

         /**
          * Sets the value of the cst property.
          * 
          * @param value
          *     allowed object is
          *     {@link String }
          *     
          */
         public void setCST(String value) {
             this.CST = value;
         }

         /**
          * Gets the value of the vbcst property.
          * 
          * @return
          *     possible object is
          *     {@link String }
          *     
          */
         public String getVBCST() {
             return vBCST;
         }

         /**
          * Sets the value of the vbcst property.
          * 
          * @param value
          *     allowed object is
          *     {@link String }
          *     
          */
         public void setVBCST(String value) {
             this.vBCST = value;
         }

         /**
          * Gets the value of the vicmsst property.
          * 
          * @return
          *     possible object is
          *     {@link String }
          *     
          */
         public String getVICMSST() {
             return vICMSST;
         }

         /**
          * Sets the value of the vicmsst property.
          * 
          * @param value
          *     allowed object is
          *     {@link String }
          *     
          */
         public void setVICMSST(String value) {
             this.vICMSST = value;
         }

     }
	
}