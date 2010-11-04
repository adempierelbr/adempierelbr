/******************************************************************************
 * Product: AdempiereLBR ERP & CRM Smart Business Solution                    *
 * Copyright (C) 1999-2007 ComPiere, Inc. All Rights Reserved.                *
 * This program is free software, you can redistribute it and/or modify it    *
 * under the terms version 2 of the GNU General Public License as published   *
 * by the Free Software Foundation. This program is distributed in the hope   *
 * that it will be useful, but WITHOUT ANY WARRANTY, without even the implied *
 * warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.           *
 * See the GNU General Public License for more details.                       *
 * You should have received a copy of the GNU General Public License along    *
 * with this program, if not, write to the Free Software Foundation, Inc.,    *
 * 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA.                     *
 * For the text or an alternative of this public license, you may reach us    *
 * ComPiere, Inc., 2620 Augustine Dr. #245, Santa Clara, CA 95054, USA        *
 * or via info@compiere.org or http://www.compiere.org/license.html           *
 *****************************************************************************/
package org.adempierelbr.model;

import java.math.BigDecimal;
import java.sql.Timestamp;
import org.compiere.model.*;
import org.compiere.util.KeyNamePair;

/** Generated Interface for LBR_CNAB
 *  @author Adempiere (generated) 
 *  @version Release 3.6.0LTS
 */
public interface I_LBR_CNAB 
{

    /** TableName=LBR_CNAB */
    public static final String Table_Name = "LBR_CNAB";

    /** AD_Table_ID=1000002 */
    public static final int Table_ID = MTable.getTable_ID(Table_Name);

    KeyNamePair Model = new KeyNamePair(Table_ID, Table_Name);

    /** AccessLevel = 3 - Client - Org 
     */
    BigDecimal accessLevel = BigDecimal.valueOf(3);

    /** Load Meta Data */

    /** Column name AD_Client_ID */
    public static final String COLUMNNAME_AD_Client_ID = "AD_Client_ID";

	/** Get Client.
	  * Client/Tenant for this installation.
	  */
	public int getAD_Client_ID();

    /** Column name AD_Org_ID */
    public static final String COLUMNNAME_AD_Org_ID = "AD_Org_ID";

	/** Set Organization.
	  * Organizational entity within client
	  */
	public void setAD_Org_ID (int AD_Org_ID);

	/** Get Organization.
	  * Organizational entity within client
	  */
	public int getAD_Org_ID();

    /** Column name C_BankAccount_ID */
    public static final String COLUMNNAME_C_BankAccount_ID = "C_BankAccount_ID";

	/** Set Bank Account.
	  * Account at the Bank
	  */
	public void setC_BankAccount_ID (int C_BankAccount_ID);

	/** Get Bank Account.
	  * Account at the Bank
	  */
	public int getC_BankAccount_ID();

	public I_C_BankAccount getC_BankAccount() throws RuntimeException;

    /** Column name Created */
    public static final String COLUMNNAME_Created = "Created";

	/** Get Created.
	  * Date this record was created
	  */
	public Timestamp getCreated();

    /** Column name CreatedBy */
    public static final String COLUMNNAME_CreatedBy = "CreatedBy";

	/** Get Created By.
	  * User who created this records
	  */
	public int getCreatedBy();

    /** Column name IsActive */
    public static final String COLUMNNAME_IsActive = "IsActive";

	/** Set Active.
	  * The record is active in the system
	  */
	public void setIsActive (boolean IsActive);

	/** Get Active.
	  * The record is active in the system
	  */
	public boolean isActive();

    /** Column name IsRegistered */
    public static final String COLUMNNAME_IsRegistered = "IsRegistered";

	/** Set Registered.
	  * The application is registered.
	  */
	public void setIsRegistered (boolean IsRegistered);

	/** Get Registered.
	  * The application is registered.
	  */
	public boolean isRegistered();

