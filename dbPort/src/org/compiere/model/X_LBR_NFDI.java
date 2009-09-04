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
/** Generated Model for LBR_NFDI
 *  @author AdempiereLBR (generated) 
 *  @version Compiere SQLJ 1.0 - $Id$ */
public class X_LBR_NFDI extends PO
{
/** Standard Constructor
@param ctx context
@param LBR_NFDI_ID id
@param trxName transaction
*/
public X_LBR_NFDI (Properties ctx, int LBR_NFDI_ID, String trxName)
{
super (ctx, LBR_NFDI_ID, trxName);
/** if (LBR_NFDI_ID == 0)
{
setLBR_NFDI_ID (0);
}
 */
}
/** Load Constructor 
@param ctx context
@param rs result set 
@param trxName transaction
*/
public X_LBR_NFDI (Properties ctx, ResultSet rs, String trxName)
{
super (ctx, rs, trxName);
}
/** serialVersionUID */
public static final long serialVersionUID=1L;

/** AD_Table_ID */
public static final int Table_ID=MTable.getTable_ID("LBR_NFDI");

/** TableName=LBR_NFDI */
public static final String Table_Name="LBR_NFDI";

protected static KeyNamePair Model = new KeyNamePair(Table_ID,"LBR_NFDI");

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
StringBuffer sb = new StringBuffer ("X_LBR_NFDI[").append(get_ID()).append("]");
return sb.toString();
}
/** Set Transaction Date.
@param DateTrx Transaction Date */
public void setDateTrx (Timestamp DateTrx)
{
set_Value ("DateTrx", DateTrx);
}
/** Get Transaction Date.
@return Transaction Date */
public Timestamp getDateTrx() 
{
return (Timestamp)get_Value("DateTrx");
}
/** Set DI.
@param LBR_NFDI_ID DI */
public void setLBR_NFDI_ID (int LBR_NFDI_ID)
{
if (LBR_NFDI_ID < 1) throw new IllegalArgumentException ("LBR_NFDI_ID is mandatory.");
set_ValueNoCheck ("LBR_NFDI_ID", new Integer(LBR_NFDI_ID));
}
/** Get DI.
@return DI */
public int getLBR_NFDI_ID() 
{
Integer ii = (Integer)get_Value("LBR_NFDI_ID");
if (ii == null) return 0;
return ii.intValue();
}
/** Set Nota Fiscal.
@param LBR_NotaFiscal_ID Primary key table LBR_NotaFiscal */
public void setLBR_NotaFiscal_ID (int LBR_NotaFiscal_ID)
{
if (LBR_NotaFiscal_ID <= 0) set_Value ("LBR_NotaFiscal_ID", null);
 else 
set_Value ("LBR_NotaFiscal_ID", new Integer(LBR_NotaFiscal_ID));
}
/** Get Nota Fiscal.
@return Primary key table LBR_NotaFiscal */
public int getLBR_NotaFiscal_ID() 
{
Integer ii = (Integer)get_Value("LBR_NotaFiscal_ID");
if (ii == null) return 0;
return ii.intValue();
}
/** Set BP Region.
@param lbr_BPRegion BP Region - Copied from the BP Location into Brazilan Legal and Tax Books */
public void setlbr_BPRegion (String lbr_BPRegion)
{
if (lbr_BPRegion != null && lbr_BPRegion.length() > 2)
{
log.warning("Length > 2 - truncated");
lbr_BPRegion = lbr_BPRegion.substring(0,1);
}
set_Value ("lbr_BPRegion", lbr_BPRegion);
}
/** Get BP Region.
@return BP Region - Copied from the BP Location into Brazilan Legal and Tax Books */
public String getlbr_BPRegion() 
{
return (String)get_Value("lbr_BPRegion");
}
/** Set Código do exportador.
@param lbr_CodExportador Código do exportador */
public void setlbr_CodExportador (String lbr_CodExportador)
{
if (lbr_CodExportador != null && lbr_CodExportador.length() > 60)
{
log.warning("Length > 60 - truncated");
lbr_CodExportador = lbr_CodExportador.substring(0,59);
}
set_Value ("lbr_CodExportador", lbr_CodExportador);
}
/** Get Código do exportador.
@return Código do exportador */
public String getlbr_CodExportador() 
{
return (String)get_Value("lbr_CodExportador");
}
/** Set DI.
@param lbr_DI Número do Documento de Importação DI/DSI/DA (DI/DSI/DA) */
public void setlbr_DI (String lbr_DI)
{
if (lbr_DI != null && lbr_DI.length() > 10)
{
log.warning("Length > 10 - truncated");
lbr_DI = lbr_DI.substring(0,9);
}
set_Value ("lbr_DI", lbr_DI);
}
/** Get DI.
@return Número do Documento de Importação DI/DSI/DA (DI/DSI/DA) */
public String getlbr_DI() 
{
return (String)get_Value("lbr_DI");
}
/** Set Data do Desembaraço.
@param lbr_DataDesemb Data do Desembaraço */
public void setlbr_DataDesemb (Timestamp lbr_DataDesemb)
{
set_Value ("lbr_DataDesemb", lbr_DataDesemb);
}
/** Get Data do Desembaraço.
@return Data do Desembaraço */
public Timestamp getlbr_DataDesemb() 
{
return (Timestamp)get_Value("lbr_DataDesemb");
}
/** Set Local de Desembaraço.
@param lbr_LocDesemb Local de Desembaraço */
public void setlbr_LocDesemb (String lbr_LocDesemb)
{
if (lbr_LocDesemb != null && lbr_LocDesemb.length() > 60)
{
log.warning("Length > 60 - truncated");
lbr_LocDesemb = lbr_LocDesemb.substring(0,59);
}
set_Value ("lbr_LocDesemb", lbr_LocDesemb);
}
/** Get Local de Desembaraço.
@return Local de Desembaraço */
public String getlbr_LocDesemb() 
{
return (String)get_Value("lbr_LocDesemb");
}
}
