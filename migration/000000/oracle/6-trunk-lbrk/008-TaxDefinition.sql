/******************************************************************************
 * Copyright (C) 2011 Ricardo Santana                                         *
 * Copyright (C) 2011 Kenos Assessoria e Consultoria de Sistemas Ltda         *
 * This program is free software; you can redistribute it and/or modify it    *
 * under the terms version 2 of the GNU General Public License as published   *
 * by the Free Software Foundation. This program is distributed in the hope   *
 * that it will be useful, but WITHOUT ANY WARRANTY; without even the implied *
 * warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.           *
 * See the GNU General Public License for more details.                       *
 * You should have received a copy of the GNU General Public License along    *
 * with this program; if not, write to the Free Software Foundation, Inc.,    *
 * 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA.                     *
 *****************************************************************************/
-- 13/11/2011 22h43min27s BRST
-- Tabela de Configuracao de Imposto
INSERT INTO AD_Table (AD_Client_ID,AD_Org_ID,AD_Table_ID,AD_Window_ID,AccessLevel,CopyColumnsFromTable,Created,CreatedBy,EntityType,ImportTable,IsActive,IsCentrallyMaintained,IsChangeLog,IsDeleteable,IsHighVolume,IsSecurityEnabled,IsView,LoadSeq,Name,ReplicationType,TableName,Updated,UpdatedBy) VALUES (0,0,1106001,1000013,'3','N',TO_DATE('2011-11-13 22:43:26','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','N','Y','Y','N','Y','N','N','N',0,'Tax Definition','L','LBR_TaxDefinition',TO_DATE('2011-11-13 22:43:26','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 13/11/2011 22h43min27s BRST
-- Tabela de Configuracao de Imposto
INSERT INTO AD_Table_Trl (AD_Language,AD_Table_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Table_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Table t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Table_ID=1106001 AND NOT EXISTS (SELECT * FROM AD_Table_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Table_ID=t.AD_Table_ID)
;

-- 13/11/2011 22h43min27s BRST
-- Tabela de Configuracao de Imposto
INSERT INTO AD_Sequence (AD_Client_ID,AD_Org_ID,AD_Sequence_ID,Created,CreatedBy,CurrentNext,CurrentNextSys,Description,IncrementNo,IsActive,IsAudited,IsAutoSequence,IsTableID,Name,StartNewYear,StartNo,Updated,UpdatedBy) VALUES (0,0,1106001,TO_DATE('2011-11-13 22:43:27','YYYY-MM-DD HH24:MI:SS'),100,1000000,50000,'Table LBR_TaxDefinition',1,'Y','N','Y','Y','LBR_TaxDefinition','N',1000000,TO_DATE('2011-11-13 22:43:27','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 13/11/2011 22h45min42s BRST
-- Tabela de Configuracao de Imposto
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,1106002,0,'LBR_TaxDefinition_ID',TO_DATE('2011-11-13 22:45:42','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Tax Definition','Tax Definition',TO_DATE('2011-11-13 22:45:42','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 13/11/2011 22h45min42s BRST
-- Tabela de Configuracao de Imposto
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1106002 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 13/11/2011 22h45min42s BRST
-- Tabela de Configuracao de Imposto
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1106019,1106002,0,13,1106001,'LBR_TaxDefinition_ID',TO_DATE('2011-11-13 22:45:41','YYYY-MM-DD HH24:MI:SS'),100,'LBRA',10,'Y','N','N','N','Y','Y','N','N','N','N','Tax Definition',TO_DATE('2011-11-13 22:45:41','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 13/11/2011 22h45min42s BRST
-- Tabela de Configuracao de Imposto
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1106019 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 13/11/2011 22h45min43s BRST
-- Tabela de Configuracao de Imposto
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1106020,102,0,19,1106001,'AD_Client_ID',TO_DATE('2011-11-13 22:45:43','YYYY-MM-DD HH24:MI:SS'),100,'Client/Tenant for this installation.','LBRA',10,'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Y','N','N','N','N','Y','N','N','N','N','Client',TO_DATE('2011-11-13 22:45:43','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 13/11/2011 22h45min43s BRST
-- Tabela de Configuracao de Imposto
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1106020 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 13/11/2011 22h45min43s BRST
-- Tabela de Configuracao de Imposto
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1106021,113,0,19,1106001,'AD_Org_ID',TO_DATE('2011-11-13 22:45:43','YYYY-MM-DD HH24:MI:SS'),100,'Organizational entity within client','LBRA',10,'An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Y','N','N','N','N','Y','N','N','N','N','Organization',TO_DATE('2011-11-13 22:45:43','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 13/11/2011 22h45min43s BRST
-- Tabela de Configuracao de Imposto
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1106021 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 13/11/2011 22h45min43s BRST
-- Tabela de Configuracao de Imposto
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1106022,348,0,20,1106001,'IsActive',TO_DATE('2011-11-13 22:45:43','YYYY-MM-DD HH24:MI:SS'),100,'The record is active in the system','LBRA',1,'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Y','N','N','N','N','Y','N','N','N','Y','Active',TO_DATE('2011-11-13 22:45:43','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 13/11/2011 22h45min43s BRST
-- Tabela de Configuracao de Imposto
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1106022 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 13/11/2011 22h45min43s BRST
-- Tabela de Configuracao de Imposto
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1106023,245,0,16,1106001,'Created',TO_DATE('2011-11-13 22:45:43','YYYY-MM-DD HH24:MI:SS'),100,'Date this record was created','LBRA',29,'The Created field indicates the date that this record was created.','Y','N','N','N','N','Y','N','N','N','N','Created',TO_DATE('2011-11-13 22:45:43','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 13/11/2011 22h45min43s BRST
-- Tabela de Configuracao de Imposto
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1106023 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 13/11/2011 22h45min43s BRST
-- Tabela de Configuracao de Imposto
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1106024,246,0,18,110,1106001,'CreatedBy',TO_DATE('2011-11-13 22:45:43','YYYY-MM-DD HH24:MI:SS'),100,'User who created this records','LBRA',10,'The Created By field indicates the user who created this record.','Y','N','N','N','N','Y','N','N','N','N','Created By',TO_DATE('2011-11-13 22:45:43','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 13/11/2011 22h45min43s BRST
-- Tabela de Configuracao de Imposto
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1106024 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 13/11/2011 22h45min44s BRST
-- Tabela de Configuracao de Imposto
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1106025,607,0,16,1106001,'Updated',TO_DATE('2011-11-13 22:45:43','YYYY-MM-DD HH24:MI:SS'),100,'Date this record was updated','LBRA',29,'The Updated field indicates the date that this record was updated.','Y','N','N','N','N','Y','N','N','N','N','Updated',TO_DATE('2011-11-13 22:45:43','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 13/11/2011 22h45min44s BRST
-- Tabela de Configuracao de Imposto
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1106025 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 13/11/2011 22h45min44s BRST
-- Tabela de Configuracao de Imposto
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1106026,608,0,18,110,1106001,'UpdatedBy',TO_DATE('2011-11-13 22:45:44','YYYY-MM-DD HH24:MI:SS'),100,'User who updated this records','LBRA',10,'The Updated By field indicates the user who updated this record.','Y','N','N','N','N','Y','N','N','N','N','Updated By',TO_DATE('2011-11-13 22:45:44','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 13/11/2011 22h45min44s BRST
-- Tabela de Configuracao de Imposto
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1106026 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 13/11/2011 22h45min44s BRST
-- Tabela de Configuracao de Imposto
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1106027,275,0,10,1106001,'Description',TO_DATE('2011-11-13 22:45:44','YYYY-MM-DD HH24:MI:SS'),100,'Optional short description of the record','LBRA',255,'A description is limited to 255 characters.','Y','N','N','N','N','N','N','N','N','Y','Description',TO_DATE('2011-11-13 22:45:44','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 13/11/2011 22h45min44s BRST
-- Tabela de Configuracao de Imposto
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1106027 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 13/11/2011 22h47min27s BRST
-- Tabela de Configuracao de Imposto
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1106028,187,0,30,1106001,'C_BPartner_ID',TO_DATE('2011-11-13 22:47:26','YYYY-MM-DD HH24:MI:SS'),100,'Identifies a Business Partner','LBRA',10,'A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Business Partner ',0,TO_DATE('2011-11-13 22:47:26','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 13/11/2011 22h47min27s BRST
-- Tabela de Configuracao de Imposto
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1106028 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 13/11/2011 22h47min50s BRST
-- Tabela de Configuracao de Imposto
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1106029,1000157,0,19,1106001,'LBR_FiscalGroup_BPartner_ID',TO_DATE('2011-11-13 22:47:49','YYYY-MM-DD HH24:MI:SS'),100,'Primary key table LBR_FiscalGroup_BPartner','U',10,'Primary key table LBR_FiscalGroup_BPartner','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Fiscal Group - Business Partner',0,TO_DATE('2011-11-13 22:47:49','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 13/11/2011 22h47min50s BRST
-- Tabela de Configuracao de Imposto
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1106029 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 13/11/2011 22h48min40s BRST
-- Tabela de Configuracao de Imposto
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1106030,209,0,19,1106001,1000003,'C_Region_ID',TO_DATE('2011-11-13 22:48:40','YYYY-MM-DD HH24:MI:SS'),100,'Identifies a geographical Region','U',10,'The Region identifies a unique Region for this Country.','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Region',0,TO_DATE('2011-11-13 22:48:40','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 13/11/2011 22h48min40s BRST
-- Tabela de Configuracao de Imposto
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1106030 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 13/11/2011 22h49min7s BRST
-- Tabela de Configuracao de Imposto
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1106031,595,0,18,157,1106001,1000003,'To_Region_ID',TO_DATE('2011-11-13 22:49:07','YYYY-MM-DD HH24:MI:SS'),100,'Receiving Region','U',10,'The To Region indicates the receiving region on a document','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','To',0,TO_DATE('2011-11-13 22:49:07','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 13/11/2011 22h49min7s BRST
-- Tabela de Configuracao de Imposto
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1106031 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 13/11/2011 22h49min33s BRST
-- Tabela de Configuracao de Imposto
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1106032,1000156,0,19,1106001,'LBR_FiscalGroup_Product_ID',TO_DATE('2011-11-13 22:49:33','YYYY-MM-DD HH24:MI:SS'),100,'Primary key table LBR_FiscalGroup_Product','U',10,'Primary key table LBR_FiscalGroup_Product','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Fiscal Group - Product',0,TO_DATE('2011-11-13 22:49:33','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 13/11/2011 22h49min33s BRST
-- Tabela de Configuracao de Imposto
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1106032 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 13/11/2011 22h50min13s BRST
-- Tabela de Configuracao de Imposto
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1106033,454,0,30,1106001,'M_Product_ID',TO_DATE('2011-11-13 22:50:13','YYYY-MM-DD HH24:MI:SS'),100,'Product, Service, Item','U',10,'Identifies an item which is either purchased or sold in this organization.','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Product',0,TO_DATE('2011-11-13 22:50:13','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 13/11/2011 22h50min13s BRST
-- Tabela de Configuracao de Imposto
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1106033 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 13/11/2011 22h50min41s BRST
-- Tabela de Configuracao de Imposto
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1106034,1000134,0,30,1000017,1106001,'LBR_NCM_ID',TO_DATE('2011-11-13 22:50:41','YYYY-MM-DD HH24:MI:SS'),100,'Primary key table LBR_NCM','U',10,'Primary key table LBR_NCM','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','NCM',0,TO_DATE('2011-11-13 22:50:41','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 13/11/2011 22h50min41s BRST
-- Tabela de Configuracao de Imposto
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1106034 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 13/11/2011 22h51min43s BRST
-- Tabela de Configuracao de Imposto
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1106035,196,0,19,1106001,'C_DocType_ID',TO_DATE('2011-11-13 22:51:42','YYYY-MM-DD HH24:MI:SS'),100,'Document type or rules','U',10,'The Document Type determines document sequence and processing rules','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Document Type',0,TO_DATE('2011-11-13 22:51:42','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 13/11/2011 22h51min43s BRST
-- Tabela de Configuracao de Imposto
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1106035 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 13/11/2011 22h53min16s BRST
-- Tabela de Configuracao de Imposto
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1106036,1000147,0,17,1000024,1106001,'lbr_TransactionType',TO_DATE('2011-11-13 22:53:16','YYYY-MM-DD HH24:MI:SS'),100,'Defines the Transaction Type','U',3,'Defines the Transaction Type','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Transaction Type',0,TO_DATE('2011-11-13 22:53:16','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 13/11/2011 22h53min16s BRST
-- Tabela de Configuracao de Imposto
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1106036 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 13/11/2011 22h54min20s BRST
-- Tabela de Configuracao de Imposto
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1106037,1000146,0,17,1000027,1106001,'lbr_IsSubTributaria',TO_DATE('2011-11-13 22:54:20','YYYY-MM-DD HH24:MI:SS'),100,'B','Defines the Is Substituicao Tributaria Status','U',1,'Defines the Is Substituicao Tributaria Status','Y','Y','N','N','N','N','N','Y','N','N','N','N','Y','Is Substituicao Tributaria',0,TO_DATE('2011-11-13 22:54:20','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 13/11/2011 22h54min20s BRST
-- Tabela de Configuracao de Imposto
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1106037 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 13/11/2011 22h54min57s BRST
-- Tabela de Configuracao de Imposto
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1106038,1000145,0,19,1106001,'LBR_ProductCategory_ID',TO_DATE('2011-11-13 22:54:56','YYYY-MM-DD HH24:MI:SS'),100,'Primary key table LBR_ProductCategory','U',10,'Primary key table LBR_ProductCategory','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Product Category',0,TO_DATE('2011-11-13 22:54:56','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 13/11/2011 22h54min57s BRST
-- Tabela de Configuracao de Imposto
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1106038 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 13/11/2011 22h55min18s BRST
-- Tabela de Configuracao de Imposto
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1106039,1000149,0,19,1106001,'LBR_BPartnerCategory_ID',TO_DATE('2011-11-13 22:55:18','YYYY-MM-DD HH24:MI:SS'),100,'Primary key table LBR_BPartnerCategory','U',10,'Primary key table LBR_BPartnerCategory','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','BPartner Category',0,TO_DATE('2011-11-13 22:55:18','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 13/11/2011 22h55min18s BRST
-- Tabela de Configuracao de Imposto
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1106039 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 13/11/2011 22h55min56s BRST
-- Tabela de Configuracao de Imposto
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1106040,1000094,0,1000006,1106001,'LBR_Tax_ID',TO_DATE('2011-11-13 22:55:56','YYYY-MM-DD HH24:MI:SS'),100,'Primary key table LBR_Tax','U',10,'Primary key table LBR_Tax','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Brazilian Tax',0,TO_DATE('2011-11-13 22:55:56','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 13/11/2011 22h55min56s BRST
-- Tabela de Configuracao de Imposto
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1106040 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 13/11/2011 22h56min46s BRST
-- Tabela de Configuracao de Imposto
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1106041,1000252,0,17,1000029,1106001,'lbr_TaxStatus',TO_DATE('2011-11-13 22:56:45','YYYY-MM-DD HH24:MI:SS'),100,'Defines the Tax Status','U',2,'Defines the Tax Status','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Tax Status',0,TO_DATE('2011-11-13 22:56:45','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 13/11/2011 22h56min46s BRST
-- Tabela de Configuracao de Imposto
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1106041 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 13/11/2011 22h57min5s BRST
-- Tabela de Configuracao de Imposto
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1106042,1000253,0,19,1106001,'LBR_LegalMessage_ID',TO_DATE('2011-11-13 22:57:04','YYYY-MM-DD HH24:MI:SS'),100,'Defines the Legal Message','U',10,'Primary key table LBR_LegalMessage','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Legal Message',0,TO_DATE('2011-11-13 22:57:04','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 13/11/2011 22h57min5s BRST
-- Tabela de Configuracao de Imposto
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1106042 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 13/11/2011 22h57min15s BRST
-- Tabela de Configuracao de Imposto
CREATE TABLE LBR_TaxDefinition (AD_Client_ID NUMBER(10) NOT NULL, AD_Org_ID NUMBER(10) NOT NULL, C_BPartner_ID NUMBER(10) DEFAULT NULL , C_DocType_ID NUMBER(10) DEFAULT NULL , C_Region_ID NUMBER(10) DEFAULT NULL , Created DATE NOT NULL, CreatedBy NUMBER(10) NOT NULL, Description NVARCHAR2(255) DEFAULT NULL , IsActive CHAR(1) CHECK (IsActive IN ('Y','N')) NOT NULL, LBR_BPartnerCategory_ID NUMBER(10) DEFAULT NULL , LBR_FiscalGroup_BPartner_ID NUMBER(10) DEFAULT NULL , LBR_FiscalGroup_Product_ID NUMBER(10) DEFAULT NULL , LBR_LegalMessage_ID NUMBER(10) DEFAULT NULL , LBR_NCM_ID NUMBER(10) DEFAULT NULL , LBR_ProductCategory_ID NUMBER(10) DEFAULT NULL , LBR_TaxDefinition_ID NUMBER(10) NOT NULL, LBR_Tax_ID NUMBER(10) DEFAULT NULL , M_Product_ID NUMBER(10) DEFAULT NULL , To_Region_ID NUMBER(10) DEFAULT NULL , Updated DATE NOT NULL, UpdatedBy NUMBER(10) NOT NULL, lbr_IsSubTributaria CHAR(1) DEFAULT 'B' NOT NULL, lbr_TaxStatus NVARCHAR2(2) DEFAULT NULL , lbr_TransactionType NVARCHAR2(3) DEFAULT NULL , CONSTRAINT LBR_TaxDefinition_Key PRIMARY KEY (LBR_TaxDefinition_ID))
;

-- 13/11/2011 22h58min5s BRST
-- Tabela de Configuracao de Imposto
INSERT INTO AD_Tab (AD_Client_ID,AD_Org_ID,AD_Tab_ID,AD_Table_ID,AD_Window_ID,Created,CreatedBy,EntityType,HasTree,ImportFields,IsActive,IsAdvancedTab,IsInfoTab,IsInsertRecord,IsReadOnly,IsSingleRow,IsSortTab,IsTranslationTab,Name,Processing,SeqNo,TabLevel,Updated,UpdatedBy) VALUES (0,0,1106002,1106001,1000013,TO_DATE('2011-11-13 22:58:05','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','N','N','Y','N','N','Y','N','N','N','N','Tax Definition','N',5,0,TO_DATE('2011-11-13 22:58:05','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 13/11/2011 22h58min5s BRST
-- Tabela de Configuracao de Imposto
INSERT INTO AD_Tab_Trl (AD_Language,AD_Tab_ID, CommitWarning,Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Tab_ID, t.CommitWarning,t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Tab t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Tab_ID=1106002 AND NOT EXISTS (SELECT * FROM AD_Tab_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Tab_ID=t.AD_Tab_ID)
;

-- 13/11/2011 22h58min10s BRST
-- Tabela de Configuracao de Imposto
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1106022,1106030,0,1106002,TO_DATE('2011-11-13 22:58:10','YYYY-MM-DD HH24:MI:SS'),100,'The record is active in the system',1,'LBRA','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Y','Y','Y','N','N','N','N','N','Active',TO_DATE('2011-11-13 22:58:10','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 13/11/2011 22h58min10s BRST
-- Tabela de Configuracao de Imposto
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1106030 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 13/11/2011 22h58min11s BRST
-- Tabela de Configuracao de Imposto
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1106039,1106031,0,1106002,TO_DATE('2011-11-13 22:58:10','YYYY-MM-DD HH24:MI:SS'),100,'Primary key table LBR_BPartnerCategory',10,'U','Primary key table LBR_BPartnerCategory','Y','Y','Y','N','N','N','N','N','BPartner Category',TO_DATE('2011-11-13 22:58:10','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 13/11/2011 22h58min11s BRST
-- Tabela de Configuracao de Imposto
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1106031 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 13/11/2011 22h58min11s BRST
-- Tabela de Configuracao de Imposto
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1106040,1106032,0,1106002,TO_DATE('2011-11-13 22:58:11','YYYY-MM-DD HH24:MI:SS'),100,'Primary key table LBR_Tax',10,'U','Primary key table LBR_Tax','Y','Y','Y','N','N','N','N','N','Brazilian Tax',TO_DATE('2011-11-13 22:58:11','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 13/11/2011 22h58min11s BRST
-- Tabela de Configuracao de Imposto
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1106032 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 13/11/2011 22h58min11s BRST
-- Tabela de Configuracao de Imposto
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1106028,1106033,0,1106002,TO_DATE('2011-11-13 22:58:11','YYYY-MM-DD HH24:MI:SS'),100,'Identifies a Business Partner',10,'LBRA','A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson','Y','Y','Y','N','N','N','N','N','Business Partner ',TO_DATE('2011-11-13 22:58:11','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 13/11/2011 22h58min11s BRST
-- Tabela de Configuracao de Imposto
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1106033 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 13/11/2011 22h58min11s BRST
-- Tabela de Configuracao de Imposto
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1106020,1106034,0,1106002,TO_DATE('2011-11-13 22:58:11','YYYY-MM-DD HH24:MI:SS'),100,'Client/Tenant for this installation.',10,'LBRA','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Y','Y','Y','N','N','N','N','N','Client',TO_DATE('2011-11-13 22:58:11','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 13/11/2011 22h58min11s BRST
-- Tabela de Configuracao de Imposto
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1106034 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 13/11/2011 22h58min11s BRST
-- Tabela de Configuracao de Imposto
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1106027,1106035,0,1106002,TO_DATE('2011-11-13 22:58:11','YYYY-MM-DD HH24:MI:SS'),100,'Optional short description of the record',255,'LBRA','A description is limited to 255 characters.','Y','Y','Y','N','N','N','N','N','Description',TO_DATE('2011-11-13 22:58:11','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 13/11/2011 22h58min11s BRST
-- Tabela de Configuracao de Imposto
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1106035 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 13/11/2011 22h58min11s BRST
-- Tabela de Configuracao de Imposto
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1106035,1106036,0,1106002,TO_DATE('2011-11-13 22:58:11','YYYY-MM-DD HH24:MI:SS'),100,'Document type or rules',10,'U','The Document Type determines document sequence and processing rules','Y','Y','Y','N','N','N','N','N','Document Type',TO_DATE('2011-11-13 22:58:11','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 13/11/2011 22h58min11s BRST
-- Tabela de Configuracao de Imposto
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1106036 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 13/11/2011 22h58min12s BRST
-- Tabela de Configuracao de Imposto
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1106029,1106037,0,1106002,TO_DATE('2011-11-13 22:58:11','YYYY-MM-DD HH24:MI:SS'),100,'Primary key table LBR_FiscalGroup_BPartner',10,'U','Primary key table LBR_FiscalGroup_BPartner','Y','Y','Y','N','N','N','N','N','Fiscal Group - Business Partner',TO_DATE('2011-11-13 22:58:11','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 13/11/2011 22h58min12s BRST
-- Tabela de Configuracao de Imposto
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1106037 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 13/11/2011 22h58min12s BRST
-- Tabela de Configuracao de Imposto
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1106032,1106038,0,1106002,TO_DATE('2011-11-13 22:58:12','YYYY-MM-DD HH24:MI:SS'),100,'Primary key table LBR_FiscalGroup_Product',10,'U','Primary key table LBR_FiscalGroup_Product','Y','Y','Y','N','N','N','N','N','Fiscal Group - Product',TO_DATE('2011-11-13 22:58:12','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 13/11/2011 22h58min12s BRST
-- Tabela de Configuracao de Imposto
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1106038 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 13/11/2011 22h58min12s BRST
-- Tabela de Configuracao de Imposto
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1106037,1106039,0,1106002,TO_DATE('2011-11-13 22:58:12','YYYY-MM-DD HH24:MI:SS'),100,'Defines the Is Substituicao Tributaria Status',1,'U','Defines the Is Substituicao Tributaria Status','Y','Y','Y','N','N','N','N','N','Is Substituicao Tributaria',TO_DATE('2011-11-13 22:58:12','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 13/11/2011 22h58min12s BRST
-- Tabela de Configuracao de Imposto
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1106039 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 13/11/2011 22h58min12s BRST
-- Tabela de Configuracao de Imposto
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1106042,1106040,0,1106002,TO_DATE('2011-11-13 22:58:12','YYYY-MM-DD HH24:MI:SS'),100,'Defines the Legal Message',10,'U','Primary key table LBR_LegalMessage','Y','Y','Y','N','N','N','N','N','Legal Message',TO_DATE('2011-11-13 22:58:12','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 13/11/2011 22h58min12s BRST
-- Tabela de Configuracao de Imposto
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1106040 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 13/11/2011 22h58min12s BRST
-- Tabela de Configuracao de Imposto
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1106034,1106041,0,1106002,TO_DATE('2011-11-13 22:58:12','YYYY-MM-DD HH24:MI:SS'),100,'Primary key table LBR_NCM',10,'U','Primary key table LBR_NCM','Y','Y','Y','N','N','N','N','N','NCM',TO_DATE('2011-11-13 22:58:12','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 13/11/2011 22h58min12s BRST
-- Tabela de Configuracao de Imposto
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1106041 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 13/11/2011 22h58min12s BRST
-- Tabela de Configuracao de Imposto
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1106021,1106042,0,1106002,TO_DATE('2011-11-13 22:58:12','YYYY-MM-DD HH24:MI:SS'),100,'Organizational entity within client',10,'LBRA','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Y','Y','Y','N','N','N','N','N','Organization',TO_DATE('2011-11-13 22:58:12','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 13/11/2011 22h58min13s BRST
-- Tabela de Configuracao de Imposto
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1106042 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 13/11/2011 22h58min13s BRST
-- Tabela de Configuracao de Imposto
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1106033,1106043,0,1106002,TO_DATE('2011-11-13 22:58:13','YYYY-MM-DD HH24:MI:SS'),100,'Product, Service, Item',10,'U','Identifies an item which is either purchased or sold in this organization.','Y','Y','Y','N','N','N','N','N','Product',TO_DATE('2011-11-13 22:58:13','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 13/11/2011 22h58min13s BRST
-- Tabela de Configuracao de Imposto
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1106043 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 13/11/2011 22h58min13s BRST
-- Tabela de Configuracao de Imposto
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1106038,1106044,0,1106002,TO_DATE('2011-11-13 22:58:13','YYYY-MM-DD HH24:MI:SS'),100,'Primary key table LBR_ProductCategory',10,'U','Primary key table LBR_ProductCategory','Y','Y','Y','N','N','N','N','N','Product Category',TO_DATE('2011-11-13 22:58:13','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 13/11/2011 22h58min13s BRST
-- Tabela de Configuracao de Imposto
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1106044 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 13/11/2011 22h58min13s BRST
-- Tabela de Configuracao de Imposto
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1106030,1106045,0,1106002,TO_DATE('2011-11-13 22:58:13','YYYY-MM-DD HH24:MI:SS'),100,'Identifies a geographical Region',10,'U','The Region identifies a unique Region for this Country.','Y','Y','Y','N','N','N','N','N','Region',TO_DATE('2011-11-13 22:58:13','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 13/11/2011 22h58min13s BRST
-- Tabela de Configuracao de Imposto
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1106045 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 13/11/2011 22h58min13s BRST
-- Tabela de Configuracao de Imposto
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1106019,1106046,0,1106002,TO_DATE('2011-11-13 22:58:13','YYYY-MM-DD HH24:MI:SS'),100,10,'LBRA','Y','Y','N','N','N','N','N','N','Tax Definition',TO_DATE('2011-11-13 22:58:13','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 13/11/2011 22h58min13s BRST
-- Tabela de Configuracao de Imposto
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1106046 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 13/11/2011 22h58min13s BRST
-- Tabela de Configuracao de Imposto
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1106041,1106047,0,1106002,TO_DATE('2011-11-13 22:58:13','YYYY-MM-DD HH24:MI:SS'),100,'Defines the Tax Status',2,'U','Defines the Tax Status','Y','Y','Y','N','N','N','N','N','Tax Status',TO_DATE('2011-11-13 22:58:13','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 13/11/2011 22h58min13s BRST
-- Tabela de Configuracao de Imposto
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1106047 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 13/11/2011 22h58min14s BRST
-- Tabela de Configuracao de Imposto
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1106031,1106048,0,1106002,TO_DATE('2011-11-13 22:58:13','YYYY-MM-DD HH24:MI:SS'),100,'Receiving Region',10,'U','The To Region indicates the receiving region on a document','Y','Y','Y','N','N','N','N','N','To',TO_DATE('2011-11-13 22:58:13','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 13/11/2011 22h58min14s BRST
-- Tabela de Configuracao de Imposto
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1106048 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 13/11/2011 22h58min14s BRST
-- Tabela de Configuracao de Imposto
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1106036,1106049,0,1106002,TO_DATE('2011-11-13 22:58:14','YYYY-MM-DD HH24:MI:SS'),100,'Defines the Transaction Type',3,'U','Defines the Transaction Type','Y','Y','Y','N','N','N','N','N','Transaction Type',TO_DATE('2011-11-13 22:58:14','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 13/11/2011 22h58min14s BRST
-- Tabela de Configuracao de Imposto
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1106049 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 13/11/2011 22h59min12s BRST
-- Tabela de Configuracao de Imposto
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1106043,617,0,15,1106001,'ValidFrom',TO_DATE('2011-11-13 22:59:12','YYYY-MM-DD HH24:MI:SS'),100,'Valid from including this date (first day)','U',7,'The Valid From date indicates the first day of a date range','Y','Y','N','N','N','N','N','Y','N','N','N','N','Y','Valid from',0,TO_DATE('2011-11-13 22:59:12','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 13/11/2011 22h59min12s BRST
-- Tabela de Configuracao de Imposto
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1106043 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 13/11/2011 22h59min16s BRST
-- Tabela de Configuracao de Imposto
ALTER TABLE LBR_TaxDefinition ADD ValidFrom DATE NOT NULL 
;

-- 13/11/2011 22h59min24s BRST
-- Tabela de Configuracao de Imposto
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1106043,1106050,0,1106002,TO_DATE('2011-11-13 22:59:24','YYYY-MM-DD HH24:MI:SS'),100,'Valid from including this date (first day)',7,'U','The Valid From date indicates the first day of a date range','Y','Y','Y','N','N','N','N','N','Valid from',TO_DATE('2011-11-13 22:59:24','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 13/11/2011 22h59min24s BRST
-- Tabela de Configuracao de Imposto
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1106050 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 13/11/2011 23h0min58s BRST
-- Tabela de Configuracao de Imposto
UPDATE AD_Field SET SeqNo=10,IsDisplayed='Y' WHERE AD_Field_ID=1106034
;

-- 13/11/2011 23h0min58s BRST
-- Tabela de Configuracao de Imposto
UPDATE AD_Field SET SeqNo=20,IsDisplayed='Y' WHERE AD_Field_ID=1106042
;

-- 13/11/2011 23h0min58s BRST
-- Tabela de Configuracao de Imposto
UPDATE AD_Field SET SeqNo=30,IsDisplayed='Y' WHERE AD_Field_ID=1106050
;

-- 13/11/2011 23h0min58s BRST
-- Tabela de Configuracao de Imposto
UPDATE AD_Field SET SeqNo=40,IsDisplayed='Y' WHERE AD_Field_ID=1106030
;

-- 13/11/2011 23h0min58s BRST
-- Tabela de Configuracao de Imposto
UPDATE AD_Field SET SeqNo=50,IsDisplayed='Y' WHERE AD_Field_ID=1106035
;

-- 13/11/2011 23h0min58s BRST
-- Tabela de Configuracao de Imposto
UPDATE AD_Field SET SeqNo=60,IsDisplayed='Y' WHERE AD_Field_ID=1106033
;

-- 13/11/2011 23h0min58s BRST
-- Tabela de Configuracao de Imposto
UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y' WHERE AD_Field_ID=1106031
;

-- 13/11/2011 23h0min58s BRST
-- Tabela de Configuracao de Imposto
UPDATE AD_Field SET SeqNo=80,IsDisplayed='Y' WHERE AD_Field_ID=1106037
;

-- 13/11/2011 23h0min58s BRST
-- Tabela de Configuracao de Imposto
UPDATE AD_Field SET SeqNo=90,IsDisplayed='Y' WHERE AD_Field_ID=1106045
;

-- 13/11/2011 23h0min58s BRST
-- Tabela de Configuracao de Imposto
UPDATE AD_Field SET SeqNo=100,IsDisplayed='Y' WHERE AD_Field_ID=1106048
;

-- 13/11/2011 23h0min58s BRST
-- Tabela de Configuracao de Imposto
UPDATE AD_Field SET SeqNo=110,IsDisplayed='Y' WHERE AD_Field_ID=1106043
;

-- 13/11/2011 23h0min58s BRST
-- Tabela de Configuracao de Imposto
UPDATE AD_Field SET SeqNo=120,IsDisplayed='Y' WHERE AD_Field_ID=1106044
;

-- 13/11/2011 23h0min58s BRST
-- Tabela de Configuracao de Imposto
UPDATE AD_Field SET SeqNo=130,IsDisplayed='Y' WHERE AD_Field_ID=1106038
;

-- 13/11/2011 23h0min58s BRST
-- Tabela de Configuracao de Imposto
UPDATE AD_Field SET SeqNo=140,IsDisplayed='Y' WHERE AD_Field_ID=1106041
;

-- 13/11/2011 23h0min58s BRST
-- Tabela de Configuracao de Imposto
UPDATE AD_Field SET SeqNo=150,IsDisplayed='Y' WHERE AD_Field_ID=1106039
;

-- 13/11/2011 23h0min58s BRST
-- Tabela de Configuracao de Imposto
UPDATE AD_Field SET SeqNo=160,IsDisplayed='Y' WHERE AD_Field_ID=1106036
;

-- 13/11/2011 23h0min58s BRST
-- Tabela de Configuracao de Imposto
UPDATE AD_Field SET SeqNo=170,IsDisplayed='Y' WHERE AD_Field_ID=1106049
;

-- 13/11/2011 23h0min58s BRST
-- Tabela de Configuracao de Imposto
UPDATE AD_Field SET SeqNo=180,IsDisplayed='Y' WHERE AD_Field_ID=1106032
;

-- 13/11/2011 23h0min58s BRST
-- Tabela de Configuracao de Imposto
UPDATE AD_Field SET SeqNo=190,IsDisplayed='Y' WHERE AD_Field_ID=1106040
;

-- 13/11/2011 23h0min58s BRST
-- Tabela de Configuracao de Imposto
UPDATE AD_Field SET SeqNo=200,IsDisplayed='Y' WHERE AD_Field_ID=1106047
;

-- 13/11/2011 23h29min7s BRST
-- Tabela de Configuracao de Imposto
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2011-11-13 23:29:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1106042
;

-- 13/11/2011 23h29min10s BRST
-- Tabela de Configuracao de Imposto
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2011-11-13 23:29:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1106030
;

-- 13/11/2011 23h29min18s BRST
-- Tabela de Configuracao de Imposto
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2011-11-13 23:29:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1106031
;

-- 13/11/2011 23h29min21s BRST
-- Tabela de Configuracao de Imposto
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2011-11-13 23:29:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1106048
;

-- 13/11/2011 23h29min24s BRST
-- Tabela de Configuracao de Imposto
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2011-11-13 23:29:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1106044
;

-- 13/11/2011 23h29min26s BRST
-- Tabela de Configuracao de Imposto
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2011-11-13 23:29:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1106039
;

-- 13/11/2011 23h29min28s BRST
-- Tabela de Configuracao de Imposto
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2011-11-13 23:29:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1106049
;

-- 13/11/2011 23h29min38s BRST
-- Tabela de Configuracao de Imposto
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2011-11-13 23:29:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1106040
;

-- 13/11/2011 23h29min51s BRST
-- Tabela de Configuracao de Imposto
UPDATE AD_Field SET IsSameLine='Y', SeqNo=135,Updated=TO_DATE('2011-11-13 23:29:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1106037
;

-- 13/11/2011 23h31min2s BRST
-- Tabela de Configuracao de Imposto
UPDATE AD_Column SET IsIdentifier='Y', IsUpdateable='N', SeqNo=0,Updated=TO_DATE('2011-11-13 23:31:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1106019
;

-- 13/11/2011 23h31min49s BRST
-- Tabela de Configuracao de Imposto
UPDATE AD_Column SET AD_Reference_ID=18, AD_Reference_Value_ID=1000018,Updated=TO_DATE('2011-11-13 23:31:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1106032
;

-- 13/11/2011 23h31min57s BRST
-- Tabela de Configuracao de Imposto
UPDATE AD_Column SET AD_Reference_ID=18, AD_Reference_Value_ID=1000019,Updated=TO_DATE('2011-11-13 23:31:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1106029
;

-- 13/11/2011 23h32min32s BRST
-- Tabela de Configuracao de Imposto
UPDATE AD_Column SET DefaultValue='0',Updated=TO_DATE('2011-11-13 23:32:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1106021
;

-- 13/11/2011 23h33min1s BRST
-- Tabela de Configuracao de Imposto
UPDATE AD_Field SET AD_FieldGroup_ID=107,Updated=TO_DATE('2011-11-13 23:33:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1106033
;

-- 13/11/2011 23h33min15s BRST
-- Tabela de Configuracao de Imposto
UPDATE AD_Field SET AD_FieldGroup_ID=106,Updated=TO_DATE('2011-11-13 23:33:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1106043
;

-- 13/11/2011 23h33min40s BRST
-- Tabela de Configuracao de Imposto
UPDATE AD_Field SET AD_FieldGroup_ID=113,Updated=TO_DATE('2011-11-13 23:33:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1106036
;

-- 13/11/2011 23h33min47s BRST
-- Tabela de Configuracao de Imposto
UPDATE AD_Field SET AD_FieldGroup_ID=111,Updated=TO_DATE('2011-11-13 23:33:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1106032
;

-- 13/11/2011 23h34min2s BRST
-- Tabela de Configuracao de Imposto
UPDATE AD_Column SET AD_Reference_ID=14,Updated=TO_DATE('2011-11-13 23:34:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1106027
;

-- 14/11/2011 10h4min18s BRST
-- Tabela de Configuracao de Imposto
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1106044,1145,0,11,1106001,'PriorityNo',TO_DATE('2011-11-14 10:04:17','YYYY-MM-DD HH24:MI:SS'),100,'Where inventory should be picked from first','LBRA',10,'The Relative Priority indicates the location to pick from first if an product is stored in more than one location.  (100 = highest priority, 0 = lowest).  For outgoing shipments, the location is picked with the highest priority where the entire quantity can be shipped from.  If there is no location, the location with the highest priority is used.
The Priority is ignored for products with Guarantee Date (always the oldest first) or if a specific instance is selected.
Incoming receipts are stored at the location with the highest priority, if not explicitly selected.','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Relative Priority',0,TO_DATE('2011-11-14 10:04:17','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 14/11/2011 10h4min18s BRST
-- Tabela de Configuracao de Imposto
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1106044 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 14/11/2011 10h4min22s BRST
-- Tabela de Configuracao de Imposto
ALTER TABLE LBR_TaxDefinition ADD PriorityNo NUMBER(10) DEFAULT NULL 
;

-- 14/11/2011 10h5min28s BRST
-- Tabela de Configuracao de Imposto
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1106044,1106051,0,1106002,TO_DATE('2011-11-14 10:05:28','YYYY-MM-DD HH24:MI:SS'),100,'Where inventory should be picked from first',10,'LBRA','The Relative Priority indicates the location to pick from first if an product is stored in more than one location.  (100 = highest priority, 0 = lowest).  For outgoing shipments, the location is picked with the highest priority where the entire quantity can be shipped from.  If there is no location, the location with the highest priority is used.
The Priority is ignored for products with Guarantee Date (always the oldest first) or if a specific instance is selected.
Incoming receipts are stored at the location with the highest priority, if not explicitly selected.','Y','Y','Y','N','N','N','N','N','Relative Priority',TO_DATE('2011-11-14 10:05:28','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/11/2011 10h5min28s BRST
-- Tabela de Configuracao de Imposto
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1106051 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 14/11/2011 10h5min43s BRST
-- Tabela de Configuracao de Imposto
UPDATE AD_Field SET IsSameLine='N',Updated=TO_DATE('2011-11-14 10:05:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1106030
;

-- 14/11/2011 10h5min56s BRST
-- Tabela de Configuracao de Imposto
UPDATE AD_Field SET IsReadOnly='Y', IsSameLine='Y', SeqNo=35,Updated=TO_DATE('2011-11-14 10:05:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1106051
;

-- 16/11/2011 16h48min27s BRST
-- Tabela de Configuracao de Imposto
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1106048,1000137,0,30,1106001,'LBR_CFOP_ID',TO_DATE('2011-11-16 16:48:25','YYYY-MM-DD HH24:MI:SS'),100,'Primary key table LBR_CFOP','LBRA',10,'Primary key table LBR_CFOP','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','CFOP',0,TO_DATE('2011-11-16 16:48:25','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 16/11/2011 16h48min27s BRST
-- Tabela de Configuracao de Imposto
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1106048 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 16/11/2011 16h49min55s BRST
-- Tabela de Configuracao de Imposto
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1106049,1106,0,17,1000027,1106001,'IsSOTrx',TO_DATE('2011-11-16 16:49:55','YYYY-MM-DD HH24:MI:SS'),100,'B','This is a Sales Transaction','LBRA',1,'The Sales Transaction checkbox indicates if this item is a Sales Transaction.','Y','Y','N','N','N','N','N','Y','N','N','N','N','Y','Sales Transaction',0,TO_DATE('2011-11-16 16:49:55','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 16/11/2011 16h49min55s BRST
-- Tabela de Configuracao de Imposto
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1106049 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 16/11/2011 16h49min59s BRST
-- Tabela de Configuracao de Imposto
ALTER TABLE LBR_TaxDefinition ADD IsSOTrx CHAR(1) DEFAULT 'B' NOT NULL
;

-- 16/11/2011 16h50min6s BRST
-- Tabela de Configuracao de Imposto
ALTER TABLE LBR_TaxDefinition ADD LBR_CFOP_ID NUMBER(10) DEFAULT NULL 
;

-- 16/11/2011 16h50min37s BRST
-- Tabela de Configuracao de Imposto
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1106048,1106055,0,1106002,TO_DATE('2011-11-16 16:50:36','YYYY-MM-DD HH24:MI:SS'),100,'Primary key table LBR_CFOP',10,'LBRA','Primary key table LBR_CFOP','Y','Y','Y','N','N','N','N','N','CFOP',TO_DATE('2011-11-16 16:50:36','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 16/11/2011 16h50min37s BRST
-- Tabela de Configuracao de Imposto
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1106055 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 16/11/2011 16h50min38s BRST
-- Tabela de Configuracao de Imposto
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1106049,1106056,0,1106002,TO_DATE('2011-11-16 16:50:37','YYYY-MM-DD HH24:MI:SS'),100,'This is a Sales Transaction',1,'LBRA','The Sales Transaction checkbox indicates if this item is a Sales Transaction.','Y','Y','Y','N','N','N','N','N','Sales Transaction',TO_DATE('2011-11-16 16:50:37','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 16/11/2011 16h50min38s BRST
-- Tabela de Configuracao de Imposto
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1106056 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 16/11/2011 16h50min59s BRST
-- Tabela de Configuracao de Imposto
UPDATE AD_Field SET SeqNo=40,IsDisplayed='Y' WHERE AD_Field_ID=1106051
;

-- 16/11/2011 16h50min59s BRST
-- Tabela de Configuracao de Imposto
UPDATE AD_Field SET SeqNo=50,IsDisplayed='Y' WHERE AD_Field_ID=1106030
;

-- 16/11/2011 16h50min59s BRST
-- Tabela de Configuracao de Imposto
UPDATE AD_Field SET SeqNo=60,IsDisplayed='Y' WHERE AD_Field_ID=1106056
;

-- 16/11/2011 16h50min59s BRST
-- Tabela de Configuracao de Imposto
UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y' WHERE AD_Field_ID=1106035
;

-- 16/11/2011 16h50min59s BRST
-- Tabela de Configuracao de Imposto
UPDATE AD_Field SET SeqNo=80,IsDisplayed='Y' WHERE AD_Field_ID=1106033
;

-- 16/11/2011 16h50min59s BRST
-- Tabela de Configuracao de Imposto
UPDATE AD_Field SET SeqNo=90,IsDisplayed='Y' WHERE AD_Field_ID=1106031
;

-- 16/11/2011 16h50min59s BRST
-- Tabela de Configuracao de Imposto
UPDATE AD_Field SET SeqNo=100,IsDisplayed='Y' WHERE AD_Field_ID=1106045
;

-- 16/11/2011 16h50min59s BRST
-- Tabela de Configuracao de Imposto
UPDATE AD_Field SET SeqNo=110,IsDisplayed='Y' WHERE AD_Field_ID=1106048
;

-- 16/11/2011 16h50min59s BRST
-- Tabela de Configuracao de Imposto
UPDATE AD_Field SET SeqNo=120,IsDisplayed='Y' WHERE AD_Field_ID=1106043
;

-- 16/11/2011 16h50min59s BRST
-- Tabela de Configuracao de Imposto
UPDATE AD_Field SET SeqNo=130,IsDisplayed='Y' WHERE AD_Field_ID=1106044
;

-- 16/11/2011 16h50min59s BRST
-- Tabela de Configuracao de Imposto
UPDATE AD_Field SET SeqNo=140,IsDisplayed='Y' WHERE AD_Field_ID=1106038
;

-- 16/11/2011 16h50min59s BRST
-- Tabela de Configuracao de Imposto
UPDATE AD_Field SET SeqNo=150,IsDisplayed='Y' WHERE AD_Field_ID=1106037
;

-- 16/11/2011 16h50min59s BRST
-- Tabela de Configuracao de Imposto
UPDATE AD_Field SET SeqNo=160,IsDisplayed='Y' WHERE AD_Field_ID=1106041
;

-- 16/11/2011 16h50min59s BRST
-- Tabela de Configuracao de Imposto
UPDATE AD_Field SET SeqNo=170,IsDisplayed='Y' WHERE AD_Field_ID=1106039
;

-- 16/11/2011 16h50min59s BRST
-- Tabela de Configuracao de Imposto
UPDATE AD_Field SET SeqNo=180,IsDisplayed='Y' WHERE AD_Field_ID=1106036
;

-- 16/11/2011 16h50min59s BRST
-- Tabela de Configuracao de Imposto
UPDATE AD_Field SET SeqNo=190,IsDisplayed='Y' WHERE AD_Field_ID=1106049
;

-- 16/11/2011 16h50min59s BRST
-- Tabela de Configuracao de Imposto
UPDATE AD_Field SET SeqNo=200,IsDisplayed='Y' WHERE AD_Field_ID=1106032
;

-- 16/11/2011 16h50min59s BRST
-- Tabela de Configuracao de Imposto
UPDATE AD_Field SET SeqNo=210,IsDisplayed='Y' WHERE AD_Field_ID=1106040
;

-- 16/11/2011 16h50min59s BRST
-- Tabela de Configuracao de Imposto
UPDATE AD_Field SET SeqNo=220,IsDisplayed='Y' WHERE AD_Field_ID=1106047
;

-- 16/11/2011 16h50min59s BRST
-- Tabela de Configuracao de Imposto
UPDATE AD_Field SET SeqNo=230,IsDisplayed='Y' WHERE AD_Field_ID=1106055
;

-- 16/11/2011 16h51min7s BRST
-- Tabela de Configuracao de Imposto
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2011-11-16 16:51:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1106056
;

-- 16/11/2011 16h51min11s BRST
-- Tabela de Configuracao de Imposto
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2011-11-16 16:51:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1106055
;

-- 17/11/2011 15h5min20s BRST
-- Fix no campo de CFOP
UPDATE AD_Column SET AD_Reference_ID=18, AD_Reference_Value_ID=1000015, EntityType='LBRA',Updated=TO_DATE('2011-11-17 15:05:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1106039
;

-- 17/11/2011 15h6min26s BRST
-- Fix no campo de CFOP
UPDATE AD_Column SET AD_Reference_Value_ID=1000013, EntityType='LBRA', Updated=TO_DATE('2011-11-17 15:06:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1106038
;

EXIT