    /** Column name IsSelected */
    public static final String COLUMNNAME_IsSelected = "IsSelected";

	/** Set Selected	  */
	public void setIsSelected (boolean IsSelected);

	/** Get Selected	  */
	public boolean isSelected();

    /** Column name LBR_Boleto_ID */
    public static final String COLUMNNAME_LBR_Boleto_ID = "LBR_Boleto_ID";

	/** Set Boleto.
	  * Primary Key table LBR_Boleto
	  */
	public void setLBR_Boleto_ID (int LBR_Boleto_ID);

	/** Get Boleto.
	  * Primary Key table LBR_Boleto
	  */
	public int getLBR_Boleto_ID();

	public org.adempierelbr.model.I_LBR_Boleto getLBR_Boleto() throws RuntimeException;

    /** Column name lbr_CNABField1 */
    public static final String COLUMNNAME_lbr_CNABField1 = "lbr_CNABField1";

	/** Set CNAB Field1.
	  * CNAB Field1
	  */
	public void setlbr_CNABField1 (String lbr_CNABField1);

	/** Get CNAB Field1.
	  * CNAB Field1
	  */
	public String getlbr_CNABField1();

    /** Column name lbr_CNABField10 */
    public static final String COLUMNNAME_lbr_CNABField10 = "lbr_CNABField10";

	/** Set CNAB Field10.
	  * CNAB Field10
	  */
	public void setlbr_CNABField10 (String lbr_CNABField10);

	/** Get CNAB Field10.
	  * CNAB Field10
	  */
	public String getlbr_CNABField10();

    /** Column name lbr_CNABField11 */
    public static final String COLUMNNAME_lbr_CNABField11 = "lbr_CNABField11";

	/** Set CNAB Field11.
	  * CNAB Field11
	  */
	public void setlbr_CNABField11 (String lbr_CNABField11);

	/** Get CNAB Field11.
	  * CNAB Field11
	  */
	public String getlbr_CNABField11();

    /** Column name lbr_CNABField12 */
    public static final String COLUMNNAME_lbr_CNABField12 = "lbr_CNABField12";

	/** Set CNAB Field12.
	  * CNAB Field12
	  */
	public void setlbr_CNABField12 (String lbr_CNABField12);

	/** Get CNAB Field12.
	  * CNAB Field12
	  */
	public String getlbr_CNABField12();

    /** Column name lbr_CNABField13 */
    public static final String COLUMNNAME_lbr_CNABField13 = "lbr_CNABField13";

	/** Set CNAB Field13.
	  * CNAB Field13
	  */
	public void setlbr_CNABField13 (String lbr_CNABField13);

	/** Get CNAB Field13.
	  * CNAB Field13
	  */
	public String getlbr_CNABField13();

    /** Column name lbr_CNABField14 */
    public static final String COLUMNNAME_lbr_CNABField14 = "lbr_CNABField14";

	/** Set CNAB Field14.
	  * CNAB Field14
	  */
	public void setlbr_CNABField14 (String lbr_CNABField14);

	/** Get CNAB Field14.
	  * CNAB Field14
	  */
	public String getlbr_CNABField14();

    /** Column name lbr_CNABField15 */
    public static final String COLUMNNAME_lbr_CNABField15 = "lbr_CNABField15";

	/** Set CNAB Field15.
	  * CNAB Field15
	  */
	public void setlbr_CNABField15 (String lbr_CNABField15);

	/** Get CNAB Field15.
	  * CNAB Field15
	  */
	public String getlbr_CNABField15();

    /** Column name lbr_CNABField16 */
    public static final String COLUMNNAME_lbr_CNABField16 = "lbr_CNABField16";

	/** Set CNAB Field16.
	  * CNAB Field16
	  */
	public void setlbr_CNABField16 (String lbr_CNABField16);

	/** Get CNAB Field16.
	  * CNAB Field16
	  */
	public String getlbr_CNABField16();

