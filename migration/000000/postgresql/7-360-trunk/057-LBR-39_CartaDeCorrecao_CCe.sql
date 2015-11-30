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

-- 13/05/2012 21h5min26s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
INSERT INTO AD_Table (AD_Client_ID,AD_Org_ID,AD_Table_ID,AccessLevel,CopyColumnsFromTable,Created,CreatedBy,EntityType,ImportTable,IsActive,IsCentrallyMaintained,IsChangeLog,IsDeleteable,IsHighVolume,IsSecurityEnabled,IsSystemLanguage,IsView,LoadSeq,Name,ReplicationType,TableName,Updated,UpdatedBy) VALUES (0,0,1120247,'3','N',TO_TIMESTAMP('2012-05-13 21:05:24','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','N','Y','Y','N','Y','N','N','N','N',0,'Carta de Correcao','L','LBR_CCe',TO_TIMESTAMP('2012-05-13 21:05:24','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 13/05/2012 21h5min26s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
INSERT INTO AD_Table_Trl (AD_Language,AD_Table_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Table_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Table t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Table_ID=1120247 AND NOT EXISTS (SELECT * FROM AD_Table_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Table_ID=t.AD_Table_ID)
;

-- 13/05/2012 21h5min27s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
INSERT INTO AD_Sequence (AD_Client_ID,AD_Org_ID,AD_Sequence_ID,Created,CreatedBy,CurrentNext,CurrentNextSys,Description,IncrementNo,IsActive,IsAudited,IsAutoSequence,IsTableID,Name,StartNewYear,StartNo,Updated,UpdatedBy) VALUES (0,0,1138734,TO_TIMESTAMP('2012-05-13 21:05:26','YYYY-MM-DD HH24:MI:SS'),100,1000000,50000,'Table LBR_CCe',1,'Y','N','Y','Y','LBR_CCe','N',1000000,TO_TIMESTAMP('2012-05-13 21:05:26','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 13/05/2012 21h22min38s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,1120496,0,'LBR_CCe_ID',TO_TIMESTAMP('2012-05-13 21:22:37','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Carta de Correcao','Carta de Correcao',TO_TIMESTAMP('2012-05-13 21:22:37','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 13/05/2012 21h22min38s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1120496 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 13/05/2012 21h22min38s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1122468,1120496,0,13,1120247,'LBR_CCe_ID',TO_TIMESTAMP('2012-05-13 21:22:37','YYYY-MM-DD HH24:MI:SS'),100,'LBRA',10,'Y','N','N','N','Y','Y','N','N','N','N','Carta de Correcao',TO_TIMESTAMP('2012-05-13 21:22:37','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 13/05/2012 21h22min38s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1122468 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 13/05/2012 21h22min39s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1122469,102,0,19,1120247,'AD_Client_ID',TO_TIMESTAMP('2012-05-13 21:22:38','YYYY-MM-DD HH24:MI:SS'),100,'Client/Tenant for this installation.','LBRA',10,'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Y','N','N','N','N','Y','N','N','N','N','Client',TO_TIMESTAMP('2012-05-13 21:22:38','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 13/05/2012 21h22min39s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1122469 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 13/05/2012 21h22min40s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1122470,113,0,19,1120247,'AD_Org_ID',TO_TIMESTAMP('2012-05-13 21:22:39','YYYY-MM-DD HH24:MI:SS'),100,'Organizational entity within client','LBRA',10,'An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Y','N','N','N','N','Y','N','N','N','N','Organization',TO_TIMESTAMP('2012-05-13 21:22:39','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 13/05/2012 21h22min40s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1122470 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 13/05/2012 21h22min41s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1122471,348,0,20,1120247,'IsActive',TO_TIMESTAMP('2012-05-13 21:22:40','YYYY-MM-DD HH24:MI:SS'),100,'The record is active in the system','LBRA',1,'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Y','N','N','N','N','Y','N','N','N','Y','Active',TO_TIMESTAMP('2012-05-13 21:22:40','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 13/05/2012 21h22min41s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1122471 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 13/05/2012 21h22min41s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1122472,245,0,16,1120247,'Created',TO_TIMESTAMP('2012-05-13 21:22:41','YYYY-MM-DD HH24:MI:SS'),100,'Date this record was created','LBRA',29,'The Created field indicates the date that this record was created.','Y','N','N','N','N','Y','N','N','N','N','Created',TO_TIMESTAMP('2012-05-13 21:22:41','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 13/05/2012 21h22min41s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1122472 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 13/05/2012 21h22min42s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1122473,246,0,18,110,1120247,'CreatedBy',TO_TIMESTAMP('2012-05-13 21:22:41','YYYY-MM-DD HH24:MI:SS'),100,'User who created this records','LBRA',10,'The Created By field indicates the user who created this record.','Y','N','N','N','N','Y','N','N','N','N','Created By',TO_TIMESTAMP('2012-05-13 21:22:41','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 13/05/2012 21h22min42s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1122473 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 13/05/2012 21h22min43s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1122474,607,0,16,1120247,'Updated',TO_TIMESTAMP('2012-05-13 21:22:42','YYYY-MM-DD HH24:MI:SS'),100,'Date this record was updated','LBRA',29,'The Updated field indicates the date that this record was updated.','Y','N','N','N','N','Y','N','N','N','N','Updated',TO_TIMESTAMP('2012-05-13 21:22:42','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 13/05/2012 21h22min43s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1122474 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 13/05/2012 21h22min43s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1122475,608,0,18,110,1120247,'UpdatedBy',TO_TIMESTAMP('2012-05-13 21:22:43','YYYY-MM-DD HH24:MI:SS'),100,'User who updated this records','LBRA',10,'The Updated By field indicates the user who updated this record.','Y','N','N','N','N','Y','N','N','N','N','Updated By',TO_TIMESTAMP('2012-05-13 21:22:43','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 13/05/2012 21h22min43s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1122475 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 13/05/2012 21h22min44s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1122476,1000177,0,19,1120247,'LBR_NotaFiscal_ID',TO_TIMESTAMP('2012-05-13 21:22:43','YYYY-MM-DD HH24:MI:SS'),100,'Primary key table LBR_NotaFiscal','LBRA',10,'Primary key table LBR_NotaFiscal','Y','N','N','N','N','Y','N','N','N','Y','Nota Fiscal',TO_TIMESTAMP('2012-05-13 21:22:43','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 13/05/2012 21h22min44s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1122476 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 13/05/2012 21h22min45s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1122477,265,0,16,1120247,'DateDoc',TO_TIMESTAMP('2012-05-13 21:22:44','YYYY-MM-DD HH24:MI:SS'),100,'Date of the Document','LBRA',29,'The Document Date indicates the date the document was generated.  It may or may not be the same as the accounting date.','Y','N','N','N','N','N','N','N','N','Y','Document Date',TO_TIMESTAMP('2012-05-13 21:22:44','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 13/05/2012 21h22min45s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1122477 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 13/05/2012 21h22min45s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1122478,275,0,10,1120247,'Description',TO_TIMESTAMP('2012-05-13 21:22:45','YYYY-MM-DD HH24:MI:SS'),100,'Optional short description of the record','LBRA',255,'A description is limited to 255 characters.','Y','N','N','N','N','N','N','N','N','Y','Description',TO_TIMESTAMP('2012-05-13 21:22:45','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 13/05/2012 21h22min45s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1122478 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 13/05/2012 21h22min46s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1122479,566,0,11,1120247,'SeqNo',TO_TIMESTAMP('2012-05-13 21:22:45','YYYY-MM-DD HH24:MI:SS'),100,'Method of ordering records; lowest number comes first','LBRA',60,'The Sequence indicates the order of records','Y','N','N','N','N','Y','N','N','N','Y','Sequence',TO_TIMESTAMP('2012-05-13 21:22:45','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 13/05/2012 21h22min46s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1122479 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 13/05/2012 21h22min47s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1122480,1100027,0,10,1120247,'lbr_NFeProt',TO_TIMESTAMP('2012-05-13 21:22:46','YYYY-MM-DD HH24:MI:SS'),100,'LBRA',60,'Y','N','N','N','N','N','N','N','N','Y','NFe Protocol',TO_TIMESTAMP('2012-05-13 21:22:46','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 13/05/2012 21h22min47s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1122480 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 13/05/2012 21h22min47s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1122481,881,0,10,1120247,'EMail',TO_TIMESTAMP('2012-05-13 21:22:47','YYYY-MM-DD HH24:MI:SS'),100,'Electronic Mail Address','LBRA',60,'The Email Address is the Electronic Mail ID for this User and should be fully qualified (e.g. joe.smith@company.com). The Email Address is used to access the self service application functionality from the web.','Y','N','N','N','N','N','N','N','N','Y','EMail Address',TO_TIMESTAMP('2012-05-13 21:22:47','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 13/05/2012 21h22min47s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1122481 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 13/05/2012 21h22min48s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1122482,1297,0,16,1120247,'DateTrx',TO_TIMESTAMP('2012-05-13 21:22:47','YYYY-MM-DD HH24:MI:SS'),100,'Transaction Date','LBRA',29,'The Transaction Date indicates the date of the transaction.','Y','N','N','N','N','N','N','N','N','Y','Transaction Date',TO_TIMESTAMP('2012-05-13 21:22:47','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 13/05/2012 21h22min48s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1122482 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 13/05/2012 21h22min48s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1122483,1000009,0,10,1120247,'lbr_CNPJ',TO_TIMESTAMP('2012-05-13 21:22:48','YYYY-MM-DD HH24:MI:SS'),100,'Used to identify Legal Entities in Brazil','LBRA',30,'Used to identify Legal Entities in Brazil','Y','N','N','N','N','N','N','N','N','Y','CNPJ',TO_TIMESTAMP('2012-05-13 21:22:48','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 13/05/2012 21h22min48s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1122483 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 13/05/2012 21h22min49s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1122484,1000010,0,10,1120247,'lbr_CPF',TO_TIMESTAMP('2012-05-13 21:22:48','YYYY-MM-DD HH24:MI:SS'),100,'Used to identify individuals in Brazil','LBRA',30,'Used to identify individuals in Brazil','Y','N','N','N','N','N','N','N','N','Y','CPF',TO_TIMESTAMP('2012-05-13 21:22:48','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 13/05/2012 21h22min49s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1122484 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 13/05/2012 21h22min50s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1122485,289,0,10,1120247,'DocStatus',TO_TIMESTAMP('2012-05-13 21:22:49','YYYY-MM-DD HH24:MI:SS'),100,'The current status of the document','LBRA',2,'The Document Status indicates the status of a document at this time.  If you want to change the document status, use the Document Action field','Y','N','N','N','N','Y','N','N','N','Y','Document Status',TO_TIMESTAMP('2012-05-13 21:22:49','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 13/05/2012 21h22min50s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1122485 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 13/05/2012 21h22min50s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1122486,287,0,10,1120247,'DocAction',TO_TIMESTAMP('2012-05-13 21:22:50','YYYY-MM-DD HH24:MI:SS'),100,'The targeted status of the document','LBRA',2,'You find the current status in the Document Status field. The options are listed in a popup','Y','N','N','N','N','Y','N','N','N','Y','Document Action',TO_TIMESTAMP('2012-05-13 21:22:50','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 13/05/2012 21h22min50s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1122486 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 13/05/2012 21h22min51s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1122487,1047,0,20,1120247,'Processed',TO_TIMESTAMP('2012-05-13 21:22:50','YYYY-MM-DD HH24:MI:SS'),100,'The document has been processed','LBRA',1,'The Processed checkbox indicates that a document has been processed.','Y','N','N','N','N','Y','N','N','N','Y','Processed',TO_TIMESTAMP('2012-05-13 21:22:50','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 13/05/2012 21h22min51s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1122487 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 13/05/2012 21h23min45s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
UPDATE AD_Column SET AD_Val_Rule_ID=202,Updated=TO_TIMESTAMP('2012-05-13 21:23:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1122470
;

-- 13/05/2012 21h23min52s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
UPDATE AD_Column SET FieldLength=7,Updated=TO_TIMESTAMP('2012-05-13 21:23:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1122472
;

-- 13/05/2012 21h24min5s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
UPDATE AD_Column SET AD_Reference_ID=15, FieldLength=7,Updated=TO_TIMESTAMP('2012-05-13 21:24:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1122477
;

-- 13/05/2012 21h24min15s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
UPDATE AD_Column SET AD_Reference_ID=15, FieldLength=7,Updated=TO_TIMESTAMP('2012-05-13 21:24:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1122482
;

-- 13/05/2012 21h24min37s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
UPDATE AD_Column SET AD_Reference_ID=16, IsMandatory='Y',Updated=TO_TIMESTAMP('2012-05-13 21:24:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1122477
;

-- 13/05/2012 21h24min42s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
UPDATE AD_Column SET AD_Reference_ID=16,Updated=TO_TIMESTAMP('2012-05-13 21:24:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1122482
;

-- 13/05/2012 21h24min53s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
UPDATE AD_Column SET IsMandatory='Y',Updated=TO_TIMESTAMP('2012-05-13 21:24:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1122478
;

-- 13/05/2012 21h25min7s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
UPDATE AD_Column SET DefaultValue='CO',Updated=TO_TIMESTAMP('2012-05-13 21:25:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1122486
;

-- 13/05/2012 21h25min12s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
UPDATE AD_Column SET DefaultValue='DR',Updated=TO_TIMESTAMP('2012-05-13 21:25:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1122485
;

-- 13/05/2012 21h25min20s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
UPDATE AD_Column SET DefaultValue='Y',Updated=TO_TIMESTAMP('2012-05-13 21:25:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1122471
;

-- 13/05/2012 21h25min33s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
UPDATE AD_Column SET DefaultValue='N',Updated=TO_TIMESTAMP('2012-05-13 21:25:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1122487
;

-- 13/05/2012 21h25min42s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
UPDATE AD_Column SET DefaultValue='1',Updated=TO_TIMESTAMP('2012-05-13 21:25:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1122479
;

-- 13/05/2012 21h25min49s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
UPDATE AD_Column SET FieldLength=7,Updated=TO_TIMESTAMP('2012-05-13 21:25:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1122474
;

-- 13/05/2012 21h26min36s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
CREATE TABLE LBR_CCe (AD_Client_ID NUMERIC(10) NOT NULL, AD_Org_ID NUMERIC(10) NOT NULL, Created TIMESTAMP NOT NULL, CreatedBy NUMERIC(10) NOT NULL, DateDoc TIMESTAMP NOT NULL, DateTrx TIMESTAMP DEFAULT NULL , Description VARCHAR(255) NOT NULL, DocAction VARCHAR(2) DEFAULT 'CO' NOT NULL, DocStatus VARCHAR(2) DEFAULT 'DR' NOT NULL, EMail VARCHAR(60) DEFAULT NULL , IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, LBR_CCe_ID NUMERIC(10) NOT NULL, LBR_NotaFiscal_ID NUMERIC(10) NOT NULL, Processed CHAR(1) DEFAULT 'N' CHECK (Processed IN ('Y','N')) NOT NULL, SeqNo NUMERIC(10) DEFAULT 1 NOT NULL, Updated TIMESTAMP NOT NULL, UpdatedBy NUMERIC(10) NOT NULL, lbr_CNPJ VARCHAR(30) DEFAULT NULL , lbr_CPF VARCHAR(30) DEFAULT NULL , lbr_NFeProt VARCHAR(60) DEFAULT NULL , CONSTRAINT LBR_CCe_Key PRIMARY KEY (LBR_CCe_ID))
;

-- 13/05/2012 21h26min57s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
UPDATE AD_Table_Trl SET Name='Carta de Correção',IsTranslated='Y',Updated=TO_TIMESTAMP('2012-05-13 21:26:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=1120247 AND AD_Language='pt_BR'
;

-- 13/05/2012 21h27min36s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
UPDATE AD_Element_Trl SET Name='Carta de Correção',PrintName='Carta de Correção',Description='Registro da Carta de Correção da Nota Fiscal e NF-e',Updated=TO_TIMESTAMP('2012-05-13 21:27:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1120496 AND AD_Language='pt_BR'
;

-- 13/05/2012 21h28min28s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
INSERT INTO AD_Window (AD_Client_ID,AD_Org_ID,AD_Window_ID,Created,CreatedBy,EntityType,IsActive,IsBetaFunctionality,IsDefault,IsSOTrx,Name,Processing,Updated,UpdatedBy,WinHeight,WinWidth,WindowType) VALUES (0,0,1120053,TO_TIMESTAMP('2012-05-13 21:28:26','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','N','N','Y','Carta de Correcao','N',TO_TIMESTAMP('2012-05-13 21:28:26','YYYY-MM-DD HH24:MI:SS'),100,0,0,'T')
;

-- 13/05/2012 21h28min28s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
INSERT INTO AD_Window_Trl (AD_Language,AD_Window_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Window_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Window t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Window_ID=1120053 AND NOT EXISTS (SELECT * FROM AD_Window_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Window_ID=t.AD_Window_ID)
;

-- 13/05/2012 21h28min33s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
UPDATE AD_Window_Trl SET Name='Carta de Correção',Updated=TO_TIMESTAMP('2012-05-13 21:28:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Window_ID=1120053 AND AD_Language='pt_BR'
;

-- 13/05/2012 21h29min22s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
INSERT INTO AD_Tab (AD_Client_ID,AD_Org_ID,AD_Tab_ID,AD_Table_ID,AD_Window_ID,Created,CreatedBy,EntityType,HasTree,ImportFields,IsActive,IsAdvancedTab,IsInfoTab,IsInsertRecord,IsReadOnly,IsSingleRow,IsSortTab,IsTranslationTab,Name,Processing,SeqNo,TabLevel,Updated,UpdatedBy) VALUES (0,0,1120049,1120247,1120053,TO_TIMESTAMP('2012-05-13 21:29:21','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','N','N','Y','N','N','Y','N','Y','N','N','Carta de Correcao','N',10,0,TO_TIMESTAMP('2012-05-13 21:29:21','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 13/05/2012 21h29min22s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
INSERT INTO AD_Tab_Trl (AD_Language,AD_Tab_ID, CommitWarning,Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Tab_ID, t.CommitWarning,t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Tab t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Tab_ID=1120049 AND NOT EXISTS (SELECT * FROM AD_Tab_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Tab_ID=t.AD_Tab_ID)
;

-- 13/05/2012 21h29min30s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
UPDATE AD_Tab_Trl SET Name='Carta de Correção',Description='Carta de Correção',Updated=TO_TIMESTAMP('2012-05-13 21:29:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=1120049 AND AD_Language='pt_BR'
;

-- 13/05/2012 21h29min39s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
UPDATE AD_Table SET AD_Window_ID=1120053,Updated=TO_TIMESTAMP('2012-05-13 21:29:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=1120247
;

-- 13/05/2012 21h29min48s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1122471,1121192,0,1120049,TO_TIMESTAMP('2012-05-13 21:29:47','YYYY-MM-DD HH24:MI:SS'),100,'The record is active in the system',1,'LBRA','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Y','Y','Y','N','N','N','N','N','Active',TO_TIMESTAMP('2012-05-13 21:29:47','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 13/05/2012 21h29min48s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1121192 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 13/05/2012 21h29min49s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1122483,1121193,0,1120049,TO_TIMESTAMP('2012-05-13 21:29:48','YYYY-MM-DD HH24:MI:SS'),100,'Used to identify Legal Entities in Brazil',30,'LBRA','Used to identify Legal Entities in Brazil','Y','Y','Y','N','N','N','N','N','CNPJ',TO_TIMESTAMP('2012-05-13 21:29:48','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 13/05/2012 21h29min49s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1121193 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 13/05/2012 21h29min49s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1122484,1121194,0,1120049,TO_TIMESTAMP('2012-05-13 21:29:49','YYYY-MM-DD HH24:MI:SS'),100,'Used to identify individuals in Brazil',30,'LBRA','Used to identify individuals in Brazil','Y','Y','Y','N','N','N','N','N','CPF',TO_TIMESTAMP('2012-05-13 21:29:49','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 13/05/2012 21h29min49s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1121194 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 13/05/2012 21h29min50s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1122468,1121195,0,1120049,TO_TIMESTAMP('2012-05-13 21:29:49','YYYY-MM-DD HH24:MI:SS'),100,10,'LBRA','Y','Y','N','N','N','N','N','N','Carta de Correcao',TO_TIMESTAMP('2012-05-13 21:29:49','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 13/05/2012 21h29min50s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1121195 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 13/05/2012 21h29min50s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1122469,1121196,0,1120049,TO_TIMESTAMP('2012-05-13 21:29:50','YYYY-MM-DD HH24:MI:SS'),100,'Client/Tenant for this installation.',10,'LBRA','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Y','Y','Y','N','N','N','N','N','Client',TO_TIMESTAMP('2012-05-13 21:29:50','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 13/05/2012 21h29min50s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1121196 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 13/05/2012 21h29min51s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1122478,1121197,0,1120049,TO_TIMESTAMP('2012-05-13 21:29:50','YYYY-MM-DD HH24:MI:SS'),100,'Optional short description of the record',255,'LBRA','A description is limited to 255 characters.','Y','Y','Y','N','N','N','N','N','Description',TO_TIMESTAMP('2012-05-13 21:29:50','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 13/05/2012 21h29min51s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1121197 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 13/05/2012 21h29min51s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1122486,1121198,0,1120049,TO_TIMESTAMP('2012-05-13 21:29:51','YYYY-MM-DD HH24:MI:SS'),100,'The targeted status of the document',2,'LBRA','You find the current status in the Document Status field. The options are listed in a popup','Y','Y','Y','N','N','N','N','N','Document Action',TO_TIMESTAMP('2012-05-13 21:29:51','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 13/05/2012 21h29min51s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1121198 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 13/05/2012 21h29min52s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1122477,1121199,0,1120049,TO_TIMESTAMP('2012-05-13 21:29:51','YYYY-MM-DD HH24:MI:SS'),100,'Date of the Document',7,'LBRA','The Document Date indicates the date the document was generated.  It may or may not be the same as the accounting date.','Y','Y','Y','N','N','N','N','N','Document Date',TO_TIMESTAMP('2012-05-13 21:29:51','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 13/05/2012 21h29min52s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1121199 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 13/05/2012 21h29min53s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1122485,1121200,0,1120049,TO_TIMESTAMP('2012-05-13 21:29:52','YYYY-MM-DD HH24:MI:SS'),100,'The current status of the document',2,'LBRA','The Document Status indicates the status of a document at this time.  If you want to change the document status, use the Document Action field','Y','Y','Y','N','N','N','N','N','Document Status',TO_TIMESTAMP('2012-05-13 21:29:52','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 13/05/2012 21h29min53s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1121200 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 13/05/2012 21h29min54s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1122481,1121201,0,1120049,TO_TIMESTAMP('2012-05-13 21:29:53','YYYY-MM-DD HH24:MI:SS'),100,'Electronic Mail Address',60,'LBRA','The Email Address is the Electronic Mail ID for this User and should be fully qualified (e.g. joe.smith@company.com). The Email Address is used to access the self service application functionality from the web.','Y','Y','Y','N','N','N','N','N','EMail Address',TO_TIMESTAMP('2012-05-13 21:29:53','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 13/05/2012 21h29min54s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1121201 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 13/05/2012 21h29min54s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1122480,1121202,0,1120049,TO_TIMESTAMP('2012-05-13 21:29:54','YYYY-MM-DD HH24:MI:SS'),100,60,'LBRA','Y','Y','Y','N','N','N','N','N','NFe Protocol',TO_TIMESTAMP('2012-05-13 21:29:54','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 13/05/2012 21h29min54s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1121202 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 13/05/2012 21h29min55s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1122476,1121203,0,1120049,TO_TIMESTAMP('2012-05-13 21:29:54','YYYY-MM-DD HH24:MI:SS'),100,'Primary key table LBR_NotaFiscal',10,'LBRA','Primary key table LBR_NotaFiscal','Y','Y','Y','N','N','N','N','N','Nota Fiscal',TO_TIMESTAMP('2012-05-13 21:29:54','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 13/05/2012 21h29min55s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1121203 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 13/05/2012 21h29min56s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1122470,1121204,0,1120049,TO_TIMESTAMP('2012-05-13 21:29:55','YYYY-MM-DD HH24:MI:SS'),100,'Organizational entity within client',10,'LBRA','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Y','Y','Y','N','N','N','N','N','Organization',TO_TIMESTAMP('2012-05-13 21:29:55','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 13/05/2012 21h29min56s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1121204 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 13/05/2012 21h29min56s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1122487,1121205,0,1120049,TO_TIMESTAMP('2012-05-13 21:29:56','YYYY-MM-DD HH24:MI:SS'),100,'The document has been processed',1,'LBRA','The Processed checkbox indicates that a document has been processed.','Y','Y','Y','N','N','N','N','N','Processed',TO_TIMESTAMP('2012-05-13 21:29:56','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 13/05/2012 21h29min56s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1121205 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 13/05/2012 21h29min57s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1122479,1121206,0,1120049,TO_TIMESTAMP('2012-05-13 21:29:56','YYYY-MM-DD HH24:MI:SS'),100,'Method of ordering records; lowest number comes first',60,'LBRA','The Sequence indicates the order of records','Y','Y','Y','N','N','N','N','N','Sequence',TO_TIMESTAMP('2012-05-13 21:29:56','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 13/05/2012 21h29min57s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1121206 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 13/05/2012 21h29min58s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1122482,1121207,0,1120049,TO_TIMESTAMP('2012-05-13 21:29:57','YYYY-MM-DD HH24:MI:SS'),100,'Transaction Date',7,'LBRA','The Transaction Date indicates the date of the transaction.','Y','Y','Y','N','N','N','N','N','Transaction Date',TO_TIMESTAMP('2012-05-13 21:29:57','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 13/05/2012 21h29min58s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1121207 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 13/05/2012 21h32min2s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
UPDATE AD_Field SET SeqNo=10,IsDisplayed='Y' WHERE AD_Field_ID=1121196
;

-- 13/05/2012 21h32min2s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
UPDATE AD_Field SET SeqNo=20,IsDisplayed='Y' WHERE AD_Field_ID=1121204
;

-- 13/05/2012 21h32min2s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
UPDATE AD_Field SET SeqNo=30,IsDisplayed='Y' WHERE AD_Field_ID=1121203
;

-- 13/05/2012 21h32min2s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
UPDATE AD_Field SET SeqNo=40,IsDisplayed='Y' WHERE AD_Field_ID=1121192
;

-- 13/05/2012 21h32min2s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
UPDATE AD_Field SET SeqNo=50,IsDisplayed='Y' WHERE AD_Field_ID=1121197
;

-- 13/05/2012 21h32min2s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
UPDATE AD_Field SET SeqNo=60,IsDisplayed='Y' WHERE AD_Field_ID=1121193
;

-- 13/05/2012 21h32min2s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y' WHERE AD_Field_ID=1121194
;

-- 13/05/2012 21h32min2s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
UPDATE AD_Field SET SeqNo=80,IsDisplayed='Y' WHERE AD_Field_ID=1121199
;

-- 13/05/2012 21h32min2s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
UPDATE AD_Field SET SeqNo=90,IsDisplayed='Y' WHERE AD_Field_ID=1121206
;

-- 13/05/2012 21h32min2s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
UPDATE AD_Field SET SeqNo=100,IsDisplayed='Y' WHERE AD_Field_ID=1121200
;

-- 13/05/2012 21h32min2s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
UPDATE AD_Field SET SeqNo=110,IsDisplayed='Y' WHERE AD_Field_ID=1121198
;

-- 13/05/2012 21h32min2s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
UPDATE AD_Field SET SeqNo=120,IsDisplayed='Y' WHERE AD_Field_ID=1121201
;

-- 13/05/2012 21h32min2s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
UPDATE AD_Field SET SeqNo=130,IsDisplayed='Y' WHERE AD_Field_ID=1121202
;

-- 13/05/2012 21h32min2s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
UPDATE AD_Field SET SeqNo=140,IsDisplayed='Y' WHERE AD_Field_ID=1121207
;

-- 13/05/2012 21h32min2s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
UPDATE AD_Field SET SeqNo=150,IsDisplayed='Y' WHERE AD_Field_ID=1121205
;

-- 13/05/2012 21h32min9s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2012-05-13 21:32:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1121196
;

-- 13/05/2012 21h32min16s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
UPDATE AD_Field SET IsReadOnly='Y', IsSameLine='N',Updated=TO_TIMESTAMP('2012-05-13 21:32:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1121196
;

-- 13/05/2012 21h32min21s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2012-05-13 21:32:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1121204
;

-- 13/05/2012 21h32min33s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
UPDATE AD_Field SET DisplayLength=22, IsSameLine='Y',Updated=TO_TIMESTAMP('2012-05-13 21:32:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1121192
;

-- 13/05/2012 21h32min52s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
UPDATE AD_Field SET AD_FieldGroup_ID=1100002,Updated=TO_TIMESTAMP('2012-05-13 21:32:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1121203
;

-- 13/05/2012 21h32min58s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
UPDATE AD_Field SET AD_FieldGroup_ID=1100002,Updated=TO_TIMESTAMP('2012-05-13 21:32:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1121192
;

-- 13/05/2012 21h33min27s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
UPDATE AD_Field SET SeqNo=60,IsDisplayed='Y' WHERE AD_Field_ID=1121199
;

-- 13/05/2012 21h33min27s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y' WHERE AD_Field_ID=1121206
;

-- 13/05/2012 21h33min27s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
UPDATE AD_Field SET SeqNo=80,IsDisplayed='Y' WHERE AD_Field_ID=1121200
;

-- 13/05/2012 21h33min27s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
UPDATE AD_Field SET SeqNo=90,IsDisplayed='Y' WHERE AD_Field_ID=1121198
;

-- 13/05/2012 21h33min27s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
UPDATE AD_Field SET SeqNo=100,IsDisplayed='Y' WHERE AD_Field_ID=1121201
;

-- 13/05/2012 21h33min27s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
UPDATE AD_Field SET SeqNo=110,IsDisplayed='Y' WHERE AD_Field_ID=1121202
;

-- 13/05/2012 21h33min27s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
UPDATE AD_Field SET SeqNo=120,IsDisplayed='Y' WHERE AD_Field_ID=1121193
;

-- 13/05/2012 21h33min27s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
UPDATE AD_Field SET SeqNo=130,IsDisplayed='Y' WHERE AD_Field_ID=1121194
;

-- 13/05/2012 21h33min48s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
UPDATE AD_Field SET AD_FieldGroup_ID=1100002,Updated=TO_TIMESTAMP('2012-05-13 21:33:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1121197
;

-- 13/05/2012 21h33min53s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
UPDATE AD_Field SET AD_FieldGroup_ID=1100002,Updated=TO_TIMESTAMP('2012-05-13 21:33:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1121199
;

-- 13/05/2012 21h34min0s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
UPDATE AD_Field SET AD_FieldGroup_ID=1100002, IsSameLine='Y',Updated=TO_TIMESTAMP('2012-05-13 21:34:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1121206
;

-- 13/05/2012 21h34min6s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
UPDATE AD_Field SET AD_FieldGroup_ID=1100002,Updated=TO_TIMESTAMP('2012-05-13 21:34:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1121200
;

-- 13/05/2012 21h34min12s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
UPDATE AD_Field SET AD_FieldGroup_ID=1100002, IsSameLine='Y',Updated=TO_TIMESTAMP('2012-05-13 21:34:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1121198
;

-- 13/05/2012 21h35min16s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
UPDATE AD_Field SET AD_FieldGroup_ID=1100001, DisplayLogic='@DocStatus@=CO',Updated=TO_TIMESTAMP('2012-05-13 21:35:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1121201
;

-- 13/05/2012 21h35min26s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
UPDATE AD_Field SET AD_FieldGroup_ID=1100001, DisplayLogic='@DocStatus@=CO', IsSameLine='Y',Updated=TO_TIMESTAMP('2012-05-13 21:35:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1121202
;

-- 13/05/2012 21h35min31s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
UPDATE AD_Field SET AD_FieldGroup_ID=1100001, DisplayLogic='@DocStatus@=CO',Updated=TO_TIMESTAMP('2012-05-13 21:35:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1121193
;

-- 13/05/2012 21h35min37s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
UPDATE AD_Field SET AD_FieldGroup_ID=1100001, DisplayLogic='@DocStatus@=CO', IsSameLine='Y',Updated=TO_TIMESTAMP('2012-05-13 21:35:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1121194
;

-- 13/05/2012 21h35min42s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
UPDATE AD_Field SET AD_FieldGroup_ID=1100001, DisplayLogic='@DocStatus@=CO',Updated=TO_TIMESTAMP('2012-05-13 21:35:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1121207
;

-- 13/05/2012 21h35min48s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
UPDATE AD_Field SET AD_FieldGroup_ID=1100001, DisplayLogic='@DocStatus@=CO', IsSameLine='Y',Updated=TO_TIMESTAMP('2012-05-13 21:35:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1121205
;

-- 13/05/2012 21h36min34s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1122488,1100018,0,17,1100004,1120247,'lbr_NFeStatus',TO_TIMESTAMP('2012-05-13 21:36:33','YYYY-MM-DD HH24:MI:SS'),100,'Status of NFe','LBRA',3,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','NFe Status',0,TO_TIMESTAMP('2012-05-13 21:36:33','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 13/05/2012 21h36min34s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1122488 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 13/05/2012 21h36min37s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
ALTER TABLE LBR_CCe ADD COLUMN lbr_NFeStatus VARCHAR(3) DEFAULT NULL 
;

-- 13/05/2012 21h37min27s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1122489,3020,0,10,1120247,'Status',TO_TIMESTAMP('2012-05-13 21:37:27','YYYY-MM-DD HH24:MI:SS'),100,'Status of the currently running check','LBRA',255,'Status of the currently running check','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Status',0,TO_TIMESTAMP('2012-05-13 21:37:27','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 13/05/2012 21h37min27s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1122489 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 13/05/2012 21h37min32s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
ALTER TABLE LBR_CCe ADD COLUMN Status VARCHAR(255) DEFAULT NULL 
;

-- 13/05/2012 21h37min45s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1122488,1121208,0,1120049,TO_TIMESTAMP('2012-05-13 21:37:44','YYYY-MM-DD HH24:MI:SS'),100,'Status of NFe',3,'LBRA','Y','Y','Y','N','N','N','N','N','NFe Status',TO_TIMESTAMP('2012-05-13 21:37:44','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 13/05/2012 21h37min45s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1121208 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 13/05/2012 21h37min46s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1122489,1121209,0,1120049,TO_TIMESTAMP('2012-05-13 21:37:45','YYYY-MM-DD HH24:MI:SS'),100,'Status of the currently running check',255,'LBRA','Status of the currently running check','Y','Y','Y','N','N','N','N','N','Status',TO_TIMESTAMP('2012-05-13 21:37:45','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 13/05/2012 21h37min46s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1121209 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 13/05/2012 21h37min58s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1121209
;

-- 13/05/2012 21h37min58s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
UPDATE AD_Field SET SeqNo=100,IsDisplayed='Y' WHERE AD_Field_ID=1121208
;

-- 13/05/2012 21h37min58s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
UPDATE AD_Field SET SeqNo=110,IsDisplayed='Y' WHERE AD_Field_ID=1121201
;

-- 13/05/2012 21h37min58s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
UPDATE AD_Field SET SeqNo=120,IsDisplayed='Y' WHERE AD_Field_ID=1121202
;

-- 13/05/2012 21h37min58s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
UPDATE AD_Field SET SeqNo=130,IsDisplayed='Y' WHERE AD_Field_ID=1121193
;

-- 13/05/2012 21h37min58s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
UPDATE AD_Field SET SeqNo=140,IsDisplayed='Y' WHERE AD_Field_ID=1121194
;

-- 13/05/2012 21h37min58s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
UPDATE AD_Field SET SeqNo=150,IsDisplayed='Y' WHERE AD_Field_ID=1121207
;

-- 13/05/2012 21h37min58s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
UPDATE AD_Field SET SeqNo=160,IsDisplayed='Y' WHERE AD_Field_ID=1121205
;

-- 13/05/2012 21h38min18s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
UPDATE AD_Field SET AD_FieldGroup_ID=1100001, DisplayLength=60, DisplayLogic='@DocStatus@=CO',Updated=TO_TIMESTAMP('2012-05-13 21:38:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1121208
;

-- 13/05/2012 21h38min48s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
INSERT INTO AD_Menu (AD_Client_ID,AD_Menu_ID,AD_Org_ID,AD_Window_ID,"action",Created,CreatedBy,EntityType,IsActive,IsCentrallyMaintained,IsReadOnly,IsSOTrx,IsSummary,Name,Updated,UpdatedBy) VALUES (0,1120051,0,1120053,'W',TO_TIMESTAMP('2012-05-13 21:38:47','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Y','N','N','N','Carta de Correcao',TO_TIMESTAMP('2012-05-13 21:38:47','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 13/05/2012 21h38min48s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
INSERT INTO AD_Menu_Trl (AD_Language,AD_Menu_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Menu_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Menu t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Menu_ID=1120051 AND NOT EXISTS (SELECT * FROM AD_Menu_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Menu_ID=t.AD_Menu_ID)
;

-- 13/05/2012 21h38min48s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo) SELECT t.AD_Client_ID, 0, 'Y', CURRENT_TIMESTAMP, 100, CURRENT_TIMESTAMP, 100,t.AD_Tree_ID, 1120051, 0, 999 FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=1120051)
;

-- 13/05/2012 21h38min56s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
UPDATE AD_Menu_Trl SET IsTranslated='Y',Name='Carta de Correção',Updated=TO_TIMESTAMP('2012-05-13 21:38:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=1120051 AND AD_Language='pt_BR'
;

-- 13/05/2012 21h39min24s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=0, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=1120000
;

-- 13/05/2012 21h39min24s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=1, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=1100001
;

-- 13/05/2012 21h39min24s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=2, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=1000036
;

-- 13/05/2012 21h39min24s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=3, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=1120051
;

-- 13/05/2012 21h39min24s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=4, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=1000020
;

-- 13/05/2012 21h39min24s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=5, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=1000026
;

-- 13/05/2012 21h39min24s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=6, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=1000033
;

-- 13/05/2012 21h39min24s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=7, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=1000024
;

-- 13/05/2012 21h39min24s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=8, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=1000025
;

-- 13/05/2012 21h39min24s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=9, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=1000032
;

-- 13/05/2012 21h39min24s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=10, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=1000022
;

-- 13/05/2012 21h39min24s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=11, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=1000027
;

-- 13/05/2012 21h39min24s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=12, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=1000038
;

-- 13/05/2012 21h39min24s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=13, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=1120002
;

-- 13/05/2012 21h39min24s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
UPDATE AD_TreeNodeMM SET Parent_ID=1000023, SeqNo=14, Updated=CURRENT_TIMESTAMP WHERE AD_Tree_ID=10 AND Node_ID=1120001
;

-- 13/05/2012 21h41min37s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
UPDATE AD_Field SET SeqNo=50,IsDisplayed='Y' WHERE AD_Field_ID=1121199
;

-- 13/05/2012 21h41min37s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
UPDATE AD_Field SET SeqNo=60,IsDisplayed='Y' WHERE AD_Field_ID=1121206
;

-- 13/05/2012 21h41min37s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y' WHERE AD_Field_ID=1121197
;

-- 13/05/2012 21h41min49s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2012-05-13 21:41:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1121205
;

-- 13/05/2012 21h41min52s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2012-05-13 21:41:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1121207
;

-- 13/05/2012 21h41min55s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2012-05-13 21:41:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1121194
;

-- 13/05/2012 21h41min58s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2012-05-13 21:41:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1121193
;

-- 13/05/2012 21h42min2s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2012-05-13 21:42:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1121202
;

-- 13/05/2012 21h42min5s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2012-05-13 21:42:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1121201
;

-- 13/05/2012 21h42min8s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2012-05-13 21:42:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1121208
;

-- 13/05/2012 21h42min15s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2012-05-13 21:42:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1121200
;

-- 13/05/2012 21h42min23s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2012-05-13 21:42:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1121206
;

-- 13/05/2012 21h43min3s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
UPDATE AD_Column SET AD_Reference_ID=28,Updated=TO_TIMESTAMP('2012-05-13 21:43:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1122486
;

-- 13/05/2012 21h43min33s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2012-05-13 21:43:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1121192
;

-- 13/05/2012 21h43min52s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
UPDATE AD_Column SET AD_Reference_ID=30, AD_Reference_Value_ID=1000026,Updated=TO_TIMESTAMP('2012-05-13 21:43:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1122476
;

-- 13/05/2012 21h45min19s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
INSERT INTO AD_Val_Rule (AD_Client_ID,AD_Org_ID,AD_Val_Rule_ID,Code,Created,CreatedBy,EntityType,IsActive,Name,Type,Updated,UpdatedBy) VALUES (0,0,1120030,'LBR_NotaFiscal.LBR_NFeStatus=''100''',TO_TIMESTAMP('2012-05-13 21:45:17','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','LBR_NotaFiscal (NF-e Authorized)','S',TO_TIMESTAMP('2012-05-13 21:45:17','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 13/05/2012 21h45min31s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
UPDATE AD_Column SET AD_Val_Rule_ID=1120030,Updated=TO_TIMESTAMP('2012-05-13 21:45:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1122476
;

-- 13/05/2012 21h46min11s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
UPDATE AD_Column SET AD_Reference_ID=14,Updated=TO_TIMESTAMP('2012-05-13 21:46:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1122478
;

-- 13/05/2012 21h48min14s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
UPDATE AD_Column SET AD_Reference_Value_ID=302,Updated=TO_TIMESTAMP('2012-05-13 21:48:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1122486
;

-- 13/05/2012 21h48min36s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
UPDATE AD_Column SET AD_Reference_ID=17, AD_Reference_Value_ID=131,Updated=TO_TIMESTAMP('2012-05-13 21:48:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1122485
;

-- 13/05/2012 21h48min46s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
UPDATE AD_Column SET AD_Reference_Value_ID=135,Updated=TO_TIMESTAMP('2012-05-13 21:48:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1122486
;

-- 13/05/2012 22h29min45s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
INSERT INTO AD_Workflow (AD_Client_ID,AD_Org_ID,AD_Table_ID,AD_Workflow_ID,AccessLevel,Author,Cost,Created,CreatedBy,Description,DocumentNo,Duration,DurationUnit,EntityType,IsActive,IsBetaFunctionality,IsDefault,IsValid,Name,PublishStatus,Updated,UpdatedBy,Value,Version,WaitingTime,WorkflowType,WorkingTime) VALUES (0,0,1120247,1120007,'1','Kenos Ltda',0,TO_TIMESTAMP('2012-05-13 22:29:43','YYYY-MM-DD HH24:MI:SS'),100,'(Standard Process CCe)','10000000',1,'D','LBRA','Y','N','N','N','Process LBR_CCe','T',TO_TIMESTAMP('2012-05-13 22:29:43','YYYY-MM-DD HH24:MI:SS'),100,'Process LBR_CCe',0,0,'P',0)
;

-- 13/05/2012 22h29min45s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
INSERT INTO AD_Workflow_Trl (AD_Language,AD_Workflow_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Workflow_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Workflow t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Workflow_ID=1120007 AND NOT EXISTS (SELECT * FROM AD_Workflow_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Workflow_ID=t.AD_Workflow_ID)
;

-- 13/05/2012 22h31min12s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
INSERT INTO AD_WF_Node (AD_Client_ID,AD_Org_ID,AD_WF_Node_ID,AD_Workflow_ID,"action",Cost,Created,CreatedBy,Duration,EntityType,IsActive,IsCentrallyMaintained,JoinElement,"limit",Name,SplitElement,Updated,UpdatedBy,Value,WaitingTime,XPosition,YPosition) VALUES (0,0,1120017,1120007,'Z',0,TO_TIMESTAMP('2012-05-13 22:31:10','YYYY-MM-DD HH24:MI:SS'),100,0,'LBRA','Y','Y','X',0,'(Start)','X',TO_TIMESTAMP('2012-05-13 22:31:10','YYYY-MM-DD HH24:MI:SS'),100,'(Start)',0,0,0)
;

-- 13/05/2012 22h31min12s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
INSERT INTO AD_WF_Node_Trl (AD_Language,AD_WF_Node_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_WF_Node_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_WF_Node t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_WF_Node_ID=1120017 AND NOT EXISTS (SELECT * FROM AD_WF_Node_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_WF_Node_ID=t.AD_WF_Node_ID)
;

-- 13/05/2012 22h31min20s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
INSERT INTO AD_WF_Node (AD_Client_ID,AD_Org_ID,AD_WF_Node_ID,AD_Workflow_ID,"action",Cost,Created,CreatedBy,Duration,EntityType,IsActive,IsCentrallyMaintained,JoinElement,"limit",Name,SplitElement,Updated,UpdatedBy,Value,WaitingTime,XPosition,YPosition) VALUES (0,0,1120018,1120007,'Z',0,TO_TIMESTAMP('2012-05-13 22:31:19','YYYY-MM-DD HH24:MI:SS'),100,0,'LBRA','Y','Y','X',0,'(DocAuto)','X',TO_TIMESTAMP('2012-05-13 22:31:19','YYYY-MM-DD HH24:MI:SS'),100,'(DocAuto)',0,0,0)
;

-- 13/05/2012 22h31min20s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
INSERT INTO AD_WF_Node_Trl (AD_Language,AD_WF_Node_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_WF_Node_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_WF_Node t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_WF_Node_ID=1120018 AND NOT EXISTS (SELECT * FROM AD_WF_Node_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_WF_Node_ID=t.AD_WF_Node_ID)
;

-- 13/05/2012 22h31min30s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
INSERT INTO AD_WF_Node (AD_Client_ID,AD_Org_ID,AD_WF_Node_ID,AD_Workflow_ID,"action",Cost,Created,CreatedBy,Duration,EntityType,IsActive,IsCentrallyMaintained,JoinElement,"limit",Name,SplitElement,Updated,UpdatedBy,Value,WaitingTime,XPosition,YPosition) VALUES (0,0,1120019,1120007,'Z',0,TO_TIMESTAMP('2012-05-13 22:31:29','YYYY-MM-DD HH24:MI:SS'),100,0,'LBRA','Y','Y','X',0,'(DocPrepare)','X',TO_TIMESTAMP('2012-05-13 22:31:29','YYYY-MM-DD HH24:MI:SS'),100,'(DocPrepare)',0,0,0)
;

-- 13/05/2012 22h31min30s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
INSERT INTO AD_WF_Node_Trl (AD_Language,AD_WF_Node_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_WF_Node_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_WF_Node t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_WF_Node_ID=1120019 AND NOT EXISTS (SELECT * FROM AD_WF_Node_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_WF_Node_ID=t.AD_WF_Node_ID)
;

-- 13/05/2012 22h31min40s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
INSERT INTO AD_WF_Node (AD_Client_ID,AD_Org_ID,AD_WF_Node_ID,AD_Workflow_ID,"action",Cost,Created,CreatedBy,Duration,EntityType,IsActive,IsCentrallyMaintained,JoinElement,"limit",Name,SplitElement,Updated,UpdatedBy,Value,WaitingTime,XPosition,YPosition) VALUES (0,0,1120020,1120007,'Z',0,TO_TIMESTAMP('2012-05-13 22:31:39','YYYY-MM-DD HH24:MI:SS'),100,0,'LBRA','Y','Y','X',0,'(DocComplete)','X',TO_TIMESTAMP('2012-05-13 22:31:39','YYYY-MM-DD HH24:MI:SS'),100,'(DocComplete)',0,0,0)
;

-- 13/05/2012 22h31min40s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
INSERT INTO AD_WF_Node_Trl (AD_Language,AD_WF_Node_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_WF_Node_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_WF_Node t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_WF_Node_ID=1120020 AND NOT EXISTS (SELECT * FROM AD_WF_Node_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_WF_Node_ID=t.AD_WF_Node_ID)
;

-- 13/05/2012 22h31min46s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
INSERT INTO AD_WF_NodeNext (AD_Client_ID,AD_Org_ID,AD_WF_Next_ID,AD_WF_NodeNext_ID,AD_WF_Node_ID,Created,CreatedBy,EntityType,IsActive,IsStdUserWorkflow,SeqNo,Updated,UpdatedBy) VALUES (0,0,1120018,1120013,1120017,TO_TIMESTAMP('2012-05-13 22:31:46','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','N',10,TO_TIMESTAMP('2012-05-13 22:31:46','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 13/05/2012 22h31min50s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
INSERT INTO AD_WF_NodeNext (AD_Client_ID,AD_Org_ID,AD_WF_Next_ID,AD_WF_NodeNext_ID,AD_WF_Node_ID,Created,CreatedBy,EntityType,IsActive,IsStdUserWorkflow,SeqNo,Updated,UpdatedBy) VALUES (0,0,1120019,1120014,1120017,TO_TIMESTAMP('2012-05-13 22:31:49','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','N',10,TO_TIMESTAMP('2012-05-13 22:31:49','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 13/05/2012 22h31min53s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
INSERT INTO AD_WF_NodeNext (AD_Client_ID,AD_Org_ID,AD_WF_Next_ID,AD_WF_NodeNext_ID,AD_WF_Node_ID,Created,CreatedBy,EntityType,IsActive,IsStdUserWorkflow,SeqNo,Updated,UpdatedBy) VALUES (0,0,1120020,1120015,1120019,TO_TIMESTAMP('2012-05-13 22:31:52','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','N',10,TO_TIMESTAMP('2012-05-13 22:31:52','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 13/05/2012 22h31min57s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
UPDATE AD_WF_Node SET XPosition=5, YPosition=5,Updated=TO_TIMESTAMP('2012-05-13 22:31:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_Node_ID=1120020
;

-- 13/05/2012 22h31min57s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
UPDATE AD_WF_Node SET XPosition=230, YPosition=5,Updated=TO_TIMESTAMP('2012-05-13 22:31:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_Node_ID=1120019
;

-- 13/05/2012 22h31min57s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
UPDATE AD_WF_Node SET XPosition=5, YPosition=105,Updated=TO_TIMESTAMP('2012-05-13 22:31:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_Node_ID=1120018
;

-- 13/05/2012 22h31min57s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
UPDATE AD_WF_Node SET XPosition=230, YPosition=105,Updated=TO_TIMESTAMP('2012-05-13 22:31:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_Node_ID=1120017
;

-- 13/05/2012 22h32min23s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
UPDATE AD_Workflow SET AD_WF_Node_ID=1120017, IsValid='Y',Updated=TO_TIMESTAMP('2012-05-13 22:32:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Workflow_ID=1120007
;

-- 13/05/2012 22h32min35s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
UPDATE AD_WF_NodeNext SET SeqNo=100,Updated=TO_TIMESTAMP('2012-05-13 22:32:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_NodeNext_ID=1120013
;

-- 13/05/2012 22h32min49s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
UPDATE AD_WF_Node SET "action"='D', DocAction='PR',Updated=TO_TIMESTAMP('2012-05-13 22:32:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_Node_ID=1120019
;

-- 13/05/2012 22h33min1s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
UPDATE AD_WF_Node SET "action"='D', DocAction='CO',Updated=TO_TIMESTAMP('2012-05-13 22:33:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_Node_ID=1120020
;

-- 13/05/2012 22h33min20s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
UPDATE AD_WF_Node SET "action"='D', DocAction='--',Updated=TO_TIMESTAMP('2012-05-13 22:33:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_Node_ID=1120018
;

-- 13/05/2012 22h33min51s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
INSERT INTO AD_Process (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_Workflow_ID,AccessLevel,Created,CreatedBy,EntityType,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value) VALUES (0,0,1120037,1120007,'1',TO_TIMESTAMP('2012-05-13 22:33:49','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','N','N','N','N','Process CCe','Y',0,0,TO_TIMESTAMP('2012-05-13 22:33:49','YYYY-MM-DD HH24:MI:SS'),100,'LBR_CCe Process')
;

-- 13/05/2012 22h33min51s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=1120037 AND NOT EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_ID=t.AD_Process_ID)
;

-- 13/05/2012 22h34min2s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
UPDATE AD_Workflow SET IsValid='Y', Name='Process_LBR_CCe', Value='Process_LBR_CCe',Updated=TO_TIMESTAMP('2012-05-13 22:34:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Workflow_ID=1120007
;

-- 13/05/2012 22h34min2s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
UPDATE AD_Workflow_Trl SET IsTranslated='N' WHERE AD_Workflow_ID=1120007
;

-- 13/05/2012 22h34min2s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
UPDATE AD_Workflow_Trl SET Description='(Standard Process CCe)',Help=NULL,Name='Process_LBR_CCe',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Workflow_ID=1120007
;

-- 13/05/2012 22h34min34s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
UPDATE AD_Column SET AD_Process_ID=1120037,Updated=TO_TIMESTAMP('2012-05-13 22:34:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1122486
;

-- 13/05/2012 22h53min44s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
INSERT INTO t_alter_column values('lbr_cce','Status','VARCHAR(255)',null,'NULL')
;

-- 14/05/2012 0h34min45s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
UPDATE AD_Field SET DisplayLogic='@DocStatus@!CO',Updated=TO_TIMESTAMP('2012-05-14 00:34:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1121198
;

-- 14/05/2012 0h35min48s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
UPDATE AD_Field SET DisplayLength=22,Updated=TO_TIMESTAMP('2012-05-14 00:35:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1121194
;

-- 14/05/2012 0h35min51s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
UPDATE AD_Field SET DisplayLength=22,Updated=TO_TIMESTAMP('2012-05-14 00:35:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1121193
;

-- 14/05/2012 0h35min54s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
UPDATE AD_Field SET DisplayLength=22,Updated=TO_TIMESTAMP('2012-05-14 00:35:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1121202
;

-- 14/05/2012 0h35min58s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
UPDATE AD_Field SET DisplayLength=22,Updated=TO_TIMESTAMP('2012-05-14 00:35:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1121201
;

-- 20/05/2012 18h34min13s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
UPDATE AD_Field SET DisplayLogic=NULL,Updated=TO_TIMESTAMP('2012-05-20 18:34:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1121208
;

-- 20/05/2012 18h34min18s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
UPDATE AD_Field SET DisplayLogic=NULL,Updated=TO_TIMESTAMP('2012-05-20 18:34:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1121198
;

-- 20/05/2012 18h34min32s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
UPDATE AD_Field SET DisplayLogic=NULL,Updated=TO_TIMESTAMP('2012-05-20 18:34:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1121205
;

-- 20/05/2012 18h34min35s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
UPDATE AD_Field SET DisplayLogic=NULL,Updated=TO_TIMESTAMP('2012-05-20 18:34:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1121207
;

-- 20/05/2012 19h2min49s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1122522,290,0,10,1120247,'DocumentNo',TO_TIMESTAMP('2012-05-20 19:02:47','YYYY-MM-DD HH24:MI:SS'),100,'Document sequence number of the document','LBRA',10,'The document number is usually automatically generated by the system and determined by the document type of the document. If the document is not saved, the preliminary number is displayed in "<>".

If the document type of your document has no automatic document sequence defined, the field is empty if you create a new document. This is for documents which usually have an external number (like vendor invoice).  If you leave the field empty, the system will generate a document number for you. The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Document No',0,TO_TIMESTAMP('2012-05-20 19:02:47','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 20/05/2012 19h2min50s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1122522 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 20/05/2012 19h3min17s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
UPDATE AD_Column SET IsMandatory='Y',Updated=TO_TIMESTAMP('2012-05-20 19:03:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1122522
;

-- 20/05/2012 19h3min20s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
ALTER TABLE LBR_CCe ADD COLUMN DocumentNo VARCHAR(10) NOT NULL
;

-- 20/05/2012 19h3min38s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1122522,1121210,0,1120049,TO_TIMESTAMP('2012-05-20 19:03:37','YYYY-MM-DD HH24:MI:SS'),100,'Document sequence number of the document',10,'LBRA','The document number is usually automatically generated by the system and determined by the document type of the document. If the document is not saved, the preliminary number is displayed in "<>".

If the document type of your document has no automatic document sequence defined, the field is empty if you create a new document. This is for documents which usually have an external number (like vendor invoice).  If you leave the field empty, the system will generate a document number for you. The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).','Y','Y','Y','N','N','N','N','N','Document No',TO_TIMESTAMP('2012-05-20 19:03:37','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 20/05/2012 19h3min38s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1121210 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 20/05/2012 19h4min5s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
UPDATE AD_Field SET AD_FieldGroup_ID=1100002, SeqNo=25,Updated=TO_TIMESTAMP('2012-05-20 19:04:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1121210
;

-- 20/05/2012 19h21min31s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2012-05-20 19:21:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1121210
;

-- 21/05/2012 13h56min39s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
UPDATE AD_Val_Rule SET Code='LBR_NotaFiscal.LBR_NFeStatus=''100'' and LBR_NotaFiscal.AD_Org_ID=@AD_Org_ID@',Updated=TO_TIMESTAMP('2012-05-21 13:56:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=1120030
;

-- 22/05/2012 15h53min0s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
UPDATE AD_WF_Node SET DocAction='--',Updated=TO_TIMESTAMP('2012-05-22 15:53:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_WF_Node_ID=1120020
;

-- 22/05/2012 15h54min8s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
INSERT INTO AD_Process (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Process_ID,Classname,CopyFromProcess,Created,CreatedBy,EntityType,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value) VALUES ('3',0,0,1120040,'org.adempierelbr.process.PrintFromXML','N',TO_TIMESTAMP('2012-05-22 15:54:07','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','N','N','Y','N','Print From XML','Y',0,0,TO_TIMESTAMP('2012-05-22 15:54:07','YYYY-MM-DD HH24:MI:SS'),100,'10000001')
;

-- 22/05/2012 15h54min8s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=1120040 AND NOT EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_ID=t.AD_Process_ID)
;

-- 22/05/2012 15h54min18s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
UPDATE AD_Process SET Value='PrintFromXML',Updated=TO_TIMESTAMP('2012-05-22 15:54:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=1120040
;

-- 22/05/2012 15h54min27s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
UPDATE AD_Process_Trl SET Name='Imprime do XML',Updated=TO_TIMESTAMP('2012-05-22 15:54:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=1120040 AND AD_Language='pt_BR'
;

-- 22/05/2012 15h54min40s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
UPDATE AD_Process_Trl SET Name='Relatório do XML',Updated=TO_TIMESTAMP('2012-05-22 15:54:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=1120040 AND AD_Language='pt_BR'
;

-- 22/05/2012 15h55min23s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
UPDATE AD_Process SET EntityType='LBRA',Updated=TO_TIMESTAMP('2012-05-22 15:55:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=1120040
;

-- 22/05/2012 15h55min40s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
UPDATE AD_Tab SET AD_Process_ID=1120040,Updated=TO_TIMESTAMP('2012-05-22 15:55:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=1120049
;

-- 22/05/2012 15h56min34s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
UPDATE AD_Field_Trl SET Name='Empresa',Updated=TO_TIMESTAMP('2012-05-22 15:56:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1121196 AND AD_Language='pt_BR'
;

-- 22/05/2012 15h56min45s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
UPDATE AD_Field_Trl SET Name='Organização',Updated=TO_TIMESTAMP('2012-05-22 15:56:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1121204 AND AD_Language='pt_BR'
;

-- 22/05/2012 15h56min59s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
UPDATE AD_Field_Trl SET Name='Número Documento',Updated=TO_TIMESTAMP('2012-05-22 15:56:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1121210 AND AD_Language='pt_BR'
;

-- 22/05/2012 15h57min27s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
UPDATE AD_Field_Trl SET Name='Número do Documento',Updated=TO_TIMESTAMP('2012-05-22 15:57:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1121210 AND AD_Language='pt_BR'
;

-- 22/05/2012 15h57min37s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
UPDATE AD_Field_Trl SET Name='Ativo',Updated=TO_TIMESTAMP('2012-05-22 15:57:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1121192 AND AD_Language='pt_BR'
;

-- 22/05/2012 15h57min49s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
UPDATE AD_Field_Trl SET Name='Data do Documento',Updated=TO_TIMESTAMP('2012-05-22 15:57:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1121199 AND AD_Language='pt_BR'
;

-- 22/05/2012 15h57min59s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
UPDATE AD_Field_Trl SET Name='Sequência',Updated=TO_TIMESTAMP('2012-05-22 15:57:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1121206 AND AD_Language='pt_BR'
;

-- 22/05/2012 15h58min5s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
UPDATE AD_Field_Trl SET Name='Descrição',Updated=TO_TIMESTAMP('2012-05-22 15:58:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1121197 AND AD_Language='pt_BR'
;

-- 22/05/2012 15h58min14s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
UPDATE AD_Field_Trl SET Name='Estado do Documento',Updated=TO_TIMESTAMP('2012-05-22 15:58:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1121200 AND AD_Language='pt_BR'
;

-- 22/05/2012 15h58min25s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
UPDATE AD_Field_Trl SET Name='Ação do Documento',Updated=TO_TIMESTAMP('2012-05-22 15:58:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1121198 AND AD_Language='pt_BR'
;

-- 22/05/2012 16h4min9s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
UPDATE AD_Field_Trl SET Name='EMail',Updated=TO_TIMESTAMP('2012-05-22 16:04:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1121201 AND AD_Language='pt_BR'
;

-- 22/05/2012 16h4min56s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
UPDATE AD_Element_Trl SET Name='Protocolo NF-e',PrintName='Protocolo NF-e',Updated=TO_TIMESTAMP('2012-05-22 16:04:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1100027 AND AD_Language='pt_BR'
;

-- 22/05/2012 16h5min8s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
UPDATE AD_Field_Trl SET Name='Protocolo NF-e',Updated=TO_TIMESTAMP('2012-05-22 16:05:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1121202 AND AD_Language='pt_BR'
;

-- 22/05/2012 16h5min19s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
UPDATE AD_Field_Trl SET Name='Data da Transação',Updated=TO_TIMESTAMP('2012-05-22 16:05:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1121207 AND AD_Language='pt_BR'
;

-- 22/05/2012 16h5min27s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
UPDATE AD_Field_Trl SET Name='Processado',Updated=TO_TIMESTAMP('2012-05-22 16:05:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1121205 AND AD_Language='pt_BR'
;

-- 22/05/2012 16h10min22s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
UPDATE AD_Element_Trl SET Name='Estado da NF-e',PrintName='Estado da NF-e',Updated=TO_TIMESTAMP('2012-05-22 16:10:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1100018 AND AD_Language='pt_BR'
;

-- 22/05/2012 16h10min28s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
UPDATE AD_Element_Trl SET Description='Estado da NF-e',Updated=TO_TIMESTAMP('2012-05-22 16:10:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1100018 AND AD_Language='pt_BR'
;

-- 22/05/2012 16h10min37s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
UPDATE AD_Field_Trl SET Name='Estado da NF-e',Description='Estado da NF-e',Updated=TO_TIMESTAMP('2012-05-22 16:10:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1121208 AND AD_Language='pt_BR'
;

-- 23/05/2012 2h49min2s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121053,1100000,TO_TIMESTAMP('2012-05-23 02:49:01','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','ICP TrustStore (JKS)',TO_TIMESTAMP('2012-05-23 02:49:01','YYYY-MM-DD HH24:MI:SS'),100,'ICP')
;

-- 23/05/2012 2h49min2s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121053 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 24/05/2012 17h21min26s BRT
-- https://adempiere.atlassian.net/browse/LBR-39 - Carta de Correção Eletrônica
UPDATE AD_SysConfig SET Value='360-trunk/057-LBR-39_CartaDeCorrecao_CCe.sql' WHERE AD_SysConfig_ID=1100006
;

