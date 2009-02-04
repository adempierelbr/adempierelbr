/*****************************************************************************
* Product: ADempiereLBR - ADempiere Localization Brazil                      *
* This program is free software. you can redistribute it and/or modify it    *
* under the terms version 2 of the GNU General Public License as published   *
* by the Free Software Foundation. This program is distributed in the hope   *
* that it will be useful, but WITHOUT ANY WARRANTY. without even the implied *
* warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.           *
* See the GNU General Public License for more details.                       *
* You should have received a copy of the GNU General Public License along    *
* with this program. if not, write to the Free Software Foundation, Inc.,    *
* 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA.                     *
*****************************************************************************/
package org.compiere.model;

/** Generated Model - DO NOT CHANGE */
import java.util.*;
import java.sql.*;
import java.math.*;
import org.compiere.util.*;
/** Generated Model for LBR_OtherNF
 *  @author AdempiereLBR (generated) 
 *  @version Compiere SQLJ 1.0 - $Id$ */
public class X_LBR_OtherNF extends PO
{
/** Standard Constructor
@param ctx context
@param LBR_OtherNF_ID id
@param trxName transaction
*/
public X_LBR_OtherNF (Properties ctx, int LBR_OtherNF_ID, String trxName)
{
super (ctx, LBR_OtherNF_ID, trxName);
/** if (LBR_OtherNF_ID == 0)
{
setC_BPartner_ID (0);
setC_DocTypeTarget_ID (0);
setC_DocType_ID (0);
setLBR_OtherNF_ID (0);
setM_Warehouse_ID (0);
}
 */
}
/** Load Constructor 
@param ctx context
@param rs result set 
@param trxName transaction
*/
public X_LBR_OtherNF (Properties ctx, ResultSet rs, String trxName)
{
super (ctx, rs, trxName);
}
/** serialVersionUID */
public static final long serialVersionUID=1L;

/** AD_Table_ID */
public static final int Table_ID=MTable.getTable_ID("LBR_OtherNF");

/** TableName=LBR_OtherNF */
public static final String Table_Name="LBR_OtherNF";

protected static KeyNamePair Model = new KeyNamePair(Table_ID,"LBR_OtherNF");

protected BigDecimal accessLevel = new BigDecimal(3);
/** AccessLevel
@return 3 - Client - Org 
*/
protected int get_AccessLevel()
{
return accessLevel.intValue();
}
/** Load Meta Data
@param ctx context
@return PO Info
*/
protected POInfo initPO (Properties ctx)
{
POInfo poi = POInfo.getPOInfo (ctx, Table_ID);
return poi;
}
/** Info
@return info
*/
public String toString()
{
StringBuffer sb = new StringBuffer ("X_LBR_OtherNF[").append(get_ID()).append("]");
return sb.toString();
}

/** C_BPartner_ID AD_Reference_ID=173 */
public static final int C_BPARTNER_ID_AD_Reference_ID=173;
/** Set Business Partner .
@param C_BPartner_ID Identifies a Business Partner */
public void setC_BPartner_ID (int C_BPartner_ID)
{
if (C_BPartner_ID < 1) throw new IllegalArgumentException ("C_BPartner_ID is mandatory.");
set_Value ("C_BPartner_ID", new Integer(C_BPartner_ID));
}
/** Get Business Partner .
@return Identifies a Business Partner */
public int getC_BPartner_ID() 
{
Integer ii = (Integer)get_Value("C_BPartner_ID");
if (ii == null) return 0;
return ii.intValue();
}

/** C_DocTypeTarget_ID AD_Reference_ID=170 */
public static final int C_DOCTYPETARGET_ID_AD_Reference_ID=170;
/** Set Target Document Type.
@param C_DocTypeTarget_ID Target document type for conversing documents */
public void setC_DocTypeTarget_ID (int C_DocTypeTarget_ID)
{
if (C_DocTypeTarget_ID < 1) throw new IllegalArgumentException ("C_DocTypeTarget_ID is mandatory.");
set_Value ("C_DocTypeTarget_ID", new Integer(C_DocTypeTarget_ID));
}
/** Get Target Document Type.
@return Target document type for conversing documents */
public int getC_DocTypeTarget_ID() 
{
Integer ii = (Integer)get_Value("C_DocTypeTarget_ID");
if (ii == null) return 0;
return ii.intValue();
}

/** C_DocType_ID AD_Reference_ID=170 */
public static final int C_DOCTYPE_ID_AD_Reference_ID=170;
/** Set Document Type.
@param C_DocType_ID Document type or rules */
public void setC_DocType_ID (int C_DocType_ID)
{
if (C_DocType_ID < 0) throw new IllegalArgumentException ("C_DocType_ID is mandatory.");
set_Value ("C_DocType_ID", new Integer(C_DocType_ID));
}
/** Get Document Type.
@return Document type or rules */
public int getC_DocType_ID() 
{
Integer ii = (Integer)get_Value("C_DocType_ID");
if (ii == null) return 0;
return ii.intValue();
}
/** Set Generated.
@param IsGenerated This Line is generated */
public void setIsGenerated (boolean IsGenerated)
{
set_ValueNoCheck ("IsGenerated", new Boolean(IsGenerated));
}
/** Get Generated.
@return This Line is generated */
public boolean isGenerated() 
{
Object oo = get_Value("IsGenerated");
if (oo != null) 
{
 if (oo instanceof Boolean) return ((Boolean)oo).booleanValue();
 return "Y".equals(oo);
}
return false;
}
/** Set Other NF.
@param LBR_OtherNF_ID Other NF */
public void setLBR_OtherNF_ID (int LBR_OtherNF_ID)
{
if (LBR_OtherNF_ID < 1) throw new IllegalArgumentException ("LBR_OtherNF_ID is mandatory.");
set_ValueNoCheck ("LBR_OtherNF_ID", new Integer(LBR_OtherNF_ID));
}
/** Get Other NF.
@return Other NF */
public int getLBR_OtherNF_ID() 
{
Integer ii = (Integer)get_Value("LBR_OtherNF_ID");
if (ii == null) return 0;
return ii.intValue();
}
/** Set Warehouse.
@param M_Warehouse_ID Storage Warehouse and Service Point */
public void setM_Warehouse_ID (int M_Warehouse_ID)
{
if (M_Warehouse_ID < 1) throw new IllegalArgumentException ("M_Warehouse_ID is mandatory.");
set_Value ("M_Warehouse_ID", new Integer(M_Warehouse_ID));
}
/** Get Warehouse.
@return Storage Warehouse and Service Point */
public int getM_Warehouse_ID() 
{
Integer ii = (Integer)get_Value("M_Warehouse_ID");
if (ii == null) return 0;
return ii.intValue();
}
/** Set Processed.
@param Processed The document has been processed */
public void setProcessed (boolean Processed)
{
set_ValueNoCheck ("Processed", new Boolean(Processed));
}
/** Get Processed.
@return The document has been processed */
public boolean isProcessed() 
{
Object oo = get_Value("Processed");
if (oo != null) 
{
 if (oo instanceof Boolean) return ((Boolean)oo).booleanValue();
 return "Y".equals(oo);
}
return false;
}
/** Set Generate.
@param lbr_GenerateOtherNF Generate */
public void setlbr_GenerateOtherNF (String lbr_GenerateOtherNF)
{
if (lbr_GenerateOtherNF != null && lbr_GenerateOtherNF.length() > 10)
{
log.warning("Length > 10 - truncated");
lbr_GenerateOtherNF = lbr_GenerateOtherNF.substring(0,9);
}
set_Value ("lbr_GenerateOtherNF", lbr_GenerateOtherNF);
}
/** Get Generate.
@return Generate */
public String getlbr_GenerateOtherNF() 
{
return (String)get_Value("lbr_GenerateOtherNF");
}

/** lbr_OtherNF_RequestType AD_Reference_ID=1000040 */
public static final int LBR_OTHERNF_REQUESTTYPE_AD_Reference_ID=1000040;
/** Material Return = MR */
public static final String LBR_OTHERNF_REQUESTTYPE_MaterialReturn = "MR";
/** Material Invoice = MI */
public static final String LBR_OTHERNF_REQUESTTYPE_MaterialInvoice = "MI";
/** Set Other NF Request Type.
@param lbr_OtherNF_RequestType Type of request for the Other NF Process */
public void setlbr_OtherNF_RequestType (String lbr_OtherNF_RequestType)
{
if (lbr_OtherNF_RequestType == null || lbr_OtherNF_RequestType.equals("MR") || lbr_OtherNF_RequestType.equals("MI"));
 else throw new IllegalArgumentException ("lbr_OtherNF_RequestType Invalid value - " + lbr_OtherNF_RequestType + " - Reference_ID=1000040 - MR - MI");
if (lbr_OtherNF_RequestType != null && lbr_OtherNF_RequestType.length() > 2)
{
log.warning("Length > 2 - truncated");
lbr_OtherNF_RequestType = lbr_OtherNF_RequestType.substring(0,1);
}
set_Value ("lbr_OtherNF_RequestType", lbr_OtherNF_RequestType);
}
/** Get Other NF Request Type.
@return Type of request for the Other NF Process */
public String getlbr_OtherNF_RequestType() 
{
return (String)get_Value("lbr_OtherNF_RequestType");
}
/** Set Process.
@param lbr_ProcessOtherNF Process now */
public void setlbr_ProcessOtherNF (String lbr_ProcessOtherNF)
{
if (lbr_ProcessOtherNF != null && lbr_ProcessOtherNF.length() > 1)
{
log.warning("Length > 1 - truncated");
lbr_ProcessOtherNF = lbr_ProcessOtherNF.substring(0,0);
}
set_Value ("lbr_ProcessOtherNF", lbr_ProcessOtherNF);
}
/** Get Process.
@return Process now */
public String getlbr_ProcessOtherNF() 
{
return (String)get_Value("lbr_ProcessOtherNF");
}
/** Set Void.
@param lbr_VoidOtherNF Void Other NF */
public void setlbr_VoidOtherNF (String lbr_VoidOtherNF)
{
if (lbr_VoidOtherNF != null && lbr_VoidOtherNF.length() > 1)
{
log.warning("Length > 1 - truncated");
lbr_VoidOtherNF = lbr_VoidOtherNF.substring(0,0);
}
set_Value ("lbr_VoidOtherNF", lbr_VoidOtherNF);
}
/** Get Void.
@return Void Other NF */
public String getlbr_VoidOtherNF() 
{
return (String)get_Value("lbr_VoidOtherNF");
}
}