    /** Column name lbr_CNABField17 */
    public static final String COLUMNNAME_lbr_CNABField17 = "lbr_CNABField17";

	/** Set CNAB Field17.
	  * CNAB Field17
	  */
	public void setlbr_CNABField17 (String lbr_CNABField17);

	/** Get CNAB Field17.
	  * CNAB Field17
	  */
	public String getlbr_CNABField17();

    /** Column name lbr_CNABField18 */
    public static final String COLUMNNAME_lbr_CNABField18 = "lbr_CNABField18";

	/** Set CNAB Field18.
	  * CNAB Field18
	  */
	public void setlbr_CNABField18 (String lbr_CNABField18);

	/** Get CNAB Field18.
	  * CNAB Field18
	  */
	public String getlbr_CNABField18();

    /** Column name lbr_CNABField19 */
    public static final String COLUMNNAME_lbr_CNABField19 = "lbr_CNABField19";

	/** Set CNAB Field19.
	  * CNAB Field19
	  */
	public void setlbr_CNABField19 (String lbr_CNABField19);

	/** Get CNAB Field19.
	  * CNAB Field19
	  */
	public String getlbr_CNABField19();

    /** Column name lbr_CNABField2 */
    public static final String COLUMNNAME_lbr_CNABField2 = "lbr_CNABField2";

	/** Set CNAB Field2.
	  * CNAB Field2
	  */
	public void setlbr_CNABField2 (String lbr_CNABField2);

	/** Get CNAB Field2.
	  * CNAB Field2
	  */
	public String getlbr_CNABField2();

    /** Column name lbr_CNABField20 */
    public static final String COLUMNNAME_lbr_CNABField20 = "lbr_CNABField20";

	/** Set CNAB Field20.
	  * CNAB Field20
	  */
	public void setlbr_CNABField20 (String lbr_CNABField20);

	/** Get CNAB Field20.
	  * CNAB Field20
	  */
	public String getlbr_CNABField20();

    /** Column name lbr_CNABField21 */
    public static final String COLUMNNAME_lbr_CNABField21 = "lbr_CNABField21";

	/** Set CNAB Field21.
	  * CNAB Field21
	  */
	public void setlbr_CNABField21 (String lbr_CNABField21);

	/** Get CNAB Field21.
	  * CNAB Field21
	  */
	public String getlbr_CNABField21();

    /** Column name lbr_CNABField22 */
    public static final String COLUMNNAME_lbr_CNABField22 = "lbr_CNABField22";

	/** Set CNAB Field22.
	  * CNAB Field22
	  */
	public void setlbr_CNABField22 (String lbr_CNABField22);

	/** Get CNAB Field22.
	  * CNAB Field22
	  */
	public String getlbr_CNABField22();

    /** Column name lbr_CNABField23 */
    public static final String COLUMNNAME_lbr_CNABField23 = "lbr_CNABField23";

	/** Set CNAB Field23.
	  * CNAB Field23
	  */
	public void setlbr_CNABField23 (String lbr_CNABField23);

	/** Get CNAB Field23.
	  * CNAB Field23
	  */
	public String getlbr_CNABField23();

    /** Column name lbr_CNABField24 */
    public static final String COLUMNNAME_lbr_CNABField24 = "lbr_CNABField24";

	/** Set CNAB Field24.
	  * CNAB Field24
	  */
	public void setlbr_CNABField24 (String lbr_CNABField24);

	/** Get CNAB Field24.
	  * CNAB Field24
	  */
	public String getlbr_CNABField24();

    /** Column name lbr_CNABField25 */
    public static final String COLUMNNAME_lbr_CNABField25 = "lbr_CNABField25";

	/** Set CNAB Field25.
	  * CNAB Field25
	  */
	public void setlbr_CNABField25 (String lbr_CNABField25);

	/** Get CNAB Field25.
	  * CNAB Field25
	  */
	public String getlbr_CNABField25();

