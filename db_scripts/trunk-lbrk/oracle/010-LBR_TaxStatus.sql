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
-- 16/11/2011 16h58min41s BRST
-- Tabela de Configuracao das Situações Tributárias
INSERT INTO AD_Table (AD_Client_ID,AD_Org_ID,AD_Table_ID,AccessLevel,CopyColumnsFromTable,Created,CreatedBy,Description,EntityType,ImportTable,IsActive,IsCentrallyMaintained,IsChangeLog,IsDeleteable,IsHighVolume,IsSecurityEnabled,IsView,LoadSeq,Name,ReplicationType,TableName,Updated,UpdatedBy) VALUES (0,0,1106002,'3','N',TO_DATE('2011-11-16 16:58:40','YYYY-MM-DD HH24:MI:SS'),100,'Brazilian Tax Status','LBRA','N','Y','Y','N','Y','N','N','N',0,'Tax Status','L','LBR_TaxStatus',TO_DATE('2011-11-16 16:58:40','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 16/11/2011 16h58min41s BRST
-- Tabela de Configuracao das Situações Tributárias
INSERT INTO AD_Table_Trl (AD_Language,AD_Table_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Table_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Table t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Table_ID=1106002 AND NOT EXISTS (SELECT * FROM AD_Table_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Table_ID=t.AD_Table_ID)
;

-- 16/11/2011 16h58min41s BRST
-- Tabela de Configuracao das Situações Tributárias
INSERT INTO AD_Sequence (AD_Client_ID,AD_Org_ID,AD_Sequence_ID,Created,CreatedBy,CurrentNext,CurrentNextSys,Description,IncrementNo,IsActive,IsAudited,IsAutoSequence,IsTableID,Name,StartNewYear,StartNo,Updated,UpdatedBy) VALUES (0,0,1106002,TO_DATE('2011-11-16 16:58:41','YYYY-MM-DD HH24:MI:SS'),100,1000000,50000,'Table LBR_TaxStatus',1,'Y','N','Y','Y','LBR_TaxStatus','N',1000000,TO_DATE('2011-11-16 16:58:41','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 16/11/2011 17h6min17s BRST
-- Tabela de Configuracao das Situações Tributárias
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,1106004,0,'LBR_TaxStatus_ID',TO_DATE('2011-11-16 17:06:16','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Tax Status','Tax Status',TO_DATE('2011-11-16 17:06:16','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 16/11/2011 17h6min17s BRST
-- Tabela de Configuracao das Situações Tributárias
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1106004 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 16/11/2011 17h6min17s BRST
-- Tabela de Configuracao das Situações Tributárias
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1106050,1106004,0,13,1106002,'LBR_TaxStatus_ID',TO_DATE('2011-11-16 17:06:16','YYYY-MM-DD HH24:MI:SS'),100,'LBRA',10,'Y','N','N','N','Y','Y','N','N','N','N','Tax Status',TO_DATE('2011-11-16 17:06:16','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 16/11/2011 17h6min17s BRST
-- Tabela de Configuracao das Situações Tributárias
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1106050 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 16/11/2011 17h6min17s BRST
-- Tabela de Configuracao das Situações Tributárias
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1106051,102,0,19,1106002,'AD_Client_ID',TO_DATE('2011-11-16 17:06:17','YYYY-MM-DD HH24:MI:SS'),100,'Client/Tenant for this installation.','LBRA',10,'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Y','N','N','N','N','Y','N','N','N','N','Client',TO_DATE('2011-11-16 17:06:17','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 16/11/2011 17h6min17s BRST
-- Tabela de Configuracao das Situações Tributárias
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1106051 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 16/11/2011 17h6min17s BRST
-- Tabela de Configuracao das Situações Tributárias
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1106052,113,0,19,1106002,'AD_Org_ID',TO_DATE('2011-11-16 17:06:17','YYYY-MM-DD HH24:MI:SS'),100,'Organizational entity within client','LBRA',10,'An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Y','N','N','N','N','Y','N','N','N','N','Organization',TO_DATE('2011-11-16 17:06:17','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 16/11/2011 17h6min17s BRST
-- Tabela de Configuracao das Situações Tributárias
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1106052 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 16/11/2011 17h6min17s BRST
-- Tabela de Configuracao das Situações Tributárias
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1106053,348,0,20,1106002,'IsActive',TO_DATE('2011-11-16 17:06:17','YYYY-MM-DD HH24:MI:SS'),100,'The record is active in the system','LBRA',1,'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Y','N','N','N','N','Y','N','N','N','Y','Active',TO_DATE('2011-11-16 17:06:17','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 16/11/2011 17h6min17s BRST
-- Tabela de Configuracao das Situações Tributárias
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1106053 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 16/11/2011 17h6min18s BRST
-- Tabela de Configuracao das Situações Tributárias
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1106054,245,0,16,1106002,'Created',TO_DATE('2011-11-16 17:06:17','YYYY-MM-DD HH24:MI:SS'),100,'Date this record was created','LBRA',29,'The Created field indicates the date that this record was created.','Y','N','N','N','N','Y','N','N','N','N','Created',TO_DATE('2011-11-16 17:06:17','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 16/11/2011 17h6min18s BRST
-- Tabela de Configuracao das Situações Tributárias
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1106054 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 16/11/2011 17h6min18s BRST
-- Tabela de Configuracao das Situações Tributárias
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1106055,246,0,18,110,1106002,'CreatedBy',TO_DATE('2011-11-16 17:06:18','YYYY-MM-DD HH24:MI:SS'),100,'User who created this records','LBRA',10,'The Created By field indicates the user who created this record.','Y','N','N','N','N','Y','N','N','N','N','Created By',TO_DATE('2011-11-16 17:06:18','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 16/11/2011 17h6min18s BRST
-- Tabela de Configuracao das Situações Tributárias
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1106055 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 16/11/2011 17h6min18s BRST
-- Tabela de Configuracao das Situações Tributárias
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1106056,607,0,16,1106002,'Updated',TO_DATE('2011-11-16 17:06:18','YYYY-MM-DD HH24:MI:SS'),100,'Date this record was updated','LBRA',29,'The Updated field indicates the date that this record was updated.','Y','N','N','N','N','Y','N','N','N','N','Updated',TO_DATE('2011-11-16 17:06:18','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 16/11/2011 17h6min18s BRST
-- Tabela de Configuracao das Situações Tributárias
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1106056 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 16/11/2011 17h6min18s BRST
-- Tabela de Configuracao das Situações Tributárias
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1106057,608,0,18,110,1106002,'UpdatedBy',TO_DATE('2011-11-16 17:06:18','YYYY-MM-DD HH24:MI:SS'),100,'User who updated this records','LBRA',10,'The Updated By field indicates the user who updated this record.','Y','N','N','N','N','Y','N','N','N','N','Updated By',TO_DATE('2011-11-16 17:06:18','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 16/11/2011 17h6min18s BRST
-- Tabela de Configuracao das Situações Tributárias
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1106057 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 16/11/2011 17h6min18s BRST
-- Tabela de Configuracao das Situações Tributárias
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1106058,469,0,10,1106002,'Name',TO_DATE('2011-11-16 17:06:18','YYYY-MM-DD HH24:MI:SS'),100,'Alphanumeric identifier of the entity','LBRA',60,'The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.','Y','N','N','Y','N','Y','N','N','N','Y','Name',1,TO_DATE('2011-11-16 17:06:18','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 16/11/2011 17h6min18s BRST
-- Tabela de Configuracao das Situações Tributárias
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1106058 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 16/11/2011 17h6min18s BRST
-- Tabela de Configuracao das Situações Tributárias
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1106059,275,0,10,1106002,'Description',TO_DATE('2011-11-16 17:06:18','YYYY-MM-DD HH24:MI:SS'),100,'Optional short description of the record','LBRA',255,'A description is limited to 255 characters.','Y','N','N','N','N','N','N','N','N','Y','Description',TO_DATE('2011-11-16 17:06:18','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 16/11/2011 17h6min18s BRST
-- Tabela de Configuracao das Situações Tributárias
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1106059 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 16/11/2011 17h6min18s BRST
-- Tabela de Configuracao das Situações Tributárias
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1106060,1661,0,10,1106002,'PO_Name',TO_DATE('2011-11-16 17:06:18','YYYY-MM-DD HH24:MI:SS'),100,'Name on PO Screens','LBRA',60,'Y','N','N','N','N','N','N','N','N','Y','PO Name',TO_DATE('2011-11-16 17:06:18','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 16/11/2011 17h6min18s BRST
-- Tabela de Configuracao das Situações Tributárias
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1106060 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 16/11/2011 17h6min18s BRST
-- Tabela de Configuracao das Situações Tributárias
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1106061,1659,0,10,1106002,'PO_Description',TO_DATE('2011-11-16 17:06:18','YYYY-MM-DD HH24:MI:SS'),100,'Description in PO Screens','LBRA',255,'Y','N','N','N','N','N','N','N','N','Y','PO Description',TO_DATE('2011-11-16 17:06:18','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 16/11/2011 17h6min18s BRST
-- Tabela de Configuracao das Situações Tributárias
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1106061 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 16/11/2011 17h6min19s BRST
-- Tabela de Configuracao das Situações Tributárias
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1106062,617,0,16,1106002,'ValidFrom',TO_DATE('2011-11-16 17:06:18','YYYY-MM-DD HH24:MI:SS'),100,'Valid from including this date (first day)','LBRA',29,'The Valid From date indicates the first day of a date range','Y','N','N','N','N','Y','N','N','N','Y','Valid from',TO_DATE('2011-11-16 17:06:18','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 16/11/2011 17h6min19s BRST
-- Tabela de Configuracao das Situações Tributárias
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1106062 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 16/11/2011 17h6min19s BRST
-- Tabela de Configuracao das Situações Tributárias
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1106063,618,0,16,1106002,'ValidTo',TO_DATE('2011-11-16 17:06:19','YYYY-MM-DD HH24:MI:SS'),100,'Valid to including this date (last day)','LBRA',29,'The Valid To date indicates the last day of a date range','Y','N','N','N','N','Y','N','N','N','Y','Valid to',TO_DATE('2011-11-16 17:06:19','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 16/11/2011 17h6min19s BRST
-- Tabela de Configuracao das Situações Tributárias
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1106063 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 16/11/2011 17h8min59s BRST
-- Tabela de Configuracao das Situações Tributárias
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1106064,1000169,0,19,1106002,'LBR_TaxName_ID',TO_DATE('2011-11-16 17:08:58','YYYY-MM-DD HH24:MI:SS'),100,'Primary key table LBR_TaxName','LBRA',10,'Primary key table LBR_TaxName','Y','Y','N','N','N','N','N','Y','N','N','N','N','Y','Tax Name',0,TO_DATE('2011-11-16 17:08:58','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 16/11/2011 17h8min59s BRST
-- Tabela de Configuracao das Situações Tributárias
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1106064 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 16/11/2011 17h9min4s BRST
-- Tabela de Configuracao das Situações Tributárias
CREATE TABLE LBR_TaxStatus (AD_Client_ID NUMBER(10) NOT NULL, AD_Org_ID NUMBER(10) NOT NULL, Created DATE NOT NULL, CreatedBy NUMBER(10) NOT NULL, Description NVARCHAR2(255) DEFAULT NULL , IsActive CHAR(1) CHECK (IsActive IN ('Y','N')) NOT NULL, LBR_TaxName_ID NUMBER(10) NOT NULL, LBR_TaxStatus_ID NUMBER(10) NOT NULL, Name NVARCHAR2(60) NOT NULL, PO_Description NVARCHAR2(255) DEFAULT NULL , PO_Name NVARCHAR2(60) DEFAULT NULL , Updated DATE NOT NULL, UpdatedBy NUMBER(10) NOT NULL, ValidFrom DATE NOT NULL, ValidTo DATE NOT NULL, CONSTRAINT LBR_TaxStatus_Key PRIMARY KEY (LBR_TaxStatus_ID))
;

-- 16/11/2011 17h9min23s BRST
-- Tabela de Configuracao das Situações Tributárias
UPDATE AD_Table SET AD_Window_ID=1000014,Updated=TO_DATE('2011-11-16 17:09:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=1106002
;

-- 16/11/2011 17h9min56s BRST
-- Tabela de Configuracao das Situações Tributárias
INSERT INTO AD_Tab (AD_Client_ID,AD_Org_ID,AD_Tab_ID,AD_Table_ID,AD_Window_ID,Created,CreatedBy,EntityType,HasTree,ImportFields,IsActive,IsAdvancedTab,IsInfoTab,IsInsertRecord,IsReadOnly,IsSingleRow,IsSortTab,IsTranslationTab,Name,Processing,SeqNo,TabLevel,Updated,UpdatedBy) VALUES (0,0,1106003,1106002,1000014,TO_DATE('2011-11-16 17:09:56','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','N','N','Y','N','N','Y','N','N','N','N','Tax Status','N',30,0,TO_DATE('2011-11-16 17:09:56','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 16/11/2011 17h9min56s BRST
-- Tabela de Configuracao das Situações Tributárias
INSERT INTO AD_Tab_Trl (AD_Language,AD_Tab_ID, CommitWarning,Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Tab_ID, t.CommitWarning,t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Tab t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Tab_ID=1106003 AND NOT EXISTS (SELECT * FROM AD_Tab_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Tab_ID=t.AD_Tab_ID)
;

-- 16/11/2011 17h10min1s BRST
-- Tabela de Configuracao das Situações Tributárias
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1106053,1106057,0,1106003,TO_DATE('2011-11-16 17:10:01','YYYY-MM-DD HH24:MI:SS'),100,'The record is active in the system',1,'LBRA','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Y','Y','Y','N','N','N','N','N','Active',TO_DATE('2011-11-16 17:10:01','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 16/11/2011 17h10min1s BRST
-- Tabela de Configuracao das Situações Tributárias
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1106057 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 16/11/2011 17h10min1s BRST
-- Tabela de Configuracao das Situações Tributárias
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1106051,1106058,0,1106003,TO_DATE('2011-11-16 17:10:01','YYYY-MM-DD HH24:MI:SS'),100,'Client/Tenant for this installation.',10,'LBRA','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Y','Y','Y','N','N','N','N','N','Client',TO_DATE('2011-11-16 17:10:01','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 16/11/2011 17h10min1s BRST
-- Tabela de Configuracao das Situações Tributárias
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1106058 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 16/11/2011 17h10min1s BRST
-- Tabela de Configuracao das Situações Tributárias
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1106059,1106059,0,1106003,TO_DATE('2011-11-16 17:10:01','YYYY-MM-DD HH24:MI:SS'),100,'Optional short description of the record',255,'LBRA','A description is limited to 255 characters.','Y','Y','Y','N','N','N','N','N','Description',TO_DATE('2011-11-16 17:10:01','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 16/11/2011 17h10min1s BRST
-- Tabela de Configuracao das Situações Tributárias
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1106059 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 16/11/2011 17h10min1s BRST
-- Tabela de Configuracao das Situações Tributárias
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1106058,1106060,0,1106003,TO_DATE('2011-11-16 17:10:01','YYYY-MM-DD HH24:MI:SS'),100,'Alphanumeric identifier of the entity',60,'LBRA','The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.','Y','Y','Y','N','N','N','N','N','Name',TO_DATE('2011-11-16 17:10:01','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 16/11/2011 17h10min1s BRST
-- Tabela de Configuracao das Situações Tributárias
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1106060 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 16/11/2011 17h10min1s BRST
-- Tabela de Configuracao das Situações Tributárias
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1106052,1106061,0,1106003,TO_DATE('2011-11-16 17:10:01','YYYY-MM-DD HH24:MI:SS'),100,'Organizational entity within client',10,'LBRA','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Y','Y','Y','N','N','N','N','N','Organization',TO_DATE('2011-11-16 17:10:01','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 16/11/2011 17h10min1s BRST
-- Tabela de Configuracao das Situações Tributárias
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1106061 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 16/11/2011 17h10min1s BRST
-- Tabela de Configuracao das Situações Tributárias
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1106061,1106062,0,1106003,TO_DATE('2011-11-16 17:10:01','YYYY-MM-DD HH24:MI:SS'),100,'Description in PO Screens',255,'LBRA','Y','Y','Y','N','N','N','N','N','PO Description',TO_DATE('2011-11-16 17:10:01','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 16/11/2011 17h10min1s BRST
-- Tabela de Configuracao das Situações Tributárias
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1106062 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 16/11/2011 17h10min1s BRST
-- Tabela de Configuracao das Situações Tributárias
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1106060,1106063,0,1106003,TO_DATE('2011-11-16 17:10:01','YYYY-MM-DD HH24:MI:SS'),100,'Name on PO Screens',60,'LBRA','Y','Y','Y','N','N','N','N','N','PO Name',TO_DATE('2011-11-16 17:10:01','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 16/11/2011 17h10min1s BRST
-- Tabela de Configuracao das Situações Tributárias
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1106063 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 16/11/2011 17h10min2s BRST
-- Tabela de Configuracao das Situações Tributárias
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1106064,1106064,0,1106003,TO_DATE('2011-11-16 17:10:01','YYYY-MM-DD HH24:MI:SS'),100,'Primary key table LBR_TaxName',10,'LBRA','Primary key table LBR_TaxName','Y','Y','Y','N','N','N','N','N','Tax Name',TO_DATE('2011-11-16 17:10:01','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 16/11/2011 17h10min2s BRST
-- Tabela de Configuracao das Situações Tributárias
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1106064 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 16/11/2011 17h10min2s BRST
-- Tabela de Configuracao das Situações Tributárias
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1106050,1106065,0,1106003,TO_DATE('2011-11-16 17:10:02','YYYY-MM-DD HH24:MI:SS'),100,10,'LBRA','Y','Y','N','N','N','N','N','N','Tax Status',TO_DATE('2011-11-16 17:10:02','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 16/11/2011 17h10min2s BRST
-- Tabela de Configuracao das Situações Tributárias
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1106065 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 16/11/2011 17h10min2s BRST
-- Tabela de Configuracao das Situações Tributárias
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1106062,1106066,0,1106003,TO_DATE('2011-11-16 17:10:02','YYYY-MM-DD HH24:MI:SS'),100,'Valid from including this date (first day)',29,'LBRA','The Valid From date indicates the first day of a date range','Y','Y','Y','N','N','N','N','N','Valid from',TO_DATE('2011-11-16 17:10:02','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 16/11/2011 17h10min2s BRST
-- Tabela de Configuracao das Situações Tributárias
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1106066 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 16/11/2011 17h10min2s BRST
-- Tabela de Configuracao das Situações Tributárias
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1106063,1106067,0,1106003,TO_DATE('2011-11-16 17:10:02','YYYY-MM-DD HH24:MI:SS'),100,'Valid to including this date (last day)',29,'LBRA','The Valid To date indicates the last day of a date range','Y','Y','Y','N','N','N','N','N','Valid to',TO_DATE('2011-11-16 17:10:02','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 16/11/2011 17h10min2s BRST
-- Tabela de Configuracao das Situações Tributárias
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1106067 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 16/11/2011 17h10min38s BRST
-- Tabela de Configuracao das Situações Tributárias
UPDATE AD_Field SET SeqNo=10,IsDisplayed='Y' WHERE AD_Field_ID=1106058
;

-- 16/11/2011 17h10min38s BRST
-- Tabela de Configuracao das Situações Tributárias
UPDATE AD_Field SET SeqNo=20,IsDisplayed='Y' WHERE AD_Field_ID=1106061
;

-- 16/11/2011 17h10min38s BRST
-- Tabela de Configuracao das Situações Tributárias
UPDATE AD_Field SET SeqNo=30,IsDisplayed='Y' WHERE AD_Field_ID=1106064
;

-- 16/11/2011 17h10min38s BRST
-- Tabela de Configuracao das Situações Tributárias
UPDATE AD_Field SET SeqNo=40,IsDisplayed='Y' WHERE AD_Field_ID=1106057
;

-- 16/11/2011 17h10min38s BRST
-- Tabela de Configuracao das Situações Tributárias
UPDATE AD_Field SET SeqNo=50,IsDisplayed='Y' WHERE AD_Field_ID=1106066
;

-- 16/11/2011 17h10min38s BRST
-- Tabela de Configuracao das Situações Tributárias
UPDATE AD_Field SET SeqNo=60,IsDisplayed='Y' WHERE AD_Field_ID=1106067
;

-- 16/11/2011 17h10min38s BRST
-- Tabela de Configuracao das Situações Tributárias
UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y' WHERE AD_Field_ID=1106060
;

-- 16/11/2011 17h10min38s BRST
-- Tabela de Configuracao das Situações Tributárias
UPDATE AD_Field SET SeqNo=80,IsDisplayed='Y' WHERE AD_Field_ID=1106063
;

-- 16/11/2011 17h10min38s BRST
-- Tabela de Configuracao das Situações Tributárias
UPDATE AD_Field SET SeqNo=90,IsDisplayed='Y' WHERE AD_Field_ID=1106059
;

-- 16/11/2011 17h10min38s BRST
-- Tabela de Configuracao das Situações Tributárias
UPDATE AD_Field SET SeqNo=100,IsDisplayed='Y' WHERE AD_Field_ID=1106062
;

-- 16/11/2011 17h11min0s BRST
-- Tabela de Configuracao das Situações Tributárias
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2011-11-16 17:11:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1106061
;

-- 16/11/2011 17h11min2s BRST
-- Tabela de Configuracao das Situações Tributárias
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2011-11-16 17:11:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1106057
;

-- 16/11/2011 17h11min2s BRST
-- Tabela de Configuracao das Situações Tributárias
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2011-11-16 17:11:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1106067
;

-- 16/11/2011 17h11min3s BRST
-- Tabela de Configuracao das Situações Tributárias
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2011-11-16 17:11:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1106063
;

-- 16/11/2011 17h11min9s BRST
-- Tabela de Configuracao das Situações Tributárias
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2011-11-16 17:11:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1106062
;

-- 16/11/2011 17h11min40s BRST
-- Tabela de Configuracao das Situações Tributárias
UPDATE AD_Field SET AD_FieldGroup_ID=113,Updated=TO_DATE('2011-11-16 17:11:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1106063
;

-- 16/11/2011 17h11min48s BRST
-- Tabela de Configuracao das Situações Tributárias
UPDATE AD_Field SET AD_FieldGroup_ID=113,Updated=TO_DATE('2011-11-16 17:11:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1106060
;

-- 16/11/2011 17h12min32s BRST
-- Tabela de Configuracao das Situações Tributárias
UPDATE AD_Tab SET TabLevel=1,Updated=TO_DATE('2011-11-16 17:12:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=1106003
;

-- 16/11/2011 17h13min25s BRST
-- Tabela de Configuracao das Situações Tributárias
UPDATE AD_Tab SET AD_Column_ID=1106064,Updated=TO_DATE('2011-11-16 17:13:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=1106003
;

-- 16/11/2011 17h14min20s BRST
-- Tabela de Configuracao das Situações Tributárias
UPDATE AD_Column SET AD_Reference_ID=15, FieldLength=7,Updated=TO_DATE('2011-11-16 17:14:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1106062
;

-- 16/11/2011 17h14min27s BRST
-- Tabela de Configuracao das Situações Tributárias
UPDATE AD_Column SET AD_Reference_ID=15, FieldLength=7, IsMandatory='N',Updated=TO_DATE('2011-11-16 17:14:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1106063
;

-- 16/11/2011 17h14min32s BRST
-- Tabela de Configuracao das Situações Tributárias
ALTER TABLE LBR_TaxStatus MODIFY ValidTo DATE DEFAULT NULL 
;

-- 16/11/2011 17h14min33s BRST
-- Tabela de Configuracao das Situações Tributárias
ALTER TABLE LBR_TaxStatus MODIFY ValidTo NULL
;

-- 16/11/2011 17h14min43s BRST
-- Tabela de Configuracao das Situações Tributárias
UPDATE AD_Column SET AD_Reference_ID=14,Updated=TO_DATE('2011-11-16 17:14:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1106059
;

-- 16/11/2011 17h14min52s BRST
-- Tabela de Configuracao das Situações Tributárias
UPDATE AD_Column SET AD_Reference_ID=14,Updated=TO_DATE('2011-11-16 17:14:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1106061
;

-- 16/11/2011 17h15min5s BRST
-- Tabela de Configuracao das Situações Tributárias
UPDATE AD_Field SET DisplayLength=22,Updated=TO_DATE('2011-11-16 17:15:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1106066
;

-- 16/11/2011 17h15min8s BRST
-- Tabela de Configuracao das Situações Tributárias
UPDATE AD_Field SET DisplayLength=22,Updated=TO_DATE('2011-11-16 17:15:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1106067
;

-- 16/11/2011 17h15min11s BRST
-- Tabela de Configuracao das Situações Tributárias
UPDATE AD_Field SET DisplayLength=22,Updated=TO_DATE('2011-11-16 17:15:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1106060
;

-- 16/11/2011 17h15min15s BRST
-- Tabela de Configuracao das Situações Tributárias
UPDATE AD_Field SET DisplayLength=22,Updated=TO_DATE('2011-11-16 17:15:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1106063
;

-- 16/11/2011 17h15min18s BRST
-- Tabela de Configuracao das Situações Tributárias
UPDATE AD_Field SET DisplayLength=22,Updated=TO_DATE('2011-11-16 17:15:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1106059
;

-- 16/11/2011 17h15min22s BRST
-- Tabela de Configuracao das Situações Tributárias
UPDATE AD_Field SET DisplayLength=22,Updated=TO_DATE('2011-11-16 17:15:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1106062
;

-- 16/11/2011 17h16min0s BRST
-- Tabela de Configuracao das Situações Tributárias
UPDATE AD_Column SET DefaultValue='@#Date@',Updated=TO_DATE('2011-11-16 17:16:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1106062
;

-- 16/11/2011 17h16min25s BRST
-- Tabela de Configuracao das Situações Tributárias
UPDATE AD_Column SET IsMandatory='Y',Updated=TO_DATE('2011-11-16 17:16:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1106059
;

-- 16/11/2011 17h16min27s BRST
-- Tabela de Configuracao das Situações Tributárias
ALTER TABLE LBR_TaxStatus MODIFY Description NVARCHAR2(255)
;

-- 16/11/2011 17h16min27s BRST
-- Tabela de Configuracao das Situações Tributárias
ALTER TABLE LBR_TaxStatus MODIFY Description NOT NULL
;

-- 16/11/2011 17h17min18s BRST
-- Tabela de Configuracao das Situações Tributárias
UPDATE AD_Column SET DefaultValue='0',Updated=TO_DATE('2011-11-16 17:17:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1106052
;

-- 16/11/2011 17h25min8s BRST
-- Tabela de Configuracao das Situações Tributárias
UPDATE AD_Table SET AccessLevel='6',Updated=TO_DATE('2011-11-16 17:25:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=1106002
;

-- 16/11/2011 17h36min50s BRST
-- Campo SCRIPT na janela de Situação Tributária
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1106065,1718,0,34,1106002,'Script',TO_DATE('2011-11-16 17:36:49','YYYY-MM-DD HH24:MI:SS'),100,'Dynamic Java Language Script to calculate result','LBRA',2000,'Use Java language constructs to define the result of the calculation','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Script',0,TO_DATE('2011-11-16 17:36:49','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 16/11/2011 17h36min50s BRST
-- Campo SCRIPT na janela de Situação Tributária
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1106065 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 16/11/2011 17h36min52s BRST
-- Campo SCRIPT na janela de Situação Tributária
ALTER TABLE LBR_TaxStatus ADD Script NVARCHAR2(2000) DEFAULT NULL 
;

-- 16/11/2011 17h37min7s BRST
-- Campo SCRIPT na janela de Situação Tributária
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1106065,1106068,0,1106003,TO_DATE('2011-11-16 17:37:06','YYYY-MM-DD HH24:MI:SS'),100,'Dynamic Java Language Script to calculate result',2000,'LBRA','Use Java language constructs to define the result of the calculation','Y','Y','Y','N','N','N','N','N','Script',TO_DATE('2011-11-16 17:37:06','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 16/11/2011 17h37min7s BRST
-- Campo SCRIPT na janela de Situação Tributária
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1106068 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 16/11/2011 17h37min21s BRST
-- Campo SCRIPT na janela de Situação Tributária
UPDATE AD_Field SET SeqNo=110,Updated=TO_DATE('2011-11-16 17:37:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1106068
;

-- 16/11/2011 17h38min9s BRST
-- Campo SCRIPT na janela de Situação Tributária
INSERT INTO AD_FieldGroup (AD_Client_ID,AD_FieldGroup_ID,AD_Org_ID,Created,CreatedBy,EntityType,FieldGroupType,IsActive,IsCollapsedByDefault,Name,Updated,UpdatedBy) VALUES (0,1106000,0,TO_DATE('2011-11-16 17:38:08','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','C','Y','N','Validation',TO_DATE('2011-11-16 17:38:08','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 16/11/2011 17h38min9s BRST
-- Campo SCRIPT na janela de Situação Tributária
INSERT INTO AD_FieldGroup_Trl (AD_Language,AD_FieldGroup_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_FieldGroup_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_FieldGroup t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_FieldGroup_ID=1106000 AND NOT EXISTS (SELECT * FROM AD_FieldGroup_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_FieldGroup_ID=t.AD_FieldGroup_ID)
;

-- 16/11/2011 17h38min15s BRST
-- Campo SCRIPT na janela de Situação Tributária
UPDATE AD_FieldGroup_Trl SET Name='Validação',Updated=TO_DATE('2011-11-16 17:38:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_FieldGroup_ID=1106000 AND AD_Language='pt_BR'
;

-- 16/11/2011 17h38min24s BRST
-- Campo SCRIPT na janela de Situação Tributária
UPDATE AD_Field SET AD_FieldGroup_ID=1106000,Updated=TO_DATE('2011-11-16 17:38:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1106068
;

-- 18/11/2011 15h48min23s BRST
-- Colunas de Situacao Tributaria na Linha do Imposto
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1106066,1000253,0,30,1000007,'LBR_LegalMessage_ID',TO_DATE('2011-11-18 15:48:22','YYYY-MM-DD HH24:MI:SS'),100,'Defines the Legal Message','LBRA',10,'Primary key table LBR_LegalMessage','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Legal Message',0,TO_DATE('2011-11-18 15:48:22','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 18/11/2011 15h48min23s BRST
-- Colunas de Situacao Tributaria na Linha do Imposto
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1106066 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 18/11/2011 15h48min27s BRST
-- Colunas de Situacao Tributaria na Linha do Imposto
ALTER TABLE LBR_TaxLine ADD LBR_LegalMessage_ID NUMBER(10) DEFAULT NULL 
;

-- 18/11/2011 15h50min31s BRST
-- Colunas de Situacao Tributaria na Linha do Imposto
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1106067,1106004,0,30,1000007,'LBR_TaxStatus_ID',TO_DATE('2011-11-18 15:50:31','YYYY-MM-DD HH24:MI:SS'),100,'LBRA',10,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Tax Status',0,TO_DATE('2011-11-18 15:50:31','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 18/11/2011 15h50min31s BRST
-- Colunas de Situacao Tributaria na Linha do Imposto
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1106067 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 18/11/2011 15h50min33s BRST
-- Colunas de Situacao Tributaria na Linha do Imposto
ALTER TABLE LBR_TaxLine ADD LBR_TaxStatus_ID NUMBER(10) DEFAULT NULL 
;

-- 18/11/2011 16h58min13s BRST
-- Ordem dos campos na janela de Situacao Tributaria
UPDATE AD_Field SET SeqNo=30,IsDisplayed='Y' WHERE AD_Field_ID=1106060
;

-- 18/11/2011 16h58min13s BRST
-- Ordem dos campos na janela de Situacao Tributaria
UPDATE AD_Field SET SeqNo=40,IsDisplayed='Y' WHERE AD_Field_ID=1106063
;

-- 18/11/2011 16h58min13s BRST
-- Ordem dos campos na janela de Situacao Tributaria
UPDATE AD_Field SET SeqNo=50,IsDisplayed='Y' WHERE AD_Field_ID=1106059
;

-- 18/11/2011 16h58min13s BRST
-- Ordem dos campos na janela de Situacao Tributaria
UPDATE AD_Field SET SeqNo=60,IsDisplayed='Y' WHERE AD_Field_ID=1106062
;

-- 18/11/2011 16h58min13s BRST
-- Ordem dos campos na janela de Situacao Tributaria
UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y' WHERE AD_Field_ID=1106066
;

-- 18/11/2011 16h58min13s BRST
-- Ordem dos campos na janela de Situacao Tributaria
UPDATE AD_Field SET SeqNo=80,IsDisplayed='Y' WHERE AD_Field_ID=1106067
;

-- 18/11/2011 16h58min13s BRST
-- Ordem dos campos na janela de Situacao Tributaria
UPDATE AD_Field SET SeqNo=90,IsDisplayed='Y' WHERE AD_Field_ID=1106064
;

-- 18/11/2011 16h58min13s BRST
-- Ordem dos campos na janela de Situacao Tributaria
UPDATE AD_Field SET SeqNo=100,IsDisplayed='Y' WHERE AD_Field_ID=1106057
;

-- 18/11/2011 16h58min29s BRST
-- Ordem dos campos na janela de Situacao Tributaria
UPDATE AD_Field SET AD_FieldGroup_ID=104,Updated=TO_DATE('2011-11-18 16:58:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1106066
;

