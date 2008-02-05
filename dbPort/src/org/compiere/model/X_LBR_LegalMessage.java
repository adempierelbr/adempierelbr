package org.compiere.model;

/** Generated Model - DO NOT CHANGE */
import java.util.*;
import java.sql.*;
import java.math.*;
import org.compiere.util.*;
/** Generated Model for LBR_LegalMessage
 *  @author AdempiereLBR (generated) 
 *  @version Compiere SQLJ 1.0 - $Id$ */
public class X_LBR_LegalMessage extends PO
{
/** Standard Constructor
@param ctx context
@param LBR_LegalMessage_ID id
@param trxName transaction
*/
public X_LBR_LegalMessage (Properties ctx, int LBR_LegalMessage_ID, String trxName)
{
super (ctx, LBR_LegalMessage_ID, trxName);
/** if (LBR_LegalMessage_ID == 0)
{
setLBR_LegalMessage_ID (0);
setTextMsg (null);
}
 */
}
/** Load Constructor 
@param ctx context
@param rs result set 
@param trxName transaction
*/
public X_LBR_LegalMessage (Properties ctx, ResultSet rs, String trxName)
{
super (ctx, rs, trxName);
}
/** AD_Table_ID */
public static final int Table_ID=MTable.getTable_ID("LBR_LegalMessage");

/** TableName=LBR_LegalMessage */
public static final String Table_Name="LBR_LegalMessage";

protected static KeyNamePair Model = new KeyNamePair(Table_ID,"LBR_LegalMessage");

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
StringBuffer sb = new StringBuffer ("X_LBR_LegalMessage[").append(get_ID()).append("]");
return sb.toString();
}
/** Set Legal Message.
@param LBR_LegalMessage_ID Primary key table LBR_LegalMessage */
public void setLBR_LegalMessage_ID (int LBR_LegalMessage_ID)
{
if (LBR_LegalMessage_ID < 1) throw new IllegalArgumentException ("LBR_LegalMessage_ID is mandatory.");
set_ValueNoCheck ("LBR_LegalMessage_ID", new Integer(LBR_LegalMessage_ID));
}
/** Get Legal Message.
@return Primary key table LBR_LegalMessage */
public int getLBR_LegalMessage_ID() 
{
Integer ii = (Integer)get_Value("LBR_LegalMessage_ID");
if (ii == null) return 0;
return ii.intValue();
}
/** Set Text Message.
@param TextMsg Text Message */
public void setTextMsg (String TextMsg)
{
if (TextMsg == null) throw new IllegalArgumentException ("TextMsg is mandatory.");
if (TextMsg.length() > 255)
{
log.warning("Length > 255 - truncated");
TextMsg = TextMsg.substring(0,254);
}
set_Value ("TextMsg", TextMsg);
}
/** Get Text Message.
@return Text Message */
public String getTextMsg() 
{
return (String)get_Value("TextMsg");
}
}