    /** Column name lbr_CNABField26 */
    public static final String COLUMNNAME_lbr_CNABField26 = "lbr_CNABField26";

	/** Set CNAB Field26.
	  * CNAB Field26
	  */
	public void setlbr_CNABField26 (String lbr_CNABField26);

	/** Get CNAB Field26.
	  * CNAB Field26
	  */
	public String getlbr_CNABField26();

    /** Column name lbr_CNABField27 */
    public static final String COLUMNNAME_lbr_CNABField27 = "lbr_CNABField27";

	/** Set CNAB Field27.
	  * CNAB Field27
	  */
	public void setlbr_CNABField27 (String lbr_CNABField27);

	/** Get CNAB Field27.
	  * CNAB Field27
	  */
	public String getlbr_CNABField27();

    /** Column name lbr_CNABField28 */
    public static final String COLUMNNAME_lbr_CNABField28 = "lbr_CNABField28";

	/** Set CNAB Field28.
	  * CNAB Field28
	  */
	public void setlbr_CNABField28 (String lbr_CNABField28);

	/** Get CNAB Field28.
	  * CNAB Field28
	  */
	public String getlbr_CNABField28();

    /** Column name lbr_CNABField29 */
    public static final String COLUMNNAME_lbr_CNABField29 = "lbr_CNABField29";

	/** Set CNAB Field29.
	  * CNAB Field29
	  */
	public void setlbr_CNABField29 (String lbr_CNABField29);

	/** Get CNAB Field29.
	  * CNAB Field29
	  */
	public String getlbr_CNABField29();

    /** Column name lbr_CNABField3 */
    public static final String COLUMNNAME_lbr_CNABField3 = "lbr_CNABField3";

	/** Set CNAB Field3.
	  * CNAB Field3
	  */
	public void setlbr_CNABField3 (String lbr_CNABField3);

	/** Get CNAB Field3.
	  * CNAB Field3
	  */
	public String getlbr_CNABField3();

    /** Column name lbr_CNABField30 */
    public static final String COLUMNNAME_lbr_CNABField30 = "lbr_CNABField30";

	/** Set CNAB Field30.
	  * CNAB Field30
	  */
	public void setlbr_CNABField30 (String lbr_CNABField30);

	/** Get CNAB Field30.
	  * CNAB Field30
	  */
	public String getlbr_CNABField30();

    /** Column name lbr_CNABField31 */
    public static final String COLUMNNAME_lbr_CNABField31 = "lbr_CNABField31";

	/** Set CNAB Field31.
	  * CNAB Field31
	  */
	public void setlbr_CNABField31 (String lbr_CNABField31);

	/** Get CNAB Field31.
	  * CNAB Field31
	  */
	public String getlbr_CNABField31();

    /** Column name lbr_CNABField32 */
    public static final String COLUMNNAME_lbr_CNABField32 = "lbr_CNABField32";

	/** Set CNAB Field32.
	  * CNAB Field32
	  */
	public void setlbr_CNABField32 (String lbr_CNABField32);

	/** Get CNAB Field32.
	  * CNAB Field32
	  */
	public String getlbr_CNABField32();

    /** Column name lbr_CNABField33 */
    public static final String COLUMNNAME_lbr_CNABField33 = "lbr_CNABField33";

	/** Set CNAB Field33.
	  * CNAB Field33
	  */
	public void setlbr_CNABField33 (String lbr_CNABField33);

	/** Get CNAB Field33.
	  * CNAB Field33
	  */
	public String getlbr_CNABField33();

    /** Column name lbr_CNABField34 */
    public static final String COLUMNNAME_lbr_CNABField34 = "lbr_CNABField34";

	/** Set CNAB Field34.
	  * CNAB Field34
	  */
	public void setlbr_CNABField34 (String lbr_CNABField34);

	/** Get CNAB Field34.
	  * CNAB Field34
	  */
	public String getlbr_CNABField34();

