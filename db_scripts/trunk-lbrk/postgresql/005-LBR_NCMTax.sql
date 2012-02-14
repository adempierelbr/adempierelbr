-- 28/10/2011 18h38min33s BRST
-- Tabela de Configuracao dos impostos por NCM
INSERT INTO AD_Table (AD_Client_ID,AD_Org_ID,AD_Table_ID,AD_Window_ID,AccessLevel,CopyColumnsFromTable,Created,CreatedBy,EntityType,ImportTable,IsActive,IsCentrallyMaintained,IsChangeLog,IsDeleteable,IsHighVolume,IsSecurityEnabled,IsView,LoadSeq,Name,ReplicationType,TableName,Updated,UpdatedBy) VALUES (0,0,1106000,1000002,'3','N',TO_TIMESTAMP('2011-10-28 18:38:31','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','N','Y','Y','N','Y','N','N','N',0,'NCM Tax','L','LBR_NCMTax',TO_TIMESTAMP('2011-10-28 18:38:31','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 28/10/2011 18h38min33s BRST
-- Tabela de Configuracao dos impostos por NCM
INSERT INTO AD_Table_Trl (AD_Language,AD_Table_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Table_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Table t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Table_ID=1106000 AND NOT EXISTS (SELECT * FROM AD_Table_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Table_ID=t.AD_Table_ID)
;

-- 28/10/2011 18h38min34s BRST
-- Tabela de Configuracao dos impostos por NCM
INSERT INTO AD_Sequence (AD_Client_ID,AD_Org_ID,AD_Sequence_ID,Created,CreatedBy,CurrentNext,CurrentNextSys,Description,IncrementNo,IsActive,IsAudited,IsAutoSequence,IsTableID,Name,StartNewYear,StartNo,Updated,UpdatedBy) VALUES (0,0,1106000,TO_TIMESTAMP('2011-10-28 18:38:33','YYYY-MM-DD HH24:MI:SS'),100,1000000,50000,'Table LBR_NCMTax',1,'Y','N','Y','Y','LBR_NCMTax','N',1000000,TO_TIMESTAMP('2011-10-28 18:38:33','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 28/10/2011 18h41min48s BRST
-- Tabela de Configuracao dos impostos por NCM
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,1106001,0,'LBR_NCMTax_ID',TO_TIMESTAMP('2011-10-28 18:41:47','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','NCM Tax','NCM Tax',TO_TIMESTAMP('2011-10-28 18:41:47','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 28/10/2011 18h41min48s BRST
-- Tabela de Configuracao dos impostos por NCM
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1106001 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 28/10/2011 18h41min49s BRST
-- Tabela de Configuracao dos impostos por NCM
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1106007,1106001,0,13,1106000,'LBR_NCMTax_ID',TO_TIMESTAMP('2011-10-28 18:41:47','YYYY-MM-DD HH24:MI:SS'),100,'LBRA',10,'Y','N','N','N','Y','Y','N','N','N','N','NCM Tax',TO_TIMESTAMP('2011-10-28 18:41:47','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 28/10/2011 18h41min49s BRST
-- Tabela de Configuracao dos impostos por NCM
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1106007 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 28/10/2011 18h41min50s BRST
-- Tabela de Configuracao dos impostos por NCM
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1106008,113,0,19,1106000,'AD_Org_ID',TO_TIMESTAMP('2011-10-28 18:41:49','YYYY-MM-DD HH24:MI:SS'),100,'Organizational entity within client','LBRA',10,'An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Y','N','N','N','N','Y','N','N','N','N','Organization',TO_TIMESTAMP('2011-10-28 18:41:49','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 28/10/2011 18h41min50s BRST
-- Tabela de Configuracao dos impostos por NCM
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1106008 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 28/10/2011 18h41min50s BRST
-- Tabela de Configuracao dos impostos por NCM
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1106009,102,0,19,1106000,'AD_Client_ID',TO_TIMESTAMP('2011-10-28 18:41:50','YYYY-MM-DD HH24:MI:SS'),100,'Client/Tenant for this installation.','LBRA',10,'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Y','N','N','N','N','Y','N','N','N','N','Client',TO_TIMESTAMP('2011-10-28 18:41:50','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 28/10/2011 18h41min50s BRST
-- Tabela de Configuracao dos impostos por NCM
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1106009 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 28/10/2011 18h41min51s BRST
-- Tabela de Configuracao dos impostos por NCM
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1106010,348,0,20,1106000,'IsActive',TO_TIMESTAMP('2011-10-28 18:41:50','YYYY-MM-DD HH24:MI:SS'),100,'The record is active in the system','LBRA',1,'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Y','N','N','N','N','Y','N','N','N','Y','Active',TO_TIMESTAMP('2011-10-28 18:41:50','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 28/10/2011 18h41min51s BRST
-- Tabela de Configuracao dos impostos por NCM
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1106010 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 28/10/2011 18h41min52s BRST
-- Tabela de Configuracao dos impostos por NCM
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1106011,245,0,16,1106000,'Created',TO_TIMESTAMP('2011-10-28 18:41:51','YYYY-MM-DD HH24:MI:SS'),100,'Date this record was created','LBRA',29,'The Created field indicates the date that this record was created.','Y','N','N','N','N','Y','N','N','N','N','Created',TO_TIMESTAMP('2011-10-28 18:41:51','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 28/10/2011 18h41min52s BRST
-- Tabela de Configuracao dos impostos por NCM
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1106011 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 28/10/2011 18h41min52s BRST
-- Tabela de Configuracao dos impostos por NCM
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1106012,246,0,18,110,1106000,'CreatedBy',TO_TIMESTAMP('2011-10-28 18:41:52','YYYY-MM-DD HH24:MI:SS'),100,'User who created this records','LBRA',10,'The Created By field indicates the user who created this record.','Y','N','N','N','N','Y','N','N','N','N','Created By',TO_TIMESTAMP('2011-10-28 18:41:52','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 28/10/2011 18h41min52s BRST
-- Tabela de Configuracao dos impostos por NCM
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1106012 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 28/10/2011 18h41min53s BRST
-- Tabela de Configuracao dos impostos por NCM
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1106013,607,0,16,1106000,'Updated',TO_TIMESTAMP('2011-10-28 18:41:52','YYYY-MM-DD HH24:MI:SS'),100,'Date this record was updated','LBRA',29,'The Updated field indicates the date that this record was updated.','Y','N','N','N','N','Y','N','N','N','N','Updated',TO_TIMESTAMP('2011-10-28 18:41:52','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 28/10/2011 18h41min53s BRST
-- Tabela de Configuracao dos impostos por NCM
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1106013 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 28/10/2011 18h41min53s BRST
-- Tabela de Configuracao dos impostos por NCM
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1106014,608,0,18,110,1106000,'UpdatedBy',TO_TIMESTAMP('2011-10-28 18:41:53','YYYY-MM-DD HH24:MI:SS'),100,'User who updated this records','LBRA',10,'The Updated By field indicates the user who updated this record.','Y','N','N','N','N','Y','N','N','N','N','Updated By',TO_TIMESTAMP('2011-10-28 18:41:53','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 28/10/2011 18h41min53s BRST
-- Tabela de Configuracao dos impostos por NCM
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1106014 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 28/10/2011 18h41min54s BRST
-- Tabela de Configuracao dos impostos por NCM
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1106015,275,0,10,1106000,'Description',TO_TIMESTAMP('2011-10-28 18:41:53','YYYY-MM-DD HH24:MI:SS'),100,'Optional short description of the record','LBRA',255,'A description is limited to 255 characters.','Y','N','N','N','N','N','N','N','N','Y','Description',TO_TIMESTAMP('2011-10-28 18:41:53','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 28/10/2011 18h41min54s BRST
-- Tabela de Configuracao dos impostos por NCM
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1106015 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 28/10/2011 18h41min54s BRST
-- Tabela de Configuracao dos impostos por NCM
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1106016,1000134,0,19,1106000,'LBR_NCM_ID',TO_TIMESTAMP('2011-10-28 18:41:54','YYYY-MM-DD HH24:MI:SS'),100,'Primary key table LBR_NCM','LBRA',10,'Primary key table LBR_NCM','Y','N','N','N','N','Y','N','N','N','Y','NCM',TO_TIMESTAMP('2011-10-28 18:41:54','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 28/10/2011 18h41min54s BRST
-- Tabela de Configuracao dos impostos por NCM
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1106016 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 28/10/2011 18h41min54s BRST
-- Tabela de Configuracao dos impostos por NCM
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1106017,1000094,0,19,1106000,'LBR_Tax_ID',TO_TIMESTAMP('2011-10-28 18:41:54','YYYY-MM-DD HH24:MI:SS'),100,'Primary key table LBR_Tax','LBRA',131089,'Primary key table LBR_Tax','Y','N','N','N','N','N','N','N','N','Y','Brazilian Tax',TO_TIMESTAMP('2011-10-28 18:41:54','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 28/10/2011 18h41min54s BRST
-- Tabela de Configuracao dos impostos por NCM
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1106017 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 28/10/2011 18h41min55s BRST
-- Tabela de Configuracao dos impostos por NCM
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1106018,617,0,16,1106000,'ValidFrom',TO_TIMESTAMP('2011-10-28 18:41:54','YYYY-MM-DD HH24:MI:SS'),100,'Valid from including this date (first day)','LBRA',29,'The Valid From date indicates the first day of a date range','Y','N','N','N','N','N','N','N','N','Y','Valid from',TO_TIMESTAMP('2011-10-28 18:41:54','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 28/10/2011 18h41min55s BRST
-- Tabela de Configuracao dos impostos por NCM
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1106018 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 28/10/2011 18h42min57s BRST
-- Tabela de Configuracao dos impostos por NCM
UPDATE AD_Column SET FieldLength=7,Updated=TO_TIMESTAMP('2011-10-28 18:42:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1106011
;

-- 28/10/2011 18h43min3s BRST
-- Tabela de Configuracao dos impostos por NCM
UPDATE AD_Column SET FieldLength=7,Updated=TO_TIMESTAMP('2011-10-28 18:43:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1106018
;

-- 28/10/2011 18h43min8s BRST
-- Tabela de Configuracao dos impostos por NCM
UPDATE AD_Column SET FieldLength=7,Updated=TO_TIMESTAMP('2011-10-28 18:43:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1106013
;

-- 28/10/2011 18h43min25s BRST
-- Tabela de Configuracao dos impostos por NCM
UPDATE AD_Column SET DefaultValue='N',Updated=TO_TIMESTAMP('2011-10-28 18:43:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1106010
;

-- 28/10/2011 18h43min30s BRST
-- Tabela de Configuracao dos impostos por NCM
UPDATE AD_Column SET DefaultValue='Y',Updated=TO_TIMESTAMP('2011-10-28 18:43:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1106010
;

-- 28/10/2011 18h43min44s BRST
-- Tabela de Configuracao dos impostos por NCM
CREATE TABLE LBR_NCMTax (AD_Client_ID NUMERIC(10) NOT NULL, AD_Org_ID NUMERIC(10) NOT NULL, Created TIMESTAMP NOT NULL, CreatedBy NUMERIC(10) NOT NULL, Description VARCHAR(255) DEFAULT NULL , IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, LBR_NCMTax_ID NUMERIC(10) NOT NULL, LBR_NCM_ID NUMERIC(10) NOT NULL, LBR_Tax_ID NUMERIC(10) DEFAULT NULL , Updated TIMESTAMP NOT NULL, UpdatedBy NUMERIC(10) NOT NULL, ValidFrom TIMESTAMP DEFAULT NULL , CONSTRAINT LBR_NCMTax_Key PRIMARY KEY (LBR_NCMTax_ID))
;

-- 28/10/2011 18h45min8s BRST
-- Tabela de Configuracao dos impostos por NCM
INSERT INTO AD_Tab (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_Tab_ID,AD_Table_ID,AD_Window_ID,Created,CreatedBy,EntityType,HasTree,ImportFields,IsActive,IsAdvancedTab,IsInfoTab,IsInsertRecord,IsReadOnly,IsSingleRow,IsSortTab,IsTranslationTab,Name,Processing,SeqNo,TabLevel,Updated,UpdatedBy) VALUES (0,1106016,0,1106000,1106000,1000002,TO_TIMESTAMP('2011-10-28 18:45:03','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','N','N','Y','N','N','Y','N','Y','N','N','NCM Tax','N',10,1,TO_TIMESTAMP('2011-10-28 18:45:03','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 28/10/2011 18h45min8s BRST
-- Tabela de Configuracao dos impostos por NCM
INSERT INTO AD_Tab_Trl (AD_Language,AD_Tab_ID, CommitWarning,Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Tab_ID, t.CommitWarning,t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Tab t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Tab_ID=1106000 AND NOT EXISTS (SELECT * FROM AD_Tab_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Tab_ID=t.AD_Tab_ID)
;

-- 28/10/2011 18h45min20s BRST
-- Tabela de Configuracao dos impostos por NCM
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1106010,1106007,0,1106000,TO_TIMESTAMP('2011-10-28 18:45:18','YYYY-MM-DD HH24:MI:SS'),100,'The record is active in the system',1,'LBRA','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Y','Y','Y','N','N','N','N','N','Active',TO_TIMESTAMP('2011-10-28 18:45:18','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 28/10/2011 18h45min20s BRST
-- Tabela de Configuracao dos impostos por NCM
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1106007 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 28/10/2011 18h45min21s BRST
-- Tabela de Configuracao dos impostos por NCM
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1106017,1106008,0,1106000,TO_TIMESTAMP('2011-10-28 18:45:20','YYYY-MM-DD HH24:MI:SS'),100,'Primary key table LBR_Tax',131089,'LBRA','Primary key table LBR_Tax','Y','Y','Y','N','N','N','N','N','Brazilian Tax',TO_TIMESTAMP('2011-10-28 18:45:20','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 28/10/2011 18h45min21s BRST
-- Tabela de Configuracao dos impostos por NCM
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1106008 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 28/10/2011 18h45min22s BRST
-- Tabela de Configuracao dos impostos por NCM
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1106009,1106009,0,1106000,TO_TIMESTAMP('2011-10-28 18:45:21','YYYY-MM-DD HH24:MI:SS'),100,'Client/Tenant for this installation.',10,'LBRA','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Y','Y','Y','N','N','N','N','N','Client',TO_TIMESTAMP('2011-10-28 18:45:21','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 28/10/2011 18h45min22s BRST
-- Tabela de Configuracao dos impostos por NCM
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1106009 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 28/10/2011 18h45min23s BRST
-- Tabela de Configuracao dos impostos por NCM
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1106015,1106010,0,1106000,TO_TIMESTAMP('2011-10-28 18:45:22','YYYY-MM-DD HH24:MI:SS'),100,'Optional short description of the record',255,'LBRA','A description is limited to 255 characters.','Y','Y','Y','N','N','N','N','N','Description',TO_TIMESTAMP('2011-10-28 18:45:22','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 28/10/2011 18h45min23s BRST
-- Tabela de Configuracao dos impostos por NCM
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1106010 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 28/10/2011 18h45min23s BRST
-- Tabela de Configuracao dos impostos por NCM
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1106016,1106011,0,1106000,TO_TIMESTAMP('2011-10-28 18:45:23','YYYY-MM-DD HH24:MI:SS'),100,'Primary key table LBR_NCM',10,'LBRA','Primary key table LBR_NCM','Y','Y','Y','N','N','N','N','N','NCM',TO_TIMESTAMP('2011-10-28 18:45:23','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 28/10/2011 18h45min23s BRST
-- Tabela de Configuracao dos impostos por NCM
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1106011 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 28/10/2011 18h45min24s BRST
-- Tabela de Configuracao dos impostos por NCM
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1106007,1106012,0,1106000,TO_TIMESTAMP('2011-10-28 18:45:23','YYYY-MM-DD HH24:MI:SS'),100,10,'LBRA','Y','Y','N','N','N','N','N','N','NCM Tax',TO_TIMESTAMP('2011-10-28 18:45:23','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 28/10/2011 18h45min24s BRST
-- Tabela de Configuracao dos impostos por NCM
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1106012 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 28/10/2011 18h45min25s BRST
-- Tabela de Configuracao dos impostos por NCM
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1106008,1106013,0,1106000,TO_TIMESTAMP('2011-10-28 18:45:24','YYYY-MM-DD HH24:MI:SS'),100,'Organizational entity within client',10,'LBRA','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Y','Y','Y','N','N','N','N','N','Organization',TO_TIMESTAMP('2011-10-28 18:45:24','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 28/10/2011 18h45min25s BRST
-- Tabela de Configuracao dos impostos por NCM
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1106013 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 28/10/2011 18h45min26s BRST
-- Tabela de Configuracao dos impostos por NCM
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1106018,1106014,0,1106000,TO_TIMESTAMP('2011-10-28 18:45:25','YYYY-MM-DD HH24:MI:SS'),100,'Valid from including this date (first day)',7,'LBRA','The Valid From date indicates the first day of a date range','Y','Y','Y','N','N','N','N','N','Valid from',TO_TIMESTAMP('2011-10-28 18:45:25','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 28/10/2011 18h45min26s BRST
-- Tabela de Configuracao dos impostos por NCM
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1106014 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 28/10/2011 18h45min34s BRST
-- Tabela de Configuracao dos impostos por NCM
UPDATE AD_Tab SET OrderByClause='ValidFrom DESC',Updated=TO_TIMESTAMP('2011-10-28 18:45:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=1106000
;

-- 28/10/2011 18h46min6s BRST
-- Tabela de Configuracao dos impostos por NCM
UPDATE AD_Field SET SeqNo=10,IsDisplayed='Y' WHERE AD_Field_ID=1106009
;

-- 28/10/2011 18h46min6s BRST
-- Tabela de Configuracao dos impostos por NCM
UPDATE AD_Field SET SeqNo=20,IsDisplayed='Y' WHERE AD_Field_ID=1106013
;

-- 28/10/2011 18h46min6s BRST
-- Tabela de Configuracao dos impostos por NCM
UPDATE AD_Field SET SeqNo=30,IsDisplayed='Y' WHERE AD_Field_ID=1106007
;

-- 28/10/2011 18h46min6s BRST
-- Tabela de Configuracao dos impostos por NCM
UPDATE AD_Field SET SeqNo=40,IsDisplayed='Y' WHERE AD_Field_ID=1106011
;

-- 28/10/2011 18h46min6s BRST
-- Tabela de Configuracao dos impostos por NCM
UPDATE AD_Field SET SeqNo=50,IsDisplayed='Y' WHERE AD_Field_ID=1106010
;

-- 28/10/2011 18h46min6s BRST
-- Tabela de Configuracao dos impostos por NCM
UPDATE AD_Field SET SeqNo=60,IsDisplayed='Y' WHERE AD_Field_ID=1106014
;

-- 28/10/2011 18h46min6s BRST
-- Tabela de Configuracao dos impostos por NCM
UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y' WHERE AD_Field_ID=1106008
;

-- 28/10/2011 18h46min12s BRST
-- Tabela de Configuracao dos impostos por NCM
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2011-10-28 18:46:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1106013
;

-- 28/10/2011 18h46min16s BRST
-- Tabela de Configuracao dos impostos por NCM
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2011-10-28 18:46:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1106011
;

-- 28/10/2011 18h46min21s BRST
-- Tabela de Configuracao dos impostos por NCM
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2011-10-28 18:46:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1106008
;

-- 28/10/2011 18h47min10s BRST
-- Tabela de Configuracao dos impostos por NCM
UPDATE AD_Tab SET SeqNo=20,Updated=TO_TIMESTAMP('2011-10-28 18:47:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=1106000
;

-- 28/10/2011 18h48min22s BRST
-- Tabela de Configuracao dos impostos por NCM
UPDATE AD_Column SET IsIdentifier='Y', SeqNo=1,Updated=TO_TIMESTAMP('2011-10-28 18:48:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1106017
;

-- 28/10/2011 18h48min47s BRST
-- Tabela de Configuracao dos impostos por NCM
UPDATE AD_Column SET IsIdentifier='N', IsUpdateable='N',Updated=TO_TIMESTAMP('2011-10-28 18:48:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000239
;

-- 28/10/2011 18h49min0s BRST
-- Tabela de Configuracao dos impostos por NCM
UPDATE AD_Column SET IsIdentifier='Y', SeqNo=1,Updated=TO_TIMESTAMP('2011-10-28 18:49:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000247
;

-- 28/10/2011 18h50min21s BRST
-- Tabela de Configuracao dos impostos por NCM
UPDATE AD_Field SET SeqNo=30,IsDisplayed='Y' WHERE AD_Field_ID=1106011
;

-- 28/10/2011 18h50min21s BRST
-- Tabela de Configuracao dos impostos por NCM
UPDATE AD_Field SET SeqNo=40,IsDisplayed='Y' WHERE AD_Field_ID=1106007
;

-- 28/10/2011 18h50min30s BRST
-- Tabela de Configuracao dos impostos por NCM
UPDATE AD_Field SET IsSameLine='N',Updated=TO_TIMESTAMP('2011-10-28 18:50:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1106011
;

-- 28/10/2011 18h50min34s BRST
-- Tabela de Configuracao dos impostos por NCM
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2011-10-28 18:50:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1106007
;

-- 28/10/2011 18h51min24s BRST
-- Tabela de Configuracao dos impostos por NCM
UPDATE AD_Column SET AD_Reference_ID=14,Updated=TO_TIMESTAMP('2011-10-28 18:51:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1106015
;

-- 28/10/2011 18h51min49s BRST
-- Tabela de Configuracao dos impostos por NCM
UPDATE AD_Field SET AD_FieldGroup_ID=111,Updated=TO_TIMESTAMP('2011-10-28 18:51:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1106010
;

-- 28/10/2011 18h51min53s BRST
-- Tabela de Configuracao dos impostos por NCM
UPDATE AD_Field SET AD_FieldGroup_ID=111,Updated=TO_TIMESTAMP('2011-10-28 18:51:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1106014
;

-- 28/10/2011 18h51min57s BRST
-- Tabela de Configuracao dos impostos por NCM
UPDATE AD_Field SET AD_FieldGroup_ID=111,Updated=TO_TIMESTAMP('2011-10-28 18:51:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1106008
;

-- 28/10/2011 18h52min38s BRST
-- Tabela de Configuracao dos impostos por NCM
UPDATE AD_Column SET IsMandatory='Y',Updated=TO_TIMESTAMP('2011-10-28 18:52:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1106018
;

-- 28/10/2011 18h52min51s BRST
-- Tabela de Configuracao dos impostos por NCM
UPDATE AD_Column SET AD_Reference_ID=1000006, FieldLength=10,Updated=TO_TIMESTAMP('2011-10-28 18:52:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1106017
;

-- 28/10/2011 18h54min4s BRST
-- Tabela de Configuracao dos impostos por NCM
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2011-10-28 18:54:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1106009
;

-- 28/10/2011 18h54min13s BRST
-- Tabela de Configuracao dos impostos por NCM
UPDATE AD_Field SET DefaultValue='0',Updated=TO_TIMESTAMP('2011-10-28 18:54:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1106013
;

-- 28/10/2011 18h54min55s BRST
-- Tabela de Configuracao dos impostos por NCM
UPDATE AD_Column SET AD_Reference_ID=15,Updated=TO_TIMESTAMP('2011-10-28 18:54:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1106018
;