    /** Column name lbr_CNABField35 */
    public static final String COLUMNNAME_lbr_CNABField35 = "lbr_CNABField35";

	/** Set CNAB Field35.
	  * CNAB Field35
	  */
	public void setlbr_CNABField35 (String lbr_CNABField35);

	/** Get CNAB Field35.
	  * CNAB Field35
	  */
	public String getlbr_CNABField35();

    /** Column name lbr_CNABField36 */
    public static final String COLUMNNAME_lbr_CNABField36 = "lbr_CNABField36";

	/** Set CNAB Field36.
	  * CNAB Field36
	  */
	public void setlbr_CNABField36 (String lbr_CNABField36);

	/** Get CNAB Field36.
	  * CNAB Field36
	  */
	public String getlbr_CNABField36();

    /** Column name lbr_CNABField37 */
    public static final String COLUMNNAME_lbr_CNABField37 = "lbr_CNABField37";

	/** Set CNAB Field37.
	  * CNAB Field37
	  */
	public void setlbr_CNABField37 (String lbr_CNABField37);

	/** Get CNAB Field37.
	  * CNAB Field37
	  */
	public String getlbr_CNABField37();

    /** Column name lbr_CNABField38 */
    public static final String COLUMNNAME_lbr_CNABField38 = "lbr_CNABField38";

	/** Set CNAB Field38.
	  * CNAB Field38
	  */
	public void setlbr_CNABField38 (String lbr_CNABField38);

	/** Get CNAB Field38.
	  * CNAB Field38
	  */
	public String getlbr_CNABField38();

    /** Column name lbr_CNABField39 */
    public static final String COLUMNNAME_lbr_CNABField39 = "lbr_CNABField39";

	/** Set CNAB Field39.
	  * CNAB Field39
	  */
	public void setlbr_CNABField39 (String lbr_CNABField39);

	/** Get CNAB Field39.
	  * CNAB Field39
	  */
	public String getlbr_CNABField39();

    /** Column name lbr_CNABField4 */
    public static final String COLUMNNAME_lbr_CNABField4 = "lbr_CNABField4";

	/** Set CNAB Field4.
	  * CNAB Field4
	  */
	public void setlbr_CNABField4 (String lbr_CNABField4);

	/** Get CNAB Field4.
	  * CNAB Field4
	  */
	public String getlbr_CNABField4();

    /** Column name lbr_CNABField40 */
    public static final String COLUMNNAME_lbr_CNABField40 = "lbr_CNABField40";

	/** Set CNAB Field40.
	  * CNAB Field40
	  */
	public void setlbr_CNABField40 (String lbr_CNABField40);

	/** Get CNAB Field40.
	  * CNAB Field40
	  */
	public String getlbr_CNABField40();

    /** Column name lbr_CNABField41 */
    public static final String COLUMNNAME_lbr_CNABField41 = "lbr_CNABField41";

	/** Set CNAB Field41.
	  * CNAB Field41
	  */
	public void setlbr_CNABField41 (String lbr_CNABField41);

	/** Get CNAB Field41.
	  * CNAB Field41
	  */
	public String getlbr_CNABField41();

    /** Column name lbr_CNABField42 */
    public static final String COLUMNNAME_lbr_CNABField42 = "lbr_CNABField42";

	/** Set CNAB Field42.
	  * CNAB Field42
	  */
	public void setlbr_CNABField42 (String lbr_CNABField42);

	/** Get CNAB Field42.
	  * CNAB Field42
	  */
	public String getlbr_CNABField42();

    /** Column name lbr_CNABField43 */
    public static final String COLUMNNAME_lbr_CNABField43 = "lbr_CNABField43";

	/** Set CNAB Field43.
	  * CNAB Field43
	  */
	public void setlbr_CNABField43 (String lbr_CNABField43);

	/** Get CNAB Field43.
	  * CNAB Field43
	  */
	public String getlbr_CNABField43();

    /** Column name lbr_CNABField44 */
    public static final String COLUMNNAME_lbr_CNABField44 = "lbr_CNABField44";

	/** Set CNAB Field44.
	  * CNAB Field44
	  */
	public void setlbr_CNABField44 (String lbr_CNABField44);

	/** Get CNAB Field44.
	  * CNAB Field44
	  */
	public String getlbr_CNABField44();

    /** Column name lbr_CNABField45 */
    public static final String COLUMNNAME_lbr_CNABField45 = "lbr_CNABField45";

	/** Set CNAB Field45.
	  * CNAB Field45
	  */
	public void setlbr_CNABField45 (String lbr_CNABField45);

	/** Get CNAB Field45.
	  * CNAB Field45
	  */
	public String getlbr_CNABField45();

    /** Column name lbr_CNABField46 */
    public static final String COLUMNNAME_lbr_CNABField46 = "lbr_CNABField46";

	/** Set CNAB Field46.
	  * CNAB Field46
	  */
	public void setlbr_CNABField46 (String lbr_CNABField46);

	/** Get CNAB Field46.
	  * CNAB Field46
	  */
	public String getlbr_CNABField46();

    /** Column name lbr_CNABField47 */
    public static final String COLUMNNAME_lbr_CNABField47 = "lbr_CNABField47";

	/** Set CNAB Field47.
	  * CNAB Field47
	  */
	public void setlbr_CNABField47 (String lbr_CNABField47);

	/** Get CNAB Field47.
	  * CNAB Field47
	  */
	public String getlbr_CNABField47();

    /** Column name lbr_CNABField48 */
    public static final String COLUMNNAME_lbr_CNABField48 = "lbr_CNABField48";

	/** Set CNAB Field48.
	  * CNAB Field48
	  */
	public void setlbr_CNABField48 (String lbr_CNABField48);

	/** Get CNAB Field48.
	  * CNAB Field48
	  */
	public String getlbr_CNABField48();

    /** Column name lbr_CNABField49 */
    public static final String COLUMNNAME_lbr_CNABField49 = "lbr_CNABField49";

	/** Set CNAB Field49.
	  * CNAB Field49
	  */
	public void setlbr_CNABField49 (String lbr_CNABField49);

	/** Get CNAB Field49.
	  * CNAB Field49
	  */
	public String getlbr_CNABField49();

    /** Column name lbr_CNABField5 */
    public static final String COLUMNNAME_lbr_CNABField5 = "lbr_CNABField5";

	/** Set CNAB Field5.
	  * CNAB Field5
	  */
	public void setlbr_CNABField5 (String lbr_CNABField5);

	/** Get CNAB Field5.
	  * CNAB Field5
	  */
	public String getlbr_CNABField5();

    /** Column name lbr_CNABField50 */
    public static final String COLUMNNAME_lbr_CNABField50 = "lbr_CNABField50";

	/** Set CNAB Field50.
	  * CNAB Field50
	  */
	public void setlbr_CNABField50 (String lbr_CNABField50);

	/** Get CNAB Field50.
	  * CNAB Field50
	  */
	public String getlbr_CNABField50();

    /** Column name lbr_CNABField51 */
    public static final String COLUMNNAME_lbr_CNABField51 = "lbr_CNABField51";

	/** Set CNAB Field51.
	  * CNAB Field51
	  */
	public void setlbr_CNABField51 (String lbr_CNABField51);

	/** Get CNAB Field51.
	  * CNAB Field51
	  */
	public String getlbr_CNABField51();

    /** Column name lbr_CNABField52 */
    public static final String COLUMNNAME_lbr_CNABField52 = "lbr_CNABField52";

	/** Set CNAB Field52.
	  * CNAB Field52
	  */
	public void setlbr_CNABField52 (String lbr_CNABField52);

	/** Get CNAB Field52.
	  * CNAB Field52
	  */
	public String getlbr_CNABField52();

    /** Column name lbr_CNABField53 */
    public static final String COLUMNNAME_lbr_CNABField53 = "lbr_CNABField53";

	/** Set CNAB Field53.
	  * CNAB Field53
	  */
	public void setlbr_CNABField53 (String lbr_CNABField53);

	/** Get CNAB Field53.
	  * CNAB Field53
	  */
	public String getlbr_CNABField53();

    /** Column name lbr_CNABField6 */
    public static final String COLUMNNAME_lbr_CNABField6 = "lbr_CNABField6";

	/** Set CNAB Field6.
	  * CNAB Field6
	  */
	public void setlbr_CNABField6 (String lbr_CNABField6);

	/** Get CNAB Field6.
	  * CNAB Field6
	  */
	public String getlbr_CNABField6();

    /** Column name lbr_CNABField7 */
    public static final String COLUMNNAME_lbr_CNABField7 = "lbr_CNABField7";

	/** Set CNAB Field7.
	  * CNAB Field7
	  */
	public void setlbr_CNABField7 (String lbr_CNABField7);

	/** Get CNAB Field7.
	  * CNAB Field7
	  */
	public String getlbr_CNABField7();

    /** Column name lbr_CNABField8 */
    public static final String COLUMNNAME_lbr_CNABField8 = "lbr_CNABField8";

	/** Set CNAB Field8.
	  * CNAB Field8
	  */
	public void setlbr_CNABField8 (String lbr_CNABField8);

	/** Get CNAB Field8.
	  * CNAB Field8
	  */
	public String getlbr_CNABField8();

    /** Column name lbr_CNABField9 */
    public static final String COLUMNNAME_lbr_CNABField9 = "lbr_CNABField9";

	/** Set CNAB Field9.
	  * CNAB Field9
	  */
	public void setlbr_CNABField9 (String lbr_CNABField9);

	/** Get CNAB Field9.
	  * CNAB Field9
	  */
	public String getlbr_CNABField9();

    /** Column name LBR_CNAB_ID */
    public static final String COLUMNNAME_LBR_CNAB_ID = "LBR_CNAB_ID";

	/** Set CNAB.
	  * Primary Key table LBR_CNAB
	  */
	public void setLBR_CNAB_ID (int LBR_CNAB_ID);

	/** Get CNAB.
	  * Primary Key table LBR_CNAB
	  */
	public int getLBR_CNAB_ID();

    /** Column name lbr_DocDate */
    public static final String COLUMNNAME_lbr_DocDate = "lbr_DocDate";

	/** Set Document Date.
	  * Identifies the Document Date
	  */
	public void setlbr_DocDate (Timestamp lbr_DocDate);

	/** Get Document Date.
	  * Identifies the Document Date
	  */
	public Timestamp getlbr_DocDate();

    /** Column name lbr_IsCancelled */
    public static final String COLUMNNAME_lbr_IsCancelled = "lbr_IsCancelled";

	/** Set IsCancelled.
	  * Defines if the Document IsCancelled
	  */
	public void setlbr_IsCancelled (boolean lbr_IsCancelled);

	/** Get IsCancelled.
	  * Defines if the Document IsCancelled
	  */
	public boolean islbr_IsCancelled();

    /** Column name RoutingNo */
    public static final String COLUMNNAME_RoutingNo = "RoutingNo";

	/** Set Routing No.
	  * Bank Routing Number
	  */
	public void setRoutingNo (String RoutingNo);

	/** Get Routing No.
	  * Bank Routing Number
	  */
	public String getRoutingNo();

    /** Column name Updated */
    public static final String COLUMNNAME_Updated = "Updated";

	/** Get Updated.
	  * Date this record was updated
	  */
	public Timestamp getUpdated();

    /** Column name UpdatedBy */
    public static final String COLUMNNAME_UpdatedBy = "UpdatedBy";

	/** Get Updated By.
	  * User who updated this records
	  */
	public int getUpdatedBy();
}
