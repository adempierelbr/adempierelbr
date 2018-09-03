-- 05/06/2018 11h40min40s BRT
-- NF-e 4.0
INSERT INTO AD_Table (AD_Client_ID,AD_Org_ID,AD_Table_ID,AccessLevel,CopyColumnsFromTable,Created,CreatedBy,Description,EntityType,ImportTable,IsActive,IsCentrallyMaintained,IsChangeLog,IsDeleteable,IsHighVolume,IsSecurityEnabled,IsSystemLanguage,IsView,LoadSeq,Name,ReplicationType,TableName,Updated,UpdatedBy) VALUES (0,0,1120598,'3','N',TO_TIMESTAMP('2018-06-05 11:40:40','YYYY-MM-DD HH24:MI:SS'),100,'Material Attributes of Nota Fiscal Line','LBRA','N','Y','Y','N','Y','N','N','N','N',0,'NF Line Material Attributes','L','LBR_NFLineMA',TO_TIMESTAMP('2018-06-05 11:40:40','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 05/06/2018 11h40min40s BRT
-- NF-e 4.0
INSERT INTO AD_Table_Trl (AD_Language,AD_Table_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Table_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Table t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Table_ID=1120598 AND NOT EXISTS (SELECT * FROM AD_Table_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Table_ID=t.AD_Table_ID)
;

-- 05/06/2018 11h40min41s BRT
-- NF-e 4.0
INSERT INTO AD_Sequence (AD_Client_ID,AD_Org_ID,AD_Sequence_ID,Created,CreatedBy,CurrentNext,CurrentNextSys,Description,IncrementNo,IsActive,IsAudited,IsAutoSequence,IsTableID,Name,StartNewYear,StartNo,Updated,UpdatedBy) VALUES (0,0,1153598,TO_TIMESTAMP('2018-06-05 11:40:40','YYYY-MM-DD HH24:MI:SS'),100,2000000,50000,'Table LBR_NFLineMA',1,'Y','N','Y','Y','LBR_NFLineMA','N',2000000,TO_TIMESTAMP('2018-06-05 11:40:40','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 05/06/2018 11h42min19s BRT
-- NF-e 4.0
UPDATE AD_Table_Trl SET Name='Atributos da Linha da NF',IsTranslated='Y',Updated=TO_TIMESTAMP('2018-06-05 11:42:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=1120598 AND AD_Language='pt_BR'
;

-- 05/06/2018 11h42min42s BRT
-- NF-e 4.0
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,1122478,0,'LBR_NFLineMA_ID',TO_TIMESTAMP('2018-06-05 11:42:42','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','NF Line Material Attributes','NF Line Material Attributes',TO_TIMESTAMP('2018-06-05 11:42:42','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 05/06/2018 11h42min42s BRT
-- NF-e 4.0
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1122478 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 05/06/2018 11h42min42s BRT
-- NF-e 4.0
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1130289,1122478,0,13,1120598,'LBR_NFLineMA_ID',TO_TIMESTAMP('2018-06-05 11:42:42','YYYY-MM-DD HH24:MI:SS'),100,'LBRA',10,'Y','N','N','N','Y','Y','N','N','N','N','NF Line Material Attributes',TO_TIMESTAMP('2018-06-05 11:42:42','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 05/06/2018 11h42min42s BRT
-- NF-e 4.0
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1130289 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 05/06/2018 11h42min43s BRT
-- NF-e 4.0
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1130290,102,0,19,1120598,'AD_Client_ID',TO_TIMESTAMP('2018-06-05 11:42:43','YYYY-MM-DD HH24:MI:SS'),100,'Client/Tenant for this installation.','LBRA',10,'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Y','N','N','N','N','Y','N','N','N','N','Client',TO_TIMESTAMP('2018-06-05 11:42:43','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 05/06/2018 11h42min43s BRT
-- NF-e 4.0
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1130290 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 05/06/2018 11h42min43s BRT
-- NF-e 4.0
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1130291,113,0,19,1120598,'AD_Org_ID',TO_TIMESTAMP('2018-06-05 11:42:43','YYYY-MM-DD HH24:MI:SS'),100,'Organizational entity within client','LBRA',10,'An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Y','N','N','N','N','Y','N','N','N','N','Organization',TO_TIMESTAMP('2018-06-05 11:42:43','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 05/06/2018 11h42min43s BRT
-- NF-e 4.0
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1130291 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 05/06/2018 11h42min43s BRT
-- NF-e 4.0
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1130292,348,0,20,1120598,'IsActive',TO_TIMESTAMP('2018-06-05 11:42:43','YYYY-MM-DD HH24:MI:SS'),100,'The record is active in the system','LBRA',1,'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Y','N','N','N','N','Y','N','N','N','Y','Active',TO_TIMESTAMP('2018-06-05 11:42:43','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 05/06/2018 11h42min43s BRT
-- NF-e 4.0
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1130292 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 05/06/2018 11h42min44s BRT
-- NF-e 4.0
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1130293,245,0,16,1120598,'Created',TO_TIMESTAMP('2018-06-05 11:42:43','YYYY-MM-DD HH24:MI:SS'),100,'Date this record was created','LBRA',29,'The Created field indicates the date that this record was created.','Y','N','N','N','N','Y','N','N','N','N','Created',TO_TIMESTAMP('2018-06-05 11:42:43','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 05/06/2018 11h42min44s BRT
-- NF-e 4.0
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1130293 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 05/06/2018 11h42min44s BRT
-- NF-e 4.0
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1130294,246,0,18,110,1120598,'CreatedBy',TO_TIMESTAMP('2018-06-05 11:42:44','YYYY-MM-DD HH24:MI:SS'),100,'User who created this records','LBRA',10,'The Created By field indicates the user who created this record.','Y','N','N','N','N','Y','N','N','N','N','Created By',TO_TIMESTAMP('2018-06-05 11:42:44','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 05/06/2018 11h42min44s BRT
-- NF-e 4.0
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1130294 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 05/06/2018 11h42min44s BRT
-- NF-e 4.0
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1130295,607,0,16,1120598,'Updated',TO_TIMESTAMP('2018-06-05 11:42:44','YYYY-MM-DD HH24:MI:SS'),100,'Date this record was updated','LBRA',29,'The Updated field indicates the date that this record was updated.','Y','N','N','N','N','Y','N','N','N','N','Updated',TO_TIMESTAMP('2018-06-05 11:42:44','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 05/06/2018 11h42min44s BRT
-- NF-e 4.0
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1130295 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 05/06/2018 11h42min45s BRT
-- NF-e 4.0
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1130296,608,0,18,110,1120598,'UpdatedBy',TO_TIMESTAMP('2018-06-05 11:42:44','YYYY-MM-DD HH24:MI:SS'),100,'User who updated this records','LBRA',10,'The Updated By field indicates the user who updated this record.','Y','N','N','N','N','Y','N','N','N','N','Updated By',TO_TIMESTAMP('2018-06-05 11:42:44','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 05/06/2018 11h42min45s BRT
-- NF-e 4.0
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1130296 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 05/06/2018 11h42min45s BRT
-- NF-e 4.0
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1130297,2019,0,35,1120598,'M_AttributeSetInstance_ID',TO_TIMESTAMP('2018-06-05 11:42:45','YYYY-MM-DD HH24:MI:SS'),100,'Product Attribute Set Instance','LBRA',10,'The values of the actual Product Attribute Instances.  The product level attributes are defined on Product level.','Y','N','N','N','N','Y','N','N','N','Y','Attribute Set Instance',TO_TIMESTAMP('2018-06-05 11:42:45','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 05/06/2018 11h42min45s BRT
-- NF-e 4.0
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1130297 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 05/06/2018 11h44min25s BRT
-- NF-e 4.0
UPDATE AD_Element_Trl SET IsTranslated='Y',Name='Atributos da Linha da NF',PrintName='Atributos da Linha da NF',Description='Atributos para especificação dos produtos na Linha da NF',Help='Atributos para especificação dos produtos na Linha da NF devido a exigência na composição do XML da NF-e, exemplos: Medicamentos, Veículos, Combustíveis, etc.',Updated=TO_TIMESTAMP('2018-06-05 11:44:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1122478 AND AD_Language='pt_BR'
;

-- 05/06/2018 11h46min34s BRT
-- NF-e 4.0
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,1122479,0,'LBR_ProductionDate',TO_TIMESTAMP('2018-06-05 11:46:34','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Production Date','Production Date',TO_TIMESTAMP('2018-06-05 11:46:34','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 05/06/2018 11h46min34s BRT
-- NF-e 4.0
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1122479 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 05/06/2018 11h47min2s BRT
-- NF-e 4.0
UPDATE AD_Element_Trl SET IsTranslated='Y',Name='Data de Fabricação',PrintName='Data de Fabricação',Updated=TO_TIMESTAMP('2018-06-05 11:47:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1122479 AND AD_Language='pt_BR'
;

-- 05/06/2018 11h48min20s BRT
-- NF-e 4.0
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,1122480,0,'LBR_ANVISACode',TO_TIMESTAMP('2018-06-05 11:48:19','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','ANVISA Code','ANVISA Code',TO_TIMESTAMP('2018-06-05 11:48:19','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 05/06/2018 11h48min20s BRT
-- NF-e 4.0
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1122480 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 05/06/2018 11h48min42s BRT
-- NF-e 4.0
UPDATE AD_Element_Trl SET IsTranslated='Y',Name='Código ANVISA',PrintName='Código ANVISA',Description='Código de Produto da ANVISA',Updated=TO_TIMESTAMP('2018-06-05 11:48:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1122480 AND AD_Language='pt_BR'
;

-- 05/06/2018 11h48min53s BRT
-- NF-e 4.0
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,1122481,0,'LBR_ANPCode',TO_TIMESTAMP('2018-06-05 11:48:52','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','ANP Code','ANP Code',TO_TIMESTAMP('2018-06-05 11:48:52','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 05/06/2018 11h48min53s BRT
-- NF-e 4.0
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1122481 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 05/06/2018 11h49min6s BRT
-- NF-e 4.0
UPDATE AD_Element_Trl SET IsTranslated='Y',Name='Código da ANP',PrintName='Código da ANP',Description='Código de produto da ANP',Updated=TO_TIMESTAMP('2018-06-05 11:49:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1122481 AND AD_Language='pt_BR'
;

-- 05/06/2018 11h49min24s BRT
-- NF-e 4.0
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,1122482,0,'LBR_ANPDesc',TO_TIMESTAMP('2018-06-05 11:49:23','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','ANP Description','ANP Description',TO_TIMESTAMP('2018-06-05 11:49:23','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 05/06/2018 11h49min24s BRT
-- NF-e 4.0
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1122482 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 05/06/2018 11h49min38s BRT
-- NF-e 4.0
UPDATE AD_Element_Trl SET IsTranslated='Y',Name='Descrição na ANP',PrintName='Descrição na ANP',Description='Descrição do produto conforme ANP',Updated=TO_TIMESTAMP('2018-06-05 11:49:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1122482 AND AD_Language='pt_BR'
;

-- 05/06/2018 11h51min24s BRT
-- NF-e 4.0
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,1122483,0,'LBR_PercGLP',TO_TIMESTAMP('2018-06-05 11:51:24','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','% GLP Derivative','% GLP Derivative',TO_TIMESTAMP('2018-06-05 11:51:24','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 05/06/2018 11h51min24s BRT
-- NF-e 4.0
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1122483 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 05/06/2018 11h51min45s BRT
-- NF-e 4.0
UPDATE AD_Element_Trl SET IsTranslated='Y',Name='% GLP Derivado',PrintName='% GLP Derivado',Description='Percentual do GLP derivado do petróleo',Help='Percentual do GLP derivado do petróleo no produto GLP (cProdANP=210203001)',Updated=TO_TIMESTAMP('2018-06-05 11:51:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1122483 AND AD_Language='pt_BR'
;

-- 05/06/2018 11h52min36s BRT
-- NF-e 4.0
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,1122484,0,'LBR_PercGasN',TO_TIMESTAMP('2018-06-05 11:52:35','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','% Gas Interior','% Gas Interior',TO_TIMESTAMP('2018-06-05 11:52:35','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 05/06/2018 11h52min36s BRT
-- NF-e 4.0
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1122484 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 05/06/2018 11h52min59s BRT
-- NF-e 4.0
UPDATE AD_Element_Trl SET IsTranslated='Y',Name='% Gás Nacional',PrintName='% Gás Nacional',Description='Percentual de Gás Natural Nacional',Help='Percentual de Gás Natural Nacional – GLGNn para o produto GLP (cProdANP=210203001)',Updated=TO_TIMESTAMP('2018-06-05 11:52:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1122484 AND AD_Language='pt_BR'
;

-- 05/06/2018 11h53min25s BRT
-- NF-e 4.0
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,1122485,0,'LBR_PercGasI',TO_TIMESTAMP('2018-06-05 11:53:25','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','% Gas Imported','% Gas Imported',TO_TIMESTAMP('2018-06-05 11:53:25','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 05/06/2018 11h53min25s BRT
-- NF-e 4.0
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1122485 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 05/06/2018 11h53min40s BRT
-- NF-e 4.0
UPDATE AD_Element_Trl SET IsTranslated='Y',Name='% Gás Importado',PrintName='% Gás Importado',Description='Percentual de Gás Natural Importado',Help='Percentual de Gás Natural Importado – GLGNi para o produto GLP (cProdANP=210203001)',Updated=TO_TIMESTAMP('2018-06-05 11:53:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1122485 AND AD_Language='pt_BR'
;

-- 05/06/2018 11h54min42s BRT
-- NF-e 4.0
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,1122486,0,'LBR_StartAmt',TO_TIMESTAMP('2018-06-05 11:54:42','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Start Amount','Start Amount',TO_TIMESTAMP('2018-06-05 11:54:42','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 05/06/2018 11h54min42s BRT
-- NF-e 4.0
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1122486 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 05/06/2018 11h54min52s BRT
-- NF-e 4.0
UPDATE AD_Element_Trl SET IsTranslated='Y',Name='Valor de Partida',PrintName='Valor de Partida',Updated=TO_TIMESTAMP('2018-06-05 11:54:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1122486 AND AD_Language='pt_BR'
;

-- 05/06/2018 11h54min58s BRT
-- NF-e 4.0
UPDATE AD_Element_Trl SET Description='Valor de partida (cProdANP=210203001)',Help='Valor de partida (cProdANP=210203001)',Updated=TO_TIMESTAMP('2018-06-05 11:54:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1122486 AND AD_Language='pt_BR'
;

-- 05/06/2018 11h55min25s BRT
-- NF-e 4.0
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,Description,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,1122487,0,'LBR_CODIF',TO_TIMESTAMP('2018-06-05 11:55:24','YYYY-MM-DD HH24:MI:SS'),100,'Authorization Code from CODIF','LBRA','Y','CODIF','CODIF',TO_TIMESTAMP('2018-06-05 11:55:24','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 05/06/2018 11h55min25s BRT
-- NF-e 4.0
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1122487 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 05/06/2018 11h55min30s BRT
-- NF-e 4.0
UPDATE AD_Element_Trl SET IsTranslated='Y',Description='Código de autorização / registro do CODIF',Updated=TO_TIMESTAMP('2018-06-05 11:55:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1122487 AND AD_Language='pt_BR'
;

-- 05/06/2018 11h55min36s BRT
-- NF-e 4.0
UPDATE AD_Element_Trl SET Help='Código de autorização / registro do CODIF',Updated=TO_TIMESTAMP('2018-06-05 11:55:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1122487 AND AD_Language='pt_BR'
;

-- 05/06/2018 11h55min57s BRT
-- NF-e 4.0
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,1122488,0,'LBR_VeOperType',TO_TIMESTAMP('2018-06-05 11:55:57','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Operation Type','Operation Type',TO_TIMESTAMP('2018-06-05 11:55:57','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 05/06/2018 11h55min57s BRT
-- NF-e 4.0
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1122488 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 05/06/2018 11h56min9s BRT
-- NF-e 4.0
UPDATE AD_Element_Trl SET IsTranslated='Y',Name='Tipo da operação',PrintName='Tipo da operação',Updated=TO_TIMESTAMP('2018-06-05 11:56:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1122488 AND AD_Language='pt_BR'
;

-- 05/06/2018 11h56min23s BRT
-- NF-e 4.0
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,1122489,0,'LBR_VeChassis',TO_TIMESTAMP('2018-06-05 11:56:23','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Chassis','Chassis',TO_TIMESTAMP('2018-06-05 11:56:23','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 05/06/2018 11h56min23s BRT
-- NF-e 4.0
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1122489 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 05/06/2018 11h56min29s BRT
-- NF-e 4.0
UPDATE AD_Element_Trl SET IsTranslated='Y',Description='Chassi do veículo',Help='Chassi do veículo',Updated=TO_TIMESTAMP('2018-06-05 11:56:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1122489 AND AD_Language='pt_BR'
;

-- 05/06/2018 11h56min43s BRT
-- NF-e 4.0
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,1122490,0,'LBR_VeColorCode',TO_TIMESTAMP('2018-06-05 11:56:43','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Color Code','Color Code',TO_TIMESTAMP('2018-06-05 11:56:43','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 05/06/2018 11h56min43s BRT
-- NF-e 4.0
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1122490 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 05/06/2018 11h57min3s BRT
-- NF-e 4.0
UPDATE AD_Element_Trl SET IsTranslated='Y',Name='Código da Cor',PrintName='Código da Cor',Description='Código da Cor do Veículo na Montadora',Help='Código da Cor do Veículo na Montadora',Updated=TO_TIMESTAMP('2018-06-05 11:57:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1122490 AND AD_Language='pt_BR'
;

-- 05/06/2018 11h57min20s BRT
-- NF-e 4.0
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,1122491,0,'LBR_VeColorDesc',TO_TIMESTAMP('2018-06-05 11:57:20','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Color Description','Color Description',TO_TIMESTAMP('2018-06-05 11:57:20','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 05/06/2018 11h57min20s BRT
-- NF-e 4.0
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1122491 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 05/06/2018 11h57min25s BRT
-- NF-e 4.0
UPDATE AD_Element_Trl SET IsTranslated='Y',Name='Descrição da Cor',PrintName='Descrição da Cor',Updated=TO_TIMESTAMP('2018-06-05 11:57:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1122491 AND AD_Language='pt_BR'
;

-- 05/06/2018 11h57min47s BRT
-- NF-e 4.0
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,1122492,0,'LBR_VePower',TO_TIMESTAMP('2018-06-05 11:57:47','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Engine Power','Engine Power',TO_TIMESTAMP('2018-06-05 11:57:47','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 05/06/2018 11h57min47s BRT
-- NF-e 4.0
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1122492 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 05/06/2018 11h58min4s BRT
-- NF-e 4.0
UPDATE AD_Element_Trl SET IsTranslated='Y',Name='Potência Motor',PrintName='Potência Motor',Description='Potência Motor (CV)',Help='Potência Motor em CV',Updated=TO_TIMESTAMP('2018-06-05 11:58:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1122492 AND AD_Language='pt_BR'
;

-- 05/06/2018 11h58min11s BRT
-- NF-e 4.0
UPDATE AD_Element SET Name='Engine Power (CV)',Updated=TO_TIMESTAMP('2018-06-05 11:58:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1122492
;

-- 05/06/2018 11h58min11s BRT
-- NF-e 4.0
UPDATE AD_Element_Trl SET IsTranslated='N' WHERE AD_Element_ID=1122492
;

-- 05/06/2018 11h58min11s BRT
-- NF-e 4.0
UPDATE AD_Element_Trl SET Description=NULL,Help=NULL,Name='Engine Power (CV)',PO_Description=NULL,PO_Help=NULL,PO_Name=NULL,PO_PrintName=NULL,PrintName='Engine Power',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Element_ID=1122492
;

-- 05/06/2018 11h58min11s BRT
-- NF-e 4.0
UPDATE AD_Column SET ColumnName='LBR_VePower', Name='Engine Power (CV)', Description=NULL, Help=NULL WHERE AD_Element_ID=1122492
;

-- 05/06/2018 11h58min11s BRT
-- NF-e 4.0
UPDATE AD_Process_Para SET ColumnName='LBR_VePower', Name='Engine Power (CV)', Description=NULL, Help=NULL, AD_Element_ID=1122492 WHERE UPPER(ColumnName)='LBR_VEPOWER' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 05/06/2018 11h58min11s BRT
-- NF-e 4.0
UPDATE AD_Process_Para SET ColumnName='LBR_VePower', Name='Engine Power (CV)', Description=NULL, Help=NULL WHERE AD_Element_ID=1122492 AND IsCentrallyMaintained='Y'
;

-- 05/06/2018 11h58min11s BRT
-- NF-e 4.0
UPDATE AD_Field SET Name='Engine Power (CV)', Description=NULL, Help=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=1122492) AND IsCentrallyMaintained='Y'
;

-- 05/06/2018 11h58min11s BRT
-- NF-e 4.0
UPDATE AD_PrintFormatItem SET PrintName='Engine Power', Name='Engine Power (CV)' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=AD_PrintFormatItem.AD_Column_ID AND c.AD_Element_ID=1122492)
;

-- 05/06/2018 11h58min27s BRT
-- NF-e 4.0
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,1122493,0,'LBR_VeCylinder',TO_TIMESTAMP('2018-06-05 11:58:27','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Cylinder','Cylinder',TO_TIMESTAMP('2018-06-05 11:58:27','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 05/06/2018 11h58min27s BRT
-- NF-e 4.0
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1122493 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 05/06/2018 11h58min34s BRT
-- NF-e 4.0
UPDATE AD_Element_Trl SET IsTranslated='Y',Name='Cilindradas',PrintName='Cilindradas',Updated=TO_TIMESTAMP('2018-06-05 11:58:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1122493 AND AD_Language='pt_BR'
;

-- 05/06/2018 11h58min49s BRT
-- NF-e 4.0
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,1122494,0,'LBR_VeSerial',TO_TIMESTAMP('2018-06-05 11:58:49','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Vehicle Serial','Vehicle Serial',TO_TIMESTAMP('2018-06-05 11:58:49','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 05/06/2018 11h58min49s BRT
-- NF-e 4.0
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1122494 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 05/06/2018 11h59min17s BRT
-- NF-e 4.0
UPDATE AD_Element_Trl SET IsTranslated='Y',Name='Serial do Veículo',PrintName='Serial do Veículo',Description='Número de Série do Veículo',Help='Número de Série do Veículo',Updated=TO_TIMESTAMP('2018-06-05 11:59:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1122494 AND AD_Language='pt_BR'
;

-- 05/06/2018 11h59min32s BRT
-- NF-e 4.0
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,1122495,0,'LBR_VeTpFuel',TO_TIMESTAMP('2018-06-05 11:59:31','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Fuel Type','Fuel Type',TO_TIMESTAMP('2018-06-05 11:59:31','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 05/06/2018 11h59min32s BRT
-- NF-e 4.0
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1122495 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 05/06/2018 11h59min39s BRT
-- NF-e 4.0
UPDATE AD_Element_Trl SET IsTranslated='Y',Name='Tipo de combustível',PrintName='Tipo de combustível',Updated=TO_TIMESTAMP('2018-06-05 11:59:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1122495 AND AD_Language='pt_BR'
;

-- 05/06/2018 11h59min58s BRT
-- NF-e 4.0
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,1122496,0,'LBR_VeEngineNo',TO_TIMESTAMP('2018-06-05 11:59:58','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Engine Number','Engine Number',TO_TIMESTAMP('2018-06-05 11:59:58','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 05/06/2018 11h59min58s BRT
-- NF-e 4.0
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1122496 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 05/06/2018 12h0min3s BRT
-- NF-e 4.0
UPDATE AD_Element_Trl SET IsTranslated='Y',Name='Número de Motor',PrintName='Número de Motor',Updated=TO_TIMESTAMP('2018-06-05 12:00:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1122496 AND AD_Language='pt_BR'
;

-- 05/06/2018 12h0min23s BRT
-- NF-e 4.0
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,1122497,0,'LBR_VeTractionCap',TO_TIMESTAMP('2018-06-05 12:00:22','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Traction Capacity','Traction Capacity',TO_TIMESTAMP('2018-06-05 12:00:22','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 05/06/2018 12h0min23s BRT
-- NF-e 4.0
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1122497 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 05/06/2018 12h0min39s BRT
-- NF-e 4.0
UPDATE AD_Element_Trl SET IsTranslated='Y',Name='Capacidade de Tração',PrintName='Capacidade de Tração',Description='Capacidade Máxima de Tração',Help='Capacidade Máxima de Tração',Updated=TO_TIMESTAMP('2018-06-05 12:00:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1122497 AND AD_Language='pt_BR'
;

-- 05/06/2018 12h0min52s BRT
-- NF-e 4.0
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,1122498,0,'LBR_VeWheelBase',TO_TIMESTAMP('2018-06-05 12:00:52','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Wheel Base','Wheel Base',TO_TIMESTAMP('2018-06-05 12:00:52','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 05/06/2018 12h0min52s BRT
-- NF-e 4.0
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1122498 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 05/06/2018 12h1min1s BRT
-- NF-e 4.0
UPDATE AD_Element_Trl SET IsTranslated='Y',Name='Distância entre eixos',PrintName='Distância entre eixos',Updated=TO_TIMESTAMP('2018-06-05 12:01:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1122498 AND AD_Language='pt_BR'
;

-- 05/06/2018 12h1min31s BRT
-- NF-e 4.0
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,1122499,0,'LBR_VeYearModel',TO_TIMESTAMP('2018-06-05 12:01:31','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Year Model','Year Model',TO_TIMESTAMP('2018-06-05 12:01:31','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 05/06/2018 12h1min31s BRT
-- NF-e 4.0
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1122499 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 05/06/2018 12h1min46s BRT
-- NF-e 4.0
UPDATE AD_Element_Trl SET IsTranslated='Y',Name='Ano de Fabricação',PrintName='Ano de Fabricação',Description='Ano Modelo de Fabricação',Updated=TO_TIMESTAMP('2018-06-05 12:01:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1122499 AND AD_Language='pt_BR'
;

-- 05/06/2018 12h2min1s BRT
-- NF-e 4.0
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,1122500,0,'LBR_VeYearProduction',TO_TIMESTAMP('2018-06-05 12:02:01','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Year Production','Year Production',TO_TIMESTAMP('2018-06-05 12:02:01','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 05/06/2018 12h2min1s BRT
-- NF-e 4.0
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1122500 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 05/06/2018 12h2min10s BRT
-- NF-e 4.0
UPDATE AD_Element_Trl SET IsTranslated='Y',Name='Ano de Fabricação',PrintName='Ano de Fabricação',Updated=TO_TIMESTAMP('2018-06-05 12:02:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1122500 AND AD_Language='pt_BR'
;

-- 05/06/2018 12h3min34s BRT
-- NF-e 4.0
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,1122501,0,'LBR_VeTpPaint',TO_TIMESTAMP('2018-06-05 12:03:33','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Paint Type','Paint Type',TO_TIMESTAMP('2018-06-05 12:03:33','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 05/06/2018 12h3min34s BRT
-- NF-e 4.0
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1122501 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 05/06/2018 12h3min40s BRT
-- NF-e 4.0
UPDATE AD_Element_Trl SET IsTranslated='Y',Name='Tipo de Pintura',PrintName='Tipo de Pintura',Updated=TO_TIMESTAMP('2018-06-05 12:03:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1122501 AND AD_Language='pt_BR'
;

-- 05/06/2018 12h4min23s BRT
-- NF-e 4.0
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,1122502,0,'LBR_VeType',TO_TIMESTAMP('2018-06-05 12:04:23','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Vehicle Type','Vehicle Type',TO_TIMESTAMP('2018-06-05 12:04:23','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 05/06/2018 12h4min23s BRT
-- NF-e 4.0
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1122502 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 05/06/2018 12h4min50s BRT
-- NF-e 4.0
UPDATE AD_Element_Trl SET IsTranslated='Y',Name='Tipo de Veículo',PrintName='Tipo de Veículo',Updated=TO_TIMESTAMP('2018-06-05 12:04:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1122502 AND AD_Language='pt_BR'
;

-- 05/06/2018 12h5min9s BRT
-- NF-e 4.0
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,1122503,0,'LBR_VeKind',TO_TIMESTAMP('2018-06-05 12:05:09','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Vehicle Kind','Vehicle Kind',TO_TIMESTAMP('2018-06-05 12:05:09','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 05/06/2018 12h5min9s BRT
-- NF-e 4.0
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1122503 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 05/06/2018 12h5min51s BRT
-- NF-e 4.0
UPDATE AD_Element_Trl SET IsTranslated='Y',Name='Espécie de Veículo',PrintName='Espécie de Veículo',Updated=TO_TIMESTAMP('2018-06-05 12:05:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1122503 AND AD_Language='pt_BR'
;

-- 05/06/2018 12h6min25s BRT
-- NF-e 4.0
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,1122504,0,'LBR_VeVIN',TO_TIMESTAMP('2018-06-05 12:06:24','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','VIN','VIN',TO_TIMESTAMP('2018-06-05 12:06:24','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 05/06/2018 12h6min25s BRT
-- NF-e 4.0
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1122504 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 05/06/2018 12h6min27s BRT
-- NF-e 4.0
UPDATE AD_Element_Trl SET IsTranslated='Y',Updated=TO_TIMESTAMP('2018-06-05 12:06:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1122504 AND AD_Language='pt_BR'
;

-- 05/06/2018 12h6min45s BRT
-- NF-e 4.0
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,1122505,0,'LBR_VeCondition',TO_TIMESTAMP('2018-06-05 12:06:45','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Vehicle Condition','Vehicle Condition',TO_TIMESTAMP('2018-06-05 12:06:45','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 05/06/2018 12h6min45s BRT
-- NF-e 4.0
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1122505 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 05/06/2018 12h6min51s BRT
-- NF-e 4.0
UPDATE AD_Element_Trl SET IsTranslated='Y',Name='Condição do Veículo',PrintName='Condição do Veículo',Updated=TO_TIMESTAMP('2018-06-05 12:06:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1122505 AND AD_Language='pt_BR'
;

-- 05/06/2018 12h7min51s BRT
-- NF-e 4.0
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,1122506,0,'LBR_VeBrandCode',TO_TIMESTAMP('2018-06-05 12:07:51','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Brand Code','Brand Code',TO_TIMESTAMP('2018-06-05 12:07:51','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 05/06/2018 12h7min51s BRT
-- NF-e 4.0
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1122506 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 05/06/2018 12h7min58s BRT
-- NF-e 4.0
UPDATE AD_Element_Trl SET IsTranslated='Y',Name='Código Marca Modelo',PrintName='Código Marca Modelo',Updated=TO_TIMESTAMP('2018-06-05 12:07:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1122506 AND AD_Language='pt_BR'
;

-- 05/06/2018 12h8min17s BRT
-- NF-e 4.0
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,1122507,0,'LBR_VeColorDENAT',TO_TIMESTAMP('2018-06-05 12:08:16','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Color (DENAT)','Color (DENAT)',TO_TIMESTAMP('2018-06-05 12:08:16','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 05/06/2018 12h8min17s BRT
-- NF-e 4.0
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1122507 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 05/06/2018 12h9min14s BRT
-- NF-e 4.0
UPDATE AD_Element_Trl SET IsTranslated='Y',Name='Código da Cor DENATRAN',PrintName='Código da Cor DENATRAN',Description='Código da Cor DENATRAN',Updated=TO_TIMESTAMP('2018-06-05 12:09:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1122507 AND AD_Language='pt_BR'
;

-- 05/06/2018 12h10min22s BRT
-- NF-e 4.0
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,1122508,0,'LBR_VeMaxCapacity',TO_TIMESTAMP('2018-06-05 12:10:21','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Max. Capacity','Max. Capacity',TO_TIMESTAMP('2018-06-05 12:10:21','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 05/06/2018 12h10min22s BRT
-- NF-e 4.0
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1122508 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 05/06/2018 12h10min47s BRT
-- NF-e 4.0
UPDATE AD_Element_Trl SET IsTranslated='Y',Name='Lotação',PrintName='Lotação',Description='Capacidade máxima de lotação',Help='Capacidade máxima de lotação',Updated=TO_TIMESTAMP('2018-06-05 12:10:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1122508 AND AD_Language='pt_BR'
;

-- 05/06/2018 12h11min4s BRT
-- NF-e 4.0
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,1122509,0,'LBR_VeRestriction',TO_TIMESTAMP('2018-06-05 12:11:04','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Restriction','Restriction',TO_TIMESTAMP('2018-06-05 12:11:04','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 05/06/2018 12h11min4s BRT
-- NF-e 4.0
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1122509 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 05/06/2018 12h12min43s BRT
-- NF-e 4.0
UPDATE AD_Element_Trl SET IsTranslated='Y',Name='Restrição',PrintName='Restrição',Description='Restrição',Updated=TO_TIMESTAMP('2018-06-05 12:12:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1122509 AND AD_Language='pt_BR'
;

-- 05/06/2018 12h12min54s BRT
-- NF-e 4.0
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,1122510,0,'LBR_GunType',TO_TIMESTAMP('2018-06-05 12:12:54','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Gun Type','Gun Type',TO_TIMESTAMP('2018-06-05 12:12:54','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 05/06/2018 12h12min54s BRT
-- NF-e 4.0
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1122510 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 05/06/2018 12h13min16s BRT
-- NF-e 4.0
UPDATE AD_Element_Trl SET IsTranslated='Y',Name='Tipo de Arma',PrintName='Tipo de Arma',Description='Indicador do tipo de arma de fogo',Help='Indicador do tipo de arma de fogo',Updated=TO_TIMESTAMP('2018-06-05 12:13:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1122510 AND AD_Language='pt_BR'
;

-- 05/06/2018 12h13min27s BRT
-- NF-e 4.0
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,1122511,0,'LBR_GunSerial',TO_TIMESTAMP('2018-06-05 12:13:27','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Gun Serial','Gun Serial',TO_TIMESTAMP('2018-06-05 12:13:27','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 05/06/2018 12h13min27s BRT
-- NF-e 4.0
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1122511 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 05/06/2018 12h13min48s BRT
-- NF-e 4.0
UPDATE AD_Element_Trl SET IsTranslated='Y',Name='Serial da Arma',PrintName='Serial da Arma',Description='Número de série da arma',Help='Número de série da arma',Updated=TO_TIMESTAMP('2018-06-05 12:13:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1122511 AND AD_Language='pt_BR'
;

-- 05/06/2018 12h14min4s BRT
-- NF-e 4.0
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,1122512,0,'LBR_GunBarrel',TO_TIMESTAMP('2018-06-05 12:14:03','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Gun Barrel','Gun Barrel',TO_TIMESTAMP('2018-06-05 12:14:03','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 05/06/2018 12h14min4s BRT
-- NF-e 4.0
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1122512 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 05/06/2018 12h15min0s BRT
-- NF-e 4.0
UPDATE AD_Element_Trl SET IsTranslated='Y',Name='Serial do Cano',PrintName='Serial do Cano',Description='Número de série do cano',Help='Número de série do cano',Updated=TO_TIMESTAMP('2018-06-05 12:15:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1122512 AND AD_Language='pt_BR'
;

-- 05/06/2018 12h15min10s BRT
-- NF-e 4.0
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,1122513,0,'LBR_RECOPI',TO_TIMESTAMP('2018-06-05 12:15:10','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','RECOPI','RECOPI',TO_TIMESTAMP('2018-06-05 12:15:10','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 05/06/2018 12h15min10s BRT
-- NF-e 4.0
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1122513 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 05/06/2018 12h15min32s BRT
-- NF-e 4.0
UPDATE AD_Element_Trl SET IsTranslated='Y',Description='Número do RECOPI',Updated=TO_TIMESTAMP('2018-06-05 12:15:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1122513 AND AD_Language='pt_BR'
;

-- 05/06/2018 12h19min38s BRT
-- NF-e 4.0
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1130298,446,0,10,1120598,'Lot',TO_TIMESTAMP('2018-06-05 12:19:37','YYYY-MM-DD HH24:MI:SS'),100,'Lot number (alphanumeric)','LBRA',20,'The Lot Number indicates the specific lot that a product was part of.','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Lot No',0,TO_TIMESTAMP('2018-06-05 12:19:37','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 05/06/2018 12h19min38s BRT
-- NF-e 4.0
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1130298 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 05/06/2018 12h20min3s BRT
-- NF-e 4.0
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1130299,1122479,0,15,1120598,'LBR_ProductionDate',TO_TIMESTAMP('2018-06-05 12:20:02','YYYY-MM-DD HH24:MI:SS'),100,'LBRA',10,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Production Date',0,TO_TIMESTAMP('2018-06-05 12:20:02','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 05/06/2018 12h20min3s BRT
-- NF-e 4.0
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1130299 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 05/06/2018 12h20min20s BRT
-- NF-e 4.0
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1130300,2000,0,15,1120598,'DueDate',TO_TIMESTAMP('2018-06-05 12:20:20','YYYY-MM-DD HH24:MI:SS'),100,'Date when the payment is due','LBRA',10,'Date when the payment is due without deductions or discount','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Due Date',0,TO_TIMESTAMP('2018-06-05 12:20:20','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 05/06/2018 12h20min20s BRT
-- NF-e 4.0
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1130300 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 05/06/2018 12h20min47s BRT
-- NF-e 4.0
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1130301,1122480,0,10,1120598,'LBR_ANVISACode',TO_TIMESTAMP('2018-06-05 12:20:47','YYYY-MM-DD HH24:MI:SS'),100,'LBRA',13,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','ANVISA Code',0,TO_TIMESTAMP('2018-06-05 12:20:47','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 05/06/2018 12h20min47s BRT
-- NF-e 4.0
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1130301 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 05/06/2018 12h21min24s BRT
-- NF-e 4.0
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1130302,1122481,0,10,1120598,'LBR_ANPCode',TO_TIMESTAMP('2018-06-05 12:21:24','YYYY-MM-DD HH24:MI:SS'),100,'LBRA',9,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','ANP Code',0,TO_TIMESTAMP('2018-06-05 12:21:24','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 05/06/2018 12h21min24s BRT
-- NF-e 4.0
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1130302 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 05/06/2018 12h22min6s BRT
-- NF-e 4.0
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1130303,1122482,0,10,1120598,'LBR_ANPDesc',TO_TIMESTAMP('2018-06-05 12:22:05','YYYY-MM-DD HH24:MI:SS'),100,'LBRA',95,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','ANP Description',0,TO_TIMESTAMP('2018-06-05 12:22:05','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 05/06/2018 12h22min6s BRT
-- NF-e 4.0
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1130303 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 05/06/2018 12h22min52s BRT
-- NF-e 4.0
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1130304,1122483,0,29,1120598,'LBR_PercGLP',TO_TIMESTAMP('2018-06-05 12:22:51','YYYY-MM-DD HH24:MI:SS'),100,'0','LBRA',10,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','% GLP Derivative',0,TO_TIMESTAMP('2018-06-05 12:22:51','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 05/06/2018 12h22min52s BRT
-- NF-e 4.0
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1130304 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 05/06/2018 12h23min15s BRT
-- NF-e 4.0
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1130305,1122484,0,29,1120598,'LBR_PercGasN',TO_TIMESTAMP('2018-06-05 12:23:15','YYYY-MM-DD HH24:MI:SS'),100,'0','LBRA',10,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','% Gas Interior',0,TO_TIMESTAMP('2018-06-05 12:23:15','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 05/06/2018 12h23min15s BRT
-- NF-e 4.0
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1130305 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 05/06/2018 12h23min29s BRT
-- NF-e 4.0
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1130306,1122485,0,29,1120598,'LBR_PercGasI',TO_TIMESTAMP('2018-06-05 12:23:29','YYYY-MM-DD HH24:MI:SS'),100,'0','LBRA',10,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','% Gas Imported',0,TO_TIMESTAMP('2018-06-05 12:23:29','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 05/06/2018 12h23min29s BRT
-- NF-e 4.0
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1130306 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 05/06/2018 12h23min48s BRT
-- NF-e 4.0
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1130307,1122486,0,12,1120598,'LBR_StartAmt',TO_TIMESTAMP('2018-06-05 12:23:47','YYYY-MM-DD HH24:MI:SS'),100,'0','LBRA',10,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Start Amount',0,TO_TIMESTAMP('2018-06-05 12:23:47','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 05/06/2018 12h23min48s BRT
-- NF-e 4.0
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1130307 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 05/06/2018 12h24min12s BRT
-- NF-e 4.0
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1130308,1122487,0,10,1120598,'LBR_CODIF',TO_TIMESTAMP('2018-06-05 12:24:12','YYYY-MM-DD HH24:MI:SS'),100,'Authorization Code from CODIF','U',21,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','CODIF',0,TO_TIMESTAMP('2018-06-05 12:24:12','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 05/06/2018 12h24min12s BRT
-- NF-e 4.0
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1130308 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 05/06/2018 12h24min15s BRT
-- NF-e 4.0
UPDATE AD_Column SET EntityType='LBRA',Updated=TO_TIMESTAMP('2018-06-05 12:24:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1130308
;

-- 05/06/2018 12h25min22s BRT
-- NF-e 4.0
INSERT INTO AD_Reference (AD_Client_ID,AD_Org_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,IsOrderByValue,Name,Updated,UpdatedBy,ValidationType) VALUES (0,0,1120269,TO_TIMESTAMP('2018-06-05 12:25:22','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','N','LBR_VeOperType',TO_TIMESTAMP('2018-06-05 12:25:22','YYYY-MM-DD HH24:MI:SS'),100,'L')
;

-- 05/06/2018 12h25min22s BRT
-- NF-e 4.0
INSERT INTO AD_Reference_Trl (AD_Language,AD_Reference_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Reference_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Reference t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Reference_ID=1120269 AND NOT EXISTS (SELECT * FROM AD_Reference_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Reference_ID=t.AD_Reference_ID)
;

-- 05/06/2018 12h26min6s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121897,1120269,TO_TIMESTAMP('2018-06-05 12:26:06','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Dealership Sale',TO_TIMESTAMP('2018-06-05 12:26:06','YYYY-MM-DD HH24:MI:SS'),100,'1')
;

-- 05/06/2018 12h26min6s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121897 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 05/06/2018 12h26min25s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Name='Venda Concessionária',Updated=TO_TIMESTAMP('2018-06-05 12:26:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121897 AND AD_Language='pt_BR'
;

-- 05/06/2018 12h26min51s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121898,1120269,TO_TIMESTAMP('2018-06-05 12:26:51','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Direct sale to end customer',TO_TIMESTAMP('2018-06-05 12:26:51','YYYY-MM-DD HH24:MI:SS'),100,'2')
;

-- 05/06/2018 12h26min51s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121898 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 05/06/2018 12h27min3s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Name='Venda direta a Consumidor Final',Updated=TO_TIMESTAMP('2018-06-05 12:27:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121898 AND AD_Language='pt_BR'
;

-- 05/06/2018 12h27min35s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121899,1120269,TO_TIMESTAMP('2018-06-05 12:27:35','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Large Customers Sale (Government, Fleet, etc)',TO_TIMESTAMP('2018-06-05 12:27:35','YYYY-MM-DD HH24:MI:SS'),100,'3')
;

-- 05/06/2018 12h27min35s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121899 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 05/06/2018 12h27min52s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Name='Venda para Grandes Consumidores (Governo, Frotas, etc)',Updated=TO_TIMESTAMP('2018-06-05 12:27:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121899 AND AD_Language='pt_BR'
;

-- 05/06/2018 12h28min8s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121900,1120269,TO_TIMESTAMP('2018-06-05 12:28:08','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Other',TO_TIMESTAMP('2018-06-05 12:28:08','YYYY-MM-DD HH24:MI:SS'),100,'0')
;

-- 05/06/2018 12h28min8s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121900 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 05/06/2018 12h28min13s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Name='Outros',Updated=TO_TIMESTAMP('2018-06-05 12:28:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121900 AND AD_Language='pt_BR'
;

-- 05/06/2018 12h28min30s BRT
-- NF-e 4.0
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1130309,1122488,0,17,1120269,1120598,'LBR_VeOperType',TO_TIMESTAMP('2018-06-05 12:28:30','YYYY-MM-DD HH24:MI:SS'),100,'LBRA',1,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Operation Type',0,TO_TIMESTAMP('2018-06-05 12:28:30','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 05/06/2018 12h28min30s BRT
-- NF-e 4.0
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1130309 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 05/06/2018 12h29min5s BRT
-- NF-e 4.0
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1130310,1122489,0,10,1120598,'LBR_VeChassis',TO_TIMESTAMP('2018-06-05 12:29:04','YYYY-MM-DD HH24:MI:SS'),100,'LBRA',21,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Chassis',0,TO_TIMESTAMP('2018-06-05 12:29:04','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 05/06/2018 12h29min5s BRT
-- NF-e 4.0
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1130310 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 05/06/2018 12h29min30s BRT
-- NF-e 4.0
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1130311,1122490,0,10,1120598,'LBR_VeColorCode',TO_TIMESTAMP('2018-06-05 12:29:30','YYYY-MM-DD HH24:MI:SS'),100,'LBRA',4,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Color Code',0,TO_TIMESTAMP('2018-06-05 12:29:30','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 05/06/2018 12h29min30s BRT
-- NF-e 4.0
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1130311 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 05/06/2018 12h29min44s BRT
-- NF-e 4.0
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1130312,1122491,0,10,1120598,'LBR_VeColorDesc',TO_TIMESTAMP('2018-06-05 12:29:43','YYYY-MM-DD HH24:MI:SS'),100,'LBRA',40,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Color Description',0,TO_TIMESTAMP('2018-06-05 12:29:43','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 05/06/2018 12h29min44s BRT
-- NF-e 4.0
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1130312 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 05/06/2018 12h30min11s BRT
-- NF-e 4.0
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1130313,1122492,0,29,1120598,'LBR_VePower',TO_TIMESTAMP('2018-06-05 12:30:11','YYYY-MM-DD HH24:MI:SS'),100,'LBRA',10,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Engine Power (CV)',0,TO_TIMESTAMP('2018-06-05 12:30:11','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 05/06/2018 12h30min11s BRT
-- NF-e 4.0
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1130313 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 05/06/2018 12h30min25s BRT
-- NF-e 4.0
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1130314,1122493,0,29,1120598,'LBR_VeCylinder',TO_TIMESTAMP('2018-06-05 12:30:25','YYYY-MM-DD HH24:MI:SS'),100,'LBRA',10,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Cylinder',0,TO_TIMESTAMP('2018-06-05 12:30:25','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 05/06/2018 12h30min25s BRT
-- NF-e 4.0
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1130314 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 05/06/2018 12h30min49s BRT
-- NF-e 4.0
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1130315,1122494,0,10,1120598,'LBR_VeSerial',TO_TIMESTAMP('2018-06-05 12:30:48','YYYY-MM-DD HH24:MI:SS'),100,'LBRA',9,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Vehicle Serial',0,TO_TIMESTAMP('2018-06-05 12:30:48','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 05/06/2018 12h30min49s BRT
-- NF-e 4.0
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1130315 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 05/06/2018 12h31min16s BRT
-- NF-e 4.0
INSERT INTO AD_Reference (AD_Client_ID,AD_Org_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,IsOrderByValue,Name,Updated,UpdatedBy,ValidationType) VALUES (0,0,1120270,TO_TIMESTAMP('2018-06-05 12:31:15','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','N','LBR_VeTpFuel',TO_TIMESTAMP('2018-06-05 12:31:15','YYYY-MM-DD HH24:MI:SS'),100,'L')
;

-- 05/06/2018 12h31min16s BRT
-- NF-e 4.0
INSERT INTO AD_Reference_Trl (AD_Language,AD_Reference_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Reference_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Reference t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Reference_ID=1120270 AND NOT EXISTS (SELECT * FROM AD_Reference_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Reference_ID=t.AD_Reference_ID)
;

-- 05/06/2018 12h31min39s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121901,1120270,TO_TIMESTAMP('2018-06-05 12:31:39','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Ethanol',TO_TIMESTAMP('2018-06-05 12:31:39','YYYY-MM-DD HH24:MI:SS'),100,'01')
;

-- 05/06/2018 12h31min39s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121901 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 05/06/2018 12h31min48s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121902,1120270,TO_TIMESTAMP('2018-06-05 12:31:48','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Gasoline',TO_TIMESTAMP('2018-06-05 12:31:48','YYYY-MM-DD HH24:MI:SS'),100,'02')
;

-- 05/06/2018 12h31min48s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121902 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 05/06/2018 12h33min23s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121903,1120270,TO_TIMESTAMP('2018-06-05 12:33:23','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Diesel',TO_TIMESTAMP('2018-06-05 12:33:23','YYYY-MM-DD HH24:MI:SS'),100,'03')
;

-- 05/06/2018 12h33min23s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121903 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 05/06/2018 12h33min43s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121904,1120270,TO_TIMESTAMP('2018-06-05 12:33:42','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Gasogen',TO_TIMESTAMP('2018-06-05 12:33:42','YYYY-MM-DD HH24:MI:SS'),100,'04')
;

-- 05/06/2018 12h33min43s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121904 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 05/06/2018 12h34min5s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121905,1120270,TO_TIMESTAMP('2018-06-05 12:34:05','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Methane Gas',TO_TIMESTAMP('2018-06-05 12:34:05','YYYY-MM-DD HH24:MI:SS'),100,'05')
;

-- 05/06/2018 12h34min5s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121905 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 05/06/2018 12h36min0s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121906,1120270,TO_TIMESTAMP('2018-06-05 12:35:59','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','ELFONT IN',TO_TIMESTAMP('2018-06-05 12:35:59','YYYY-MM-DD HH24:MI:SS'),100,'07')
;

-- 05/06/2018 12h36min0s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121906 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 05/06/2018 12h36min11s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121907,1120270,TO_TIMESTAMP('2018-06-05 12:36:11','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','ELFONT EX',TO_TIMESTAMP('2018-06-05 12:36:11','YYYY-MM-DD HH24:MI:SS'),100,'08')
;

-- 05/06/2018 12h36min11s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121907 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 05/06/2018 12h37min13s BRT
-- NF-e 4.0
UPDATE AD_Ref_List SET Name='Electrical Internal',Updated=TO_TIMESTAMP('2018-06-05 12:37:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121906
;

-- 05/06/2018 12h37min13s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=1121906
;

-- 05/06/2018 12h37min13s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET Description=NULL,Name='Electrical Internal',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Ref_List_ID=1121906
;

-- 05/06/2018 12h37min23s BRT
-- NF-e 4.0
UPDATE AD_Ref_List SET Name='Electrical External',Updated=TO_TIMESTAMP('2018-06-05 12:37:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121907
;

-- 05/06/2018 12h37min23s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=1121907
;

-- 05/06/2018 12h37min23s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET Description=NULL,Name='Electrical External',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Ref_List_ID=1121907
;

-- 05/06/2018 12h38min21s BRT
-- NF-e 4.0
UPDATE AD_Ref_List SET Value='06',Updated=TO_TIMESTAMP('2018-06-05 12:38:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121906
;

-- 05/06/2018 12h38min26s BRT
-- NF-e 4.0
UPDATE AD_Ref_List SET Value='07',Updated=TO_TIMESTAMP('2018-06-05 12:38:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121907
;

-- 05/06/2018 12h38min39s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121909,1120270,TO_TIMESTAMP('2018-06-05 12:38:39','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Gasoline / GNC',TO_TIMESTAMP('2018-06-05 12:38:39','YYYY-MM-DD HH24:MI:SS'),100,'08')
;

-- 05/06/2018 12h38min39s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121909 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 05/06/2018 12h38min48s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121910,1120270,TO_TIMESTAMP('2018-06-05 12:38:47','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Ethanol / GNC',TO_TIMESTAMP('2018-06-05 12:38:47','YYYY-MM-DD HH24:MI:SS'),100,'09')
;

-- 05/06/2018 12h38min48s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121910 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 05/06/2018 12h39min1s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121911,1120270,TO_TIMESTAMP('2018-06-05 12:39:01','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Diesel / GNC',TO_TIMESTAMP('2018-06-05 12:39:01','YYYY-MM-DD HH24:MI:SS'),100,'10')
;

-- 05/06/2018 12h39min1s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121911 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 05/06/2018 12h39min31s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121912,1120270,TO_TIMESTAMP('2018-06-05 12:39:31','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Ethanol / GNV',TO_TIMESTAMP('2018-06-05 12:39:31','YYYY-MM-DD HH24:MI:SS'),100,'12')
;

-- 05/06/2018 12h39min31s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121912 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 05/06/2018 12h39min44s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121913,1120270,TO_TIMESTAMP('2018-06-05 12:39:43','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Gasoline / GNV',TO_TIMESTAMP('2018-06-05 12:39:43','YYYY-MM-DD HH24:MI:SS'),100,'13')
;

-- 05/06/2018 12h39min44s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121913 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 05/06/2018 12h39min58s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121914,1120270,TO_TIMESTAMP('2018-06-05 12:39:58','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Diesel / GNV',TO_TIMESTAMP('2018-06-05 12:39:58','YYYY-MM-DD HH24:MI:SS'),100,'14')
;

-- 05/06/2018 12h39min58s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121914 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 05/06/2018 12h40min31s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121915,1120270,TO_TIMESTAMP('2018-06-05 12:40:30','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Natural Gas',TO_TIMESTAMP('2018-06-05 12:40:30','YYYY-MM-DD HH24:MI:SS'),100,'15')
;

-- 05/06/2018 12h40min31s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121915 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 05/06/2018 12h40min48s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121916,1120270,TO_TIMESTAMP('2018-06-05 12:40:47','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Gasoline / Ethanol',TO_TIMESTAMP('2018-06-05 12:40:47','YYYY-MM-DD HH24:MI:SS'),100,'16')
;

-- 05/06/2018 12h40min48s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121916 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 05/06/2018 12h41min11s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121917,1120270,TO_TIMESTAMP('2018-06-05 12:41:11','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Gasoline / Ethanol / NG',TO_TIMESTAMP('2018-06-05 12:41:11','YYYY-MM-DD HH24:MI:SS'),100,'17')
;

-- 05/06/2018 12h41min11s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121917 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 05/06/2018 12h41min26s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121918,1120270,TO_TIMESTAMP('2018-06-05 12:41:26','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Gasoline / Electrical',TO_TIMESTAMP('2018-06-05 12:41:26','YYYY-MM-DD HH24:MI:SS'),100,'18')
;

-- 05/06/2018 12h41min26s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121918 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 05/06/2018 12h42min4s BRT
-- NF-e 4.0
UPDATE AD_Ref_List SET Name='Diesel / VGN',Updated=TO_TIMESTAMP('2018-06-05 12:42:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121914
;

-- 05/06/2018 12h42min4s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=1121914
;

-- 05/06/2018 12h42min4s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET Description=NULL,Name='Diesel / VGN',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Ref_List_ID=1121914
;

-- 05/06/2018 12h42min8s BRT
-- NF-e 4.0
UPDATE AD_Ref_List SET Name='Gasoline / VGN',Updated=TO_TIMESTAMP('2018-06-05 12:42:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121913
;

-- 05/06/2018 12h42min8s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=1121913
;

-- 05/06/2018 12h42min8s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET Description=NULL,Name='Gasoline / VGN',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Ref_List_ID=1121913
;

-- 05/06/2018 12h42min12s BRT
-- NF-e 4.0
UPDATE AD_Ref_List SET Name='Ethanol / VGN',Updated=TO_TIMESTAMP('2018-06-05 12:42:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121912
;

-- 05/06/2018 12h42min12s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=1121912
;

-- 05/06/2018 12h42min12s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET Description=NULL,Name='Ethanol / VGN',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Ref_List_ID=1121912
;

-- 05/06/2018 12h42min22s BRT
-- NF-e 4.0
UPDATE AD_Ref_List SET Name='Diesel / NG',Updated=TO_TIMESTAMP('2018-06-05 12:42:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121911
;

-- 05/06/2018 12h42min22s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=1121911
;

-- 05/06/2018 12h42min22s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET Description=NULL,Name='Diesel / NG',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Ref_List_ID=1121911
;

-- 05/06/2018 12h42min24s BRT
-- NF-e 4.0
UPDATE AD_Ref_List SET Name='Ethanol / NG',Updated=TO_TIMESTAMP('2018-06-05 12:42:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121910
;

-- 05/06/2018 12h42min24s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=1121910
;

-- 05/06/2018 12h42min24s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET Description=NULL,Name='Ethanol / NG',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Ref_List_ID=1121910
;

-- 05/06/2018 12h42min27s BRT
-- NF-e 4.0
UPDATE AD_Ref_List SET Name='Gasoline / NG',Updated=TO_TIMESTAMP('2018-06-05 12:42:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121909
;

-- 05/06/2018 12h42min27s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=1121909
;

-- 05/06/2018 12h42min27s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET Description=NULL,Name='Gasoline / NG',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Ref_List_ID=1121909
;

-- 05/06/2018 12h42min29s BRT
-- NF-e 4.0
UPDATE AD_Ref_List SET Name='Ethanol / VNG',Updated=TO_TIMESTAMP('2018-06-05 12:42:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121912
;

-- 05/06/2018 12h42min29s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=1121912
;

-- 05/06/2018 12h42min29s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET Description=NULL,Name='Ethanol / VNG',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Ref_List_ID=1121912
;

-- 05/06/2018 12h42min32s BRT
-- NF-e 4.0
UPDATE AD_Ref_List SET Name='Gasoline / VNG',Updated=TO_TIMESTAMP('2018-06-05 12:42:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121913
;

-- 05/06/2018 12h42min32s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=1121913
;

-- 05/06/2018 12h42min32s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET Description=NULL,Name='Gasoline / VNG',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Ref_List_ID=1121913
;

-- 05/06/2018 12h42min35s BRT
-- NF-e 4.0
UPDATE AD_Ref_List SET Name='Diesel / VNG',Updated=TO_TIMESTAMP('2018-06-05 12:42:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121914
;

-- 05/06/2018 12h42min35s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=1121914
;

-- 05/06/2018 12h42min35s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET Description=NULL,Name='Diesel / VNG',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Ref_List_ID=1121914
;

-- 05/06/2018 12h42min48s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Name='Ethanol / Álcool',Updated=TO_TIMESTAMP('2018-06-05 12:42:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121901 AND AD_Language='pt_BR'
;

-- 05/06/2018 12h42min53s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Name='Gasolina',Updated=TO_TIMESTAMP('2018-06-05 12:42:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121902 AND AD_Language='pt_BR'
;

-- 05/06/2018 12h42min57s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Updated=TO_TIMESTAMP('2018-06-05 12:42:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121903 AND AD_Language='pt_BR'
;

-- 05/06/2018 12h43min7s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Name='Gasogênio',Updated=TO_TIMESTAMP('2018-06-05 12:43:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121904 AND AD_Language='pt_BR'
;

-- 05/06/2018 12h43min16s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Name='Gás Metano',Updated=TO_TIMESTAMP('2018-06-05 12:43:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121905 AND AD_Language='pt_BR'
;

-- 05/06/2018 12h43min40s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Name='Elétrico Fonte Interna',Updated=TO_TIMESTAMP('2018-06-05 12:43:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121906 AND AD_Language='pt_BR'
;

-- 05/06/2018 12h43min53s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Name='Elétrico Fonte Externa',Updated=TO_TIMESTAMP('2018-06-05 12:43:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121907 AND AD_Language='pt_BR'
;

-- 05/06/2018 12h44min0s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Name='Gasolina / GNC',Updated=TO_TIMESTAMP('2018-06-05 12:44:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121909 AND AD_Language='pt_BR'
;

-- 05/06/2018 12h44min9s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Name='Ethanol (Álcool) / GNC',Updated=TO_TIMESTAMP('2018-06-05 12:44:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121910 AND AD_Language='pt_BR'
;

-- 05/06/2018 12h44min13s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Updated=TO_TIMESTAMP('2018-06-05 12:44:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121911 AND AD_Language='pt_BR'
;

-- 05/06/2018 12h44min20s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Name='Ethanol (Álcool)/ GNV',Updated=TO_TIMESTAMP('2018-06-05 12:44:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121912 AND AD_Language='pt_BR'
;

-- 05/06/2018 12h44min26s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Name='Gasolina / GNV',Updated=TO_TIMESTAMP('2018-06-05 12:44:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121913 AND AD_Language='pt_BR'
;

-- 05/06/2018 12h44min30s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Updated=TO_TIMESTAMP('2018-06-05 12:44:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121914 AND AD_Language='pt_BR'
;

-- 05/06/2018 12h44min37s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Name='Gás Natural',Updated=TO_TIMESTAMP('2018-06-05 12:44:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121915 AND AD_Language='pt_BR'
;

-- 05/06/2018 12h44min46s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Name='Gasolina / Ethanol (Álcool)',Updated=TO_TIMESTAMP('2018-06-05 12:44:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121916 AND AD_Language='pt_BR'
;

-- 05/06/2018 12h45min1s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET Name='Gasoline / Ethanol (Álcool) / GN',Updated=TO_TIMESTAMP('2018-06-05 12:45:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121917 AND AD_Language='pt_BR'
;

-- 05/06/2018 12h45min9s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Name='Gasoline / Elétrico',Updated=TO_TIMESTAMP('2018-06-05 12:45:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121918 AND AD_Language='pt_BR'
;

-- 05/06/2018 12h45min19s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET Name='Ethanol (Álcool)',Updated=TO_TIMESTAMP('2018-06-05 12:45:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121901 AND AD_Language='pt_BR'
;

-- 05/06/2018 12h45min33s BRT
-- NF-e 4.0
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1130316,1122495,0,17,1120270,1120598,'LBR_VeTpFuel',TO_TIMESTAMP('2018-06-05 12:45:33','YYYY-MM-DD HH24:MI:SS'),100,'LBRA',2,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Fuel Type',0,TO_TIMESTAMP('2018-06-05 12:45:33','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 05/06/2018 12h45min33s BRT
-- NF-e 4.0
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1130316 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 05/06/2018 13h18min6s BRT
-- NF-e 4.0
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1130317,1122496,0,10,1120598,'LBR_VeEngineNo',TO_TIMESTAMP('2018-06-05 13:18:05','YYYY-MM-DD HH24:MI:SS'),100,'LBRA',21,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Engine Number',0,TO_TIMESTAMP('2018-06-05 13:18:05','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 05/06/2018 13h18min6s BRT
-- NF-e 4.0
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1130317 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 05/06/2018 13h18min48s BRT
-- NF-e 4.0
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1130318,1122497,0,29,1120598,'LBR_VeTractionCap',TO_TIMESTAMP('2018-06-05 13:18:48','YYYY-MM-DD HH24:MI:SS'),100,'U',10,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Traction Capacity',0,TO_TIMESTAMP('2018-06-05 13:18:48','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 05/06/2018 13h18min48s BRT
-- NF-e 4.0
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1130318 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 05/06/2018 13h18min54s BRT
-- NF-e 4.0
UPDATE AD_Column SET EntityType='LBRA',Updated=TO_TIMESTAMP('2018-06-05 13:18:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1130318
;

-- 05/06/2018 13h19min24s BRT
-- NF-e 4.0
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1130319,1122498,0,29,1120598,'LBR_VeWheelBase',TO_TIMESTAMP('2018-06-05 13:19:23','YYYY-MM-DD HH24:MI:SS'),100,'LBRA',10,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Wheel Base',0,TO_TIMESTAMP('2018-06-05 13:19:23','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 05/06/2018 13h19min24s BRT
-- NF-e 4.0
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1130319 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 05/06/2018 13h20min37s BRT
-- NF-e 4.0
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,VFormat,Version) VALUES (0,1130320,1122499,0,10,1120598,'LBR_VeYearModel',TO_TIMESTAMP('2018-06-05 13:20:36','YYYY-MM-DD HH24:MI:SS'),100,'LBRA',4,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Year Model',0,TO_TIMESTAMP('2018-06-05 13:20:36','YYYY-MM-DD HH24:MI:SS'),100,'0000',0)
;

-- 05/06/2018 13h20min37s BRT
-- NF-e 4.0
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1130320 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 05/06/2018 13h20min47s BRT
-- NF-e 4.0
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,VFormat,Version) VALUES (0,1130321,1122500,0,10,1120598,'LBR_VeYearProduction',TO_TIMESTAMP('2018-06-05 13:20:47','YYYY-MM-DD HH24:MI:SS'),100,'LBRA',4,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Year Production',0,TO_TIMESTAMP('2018-06-05 13:20:47','YYYY-MM-DD HH24:MI:SS'),100,'0000',0)
;

-- 05/06/2018 13h20min47s BRT
-- NF-e 4.0
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1130321 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 05/06/2018 13h21min21s BRT
-- NF-e 4.0
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1130322,1122501,0,10,1120598,'LBR_VeTpPaint',TO_TIMESTAMP('2018-06-05 13:21:21','YYYY-MM-DD HH24:MI:SS'),100,'LBRA',1,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Paint Type',0,TO_TIMESTAMP('2018-06-05 13:21:21','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 05/06/2018 13h21min21s BRT
-- NF-e 4.0
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1130322 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 05/06/2018 13h21min54s BRT
-- NF-e 4.0
INSERT INTO AD_Reference (AD_Client_ID,AD_Org_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,IsOrderByValue,Name,Updated,UpdatedBy,ValidationType) VALUES (0,0,1120271,TO_TIMESTAMP('2018-06-05 13:21:54','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','N','LBR_VeType',TO_TIMESTAMP('2018-06-05 13:21:54','YYYY-MM-DD HH24:MI:SS'),100,'L')
;

-- 05/06/2018 13h21min54s BRT
-- NF-e 4.0
INSERT INTO AD_Reference_Trl (AD_Language,AD_Reference_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Reference_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Reference t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Reference_ID=1120271 AND NOT EXISTS (SELECT * FROM AD_Reference_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Reference_ID=t.AD_Reference_ID)
;

-- 05/06/2018 13h23min11s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121919,1120271,TO_TIMESTAMP('2018-06-05 13:23:11','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Bicicleta',TO_TIMESTAMP('2018-06-05 13:23:11','YYYY-MM-DD HH24:MI:SS'),100,'01')
;

-- 05/06/2018 13h23min11s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121919 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 05/06/2018 13h23min22s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121920,1120271,TO_TIMESTAMP('2018-06-05 13:23:21','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Ciclomotor',TO_TIMESTAMP('2018-06-05 13:23:21','YYYY-MM-DD HH24:MI:SS'),100,'02')
;

-- 05/06/2018 13h23min22s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121920 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 05/06/2018 13h23min30s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121921,1120271,TO_TIMESTAMP('2018-06-05 13:23:30','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Motoneta',TO_TIMESTAMP('2018-06-05 13:23:30','YYYY-MM-DD HH24:MI:SS'),100,'03')
;

-- 05/06/2018 13h23min30s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121921 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 05/06/2018 13h23min39s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121922,1120271,TO_TIMESTAMP('2018-06-05 13:23:38','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Motocicleta',TO_TIMESTAMP('2018-06-05 13:23:38','YYYY-MM-DD HH24:MI:SS'),100,'04')
;

-- 05/06/2018 13h23min39s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121922 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 05/06/2018 13h23min48s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121923,1120271,TO_TIMESTAMP('2018-06-05 13:23:48','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Triciclo',TO_TIMESTAMP('2018-06-05 13:23:48','YYYY-MM-DD HH24:MI:SS'),100,'05')
;

-- 05/06/2018 13h23min48s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121923 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 05/06/2018 13h23min56s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121924,1120271,TO_TIMESTAMP('2018-06-05 13:23:56','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Automovel',TO_TIMESTAMP('2018-06-05 13:23:56','YYYY-MM-DD HH24:MI:SS'),100,'06')
;

-- 05/06/2018 13h23min56s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121924 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 05/06/2018 13h24min3s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121925,1120271,TO_TIMESTAMP('2018-06-05 13:24:03','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Microonibus',TO_TIMESTAMP('2018-06-05 13:24:03','YYYY-MM-DD HH24:MI:SS'),100,'07')
;

-- 05/06/2018 13h24min3s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121925 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 05/06/2018 13h24min11s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121926,1120271,TO_TIMESTAMP('2018-06-05 13:24:11','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Onibus',TO_TIMESTAMP('2018-06-05 13:24:11','YYYY-MM-DD HH24:MI:SS'),100,'08')
;

-- 05/06/2018 13h24min11s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121926 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 05/06/2018 13h24min18s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121927,1120271,TO_TIMESTAMP('2018-06-05 13:24:18','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Bonde',TO_TIMESTAMP('2018-06-05 13:24:18','YYYY-MM-DD HH24:MI:SS'),100,'09')
;

-- 05/06/2018 13h24min18s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121927 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 05/06/2018 13h24min25s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121928,1120271,TO_TIMESTAMP('2018-06-05 13:24:25','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Reboque',TO_TIMESTAMP('2018-06-05 13:24:25','YYYY-MM-DD HH24:MI:SS'),100,'10')
;

-- 05/06/2018 13h24min25s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121928 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 05/06/2018 13h24min32s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121929,1120271,TO_TIMESTAMP('2018-06-05 13:24:32','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Semi-Reboque',TO_TIMESTAMP('2018-06-05 13:24:32','YYYY-MM-DD HH24:MI:SS'),100,'11')
;

-- 05/06/2018 13h24min32s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121929 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 05/06/2018 13h24min38s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121930,1120271,TO_TIMESTAMP('2018-06-05 13:24:37','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Charrete',TO_TIMESTAMP('2018-06-05 13:24:37','YYYY-MM-DD HH24:MI:SS'),100,'12')
;

-- 05/06/2018 13h24min38s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121930 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 05/06/2018 13h24min44s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121931,1120271,TO_TIMESTAMP('2018-06-05 13:24:44','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Camioneta',TO_TIMESTAMP('2018-06-05 13:24:44','YYYY-MM-DD HH24:MI:SS'),100,'13')
;

-- 05/06/2018 13h24min44s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121931 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 05/06/2018 13h24min52s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121932,1120271,TO_TIMESTAMP('2018-06-05 13:24:52','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Caminhao',TO_TIMESTAMP('2018-06-05 13:24:52','YYYY-MM-DD HH24:MI:SS'),100,'14')
;

-- 05/06/2018 13h24min52s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121932 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 05/06/2018 13h24min58s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121933,1120271,TO_TIMESTAMP('2018-06-05 13:24:58','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Carroca',TO_TIMESTAMP('2018-06-05 13:24:58','YYYY-MM-DD HH24:MI:SS'),100,'15')
;

-- 05/06/2018 13h24min58s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121933 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 05/06/2018 13h25min6s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121934,1120271,TO_TIMESTAMP('2018-06-05 13:25:05','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Carro De Mao',TO_TIMESTAMP('2018-06-05 13:25:05','YYYY-MM-DD HH24:MI:SS'),100,'16')
;

-- 05/06/2018 13h25min6s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121934 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 05/06/2018 13h25min16s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121935,1120271,TO_TIMESTAMP('2018-06-05 13:25:16','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Caminhao Trator',TO_TIMESTAMP('2018-06-05 13:25:16','YYYY-MM-DD HH24:MI:SS'),100,'17')
;

-- 05/06/2018 13h25min16s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121935 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 05/06/2018 13h25min25s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121936,1120271,TO_TIMESTAMP('2018-06-05 13:25:24','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Trator De Rodas',TO_TIMESTAMP('2018-06-05 13:25:24','YYYY-MM-DD HH24:MI:SS'),100,'18')
;

-- 05/06/2018 13h25min25s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121936 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 05/06/2018 13h25min33s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121937,1120271,TO_TIMESTAMP('2018-06-05 13:25:33','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Trator De Esteiras',TO_TIMESTAMP('2018-06-05 13:25:33','YYYY-MM-DD HH24:MI:SS'),100,'19')
;

-- 05/06/2018 13h25min33s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121937 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 05/06/2018 13h25min43s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121938,1120271,TO_TIMESTAMP('2018-06-05 13:25:43','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Trator Misto',TO_TIMESTAMP('2018-06-05 13:25:43','YYYY-MM-DD HH24:MI:SS'),100,'20')
;

-- 05/06/2018 13h25min43s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121938 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 05/06/2018 13h25min53s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121939,1120271,TO_TIMESTAMP('2018-06-05 13:25:53','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Quadriciclo',TO_TIMESTAMP('2018-06-05 13:25:53','YYYY-MM-DD HH24:MI:SS'),100,'21')
;

-- 05/06/2018 13h25min53s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121939 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 05/06/2018 13h26min7s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121940,1120271,TO_TIMESTAMP('2018-06-05 13:26:06','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Chassi/Plataforma',TO_TIMESTAMP('2018-06-05 13:26:06','YYYY-MM-DD HH24:MI:SS'),100,'22')
;

-- 05/06/2018 13h26min7s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121940 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 05/06/2018 13h26min14s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121941,1120271,TO_TIMESTAMP('2018-06-05 13:26:14','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Caminhonete',TO_TIMESTAMP('2018-06-05 13:26:14','YYYY-MM-DD HH24:MI:SS'),100,'23')
;

-- 05/06/2018 13h26min14s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121941 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 05/06/2018 13h26min23s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121942,1120271,TO_TIMESTAMP('2018-06-05 13:26:22','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Side-Car',TO_TIMESTAMP('2018-06-05 13:26:22','YYYY-MM-DD HH24:MI:SS'),100,'24')
;

-- 05/06/2018 13h26min23s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121942 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 05/06/2018 13h26min33s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121943,1120271,TO_TIMESTAMP('2018-06-05 13:26:32','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Utilitario',TO_TIMESTAMP('2018-06-05 13:26:32','YYYY-MM-DD HH24:MI:SS'),100,'25')
;

-- 05/06/2018 13h26min33s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121943 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 05/06/2018 13h26min47s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121944,1120271,TO_TIMESTAMP('2018-06-05 13:26:46','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Motor-Home',TO_TIMESTAMP('2018-06-05 13:26:46','YYYY-MM-DD HH24:MI:SS'),100,'26')
;

-- 05/06/2018 13h26min47s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121944 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 05/06/2018 13h26min58s BRT
-- NF-e 4.0
UPDATE AD_Ref_List SET Name='Bicycle',Updated=TO_TIMESTAMP('2018-06-05 13:26:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121919
;

-- 05/06/2018 13h26min58s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=1121919
;

-- 05/06/2018 13h26min58s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET Description=NULL,Name='Bicycle',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Ref_List_ID=1121919
;

-- 05/06/2018 13h27min21s BRT
-- NF-e 4.0
UPDATE AD_Ref_List SET Name='Moped',Updated=TO_TIMESTAMP('2018-06-05 13:27:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121920
;

-- 05/06/2018 13h27min21s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=1121920
;

-- 05/06/2018 13h27min21s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET Description=NULL,Name='Moped',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Ref_List_ID=1121920
;

-- 05/06/2018 13h27min31s BRT
-- NF-e 4.0
UPDATE AD_Ref_List SET Name='Scooter',Updated=TO_TIMESTAMP('2018-06-05 13:27:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121921
;

-- 05/06/2018 13h27min31s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=1121921
;

-- 05/06/2018 13h27min31s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET Description=NULL,Name='Scooter',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Ref_List_ID=1121921
;

-- 05/06/2018 13h27min39s BRT
-- NF-e 4.0
UPDATE AD_Ref_List SET Name='Motorcycle',Updated=TO_TIMESTAMP('2018-06-05 13:27:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121922
;

-- 05/06/2018 13h27min39s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=1121922
;

-- 05/06/2018 13h27min39s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET Description=NULL,Name='Motorcycle',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Ref_List_ID=1121922
;

-- 05/06/2018 13h27min55s BRT
-- NF-e 4.0
UPDATE AD_Ref_List SET Name='Tricycle',Updated=TO_TIMESTAMP('2018-06-05 13:27:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121923
;

-- 05/06/2018 13h27min55s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=1121923
;

-- 05/06/2018 13h27min55s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET Description=NULL,Name='Tricycle',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Ref_List_ID=1121923
;

-- 05/06/2018 13h28min18s BRT
-- NF-e 4.0
UPDATE AD_Ref_List SET Name='Automobile',Updated=TO_TIMESTAMP('2018-06-05 13:28:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121924
;

-- 05/06/2018 13h28min18s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=1121924
;

-- 05/06/2018 13h28min18s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET Description=NULL,Name='Automobile',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Ref_List_ID=1121924
;

-- 05/06/2018 13h28min31s BRT
-- NF-e 4.0
UPDATE AD_Ref_List SET Name='Micro bus',Updated=TO_TIMESTAMP('2018-06-05 13:28:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121925
;

-- 05/06/2018 13h28min31s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=1121925
;

-- 05/06/2018 13h28min31s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET Description=NULL,Name='Micro bus',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Ref_List_ID=1121925
;

-- 05/06/2018 13h28min34s BRT
-- NF-e 4.0
UPDATE AD_Ref_List SET Name='Bus',Updated=TO_TIMESTAMP('2018-06-05 13:28:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121926
;

-- 05/06/2018 13h28min34s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=1121926
;

-- 05/06/2018 13h28min34s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET Description=NULL,Name='Bus',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Ref_List_ID=1121926
;

-- 05/06/2018 13h28min43s BRT
-- NF-e 4.0
UPDATE AD_Ref_List SET Name='Tram',Updated=TO_TIMESTAMP('2018-06-05 13:28:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121927
;

-- 05/06/2018 13h28min43s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=1121927
;

-- 05/06/2018 13h28min43s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET Description=NULL,Name='Tram',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Ref_List_ID=1121927
;

-- 05/06/2018 13h28min52s BRT
-- NF-e 4.0
UPDATE AD_Ref_List SET Name='Trailer',Updated=TO_TIMESTAMP('2018-06-05 13:28:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121928
;

-- 05/06/2018 13h28min52s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=1121928
;

-- 05/06/2018 13h28min52s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET Description=NULL,Name='Trailer',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Ref_List_ID=1121928
;

-- 05/06/2018 13h29min0s BRT
-- NF-e 4.0
UPDATE AD_Ref_List SET Name='Semi-Trailer',Updated=TO_TIMESTAMP('2018-06-05 13:29:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121929
;

-- 05/06/2018 13h29min0s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=1121929
;

-- 05/06/2018 13h29min0s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET Description=NULL,Name='Semi-Trailer',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Ref_List_ID=1121929
;

-- 05/06/2018 13h29min45s BRT
-- NF-e 4.0
UPDATE AD_Ref_List SET Name='Trolley',Updated=TO_TIMESTAMP('2018-06-05 13:29:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121930
;

-- 05/06/2018 13h29min45s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=1121930
;

-- 05/06/2018 13h29min45s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET Description=NULL,Name='Trolley',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Ref_List_ID=1121930
;

-- 05/06/2018 13h29min54s BRT
-- NF-e 4.0
UPDATE AD_Ref_List SET Name='Van',Updated=TO_TIMESTAMP('2018-06-05 13:29:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121931
;

-- 05/06/2018 13h29min54s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=1121931
;

-- 05/06/2018 13h29min54s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET Description=NULL,Name='Van',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Ref_List_ID=1121931
;

-- 05/06/2018 13h30min1s BRT
-- NF-e 4.0
UPDATE AD_Ref_List SET Name='Truck',Updated=TO_TIMESTAMP('2018-06-05 13:30:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121932
;

-- 05/06/2018 13h30min1s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=1121932
;

-- 05/06/2018 13h30min1s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET Description=NULL,Name='Truck',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Ref_List_ID=1121932
;

-- 05/06/2018 13h30min22s BRT
-- NF-e 4.0
UPDATE AD_Ref_List SET Name='Wagon',Updated=TO_TIMESTAMP('2018-06-05 13:30:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121933
;

-- 05/06/2018 13h30min22s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=1121933
;

-- 05/06/2018 13h30min22s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET Description=NULL,Name='Wagon',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Ref_List_ID=1121933
;

-- 05/06/2018 13h30min36s BRT
-- NF-e 4.0
UPDATE AD_Ref_List SET Name='Hand Car',Updated=TO_TIMESTAMP('2018-06-05 13:30:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121934
;

-- 05/06/2018 13h30min36s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=1121934
;

-- 05/06/2018 13h30min36s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET Description=NULL,Name='Hand Car',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Ref_List_ID=1121934
;

-- 05/06/2018 13h30min45s BRT
-- NF-e 4.0
UPDATE AD_Ref_List SET Name='Tractor Truck',Updated=TO_TIMESTAMP('2018-06-05 13:30:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121935
;

-- 05/06/2018 13h30min45s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=1121935
;

-- 05/06/2018 13h30min45s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET Description=NULL,Name='Tractor Truck',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Ref_List_ID=1121935
;

-- 05/06/2018 13h30min52s BRT
-- NF-e 4.0
UPDATE AD_Ref_List SET Name='Wheel Tractor',Updated=TO_TIMESTAMP('2018-06-05 13:30:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121936
;

-- 05/06/2018 13h30min52s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=1121936
;

-- 05/06/2018 13h30min52s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET Description=NULL,Name='Wheel Tractor',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Ref_List_ID=1121936
;

-- 05/06/2018 13h31min0s BRT
-- NF-e 4.0
UPDATE AD_Ref_List SET Name='Crawler Tractor',Updated=TO_TIMESTAMP('2018-06-05 13:31:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121937
;

-- 05/06/2018 13h31min0s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=1121937
;

-- 05/06/2018 13h31min0s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET Description=NULL,Name='Crawler Tractor',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Ref_List_ID=1121937
;

-- 05/06/2018 13h31min6s BRT
-- NF-e 4.0
UPDATE AD_Ref_List SET Name='Mixed Tractor',Updated=TO_TIMESTAMP('2018-06-05 13:31:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121938
;

-- 05/06/2018 13h31min6s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=1121938
;

-- 05/06/2018 13h31min6s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET Description=NULL,Name='Mixed Tractor',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Ref_List_ID=1121938
;

-- 05/06/2018 13h31min14s BRT
-- NF-e 4.0
UPDATE AD_Ref_List SET Name='Quadricycle',Updated=TO_TIMESTAMP('2018-06-05 13:31:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121939
;

-- 05/06/2018 13h31min14s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=1121939
;

-- 05/06/2018 13h31min14s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET Description=NULL,Name='Quadricycle',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Ref_List_ID=1121939
;

-- 05/06/2018 13h31min24s BRT
-- NF-e 4.0
UPDATE AD_Ref_List SET Name='Chassi/Platform',Updated=TO_TIMESTAMP('2018-06-05 13:31:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121940
;

-- 05/06/2018 13h31min24s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=1121940
;

-- 05/06/2018 13h31min24s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET Description=NULL,Name='Chassi/Platform',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Ref_List_ID=1121940
;

-- 05/06/2018 13h31min28s BRT
-- NF-e 4.0
UPDATE AD_Ref_List SET Name='Chassis/Platform',Updated=TO_TIMESTAMP('2018-06-05 13:31:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121940
;

-- 05/06/2018 13h31min28s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=1121940
;

-- 05/06/2018 13h31min28s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET Description=NULL,Name='Chassis/Platform',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Ref_List_ID=1121940
;

-- 05/06/2018 13h32min14s BRT
-- NF-e 4.0
UPDATE AD_Ref_List SET Name='Small Van',Updated=TO_TIMESTAMP('2018-06-05 13:32:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121931
;

-- 05/06/2018 13h32min14s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=1121931
;

-- 05/06/2018 13h32min14s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET Description=NULL,Name='Small Van',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Ref_List_ID=1121931
;

-- 05/06/2018 13h32min19s BRT
-- NF-e 4.0
UPDATE AD_Ref_List SET Name='Van',Updated=TO_TIMESTAMP('2018-06-05 13:32:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121941
;

-- 05/06/2018 13h32min19s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=1121941
;

-- 05/06/2018 13h32min19s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET Description=NULL,Name='Van',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Ref_List_ID=1121941
;

-- 05/06/2018 13h33min11s BRT
-- NF-e 4.0
UPDATE AD_Ref_List SET Name='Utility Car',Updated=TO_TIMESTAMP('2018-06-05 13:33:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121943
;

-- 05/06/2018 13h33min11s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=1121943
;

-- 05/06/2018 13h33min11s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET Description=NULL,Name='Utility Car',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Ref_List_ID=1121943
;

-- 05/06/2018 13h34min2s BRT
-- NF-e 4.0
UPDATE AD_Ref_List SET Name='Pickup Truck',Updated=TO_TIMESTAMP('2018-06-05 13:34:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121941
;

-- 05/06/2018 13h34min2s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=1121941
;

-- 05/06/2018 13h34min2s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET Description=NULL,Name='Pickup Truck',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Ref_List_ID=1121941
;

-- 05/06/2018 13h34min18s BRT
-- NF-e 4.0
UPDATE AD_Ref_List SET Name='Van',Updated=TO_TIMESTAMP('2018-06-05 13:34:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121931
;

-- 05/06/2018 13h34min18s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=1121931
;

-- 05/06/2018 13h34min18s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET Description=NULL,Name='Van',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Ref_List_ID=1121931
;

-- 05/06/2018 13h34min23s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Updated=TO_TIMESTAMP('2018-06-05 13:34:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121919 AND AD_Language='pt_BR'
;

-- 05/06/2018 13h34min27s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Updated=TO_TIMESTAMP('2018-06-05 13:34:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121920 AND AD_Language='pt_BR'
;

-- 05/06/2018 13h34min31s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Updated=TO_TIMESTAMP('2018-06-05 13:34:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121921 AND AD_Language='pt_BR'
;

-- 05/06/2018 13h34min34s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Updated=TO_TIMESTAMP('2018-06-05 13:34:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121922 AND AD_Language='pt_BR'
;

-- 05/06/2018 13h34min38s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Updated=TO_TIMESTAMP('2018-06-05 13:34:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121923 AND AD_Language='pt_BR'
;

-- 05/06/2018 13h34min47s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Name='Automóvel',Updated=TO_TIMESTAMP('2018-06-05 13:34:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121924 AND AD_Language='pt_BR'
;

-- 05/06/2018 13h34min55s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Name='Micro-ônibus',Updated=TO_TIMESTAMP('2018-06-05 13:34:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121925 AND AD_Language='pt_BR'
;

-- 05/06/2018 13h35min2s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Name='Ônibus',Updated=TO_TIMESTAMP('2018-06-05 13:35:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121926 AND AD_Language='pt_BR'
;

-- 05/06/2018 13h35min7s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Updated=TO_TIMESTAMP('2018-06-05 13:35:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121927 AND AD_Language='pt_BR'
;

-- 05/06/2018 13h35min10s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Updated=TO_TIMESTAMP('2018-06-05 13:35:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121928 AND AD_Language='pt_BR'
;

-- 05/06/2018 13h35min14s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Updated=TO_TIMESTAMP('2018-06-05 13:35:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121929 AND AD_Language='pt_BR'
;

-- 05/06/2018 13h35min18s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Updated=TO_TIMESTAMP('2018-06-05 13:35:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121930 AND AD_Language='pt_BR'
;

-- 05/06/2018 13h35min21s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Updated=TO_TIMESTAMP('2018-06-05 13:35:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121931 AND AD_Language='pt_BR'
;

-- 05/06/2018 13h35min27s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Name='Caminhão',Updated=TO_TIMESTAMP('2018-06-05 13:35:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121932 AND AD_Language='pt_BR'
;

-- 05/06/2018 13h35min32s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Updated=TO_TIMESTAMP('2018-06-05 13:35:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121933 AND AD_Language='pt_BR'
;

-- 05/06/2018 13h35min35s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET Name='Carroça',Updated=TO_TIMESTAMP('2018-06-05 13:35:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121933 AND AD_Language='pt_BR'
;

-- 05/06/2018 13h35min41s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Name='Carro De Mão',Updated=TO_TIMESTAMP('2018-06-05 13:35:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121934 AND AD_Language='pt_BR'
;

-- 05/06/2018 13h35min49s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Name='Caminhão Trator',Updated=TO_TIMESTAMP('2018-06-05 13:35:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121935 AND AD_Language='pt_BR'
;

-- 05/06/2018 13h35min58s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Updated=TO_TIMESTAMP('2018-06-05 13:35:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121936 AND AD_Language='pt_BR'
;

-- 05/06/2018 13h36min8s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Updated=TO_TIMESTAMP('2018-06-05 13:36:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121937 AND AD_Language='pt_BR'
;

-- 05/06/2018 13h36min13s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Updated=TO_TIMESTAMP('2018-06-05 13:36:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121938 AND AD_Language='pt_BR'
;

-- 05/06/2018 13h36min19s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Updated=TO_TIMESTAMP('2018-06-05 13:36:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121939 AND AD_Language='pt_BR'
;

-- 05/06/2018 13h36min26s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Updated=TO_TIMESTAMP('2018-06-05 13:36:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121940 AND AD_Language='pt_BR'
;

-- 05/06/2018 13h36min31s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Updated=TO_TIMESTAMP('2018-06-05 13:36:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121941 AND AD_Language='pt_BR'
;

-- 05/06/2018 13h37min15s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Updated=TO_TIMESTAMP('2018-06-05 13:37:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121942 AND AD_Language='pt_BR'
;

-- 05/06/2018 13h37min25s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Name='Utilitário',Updated=TO_TIMESTAMP('2018-06-05 13:37:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121943 AND AD_Language='pt_BR'
;

-- 05/06/2018 13h37min36s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Name='Motor-Casa',Updated=TO_TIMESTAMP('2018-06-05 13:37:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121944 AND AD_Language='pt_BR'
;

-- 05/06/2018 13h37min53s BRT
-- NF-e 4.0
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1130323,1122502,0,17,1120271,1120598,'LBR_VeType',TO_TIMESTAMP('2018-06-05 13:37:52','YYYY-MM-DD HH24:MI:SS'),100,'LBRA',2,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Vehicle Type',0,TO_TIMESTAMP('2018-06-05 13:37:52','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 05/06/2018 13h37min53s BRT
-- NF-e 4.0
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1130323 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 05/06/2018 13h38min29s BRT
-- NF-e 4.0
INSERT INTO AD_Reference (AD_Client_ID,AD_Org_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,IsOrderByValue,Name,Updated,UpdatedBy,ValidationType) VALUES (0,0,1120272,TO_TIMESTAMP('2018-06-05 13:38:29','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','N','LBR_VeKind',TO_TIMESTAMP('2018-06-05 13:38:29','YYYY-MM-DD HH24:MI:SS'),100,'L')
;

-- 05/06/2018 13h38min29s BRT
-- NF-e 4.0
INSERT INTO AD_Reference_Trl (AD_Language,AD_Reference_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Reference_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Reference t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Reference_ID=1120272 AND NOT EXISTS (SELECT * FROM AD_Reference_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Reference_ID=t.AD_Reference_ID)
;

-- 05/06/2018 13h38min58s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121945,1120272,TO_TIMESTAMP('2018-06-05 13:38:58','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Passageiro',TO_TIMESTAMP('2018-06-05 13:38:58','YYYY-MM-DD HH24:MI:SS'),100,'01')
;

-- 05/06/2018 13h38min58s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121945 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 05/06/2018 13h39min20s BRT
-- NF-e 4.0
UPDATE AD_Ref_List SET Name='Passenger',Updated=TO_TIMESTAMP('2018-06-05 13:39:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121945
;

-- 05/06/2018 13h39min20s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=1121945
;

-- 05/06/2018 13h39min20s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET Description=NULL,Name='Passenger',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Ref_List_ID=1121945
;

-- 05/06/2018 13h39min22s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Updated=TO_TIMESTAMP('2018-06-05 13:39:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121945 AND AD_Language='pt_BR'
;

-- 05/06/2018 13h39min41s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121946,1120272,TO_TIMESTAMP('2018-06-05 13:39:41','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Carga',TO_TIMESTAMP('2018-06-05 13:39:41','YYYY-MM-DD HH24:MI:SS'),100,'02')
;

-- 05/06/2018 13h39min41s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121946 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 05/06/2018 13h39min54s BRT
-- NF-e 4.0
UPDATE AD_Ref_List SET Name='Cargo',Updated=TO_TIMESTAMP('2018-06-05 13:39:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121946
;

-- 05/06/2018 13h39min54s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=1121946
;

-- 05/06/2018 13h39min54s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET Description=NULL,Name='Cargo',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Ref_List_ID=1121946
;

-- 05/06/2018 13h39min56s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Updated=TO_TIMESTAMP('2018-06-05 13:39:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121946 AND AD_Language='pt_BR'
;

-- 05/06/2018 13h40min8s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121947,1120272,TO_TIMESTAMP('2018-06-05 13:40:08','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Misto',TO_TIMESTAMP('2018-06-05 13:40:08','YYYY-MM-DD HH24:MI:SS'),100,'03')
;

-- 05/06/2018 13h40min8s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121947 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 05/06/2018 13h40min12s BRT
-- NF-e 4.0
UPDATE AD_Ref_List SET Name='Mixed',Updated=TO_TIMESTAMP('2018-06-05 13:40:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121947
;

-- 05/06/2018 13h40min12s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=1121947
;

-- 05/06/2018 13h40min12s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET Description=NULL,Name='Mixed',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Ref_List_ID=1121947
;

-- 05/06/2018 13h40min14s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Updated=TO_TIMESTAMP('2018-06-05 13:40:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121947 AND AD_Language='pt_BR'
;

-- 05/06/2018 13h40min24s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121948,1120272,TO_TIMESTAMP('2018-06-05 13:40:24','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Corrida',TO_TIMESTAMP('2018-06-05 13:40:24','YYYY-MM-DD HH24:MI:SS'),100,'04')
;

-- 05/06/2018 13h40min24s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121948 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 05/06/2018 13h40min28s BRT
-- NF-e 4.0
UPDATE AD_Ref_List SET Name='Race',Updated=TO_TIMESTAMP('2018-06-05 13:40:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121948
;

-- 05/06/2018 13h40min28s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=1121948
;

-- 05/06/2018 13h40min28s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET Description=NULL,Name='Race',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Ref_List_ID=1121948
;

-- 05/06/2018 13h40min42s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121949,1120272,TO_TIMESTAMP('2018-06-05 13:40:41','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Tração',TO_TIMESTAMP('2018-06-05 13:40:41','YYYY-MM-DD HH24:MI:SS'),100,'05')
;

-- 05/06/2018 13h40min42s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121949 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 05/06/2018 13h40min50s BRT
-- NF-e 4.0
UPDATE AD_Ref_List SET Name='Traction',Updated=TO_TIMESTAMP('2018-06-05 13:40:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121949
;

-- 05/06/2018 13h40min50s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=1121949
;

-- 05/06/2018 13h40min50s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET Description=NULL,Name='Traction',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Ref_List_ID=1121949
;

-- 05/06/2018 13h42min20s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Updated=TO_TIMESTAMP('2018-06-05 13:42:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121949 AND AD_Language='pt_BR'
;

-- 05/06/2018 13h42min41s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121950,1120272,TO_TIMESTAMP('2018-06-05 13:42:41','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Especial',TO_TIMESTAMP('2018-06-05 13:42:41','YYYY-MM-DD HH24:MI:SS'),100,'06')
;

-- 05/06/2018 13h42min41s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121950 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 05/06/2018 13h42min49s BRT
-- NF-e 4.0
UPDATE AD_Ref_List SET Name='Special',Updated=TO_TIMESTAMP('2018-06-05 13:42:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121950
;

-- 05/06/2018 13h42min49s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=1121950
;

-- 05/06/2018 13h42min49s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET Description=NULL,Name='Special',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Ref_List_ID=1121950
;

-- 05/06/2018 13h43min32s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121951,1120272,TO_TIMESTAMP('2018-06-05 13:43:32','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Coleção',TO_TIMESTAMP('2018-06-05 13:43:32','YYYY-MM-DD HH24:MI:SS'),100,'07')
;

-- 05/06/2018 13h43min32s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121951 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 05/06/2018 13h43min39s BRT
-- NF-e 4.0
UPDATE AD_Ref_List SET Name='Collection',Updated=TO_TIMESTAMP('2018-06-05 13:43:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121951
;

-- 05/06/2018 13h43min39s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=1121951
;

-- 05/06/2018 13h43min39s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET Description=NULL,Name='Collection',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Ref_List_ID=1121951
;

-- 05/06/2018 13h43min41s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Updated=TO_TIMESTAMP('2018-06-05 13:43:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121951 AND AD_Language='pt_BR'
;

-- 05/06/2018 13h43min44s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Updated=TO_TIMESTAMP('2018-06-05 13:43:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121950 AND AD_Language='pt_BR'
;

-- 05/06/2018 13h43min50s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Updated=TO_TIMESTAMP('2018-06-05 13:43:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121948 AND AD_Language='pt_BR'
;

-- 05/06/2018 13h45min1s BRT
-- NF-e 4.0
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1130324,1122503,0,17,1120272,1120598,'LBR_VeKind',TO_TIMESTAMP('2018-06-05 13:45:01','YYYY-MM-DD HH24:MI:SS'),100,'LBRA',2,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Vehicle Kind',0,TO_TIMESTAMP('2018-06-05 13:45:01','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 05/06/2018 13h45min1s BRT
-- NF-e 4.0
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1130324 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 05/06/2018 13h48min38s BRT
-- NF-e 4.0
INSERT INTO AD_Reference (AD_Client_ID,AD_Org_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,IsOrderByValue,Name,Updated,UpdatedBy,ValidationType) VALUES (0,0,1120273,TO_TIMESTAMP('2018-06-05 13:48:38','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','N','LBR_VeVIN',TO_TIMESTAMP('2018-06-05 13:48:38','YYYY-MM-DD HH24:MI:SS'),100,'L')
;

-- 05/06/2018 13h48min38s BRT
-- NF-e 4.0
INSERT INTO AD_Reference_Trl (AD_Language,AD_Reference_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Reference_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Reference t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Reference_ID=1120273 AND NOT EXISTS (SELECT * FROM AD_Reference_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Reference_ID=t.AD_Reference_ID)
;

-- 05/06/2018 13h48min58s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121952,1120273,TO_TIMESTAMP('2018-06-05 13:48:58','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Remarcado',TO_TIMESTAMP('2018-06-05 13:48:58','YYYY-MM-DD HH24:MI:SS'),100,'R')
;

-- 05/06/2018 13h48min58s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121952 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 05/06/2018 13h49min4s BRT
-- NF-e 4.0
UPDATE AD_Ref_List SET Name='Remarked',Updated=TO_TIMESTAMP('2018-06-05 13:49:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121952
;

-- 05/06/2018 13h49min4s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=1121952
;

-- 05/06/2018 13h49min4s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET Description=NULL,Name='Remarked',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Ref_List_ID=1121952
;

-- 05/06/2018 13h49min5s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Updated=TO_TIMESTAMP('2018-06-05 13:49:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121952 AND AD_Language='pt_BR'
;

-- 05/06/2018 13h49min13s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121953,1120273,TO_TIMESTAMP('2018-06-05 13:49:12','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Normal',TO_TIMESTAMP('2018-06-05 13:49:12','YYYY-MM-DD HH24:MI:SS'),100,'N')
;

-- 05/06/2018 13h49min13s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121953 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 05/06/2018 13h49min19s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Updated=TO_TIMESTAMP('2018-06-05 13:49:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121953 AND AD_Language='pt_BR'
;

-- 05/06/2018 13h49min31s BRT
-- NF-e 4.0
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1130325,1122504,0,17,1120273,1120598,'LBR_VeVIN',TO_TIMESTAMP('2018-06-05 13:49:30','YYYY-MM-DD HH24:MI:SS'),100,'LBRA',1,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','VIN',0,TO_TIMESTAMP('2018-06-05 13:49:30','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 05/06/2018 13h49min31s BRT
-- NF-e 4.0
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1130325 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 05/06/2018 13h50min6s BRT
-- NF-e 4.0
INSERT INTO AD_Reference (AD_Client_ID,AD_Org_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,IsOrderByValue,Name,Updated,UpdatedBy,ValidationType) VALUES (0,0,1120274,TO_TIMESTAMP('2018-06-05 13:50:06','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','N','LBR_VeCondition',TO_TIMESTAMP('2018-06-05 13:50:06','YYYY-MM-DD HH24:MI:SS'),100,'L')
;

-- 05/06/2018 13h50min6s BRT
-- NF-e 4.0
INSERT INTO AD_Reference_Trl (AD_Language,AD_Reference_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Reference_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Reference t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Reference_ID=1120274 AND NOT EXISTS (SELECT * FROM AD_Reference_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Reference_ID=t.AD_Reference_ID)
;

-- 05/06/2018 13h50min21s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121954,1120274,TO_TIMESTAMP('2018-06-05 13:50:20','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Acabado',TO_TIMESTAMP('2018-06-05 13:50:20','YYYY-MM-DD HH24:MI:SS'),100,'1')
;

-- 05/06/2018 13h50min21s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121954 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 05/06/2018 13h50min24s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Updated=TO_TIMESTAMP('2018-06-05 13:50:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121954 AND AD_Language='pt_BR'
;

-- 05/06/2018 13h50min44s BRT
-- NF-e 4.0
UPDATE AD_Ref_List SET Name='Finished',Updated=TO_TIMESTAMP('2018-06-05 13:50:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121954
;

-- 05/06/2018 13h50min44s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=1121954
;

-- 05/06/2018 13h50min44s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET Description=NULL,Name='Finished',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Ref_List_ID=1121954
;

-- 05/06/2018 13h50min58s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121955,1120274,TO_TIMESTAMP('2018-06-05 13:50:58','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Inacabado',TO_TIMESTAMP('2018-06-05 13:50:58','YYYY-MM-DD HH24:MI:SS'),100,'2')
;

-- 05/06/2018 13h50min58s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121955 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 05/06/2018 13h51min4s BRT
-- NF-e 4.0
UPDATE AD_Ref_List SET Name='Unfinished',Updated=TO_TIMESTAMP('2018-06-05 13:51:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121955
;

-- 05/06/2018 13h51min4s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=1121955
;

-- 05/06/2018 13h51min4s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET Description=NULL,Name='Unfinished',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Ref_List_ID=1121955
;

-- 05/06/2018 13h51min6s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Updated=TO_TIMESTAMP('2018-06-05 13:51:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121955 AND AD_Language='pt_BR'
;

-- 05/06/2018 13h51min30s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121956,1120274,TO_TIMESTAMP('2018-06-05 13:51:29','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Semi-Acabado',TO_TIMESTAMP('2018-06-05 13:51:29','YYYY-MM-DD HH24:MI:SS'),100,'3')
;

-- 05/06/2018 13h51min30s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121956 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 05/06/2018 13h51min35s BRT
-- NF-e 4.0
UPDATE AD_Ref_List SET Name='Semi-Finished',Updated=TO_TIMESTAMP('2018-06-05 13:51:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121956
;

-- 05/06/2018 13h51min35s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=1121956
;

-- 05/06/2018 13h51min35s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET Description=NULL,Name='Semi-Finished',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Ref_List_ID=1121956
;

-- 05/06/2018 13h51min57s BRT
-- NF-e 4.0
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1130326,1122505,0,17,1120274,1120598,'LBR_VeCondition',TO_TIMESTAMP('2018-06-05 13:51:57','YYYY-MM-DD HH24:MI:SS'),100,'LBRA',1,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Vehicle Condition',0,TO_TIMESTAMP('2018-06-05 13:51:57','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 05/06/2018 13h51min57s BRT
-- NF-e 4.0
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1130326 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 05/06/2018 13h52min30s BRT
-- NF-e 4.0
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1130327,1122506,0,10,1120598,'LBR_VeBrandCode',TO_TIMESTAMP('2018-06-05 13:52:29','YYYY-MM-DD HH24:MI:SS'),100,'LBRA',6,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Brand Code',0,TO_TIMESTAMP('2018-06-05 13:52:29','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 05/06/2018 13h52min30s BRT
-- NF-e 4.0
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1130327 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 05/06/2018 13h53min4s BRT
-- NF-e 4.0
INSERT INTO AD_Reference (AD_Client_ID,AD_Org_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,IsOrderByValue,Name,Updated,UpdatedBy,ValidationType) VALUES (0,0,1120275,TO_TIMESTAMP('2018-06-05 13:53:04','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','N','LBR_VeColorDENAT',TO_TIMESTAMP('2018-06-05 13:53:04','YYYY-MM-DD HH24:MI:SS'),100,'L')
;

-- 05/06/2018 13h53min4s BRT
-- NF-e 4.0
INSERT INTO AD_Reference_Trl (AD_Language,AD_Reference_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Reference_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Reference t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Reference_ID=1120275 AND NOT EXISTS (SELECT * FROM AD_Reference_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Reference_ID=t.AD_Reference_ID)
;

-- 05/06/2018 13h53min29s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121957,1120275,TO_TIMESTAMP('2018-06-05 13:53:29','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Amarela',TO_TIMESTAMP('2018-06-05 13:53:29','YYYY-MM-DD HH24:MI:SS'),100,'01')
;

-- 05/06/2018 13h53min29s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121957 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 05/06/2018 13h53min32s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Updated=TO_TIMESTAMP('2018-06-05 13:53:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121957 AND AD_Language='pt_BR'
;

-- 05/06/2018 13h53min38s BRT
-- NF-e 4.0
UPDATE AD_Ref_List SET Name='Yellow',Updated=TO_TIMESTAMP('2018-06-05 13:53:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121957
;

-- 05/06/2018 13h53min38s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=1121957
;

-- 05/06/2018 13h53min38s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET Description=NULL,Name='Yellow',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Ref_List_ID=1121957
;

-- 05/06/2018 13h53min47s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121958,1120275,TO_TIMESTAMP('2018-06-05 13:53:47','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Azul',TO_TIMESTAMP('2018-06-05 13:53:47','YYYY-MM-DD HH24:MI:SS'),100,'02')
;

-- 05/06/2018 13h53min47s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121958 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 05/06/2018 13h53min50s BRT
-- NF-e 4.0
UPDATE AD_Ref_List SET Name='Blue',Updated=TO_TIMESTAMP('2018-06-05 13:53:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121958
;

-- 05/06/2018 13h53min50s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=1121958
;

-- 05/06/2018 13h53min50s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET Description=NULL,Name='Blue',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Ref_List_ID=1121958
;

-- 05/06/2018 13h53min53s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Updated=TO_TIMESTAMP('2018-06-05 13:53:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121958 AND AD_Language='pt_BR'
;

-- 05/06/2018 13h54min2s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121959,1120275,TO_TIMESTAMP('2018-06-05 13:54:01','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Bege',TO_TIMESTAMP('2018-06-05 13:54:01','YYYY-MM-DD HH24:MI:SS'),100,'03')
;

-- 05/06/2018 13h54min2s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121959 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 05/06/2018 13h54min19s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Updated=TO_TIMESTAMP('2018-06-05 13:54:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121959 AND AD_Language='pt_BR'
;

-- 05/06/2018 13h54min23s BRT
-- NF-e 4.0
UPDATE AD_Ref_List SET Name='Beige',Updated=TO_TIMESTAMP('2018-06-05 13:54:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121959
;

-- 05/06/2018 13h54min23s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=1121959
;

-- 05/06/2018 13h54min23s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET Description=NULL,Name='Beige',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Ref_List_ID=1121959
;

-- 05/06/2018 13h54min46s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121960,1120275,TO_TIMESTAMP('2018-06-05 13:54:46','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Branca',TO_TIMESTAMP('2018-06-05 13:54:46','YYYY-MM-DD HH24:MI:SS'),100,'04')
;

-- 05/06/2018 13h54min46s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121960 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 05/06/2018 13h54min51s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Name='White',Updated=TO_TIMESTAMP('2018-06-05 13:54:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121960 AND AD_Language='pt_BR'
;

-- 05/06/2018 13h55min5s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121961,1120275,TO_TIMESTAMP('2018-06-05 13:55:04','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Cinza',TO_TIMESTAMP('2018-06-05 13:55:04','YYYY-MM-DD HH24:MI:SS'),100,'05')
;

-- 05/06/2018 13h55min5s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121961 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 05/06/2018 13h55min8s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Updated=TO_TIMESTAMP('2018-06-05 13:55:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121961 AND AD_Language='pt_BR'
;

-- 05/06/2018 13h55min12s BRT
-- NF-e 4.0
UPDATE AD_Ref_List SET Name='Grey',Updated=TO_TIMESTAMP('2018-06-05 13:55:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121961
;

-- 05/06/2018 13h55min12s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=1121961
;

-- 05/06/2018 13h55min12s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET Description=NULL,Name='Grey',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Ref_List_ID=1121961
;

-- 05/06/2018 13h55min21s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121962,1120275,TO_TIMESTAMP('2018-06-05 13:55:21','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Durada',TO_TIMESTAMP('2018-06-05 13:55:21','YYYY-MM-DD HH24:MI:SS'),100,'06')
;

-- 05/06/2018 13h55min21s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121962 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 05/06/2018 13h55min23s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Updated=TO_TIMESTAMP('2018-06-05 13:55:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121962 AND AD_Language='pt_BR'
;

-- 05/06/2018 13h55min27s BRT
-- NF-e 4.0
UPDATE AD_Ref_List SET Name='Golden',Updated=TO_TIMESTAMP('2018-06-05 13:55:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121962
;

-- 05/06/2018 13h55min27s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=1121962
;

-- 05/06/2018 13h55min27s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET Description=NULL,Name='Golden',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Ref_List_ID=1121962
;

-- 05/06/2018 13h55min37s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121963,1120275,TO_TIMESTAMP('2018-06-05 13:55:37','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Grena',TO_TIMESTAMP('2018-06-05 13:55:37','YYYY-MM-DD HH24:MI:SS'),100,'07')
;

-- 05/06/2018 13h55min37s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121963 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 05/06/2018 13h56min46s BRT
-- NF-e 4.0
UPDATE AD_Ref_List SET Name='Garnet',Updated=TO_TIMESTAMP('2018-06-05 13:56:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121963
;

-- 05/06/2018 13h56min46s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=1121963
;

-- 05/06/2018 13h56min46s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET Description=NULL,Name='Garnet',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Ref_List_ID=1121963
;

-- 05/06/2018 13h56min48s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Updated=TO_TIMESTAMP('2018-06-05 13:56:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121963 AND AD_Language='pt_BR'
;

-- 05/06/2018 13h57min17s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121964,1120275,TO_TIMESTAMP('2018-06-05 13:57:17','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Laranja',TO_TIMESTAMP('2018-06-05 13:57:17','YYYY-MM-DD HH24:MI:SS'),100,'08')
;

-- 05/06/2018 13h57min17s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121964 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 05/06/2018 13h57min38s BRT
-- NF-e 4.0
UPDATE AD_Ref_List SET Name='Orange',Updated=TO_TIMESTAMP('2018-06-05 13:57:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121964
;

-- 05/06/2018 13h57min38s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=1121964
;

-- 05/06/2018 13h57min38s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET Description=NULL,Name='Orange',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Ref_List_ID=1121964
;

-- 05/06/2018 13h57min40s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Updated=TO_TIMESTAMP('2018-06-05 13:57:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121964 AND AD_Language='pt_BR'
;

-- 05/06/2018 13h57min53s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121965,1120275,TO_TIMESTAMP('2018-06-05 13:57:53','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Marron',TO_TIMESTAMP('2018-06-05 13:57:53','YYYY-MM-DD HH24:MI:SS'),100,'09')
;

-- 05/06/2018 13h57min53s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121965 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 05/06/2018 13h58min4s BRT
-- NF-e 4.0
UPDATE AD_Ref_List SET Name='Brown',Updated=TO_TIMESTAMP('2018-06-05 13:58:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121965
;

-- 05/06/2018 13h58min4s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=1121965
;

-- 05/06/2018 13h58min4s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET Description=NULL,Name='Brown',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Ref_List_ID=1121965
;

-- 05/06/2018 13h58min21s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121966,1120275,TO_TIMESTAMP('2018-06-05 13:58:21','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Silver',TO_TIMESTAMP('2018-06-05 13:58:21','YYYY-MM-DD HH24:MI:SS'),100,'10')
;

-- 05/06/2018 13h58min21s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121966 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 05/06/2018 13h58min27s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Name='Prata',Updated=TO_TIMESTAMP('2018-06-05 13:58:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121966 AND AD_Language='pt_BR'
;

-- 05/06/2018 13h58min38s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121967,1120275,TO_TIMESTAMP('2018-06-05 13:58:37','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Preta',TO_TIMESTAMP('2018-06-05 13:58:37','YYYY-MM-DD HH24:MI:SS'),100,'11')
;

-- 05/06/2018 13h58min38s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121967 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 05/06/2018 13h58min41s BRT
-- NF-e 4.0
UPDATE AD_Ref_List SET Name='Black',Updated=TO_TIMESTAMP('2018-06-05 13:58:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121967
;

-- 05/06/2018 13h58min41s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=1121967
;

-- 05/06/2018 13h58min41s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET Description=NULL,Name='Black',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Ref_List_ID=1121967
;

-- 05/06/2018 13h58min44s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Updated=TO_TIMESTAMP('2018-06-05 13:58:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121967 AND AD_Language='pt_BR'
;

-- 05/06/2018 13h58min59s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121968,1120275,TO_TIMESTAMP('2018-06-05 13:58:59','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Rosa',TO_TIMESTAMP('2018-06-05 13:58:59','YYYY-MM-DD HH24:MI:SS'),100,'12')
;

-- 05/06/2018 13h58min59s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121968 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 05/06/2018 13h59min3s BRT
-- NF-e 4.0
UPDATE AD_Ref_List SET Name='Pink',Updated=TO_TIMESTAMP('2018-06-05 13:59:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121968
;

-- 05/06/2018 13h59min3s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=1121968
;

-- 05/06/2018 13h59min3s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET Description=NULL,Name='Pink',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Ref_List_ID=1121968
;

-- 05/06/2018 13h59min16s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121969,1120275,TO_TIMESTAMP('2018-06-05 13:59:15','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Roxa',TO_TIMESTAMP('2018-06-05 13:59:15','YYYY-MM-DD HH24:MI:SS'),100,'13')
;

-- 05/06/2018 13h59min16s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121969 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 05/06/2018 13h59min28s BRT
-- NF-e 4.0
UPDATE AD_Ref_List SET Name='Purple',Updated=TO_TIMESTAMP('2018-06-05 13:59:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121969
;

-- 05/06/2018 13h59min28s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=1121969
;

-- 05/06/2018 13h59min28s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET Description=NULL,Name='Purple',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Ref_List_ID=1121969
;

-- 05/06/2018 13h59min30s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Updated=TO_TIMESTAMP('2018-06-05 13:59:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121969 AND AD_Language='pt_BR'
;

-- 05/06/2018 13h59min34s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Updated=TO_TIMESTAMP('2018-06-05 13:59:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121968 AND AD_Language='pt_BR'
;

-- 05/06/2018 13h59min48s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121970,1120275,TO_TIMESTAMP('2018-06-05 13:59:47','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Verde',TO_TIMESTAMP('2018-06-05 13:59:47','YYYY-MM-DD HH24:MI:SS'),100,'14')
;

-- 05/06/2018 13h59min48s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121970 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 05/06/2018 13h59min51s BRT
-- NF-e 4.0
UPDATE AD_Ref_List SET Name='Green',Updated=TO_TIMESTAMP('2018-06-05 13:59:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121970
;

-- 05/06/2018 13h59min51s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=1121970
;

-- 05/06/2018 13h59min51s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET Description=NULL,Name='Green',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Ref_List_ID=1121970
;

-- 05/06/2018 13h59min53s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Updated=TO_TIMESTAMP('2018-06-05 13:59:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121970 AND AD_Language='pt_BR'
;

-- 05/06/2018 14h0min4s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121971,1120275,TO_TIMESTAMP('2018-06-05 14:00:04','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Vermelha',TO_TIMESTAMP('2018-06-05 14:00:04','YYYY-MM-DD HH24:MI:SS'),100,'15')
;

-- 05/06/2018 14h0min4s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121971 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 05/06/2018 14h0min7s BRT
-- NF-e 4.0
UPDATE AD_Ref_List SET Name='Red',Updated=TO_TIMESTAMP('2018-06-05 14:00:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121971
;

-- 05/06/2018 14h0min7s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=1121971
;

-- 05/06/2018 14h0min7s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET Description=NULL,Name='Red',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Ref_List_ID=1121971
;

-- 05/06/2018 14h0min19s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Updated=TO_TIMESTAMP('2018-06-05 14:00:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121971 AND AD_Language='pt_BR'
;

-- 05/06/2018 14h0min26s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121972,1120275,TO_TIMESTAMP('2018-06-05 14:00:26','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Fantasia',TO_TIMESTAMP('2018-06-05 14:00:26','YYYY-MM-DD HH24:MI:SS'),100,'16')
;

-- 05/06/2018 14h0min26s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121972 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 05/06/2018 14h0min30s BRT
-- NF-e 4.0
UPDATE AD_Ref_List SET Name='Fantasy',Updated=TO_TIMESTAMP('2018-06-05 14:00:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121972
;

-- 05/06/2018 14h0min30s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=1121972
;

-- 05/06/2018 14h0min30s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET Description=NULL,Name='Fantasy',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Ref_List_ID=1121972
;

-- 05/06/2018 14h0min49s BRT
-- NF-e 4.0
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1130328,1122507,0,17,1120275,1120598,'LBR_VeColorDENAT',TO_TIMESTAMP('2018-06-05 14:00:49','YYYY-MM-DD HH24:MI:SS'),100,'LBRA',2,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Color (DENAT)',0,TO_TIMESTAMP('2018-06-05 14:00:49','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 05/06/2018 14h0min49s BRT
-- NF-e 4.0
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1130328 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 05/06/2018 14h1min37s BRT
-- NF-e 4.0
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1130329,1122508,0,11,1120598,'LBR_VeMaxCapacity',TO_TIMESTAMP('2018-06-05 14:01:36','YYYY-MM-DD HH24:MI:SS'),100,'U',3,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Max. Capacity',0,TO_TIMESTAMP('2018-06-05 14:01:36','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 05/06/2018 14h1min37s BRT
-- NF-e 4.0
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1130329 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 05/06/2018 14h1min41s BRT
-- NF-e 4.0
UPDATE AD_Column SET EntityType='LBRA',Updated=TO_TIMESTAMP('2018-06-05 14:01:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1130329
;

-- 05/06/2018 14h2min33s BRT
-- NF-e 4.0
INSERT INTO AD_Reference (AD_Client_ID,AD_Org_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,IsOrderByValue,Name,Updated,UpdatedBy,ValidationType) VALUES (0,0,1120276,TO_TIMESTAMP('2018-06-05 14:02:33','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','N','LBR_VeRestriction',TO_TIMESTAMP('2018-06-05 14:02:33','YYYY-MM-DD HH24:MI:SS'),100,'L')
;

-- 05/06/2018 14h2min33s BRT
-- NF-e 4.0
INSERT INTO AD_Reference_Trl (AD_Language,AD_Reference_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Reference_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Reference t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Reference_ID=1120276 AND NOT EXISTS (SELECT * FROM AD_Reference_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Reference_ID=t.AD_Reference_ID)
;

-- 05/06/2018 14h2min54s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121973,1120276,TO_TIMESTAMP('2018-06-05 14:02:54','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Sem Restrição',TO_TIMESTAMP('2018-06-05 14:02:54','YYYY-MM-DD HH24:MI:SS'),100,'0')
;

-- 05/06/2018 14h2min54s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121973 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 05/06/2018 14h2min58s BRT
-- NF-e 4.0
UPDATE AD_Ref_List SET Name='None',Updated=TO_TIMESTAMP('2018-06-05 14:02:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121973
;

-- 05/06/2018 14h2min58s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=1121973
;

-- 05/06/2018 14h2min58s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET Description=NULL,Name='None',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Ref_List_ID=1121973
;

-- 05/06/2018 14h3min28s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121974,1120276,TO_TIMESTAMP('2018-06-05 14:03:27','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Alienação Fiduciária',TO_TIMESTAMP('2018-06-05 14:03:27','YYYY-MM-DD HH24:MI:SS'),100,'1')
;

-- 05/06/2018 14h3min28s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121974 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 05/06/2018 14h3min30s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Updated=TO_TIMESTAMP('2018-06-05 14:03:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121974 AND AD_Language='pt_BR'
;

-- 05/06/2018 14h3min33s BRT
-- NF-e 4.0
UPDATE AD_Ref_List SET Name='Fiduciary Alienation',Updated=TO_TIMESTAMP('2018-06-05 14:03:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121974
;

-- 05/06/2018 14h3min33s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=1121974
;

-- 05/06/2018 14h3min33s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET Description=NULL,Name='Fiduciary Alienation',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Ref_List_ID=1121974
;

-- 05/06/2018 14h3min57s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121975,1120276,TO_TIMESTAMP('2018-06-05 14:03:57','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Arrendamento Mercantil',TO_TIMESTAMP('2018-06-05 14:03:57','YYYY-MM-DD HH24:MI:SS'),100,'2')
;

-- 05/06/2018 14h3min57s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121975 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 05/06/2018 14h4min11s BRT
-- NF-e 4.0
UPDATE AD_Ref_List SET Name='Lease',Updated=TO_TIMESTAMP('2018-06-05 14:04:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121975
;

-- 05/06/2018 14h4min11s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=1121975
;

-- 05/06/2018 14h4min11s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET Description=NULL,Name='Lease',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Ref_List_ID=1121975
;

-- 05/06/2018 14h4min14s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Updated=TO_TIMESTAMP('2018-06-05 14:04:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121975 AND AD_Language='pt_BR'
;

-- 05/06/2018 14h4min48s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121976,1120276,TO_TIMESTAMP('2018-06-05 14:04:48','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Reserva de Domínio',TO_TIMESTAMP('2018-06-05 14:04:48','YYYY-MM-DD HH24:MI:SS'),100,'3')
;

-- 05/06/2018 14h4min48s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121976 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 05/06/2018 14h5min17s BRT
-- NF-e 4.0
UPDATE AD_Ref_List SET Name='Domain Reservation',Updated=TO_TIMESTAMP('2018-06-05 14:05:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121976
;

-- 05/06/2018 14h5min17s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=1121976
;

-- 05/06/2018 14h5min17s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET Description=NULL,Name='Domain Reservation',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Ref_List_ID=1121976
;

-- 05/06/2018 14h5min19s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Updated=TO_TIMESTAMP('2018-06-05 14:05:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121976 AND AD_Language='pt_BR'
;

-- 05/06/2018 14h5min55s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121977,1120276,TO_TIMESTAMP('2018-06-05 14:05:54','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Penhor de Veículos',TO_TIMESTAMP('2018-06-05 14:05:54','YYYY-MM-DD HH24:MI:SS'),100,'4')
;

-- 05/06/2018 14h5min55s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121977 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 05/06/2018 14h6min5s BRT
-- NF-e 4.0
UPDATE AD_Ref_List SET Name='Vehicle Pawn',Updated=TO_TIMESTAMP('2018-06-05 14:06:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121977
;

-- 05/06/2018 14h6min5s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=1121977
;

-- 05/06/2018 14h6min5s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET Description=NULL,Name='Vehicle Pawn',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Ref_List_ID=1121977
;

-- 05/06/2018 14h6min21s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121978,1120276,TO_TIMESTAMP('2018-06-05 14:06:21','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Outras',TO_TIMESTAMP('2018-06-05 14:06:21','YYYY-MM-DD HH24:MI:SS'),100,'9')
;

-- 05/06/2018 14h6min21s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121978 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 05/06/2018 14h6min27s BRT
-- NF-e 4.0
UPDATE AD_Ref_List SET Name='Other',Updated=TO_TIMESTAMP('2018-06-05 14:06:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121978
;

-- 05/06/2018 14h6min27s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=1121978
;

-- 05/06/2018 14h6min27s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET Description=NULL,Name='Other',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Ref_List_ID=1121978
;

-- 05/06/2018 14h6min29s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Updated=TO_TIMESTAMP('2018-06-05 14:06:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121978 AND AD_Language='pt_BR'
;

-- 05/06/2018 14h6min33s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Updated=TO_TIMESTAMP('2018-06-05 14:06:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121977 AND AD_Language='pt_BR'
;

-- 05/06/2018 14h6min42s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Updated=TO_TIMESTAMP('2018-06-05 14:06:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121974 AND AD_Language='pt_BR'
;

-- 05/06/2018 14h6min47s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Updated=TO_TIMESTAMP('2018-06-05 14:06:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121973 AND AD_Language='pt_BR'
;

-- 05/06/2018 14h7min26s BRT
-- NF-e 4.0
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1130330,1122509,0,17,1120276,1120598,'LBR_VeRestriction',TO_TIMESTAMP('2018-06-05 14:07:25','YYYY-MM-DD HH24:MI:SS'),100,'LBRA',1,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Restriction',0,TO_TIMESTAMP('2018-06-05 14:07:25','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 05/06/2018 14h7min26s BRT
-- NF-e 4.0
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1130330 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 05/06/2018 14h8min12s BRT
-- NF-e 4.0
INSERT INTO AD_Reference (AD_Client_ID,AD_Org_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,IsOrderByValue,Name,Updated,UpdatedBy,ValidationType) VALUES (0,0,1120277,TO_TIMESTAMP('2018-06-05 14:08:12','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','N','LBR_GunType',TO_TIMESTAMP('2018-06-05 14:08:12','YYYY-MM-DD HH24:MI:SS'),100,'L')
;

-- 05/06/2018 14h8min12s BRT
-- NF-e 4.0
INSERT INTO AD_Reference_Trl (AD_Language,AD_Reference_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Reference_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Reference t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Reference_ID=1120277 AND NOT EXISTS (SELECT * FROM AD_Reference_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Reference_ID=t.AD_Reference_ID)
;

-- 05/06/2018 14h8min31s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121979,1120277,TO_TIMESTAMP('2018-06-05 14:08:31','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Uso Permitido',TO_TIMESTAMP('2018-06-05 14:08:31','YYYY-MM-DD HH24:MI:SS'),100,'0')
;

-- 05/06/2018 14h8min31s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121979 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 05/06/2018 14h8min48s BRT
-- NF-e 4.0
UPDATE AD_Ref_List SET Name='Allowed Usage',Updated=TO_TIMESTAMP('2018-06-05 14:08:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121979
;

-- 05/06/2018 14h8min48s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=1121979
;

-- 05/06/2018 14h8min48s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET Description=NULL,Name='Allowed Usage',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Ref_List_ID=1121979
;

-- 05/06/2018 14h9min3s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121980,1120277,TO_TIMESTAMP('2018-06-05 14:09:03','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Uso Restriro',TO_TIMESTAMP('2018-06-05 14:09:03','YYYY-MM-DD HH24:MI:SS'),100,'1')
;

-- 05/06/2018 14h9min3s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121980 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 05/06/2018 14h9min8s BRT
-- NF-e 4.0
UPDATE AD_Ref_List SET Name='Restricted Use',Updated=TO_TIMESTAMP('2018-06-05 14:09:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121980
;

-- 05/06/2018 14h9min8s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=1121980
;

-- 05/06/2018 14h9min8s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET Description=NULL,Name='Restricted Use',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Ref_List_ID=1121980
;

-- 05/06/2018 14h9min15s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Updated=TO_TIMESTAMP('2018-06-05 14:09:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121980 AND AD_Language='pt_BR'
;

-- 05/06/2018 14h9min19s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Updated=TO_TIMESTAMP('2018-06-05 14:09:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121979 AND AD_Language='pt_BR'
;

-- 05/06/2018 14h9min31s BRT
-- NF-e 4.0
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1130331,1122510,0,17,1120277,1120598,'LBR_GunType',TO_TIMESTAMP('2018-06-05 14:09:30','YYYY-MM-DD HH24:MI:SS'),100,'U',1,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Gun Type',0,TO_TIMESTAMP('2018-06-05 14:09:30','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 05/06/2018 14h9min31s BRT
-- NF-e 4.0
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1130331 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 05/06/2018 14h9min34s BRT
-- NF-e 4.0
UPDATE AD_Column SET EntityType='LBRA',Updated=TO_TIMESTAMP('2018-06-05 14:09:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1130331
;

-- 05/06/2018 14h10min14s BRT
-- NF-e 4.0
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1130332,1122511,0,10,1120598,'LBR_GunSerial',TO_TIMESTAMP('2018-06-05 14:10:13','YYYY-MM-DD HH24:MI:SS'),100,'LBRA',15,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Gun Serial',0,TO_TIMESTAMP('2018-06-05 14:10:13','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 05/06/2018 14h10min14s BRT
-- NF-e 4.0
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1130332 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 05/06/2018 14h10min36s BRT
-- NF-e 4.0
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1130333,1122512,0,10,1120598,'LBR_GunBarrel',TO_TIMESTAMP('2018-06-05 14:10:36','YYYY-MM-DD HH24:MI:SS'),100,'LBRA',15,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Gun Barrel',0,TO_TIMESTAMP('2018-06-05 14:10:36','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 05/06/2018 14h10min36s BRT
-- NF-e 4.0
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1130333 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 05/06/2018 14h11min9s BRT
-- NF-e 4.0
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1130334,1122513,0,10,1120598,'LBR_RECOPI',TO_TIMESTAMP('2018-06-05 14:11:08','YYYY-MM-DD HH24:MI:SS'),100,'LBRA',20,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','RECOPI',0,TO_TIMESTAMP('2018-06-05 14:11:08','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 05/06/2018 14h11min9s BRT
-- NF-e 4.0
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1130334 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 05/06/2018 14h11min55s BRT
-- NF-e 4.0
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1130335,1000219,0,30,1000033,1120598,'LBR_NotaFiscalLine_ID',TO_TIMESTAMP('2018-06-05 14:11:55','YYYY-MM-DD HH24:MI:SS'),100,'Primary key table LBR_NotaFiscalLine','LBRA',10,'Primary key table LBR_NotaFiscalLine','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Nota Fiscal Line',0,TO_TIMESTAMP('2018-06-05 14:11:55','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 05/06/2018 14h11min55s BRT
-- NF-e 4.0
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1130335 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 05/06/2018 14h13min2s BRT
-- NF-e 4.0
CREATE TABLE LBR_NFLineMA (AD_Client_ID NUMERIC(10) NOT NULL, AD_Org_ID NUMERIC(10) NOT NULL, Created TIMESTAMP NOT NULL, CreatedBy NUMERIC(10) NOT NULL, DueDate TIMESTAMP DEFAULT NULL , IsActive CHAR(1) CHECK (IsActive IN ('Y','N')) NOT NULL, LBR_ANPCode VARCHAR(9) DEFAULT NULL , LBR_ANPDesc VARCHAR(95) DEFAULT NULL , LBR_ANVISACode VARCHAR(13) DEFAULT NULL , LBR_CODIF VARCHAR(21) DEFAULT NULL , LBR_GunBarrel VARCHAR(15) DEFAULT NULL , LBR_GunSerial VARCHAR(15) DEFAULT NULL , LBR_GunType CHAR(1) DEFAULT NULL , LBR_NFLineMA_ID NUMERIC(10) NOT NULL, LBR_NotaFiscalLine_ID NUMERIC(10) DEFAULT NULL , LBR_PercGLP NUMERIC DEFAULT 0, LBR_PercGasI NUMERIC DEFAULT 0, LBR_PercGasN NUMERIC DEFAULT 0, LBR_ProductionDate TIMESTAMP DEFAULT NULL , LBR_RECOPI VARCHAR(20) DEFAULT NULL , LBR_StartAmt NUMERIC DEFAULT 0, LBR_VeBrandCode VARCHAR(6) DEFAULT NULL , LBR_VeChassis VARCHAR(21) DEFAULT NULL , LBR_VeColorCode VARCHAR(4) DEFAULT NULL , LBR_VeColorDENAT VARCHAR(2) DEFAULT NULL , LBR_VeColorDesc VARCHAR(40) DEFAULT NULL , LBR_VeCondition CHAR(1) DEFAULT NULL , LBR_VeCylinder NUMERIC DEFAULT NULL , LBR_VeEngineNo VARCHAR(21) DEFAULT NULL , LBR_VeKind VARCHAR(2) DEFAULT NULL , LBR_VeMaxCapacity NUMERIC(10) DEFAULT NULL , LBR_VeOperType CHAR(1) DEFAULT NULL , LBR_VePower NUMERIC DEFAULT NULL , LBR_VeRestriction CHAR(1) DEFAULT NULL , LBR_VeSerial VARCHAR(9) DEFAULT NULL , LBR_VeTpFuel VARCHAR(2) DEFAULT NULL , LBR_VeTpPaint VARCHAR(1) DEFAULT NULL , LBR_VeTractionCap NUMERIC DEFAULT NULL , LBR_VeType VARCHAR(2) DEFAULT NULL , LBR_VeVIN CHAR(1) DEFAULT NULL , LBR_VeWheelBase NUMERIC DEFAULT NULL , LBR_VeYearModel VARCHAR(4) DEFAULT NULL , LBR_VeYearProduction VARCHAR(4) DEFAULT NULL , Lot VARCHAR(20) DEFAULT NULL , M_AttributeSetInstance_ID NUMERIC(10) NOT NULL, Updated TIMESTAMP NOT NULL, UpdatedBy NUMERIC(10) NOT NULL, CONSTRAINT LBR_NFLineMA_Key PRIMARY KEY (LBR_NFLineMA_ID))
;

-- 05/06/2018 14h13min22s BRT
-- NF-e 4.0
UPDATE AD_Table SET AD_Window_ID=1000015, PO_Window_ID=1000019,Updated=TO_TIMESTAMP('2018-06-05 14:13:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=1120598
;

-- 05/06/2018 15h54min29s BRT
-- NF-e 4.0
UPDATE AD_Tab SET Parent_Column_ID=NULL, SeqNo=70,Updated=TO_TIMESTAMP('2018-06-05 15:54:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=1120196
;

-- 05/06/2018 15h54min37s BRT
-- NF-e 4.0
UPDATE AD_Tab SET SeqNo=60,Updated=TO_TIMESTAMP('2018-06-05 15:54:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=1120177
;

-- 05/06/2018 15h54min53s BRT
-- NF-e 4.0
UPDATE AD_Tab SET SeqNo=40,Updated=TO_TIMESTAMP('2018-06-05 15:54:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=1000027
;

-- 05/06/2018 15h55min0s BRT
-- NF-e 4.0
UPDATE AD_Tab SET SeqNo=30,Updated=TO_TIMESTAMP('2018-06-05 15:55:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=1000021
;

-- 05/06/2018 15h55min3s BRT
-- NF-e 4.0
UPDATE AD_Tab SET SeqNo=20,Updated=TO_TIMESTAMP('2018-06-05 15:55:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=1000026
;

-- 05/06/2018 15h55min38s BRT
-- NF-e 4.0
INSERT INTO AD_Tab (AD_Client_ID,AD_Org_ID,AD_Tab_ID,AD_Table_ID,AD_Window_ID,Created,CreatedBy,EntityType,HasTree,ImportFields,IsActive,IsAdvancedTab,IsInfoTab,IsInsertRecord,IsReadOnly,IsSingleRow,IsSortTab,IsTranslationTab,Name,Processing,SeqNo,TabLevel,Updated,UpdatedBy) VALUES (0,0,1120287,1120598,1000015,TO_TIMESTAMP('2018-06-05 15:55:38','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','N','N','Y','N','N','Y','N','N','N','N','Line Attributes','N',50,2,TO_TIMESTAMP('2018-06-05 15:55:38','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 05/06/2018 15h55min38s BRT
-- NF-e 4.0
INSERT INTO AD_Tab_Trl (AD_Language,AD_Tab_ID, CommitWarning,Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Tab_ID, t.CommitWarning,t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Tab t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Tab_ID=1120287 AND NOT EXISTS (SELECT * FROM AD_Tab_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Tab_ID=t.AD_Tab_ID)
;

-- 05/06/2018 15h56min10s BRT
-- NF-e 4.0
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1130304,1127374,0,1120287,TO_TIMESTAMP('2018-06-05 15:56:10','YYYY-MM-DD HH24:MI:SS'),100,10,'LBRA','Y','Y','Y','N','N','N','N','N','% GLP Derivative',TO_TIMESTAMP('2018-06-05 15:56:10','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 05/06/2018 15h56min10s BRT
-- NF-e 4.0
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1127374 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 05/06/2018 15h56min10s BRT
-- NF-e 4.0
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1130306,1127375,0,1120287,TO_TIMESTAMP('2018-06-05 15:56:10','YYYY-MM-DD HH24:MI:SS'),100,10,'LBRA','Y','Y','Y','N','N','N','N','N','% Gas Imported',TO_TIMESTAMP('2018-06-05 15:56:10','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 05/06/2018 15h56min10s BRT
-- NF-e 4.0
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1127375 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 05/06/2018 15h56min11s BRT
-- NF-e 4.0
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1130305,1127376,0,1120287,TO_TIMESTAMP('2018-06-05 15:56:10','YYYY-MM-DD HH24:MI:SS'),100,10,'LBRA','Y','Y','Y','N','N','N','N','N','% Gas Interior',TO_TIMESTAMP('2018-06-05 15:56:10','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 05/06/2018 15h56min11s BRT
-- NF-e 4.0
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1127376 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 05/06/2018 15h56min11s BRT
-- NF-e 4.0
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1130302,1127377,0,1120287,TO_TIMESTAMP('2018-06-05 15:56:11','YYYY-MM-DD HH24:MI:SS'),100,9,'LBRA','Y','Y','Y','N','N','N','N','N','ANP Code',TO_TIMESTAMP('2018-06-05 15:56:11','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 05/06/2018 15h56min11s BRT
-- NF-e 4.0
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1127377 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 05/06/2018 15h56min11s BRT
-- NF-e 4.0
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1130303,1127378,0,1120287,TO_TIMESTAMP('2018-06-05 15:56:11','YYYY-MM-DD HH24:MI:SS'),100,95,'LBRA','Y','Y','Y','N','N','N','N','N','ANP Description',TO_TIMESTAMP('2018-06-05 15:56:11','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 05/06/2018 15h56min11s BRT
-- NF-e 4.0
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1127378 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 05/06/2018 15h56min12s BRT
-- NF-e 4.0
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1130301,1127379,0,1120287,TO_TIMESTAMP('2018-06-05 15:56:11','YYYY-MM-DD HH24:MI:SS'),100,13,'LBRA','Y','Y','Y','N','N','N','N','N','ANVISA Code',TO_TIMESTAMP('2018-06-05 15:56:11','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 05/06/2018 15h56min12s BRT
-- NF-e 4.0
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1127379 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 05/06/2018 15h56min12s BRT
-- NF-e 4.0
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1130292,1127380,0,1120287,TO_TIMESTAMP('2018-06-05 15:56:12','YYYY-MM-DD HH24:MI:SS'),100,'The record is active in the system',1,'LBRA','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Y','Y','Y','N','N','N','N','N','Active',TO_TIMESTAMP('2018-06-05 15:56:12','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 05/06/2018 15h56min12s BRT
-- NF-e 4.0
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1127380 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 05/06/2018 15h56min12s BRT
-- NF-e 4.0
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1130297,1127381,0,1120287,TO_TIMESTAMP('2018-06-05 15:56:12','YYYY-MM-DD HH24:MI:SS'),100,'Product Attribute Set Instance',10,'LBRA','The values of the actual Product Attribute Instances.  The product level attributes are defined on Product level.','Y','Y','Y','N','N','N','N','N','Attribute Set Instance',TO_TIMESTAMP('2018-06-05 15:56:12','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 05/06/2018 15h56min12s BRT
-- NF-e 4.0
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1127381 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 05/06/2018 15h56min13s BRT
-- NF-e 4.0
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1130327,1127382,0,1120287,TO_TIMESTAMP('2018-06-05 15:56:12','YYYY-MM-DD HH24:MI:SS'),100,6,'LBRA','Y','Y','Y','N','N','N','N','N','Brand Code',TO_TIMESTAMP('2018-06-05 15:56:12','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 05/06/2018 15h56min13s BRT
-- NF-e 4.0
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1127382 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 05/06/2018 15h56min13s BRT
-- NF-e 4.0
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1130308,1127383,0,1120287,TO_TIMESTAMP('2018-06-05 15:56:13','YYYY-MM-DD HH24:MI:SS'),100,'Authorization Code from CODIF',21,'LBRA','Y','Y','Y','N','N','N','N','N','CODIF',TO_TIMESTAMP('2018-06-05 15:56:13','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 05/06/2018 15h56min13s BRT
-- NF-e 4.0
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1127383 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 05/06/2018 15h56min13s BRT
-- NF-e 4.0
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1130310,1127384,0,1120287,TO_TIMESTAMP('2018-06-05 15:56:13','YYYY-MM-DD HH24:MI:SS'),100,21,'LBRA','Y','Y','Y','N','N','N','N','N','Chassis',TO_TIMESTAMP('2018-06-05 15:56:13','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 05/06/2018 15h56min13s BRT
-- NF-e 4.0
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1127384 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 05/06/2018 15h56min14s BRT
-- NF-e 4.0
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1130290,1127385,0,1120287,TO_TIMESTAMP('2018-06-05 15:56:13','YYYY-MM-DD HH24:MI:SS'),100,'Client/Tenant for this installation.',10,'LBRA','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Y','Y','Y','N','N','N','N','N','Client',TO_TIMESTAMP('2018-06-05 15:56:13','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 05/06/2018 15h56min14s BRT
-- NF-e 4.0
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1127385 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 05/06/2018 15h56min14s BRT
-- NF-e 4.0
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1130328,1127386,0,1120287,TO_TIMESTAMP('2018-06-05 15:56:14','YYYY-MM-DD HH24:MI:SS'),100,2,'LBRA','Y','Y','Y','N','N','N','N','N','Color (DENAT)',TO_TIMESTAMP('2018-06-05 15:56:14','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 05/06/2018 15h56min14s BRT
-- NF-e 4.0
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1127386 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 05/06/2018 15h56min14s BRT
-- NF-e 4.0
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1130311,1127387,0,1120287,TO_TIMESTAMP('2018-06-05 15:56:14','YYYY-MM-DD HH24:MI:SS'),100,4,'LBRA','Y','Y','Y','N','N','N','N','N','Color Code',TO_TIMESTAMP('2018-06-05 15:56:14','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 05/06/2018 15h56min14s BRT
-- NF-e 4.0
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1127387 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 05/06/2018 15h56min15s BRT
-- NF-e 4.0
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1130312,1127388,0,1120287,TO_TIMESTAMP('2018-06-05 15:56:14','YYYY-MM-DD HH24:MI:SS'),100,40,'LBRA','Y','Y','Y','N','N','N','N','N','Color Description',TO_TIMESTAMP('2018-06-05 15:56:14','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 05/06/2018 15h56min15s BRT
-- NF-e 4.0
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1127388 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 05/06/2018 15h56min15s BRT
-- NF-e 4.0
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1130314,1127389,0,1120287,TO_TIMESTAMP('2018-06-05 15:56:15','YYYY-MM-DD HH24:MI:SS'),100,10,'LBRA','Y','Y','Y','N','N','N','N','N','Cylinder',TO_TIMESTAMP('2018-06-05 15:56:15','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 05/06/2018 15h56min15s BRT
-- NF-e 4.0
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1127389 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 05/06/2018 15h56min15s BRT
-- NF-e 4.0
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1130300,1127390,0,1120287,TO_TIMESTAMP('2018-06-05 15:56:15','YYYY-MM-DD HH24:MI:SS'),100,'Date when the payment is due',10,'LBRA','Date when the payment is due without deductions or discount','Y','Y','Y','N','N','N','N','N','Due Date',TO_TIMESTAMP('2018-06-05 15:56:15','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 05/06/2018 15h56min15s BRT
-- NF-e 4.0
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1127390 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 05/06/2018 15h56min16s BRT
-- NF-e 4.0
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1130317,1127391,0,1120287,TO_TIMESTAMP('2018-06-05 15:56:15','YYYY-MM-DD HH24:MI:SS'),100,21,'LBRA','Y','Y','Y','N','N','N','N','N','Engine Number',TO_TIMESTAMP('2018-06-05 15:56:15','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 05/06/2018 15h56min16s BRT
-- NF-e 4.0
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1127391 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 05/06/2018 15h56min16s BRT
-- NF-e 4.0
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1130313,1127392,0,1120287,TO_TIMESTAMP('2018-06-05 15:56:16','YYYY-MM-DD HH24:MI:SS'),100,10,'LBRA','Y','Y','Y','N','N','N','N','N','Engine Power (CV)',TO_TIMESTAMP('2018-06-05 15:56:16','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 05/06/2018 15h56min16s BRT
-- NF-e 4.0
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1127392 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 05/06/2018 15h56min16s BRT
-- NF-e 4.0
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1130316,1127393,0,1120287,TO_TIMESTAMP('2018-06-05 15:56:16','YYYY-MM-DD HH24:MI:SS'),100,2,'LBRA','Y','Y','Y','N','N','N','N','N','Fuel Type',TO_TIMESTAMP('2018-06-05 15:56:16','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 05/06/2018 15h56min16s BRT
-- NF-e 4.0
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1127393 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 05/06/2018 15h56min17s BRT
-- NF-e 4.0
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1130333,1127394,0,1120287,TO_TIMESTAMP('2018-06-05 15:56:16','YYYY-MM-DD HH24:MI:SS'),100,15,'LBRA','Y','Y','Y','N','N','N','N','N','Gun Barrel',TO_TIMESTAMP('2018-06-05 15:56:16','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 05/06/2018 15h56min17s BRT
-- NF-e 4.0
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1127394 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 05/06/2018 15h56min17s BRT
-- NF-e 4.0
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1130332,1127395,0,1120287,TO_TIMESTAMP('2018-06-05 15:56:17','YYYY-MM-DD HH24:MI:SS'),100,15,'LBRA','Y','Y','Y','N','N','N','N','N','Gun Serial',TO_TIMESTAMP('2018-06-05 15:56:17','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 05/06/2018 15h56min17s BRT
-- NF-e 4.0
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1127395 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 05/06/2018 15h56min17s BRT
-- NF-e 4.0
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1130331,1127396,0,1120287,TO_TIMESTAMP('2018-06-05 15:56:17','YYYY-MM-DD HH24:MI:SS'),100,1,'LBRA','Y','Y','Y','N','N','N','N','N','Gun Type',TO_TIMESTAMP('2018-06-05 15:56:17','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 05/06/2018 15h56min17s BRT
-- NF-e 4.0
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1127396 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 05/06/2018 15h56min18s BRT
-- NF-e 4.0
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1130298,1127397,0,1120287,TO_TIMESTAMP('2018-06-05 15:56:17','YYYY-MM-DD HH24:MI:SS'),100,'Lot number (alphanumeric)',20,'LBRA','The Lot Number indicates the specific lot that a product was part of.','Y','Y','Y','N','N','N','N','N','Lot No',TO_TIMESTAMP('2018-06-05 15:56:17','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 05/06/2018 15h56min18s BRT
-- NF-e 4.0
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1127397 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 05/06/2018 15h56min18s BRT
-- NF-e 4.0
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1130329,1127398,0,1120287,TO_TIMESTAMP('2018-06-05 15:56:18','YYYY-MM-DD HH24:MI:SS'),100,3,'LBRA','Y','Y','Y','N','N','N','N','N','Max. Capacity',TO_TIMESTAMP('2018-06-05 15:56:18','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 05/06/2018 15h56min18s BRT
-- NF-e 4.0
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1127398 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 05/06/2018 15h56min18s BRT
-- NF-e 4.0
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1130289,1127399,0,1120287,TO_TIMESTAMP('2018-06-05 15:56:18','YYYY-MM-DD HH24:MI:SS'),100,10,'LBRA','Y','Y','N','N','N','N','N','N','NF Line Material Attributes',TO_TIMESTAMP('2018-06-05 15:56:18','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 05/06/2018 15h56min18s BRT
-- NF-e 4.0
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1127399 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 05/06/2018 15h56min19s BRT
-- NF-e 4.0
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1130335,1127400,0,1120287,TO_TIMESTAMP('2018-06-05 15:56:18','YYYY-MM-DD HH24:MI:SS'),100,'Primary key table LBR_NotaFiscalLine',10,'LBRA','Primary key table LBR_NotaFiscalLine','Y','Y','Y','N','N','N','N','N','Nota Fiscal Line',TO_TIMESTAMP('2018-06-05 15:56:18','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 05/06/2018 15h56min19s BRT
-- NF-e 4.0
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1127400 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 05/06/2018 15h56min19s BRT
-- NF-e 4.0
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1130309,1127401,0,1120287,TO_TIMESTAMP('2018-06-05 15:56:19','YYYY-MM-DD HH24:MI:SS'),100,1,'LBRA','Y','Y','Y','N','N','N','N','N','Operation Type',TO_TIMESTAMP('2018-06-05 15:56:19','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 05/06/2018 15h56min19s BRT
-- NF-e 4.0
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1127401 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 05/06/2018 15h56min19s BRT
-- NF-e 4.0
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1130291,1127402,0,1120287,TO_TIMESTAMP('2018-06-05 15:56:19','YYYY-MM-DD HH24:MI:SS'),100,'Organizational entity within client',10,'LBRA','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Y','Y','Y','N','N','N','N','N','Organization',TO_TIMESTAMP('2018-06-05 15:56:19','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 05/06/2018 15h56min19s BRT
-- NF-e 4.0
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1127402 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 05/06/2018 15h56min20s BRT
-- NF-e 4.0
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1130322,1127403,0,1120287,TO_TIMESTAMP('2018-06-05 15:56:19','YYYY-MM-DD HH24:MI:SS'),100,1,'LBRA','Y','Y','Y','N','N','N','N','N','Paint Type',TO_TIMESTAMP('2018-06-05 15:56:19','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 05/06/2018 15h56min20s BRT
-- NF-e 4.0
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1127403 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 05/06/2018 15h56min20s BRT
-- NF-e 4.0
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1130299,1127404,0,1120287,TO_TIMESTAMP('2018-06-05 15:56:20','YYYY-MM-DD HH24:MI:SS'),100,10,'LBRA','Y','Y','Y','N','N','N','N','N','Production Date',TO_TIMESTAMP('2018-06-05 15:56:20','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 05/06/2018 15h56min20s BRT
-- NF-e 4.0
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1127404 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 05/06/2018 15h56min20s BRT
-- NF-e 4.0
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1130334,1127405,0,1120287,TO_TIMESTAMP('2018-06-05 15:56:20','YYYY-MM-DD HH24:MI:SS'),100,20,'LBRA','Y','Y','Y','N','N','N','N','N','RECOPI',TO_TIMESTAMP('2018-06-05 15:56:20','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 05/06/2018 15h56min20s BRT
-- NF-e 4.0
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1127405 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 05/06/2018 15h56min21s BRT
-- NF-e 4.0
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1130330,1127406,0,1120287,TO_TIMESTAMP('2018-06-05 15:56:20','YYYY-MM-DD HH24:MI:SS'),100,1,'LBRA','Y','Y','Y','N','N','N','N','N','Restriction',TO_TIMESTAMP('2018-06-05 15:56:20','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 05/06/2018 15h56min21s BRT
-- NF-e 4.0
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1127406 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 05/06/2018 15h56min21s BRT
-- NF-e 4.0
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1130307,1127407,0,1120287,TO_TIMESTAMP('2018-06-05 15:56:21','YYYY-MM-DD HH24:MI:SS'),100,10,'LBRA','Y','Y','Y','N','N','N','N','N','Start Amount',TO_TIMESTAMP('2018-06-05 15:56:21','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 05/06/2018 15h56min21s BRT
-- NF-e 4.0
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1127407 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 05/06/2018 15h56min21s BRT
-- NF-e 4.0
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1130318,1127408,0,1120287,TO_TIMESTAMP('2018-06-05 15:56:21','YYYY-MM-DD HH24:MI:SS'),100,10,'LBRA','Y','Y','Y','N','N','N','N','N','Traction Capacity',TO_TIMESTAMP('2018-06-05 15:56:21','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 05/06/2018 15h56min21s BRT
-- NF-e 4.0
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1127408 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 05/06/2018 15h56min22s BRT
-- NF-e 4.0
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1130325,1127409,0,1120287,TO_TIMESTAMP('2018-06-05 15:56:21','YYYY-MM-DD HH24:MI:SS'),100,1,'LBRA','Y','Y','Y','N','N','N','N','N','VIN',TO_TIMESTAMP('2018-06-05 15:56:21','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 05/06/2018 15h56min22s BRT
-- NF-e 4.0
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1127409 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 05/06/2018 15h56min22s BRT
-- NF-e 4.0
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1130326,1127410,0,1120287,TO_TIMESTAMP('2018-06-05 15:56:22','YYYY-MM-DD HH24:MI:SS'),100,1,'LBRA','Y','Y','Y','N','N','N','N','N','Vehicle Condition',TO_TIMESTAMP('2018-06-05 15:56:22','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 05/06/2018 15h56min22s BRT
-- NF-e 4.0
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1127410 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 05/06/2018 15h56min22s BRT
-- NF-e 4.0
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1130324,1127411,0,1120287,TO_TIMESTAMP('2018-06-05 15:56:22','YYYY-MM-DD HH24:MI:SS'),100,2,'LBRA','Y','Y','Y','N','N','N','N','N','Vehicle Kind',TO_TIMESTAMP('2018-06-05 15:56:22','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 05/06/2018 15h56min22s BRT
-- NF-e 4.0
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1127411 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 05/06/2018 15h56min23s BRT
-- NF-e 4.0
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1130315,1127412,0,1120287,TO_TIMESTAMP('2018-06-05 15:56:22','YYYY-MM-DD HH24:MI:SS'),100,9,'LBRA','Y','Y','Y','N','N','N','N','N','Vehicle Serial',TO_TIMESTAMP('2018-06-05 15:56:22','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 05/06/2018 15h56min23s BRT
-- NF-e 4.0
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1127412 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 05/06/2018 15h56min23s BRT
-- NF-e 4.0
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1130323,1127413,0,1120287,TO_TIMESTAMP('2018-06-05 15:56:23','YYYY-MM-DD HH24:MI:SS'),100,2,'LBRA','Y','Y','Y','N','N','N','N','N','Vehicle Type',TO_TIMESTAMP('2018-06-05 15:56:23','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 05/06/2018 15h56min23s BRT
-- NF-e 4.0
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1127413 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 05/06/2018 15h56min23s BRT
-- NF-e 4.0
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1130319,1127414,0,1120287,TO_TIMESTAMP('2018-06-05 15:56:23','YYYY-MM-DD HH24:MI:SS'),100,10,'LBRA','Y','Y','Y','N','N','N','N','N','Wheel Base',TO_TIMESTAMP('2018-06-05 15:56:23','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 05/06/2018 15h56min23s BRT
-- NF-e 4.0
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1127414 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 05/06/2018 15h56min24s BRT
-- NF-e 4.0
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1130320,1127415,0,1120287,TO_TIMESTAMP('2018-06-05 15:56:23','YYYY-MM-DD HH24:MI:SS'),100,4,'LBRA','Y','Y','Y','N','N','N','N','N','Year Model',TO_TIMESTAMP('2018-06-05 15:56:23','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 05/06/2018 15h56min24s BRT
-- NF-e 4.0
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1127415 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 05/06/2018 15h56min24s BRT
-- NF-e 4.0
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1130321,1127416,0,1120287,TO_TIMESTAMP('2018-06-05 15:56:24','YYYY-MM-DD HH24:MI:SS'),100,4,'LBRA','Y','Y','Y','N','N','N','N','N','Year Production',TO_TIMESTAMP('2018-06-05 15:56:24','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 05/06/2018 15h56min24s BRT
-- NF-e 4.0
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1127416 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 05/06/2018 16h3min40s BRT
-- NF-e 4.0
UPDATE AD_Field SET SeqNo=10,IsDisplayed='Y' WHERE AD_Field_ID=1127385
;

-- 05/06/2018 16h3min40s BRT
-- NF-e 4.0
UPDATE AD_Field SET SeqNo=20,IsDisplayed='Y' WHERE AD_Field_ID=1127402
;

-- 05/06/2018 16h3min40s BRT
-- NF-e 4.0
UPDATE AD_Field SET SeqNo=30,IsDisplayed='Y' WHERE AD_Field_ID=1127400
;

-- 05/06/2018 16h3min40s BRT
-- NF-e 4.0
UPDATE AD_Field SET SeqNo=40,IsDisplayed='Y' WHERE AD_Field_ID=1127380
;

-- 05/06/2018 16h3min40s BRT
-- NF-e 4.0
UPDATE AD_Field SET SeqNo=50,IsDisplayed='Y' WHERE AD_Field_ID=1127381
;

-- 05/06/2018 16h3min40s BRT
-- NF-e 4.0
UPDATE AD_Field SET SeqNo=60,IsDisplayed='Y' WHERE AD_Field_ID=1127397
;

-- 05/06/2018 16h3min40s BRT
-- NF-e 4.0
UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y' WHERE AD_Field_ID=1127404
;

-- 05/06/2018 16h3min40s BRT
-- NF-e 4.0
UPDATE AD_Field SET SeqNo=80,IsDisplayed='Y' WHERE AD_Field_ID=1127379
;

-- 05/06/2018 16h3min40s BRT
-- NF-e 4.0
UPDATE AD_Field SET SeqNo=90,IsDisplayed='Y' WHERE AD_Field_ID=1127377
;

-- 05/06/2018 16h3min40s BRT
-- NF-e 4.0
UPDATE AD_Field SET SeqNo=100,IsDisplayed='Y' WHERE AD_Field_ID=1127378
;

-- 05/06/2018 16h3min40s BRT
-- NF-e 4.0
UPDATE AD_Field SET SeqNo=110,IsDisplayed='Y' WHERE AD_Field_ID=1127374
;

-- 05/06/2018 16h3min40s BRT
-- NF-e 4.0
UPDATE AD_Field SET SeqNo=120,IsDisplayed='Y' WHERE AD_Field_ID=1127376
;

-- 05/06/2018 16h3min40s BRT
-- NF-e 4.0
UPDATE AD_Field SET SeqNo=130,IsDisplayed='Y' WHERE AD_Field_ID=1127375
;

-- 05/06/2018 16h3min40s BRT
-- NF-e 4.0
UPDATE AD_Field SET SeqNo=140,IsDisplayed='Y' WHERE AD_Field_ID=1127407
;

-- 05/06/2018 16h3min40s BRT
-- NF-e 4.0
UPDATE AD_Field SET SeqNo=150,IsDisplayed='Y' WHERE AD_Field_ID=1127383
;

-- 05/06/2018 16h3min40s BRT
-- NF-e 4.0
UPDATE AD_Field SET SeqNo=160,IsDisplayed='Y' WHERE AD_Field_ID=1127401
;

-- 05/06/2018 16h3min40s BRT
-- NF-e 4.0
UPDATE AD_Field SET SeqNo=170,IsDisplayed='Y' WHERE AD_Field_ID=1127384
;

-- 05/06/2018 16h3min40s BRT
-- NF-e 4.0
UPDATE AD_Field SET SeqNo=180,IsDisplayed='Y' WHERE AD_Field_ID=1127387
;

-- 05/06/2018 16h3min40s BRT
-- NF-e 4.0
UPDATE AD_Field SET SeqNo=190,IsDisplayed='Y' WHERE AD_Field_ID=1127388
;

-- 05/06/2018 16h3min40s BRT
-- NF-e 4.0
UPDATE AD_Field SET SeqNo=200,IsDisplayed='Y' WHERE AD_Field_ID=1127392
;

-- 05/06/2018 16h3min40s BRT
-- NF-e 4.0
UPDATE AD_Field SET SeqNo=210,IsDisplayed='Y' WHERE AD_Field_ID=1127389
;

-- 05/06/2018 16h3min40s BRT
-- NF-e 4.0
UPDATE AD_Field SET SeqNo=220,IsDisplayed='Y' WHERE AD_Field_ID=1127412
;

-- 05/06/2018 16h3min40s BRT
-- NF-e 4.0
UPDATE AD_Field SET SeqNo=230,IsDisplayed='Y' WHERE AD_Field_ID=1127393
;

-- 05/06/2018 16h3min40s BRT
-- NF-e 4.0
UPDATE AD_Field SET SeqNo=240,IsDisplayed='Y' WHERE AD_Field_ID=1127391
;

-- 05/06/2018 16h3min40s BRT
-- NF-e 4.0
UPDATE AD_Field SET SeqNo=250,IsDisplayed='Y' WHERE AD_Field_ID=1127408
;

-- 05/06/2018 16h3min40s BRT
-- NF-e 4.0
UPDATE AD_Field SET SeqNo=260,IsDisplayed='Y' WHERE AD_Field_ID=1127414
;

-- 05/06/2018 16h3min40s BRT
-- NF-e 4.0
UPDATE AD_Field SET SeqNo=270,IsDisplayed='Y' WHERE AD_Field_ID=1127415
;

-- 05/06/2018 16h3min40s BRT
-- NF-e 4.0
UPDATE AD_Field SET SeqNo=280,IsDisplayed='Y' WHERE AD_Field_ID=1127416
;

-- 05/06/2018 16h3min40s BRT
-- NF-e 4.0
UPDATE AD_Field SET SeqNo=290,IsDisplayed='Y' WHERE AD_Field_ID=1127403
;

-- 05/06/2018 16h3min40s BRT
-- NF-e 4.0
UPDATE AD_Field SET SeqNo=300,IsDisplayed='Y' WHERE AD_Field_ID=1127413
;

-- 05/06/2018 16h3min40s BRT
-- NF-e 4.0
UPDATE AD_Field SET SeqNo=310,IsDisplayed='Y' WHERE AD_Field_ID=1127411
;

-- 05/06/2018 16h3min40s BRT
-- NF-e 4.0
UPDATE AD_Field SET SeqNo=320,IsDisplayed='Y' WHERE AD_Field_ID=1127409
;

-- 05/06/2018 16h3min40s BRT
-- NF-e 4.0
UPDATE AD_Field SET SeqNo=330,IsDisplayed='Y' WHERE AD_Field_ID=1127410
;

-- 05/06/2018 16h3min40s BRT
-- NF-e 4.0
UPDATE AD_Field SET SeqNo=340,IsDisplayed='Y' WHERE AD_Field_ID=1127382
;

-- 05/06/2018 16h3min40s BRT
-- NF-e 4.0
UPDATE AD_Field SET SeqNo=350,IsDisplayed='Y' WHERE AD_Field_ID=1127386
;

-- 05/06/2018 16h3min40s BRT
-- NF-e 4.0
UPDATE AD_Field SET SeqNo=360,IsDisplayed='Y' WHERE AD_Field_ID=1127390
;

-- 05/06/2018 16h3min40s BRT
-- NF-e 4.0
UPDATE AD_Field SET SeqNo=370,IsDisplayed='Y' WHERE AD_Field_ID=1127398
;

-- 05/06/2018 16h3min40s BRT
-- NF-e 4.0
UPDATE AD_Field SET SeqNo=380,IsDisplayed='Y' WHERE AD_Field_ID=1127406
;

-- 05/06/2018 16h3min40s BRT
-- NF-e 4.0
UPDATE AD_Field SET SeqNo=390,IsDisplayed='Y' WHERE AD_Field_ID=1127396
;

-- 05/06/2018 16h3min40s BRT
-- NF-e 4.0
UPDATE AD_Field SET SeqNo=400,IsDisplayed='Y' WHERE AD_Field_ID=1127395
;

-- 05/06/2018 16h3min40s BRT
-- NF-e 4.0
UPDATE AD_Field SET SeqNo=410,IsDisplayed='Y' WHERE AD_Field_ID=1127394
;

-- 05/06/2018 16h3min40s BRT
-- NF-e 4.0
UPDATE AD_Field SET SeqNo=420,IsDisplayed='Y' WHERE AD_Field_ID=1127405
;

-- 05/06/2018 16h4min6s BRT
-- NF-e 4.0
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1130336,526,0,29,1120598,'Qty',TO_TIMESTAMP('2018-06-05 16:04:05','YYYY-MM-DD HH24:MI:SS'),100,'0','Quantity','LBRA',10,'The Quantity indicates the number of a specific product or item for this document.','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Quantity',0,TO_TIMESTAMP('2018-06-05 16:04:05','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 05/06/2018 16h4min6s BRT
-- NF-e 4.0
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1130336 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 05/06/2018 16h4min15s BRT
-- NF-e 4.0
ALTER TABLE LBR_NFLineMA ADD COLUMN Qty NUMERIC DEFAULT '0' 
;

-- 05/06/2018 16h4min23s BRT
-- NF-e 4.0
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1130336,1127417,0,1120287,TO_TIMESTAMP('2018-06-05 16:04:23','YYYY-MM-DD HH24:MI:SS'),100,'Quantity',10,'LBRA','The Quantity indicates the number of a specific product or item for this document.','Y','Y','Y','N','N','N','N','N','Quantity',TO_TIMESTAMP('2018-06-05 16:04:23','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 05/06/2018 16h4min23s BRT
-- NF-e 4.0
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1127417 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 05/06/2018 16h4min33s BRT
-- NF-e 4.0
UPDATE AD_Field SET SeqNo=60,IsDisplayed='Y' WHERE AD_Field_ID=1127417
;

-- 05/06/2018 16h4min33s BRT
-- NF-e 4.0
UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y' WHERE AD_Field_ID=1127397
;

-- 05/06/2018 16h4min33s BRT
-- NF-e 4.0
UPDATE AD_Field SET SeqNo=80,IsDisplayed='Y' WHERE AD_Field_ID=1127404
;

-- 05/06/2018 16h4min33s BRT
-- NF-e 4.0
UPDATE AD_Field SET SeqNo=90,IsDisplayed='Y' WHERE AD_Field_ID=1127379
;

-- 05/06/2018 16h4min33s BRT
-- NF-e 4.0
UPDATE AD_Field SET SeqNo=100,IsDisplayed='Y' WHERE AD_Field_ID=1127377
;

-- 05/06/2018 16h4min33s BRT
-- NF-e 4.0
UPDATE AD_Field SET SeqNo=110,IsDisplayed='Y' WHERE AD_Field_ID=1127378
;

-- 05/06/2018 16h4min33s BRT
-- NF-e 4.0
UPDATE AD_Field SET SeqNo=120,IsDisplayed='Y' WHERE AD_Field_ID=1127374
;

-- 05/06/2018 16h4min33s BRT
-- NF-e 4.0
UPDATE AD_Field SET SeqNo=130,IsDisplayed='Y' WHERE AD_Field_ID=1127376
;

-- 05/06/2018 16h4min33s BRT
-- NF-e 4.0
UPDATE AD_Field SET SeqNo=140,IsDisplayed='Y' WHERE AD_Field_ID=1127375
;

-- 05/06/2018 16h4min33s BRT
-- NF-e 4.0
UPDATE AD_Field SET SeqNo=150,IsDisplayed='Y' WHERE AD_Field_ID=1127407
;

-- 05/06/2018 16h4min33s BRT
-- NF-e 4.0
UPDATE AD_Field SET SeqNo=160,IsDisplayed='Y' WHERE AD_Field_ID=1127383
;

-- 05/06/2018 16h4min33s BRT
-- NF-e 4.0
UPDATE AD_Field SET SeqNo=170,IsDisplayed='Y' WHERE AD_Field_ID=1127401
;

-- 05/06/2018 16h4min33s BRT
-- NF-e 4.0
UPDATE AD_Field SET SeqNo=180,IsDisplayed='Y' WHERE AD_Field_ID=1127384
;

-- 05/06/2018 16h4min33s BRT
-- NF-e 4.0
UPDATE AD_Field SET SeqNo=190,IsDisplayed='Y' WHERE AD_Field_ID=1127387
;

-- 05/06/2018 16h4min33s BRT
-- NF-e 4.0
UPDATE AD_Field SET SeqNo=200,IsDisplayed='Y' WHERE AD_Field_ID=1127388
;

-- 05/06/2018 16h4min33s BRT
-- NF-e 4.0
UPDATE AD_Field SET SeqNo=210,IsDisplayed='Y' WHERE AD_Field_ID=1127392
;

-- 05/06/2018 16h4min33s BRT
-- NF-e 4.0
UPDATE AD_Field SET SeqNo=220,IsDisplayed='Y' WHERE AD_Field_ID=1127389
;

-- 05/06/2018 16h4min33s BRT
-- NF-e 4.0
UPDATE AD_Field SET SeqNo=230,IsDisplayed='Y' WHERE AD_Field_ID=1127412
;

-- 05/06/2018 16h4min33s BRT
-- NF-e 4.0
UPDATE AD_Field SET SeqNo=240,IsDisplayed='Y' WHERE AD_Field_ID=1127393
;

-- 05/06/2018 16h4min33s BRT
-- NF-e 4.0
UPDATE AD_Field SET SeqNo=250,IsDisplayed='Y' WHERE AD_Field_ID=1127391
;

-- 05/06/2018 16h4min33s BRT
-- NF-e 4.0
UPDATE AD_Field SET SeqNo=260,IsDisplayed='Y' WHERE AD_Field_ID=1127408
;

-- 05/06/2018 16h4min33s BRT
-- NF-e 4.0
UPDATE AD_Field SET SeqNo=270,IsDisplayed='Y' WHERE AD_Field_ID=1127414
;

-- 05/06/2018 16h4min33s BRT
-- NF-e 4.0
UPDATE AD_Field SET SeqNo=280,IsDisplayed='Y' WHERE AD_Field_ID=1127415
;

-- 05/06/2018 16h4min33s BRT
-- NF-e 4.0
UPDATE AD_Field SET SeqNo=290,IsDisplayed='Y' WHERE AD_Field_ID=1127416
;

-- 05/06/2018 16h4min33s BRT
-- NF-e 4.0
UPDATE AD_Field SET SeqNo=300,IsDisplayed='Y' WHERE AD_Field_ID=1127403
;

-- 05/06/2018 16h4min33s BRT
-- NF-e 4.0
UPDATE AD_Field SET SeqNo=310,IsDisplayed='Y' WHERE AD_Field_ID=1127413
;

-- 05/06/2018 16h4min33s BRT
-- NF-e 4.0
UPDATE AD_Field SET SeqNo=320,IsDisplayed='Y' WHERE AD_Field_ID=1127411
;

-- 05/06/2018 16h4min33s BRT
-- NF-e 4.0
UPDATE AD_Field SET SeqNo=330,IsDisplayed='Y' WHERE AD_Field_ID=1127409
;

-- 05/06/2018 16h4min33s BRT
-- NF-e 4.0
UPDATE AD_Field SET SeqNo=340,IsDisplayed='Y' WHERE AD_Field_ID=1127410
;

-- 05/06/2018 16h4min33s BRT
-- NF-e 4.0
UPDATE AD_Field SET SeqNo=350,IsDisplayed='Y' WHERE AD_Field_ID=1127382
;

-- 05/06/2018 16h4min33s BRT
-- NF-e 4.0
UPDATE AD_Field SET SeqNo=360,IsDisplayed='Y' WHERE AD_Field_ID=1127386
;

-- 05/06/2018 16h4min33s BRT
-- NF-e 4.0
UPDATE AD_Field SET SeqNo=370,IsDisplayed='Y' WHERE AD_Field_ID=1127390
;

-- 05/06/2018 16h4min33s BRT
-- NF-e 4.0
UPDATE AD_Field SET SeqNo=380,IsDisplayed='Y' WHERE AD_Field_ID=1127398
;

-- 05/06/2018 16h4min33s BRT
-- NF-e 4.0
UPDATE AD_Field SET SeqNo=390,IsDisplayed='Y' WHERE AD_Field_ID=1127406
;

-- 05/06/2018 16h4min33s BRT
-- NF-e 4.0
UPDATE AD_Field SET SeqNo=400,IsDisplayed='Y' WHERE AD_Field_ID=1127396
;

-- 05/06/2018 16h4min33s BRT
-- NF-e 4.0
UPDATE AD_Field SET SeqNo=410,IsDisplayed='Y' WHERE AD_Field_ID=1127395
;

-- 05/06/2018 16h4min33s BRT
-- NF-e 4.0
UPDATE AD_Field SET SeqNo=420,IsDisplayed='Y' WHERE AD_Field_ID=1127394
;

-- 05/06/2018 16h4min33s BRT
-- NF-e 4.0
UPDATE AD_Field SET SeqNo=430,IsDisplayed='Y' WHERE AD_Field_ID=1127405
;

-- 05/06/2018 16h4min44s BRT
-- NF-e 4.0
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2018-06-05 16:04:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127402
;

-- 05/06/2018 16h4min48s BRT
-- NF-e 4.0
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2018-06-05 16:04:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127380
;

-- 05/06/2018 16h4min52s BRT
-- NF-e 4.0
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2018-06-05 16:04:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127400
;

-- 05/06/2018 16h4min55s BRT
-- NF-e 4.0
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2018-06-05 16:04:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127402
;

-- 05/06/2018 16h5min3s BRT
-- NF-e 4.0
UPDATE AD_Field SET DefaultValue='@AD_Org_ID@',Updated=TO_TIMESTAMP('2018-06-05 16:05:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127402
;

-- 05/06/2018 16h5min15s BRT
-- NF-e 4.0
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2018-06-05 16:05:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127417
;

-- 05/06/2018 16h5min34s BRT
-- NF-e 4.0
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2018-06-05 16:05:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127404
;

-- 05/06/2018 16h6min4s BRT
-- NF-e 4.0
INSERT INTO AD_FieldGroup (AD_Client_ID,AD_FieldGroup_ID,AD_Org_ID,Created,CreatedBy,EntityType,IsActive,IsCollapsedByDefault,Name,Updated,UpdatedBy) VALUES (0,1120063,0,TO_TIMESTAMP('2018-06-05 16:06:03','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','N','Tracking',TO_TIMESTAMP('2018-06-05 16:06:03','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 05/06/2018 16h6min4s BRT
-- NF-e 4.0
INSERT INTO AD_FieldGroup_Trl (AD_Language,AD_FieldGroup_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_FieldGroup_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_FieldGroup t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_FieldGroup_ID=1120063 AND NOT EXISTS (SELECT * FROM AD_FieldGroup_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_FieldGroup_ID=t.AD_FieldGroup_ID)
;

-- 05/06/2018 16h6min12s BRT
-- NF-e 4.0
UPDATE AD_FieldGroup_Trl SET IsTranslated='Y',Name='Rastreabilidade',Updated=TO_TIMESTAMP('2018-06-05 16:06:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_FieldGroup_ID=1120063 AND AD_Language='pt_BR'
;

-- 05/06/2018 16h6min29s BRT
-- NF-e 4.0
INSERT INTO AD_FieldGroup (AD_Client_ID,AD_FieldGroup_ID,AD_Org_ID,Created,CreatedBy,EntityType,IsActive,IsCollapsedByDefault,Name,Updated,UpdatedBy) VALUES (0,1120064,0,TO_TIMESTAMP('2018-06-05 16:06:28','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','N','Medicine',TO_TIMESTAMP('2018-06-05 16:06:28','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 05/06/2018 16h6min29s BRT
-- NF-e 4.0
INSERT INTO AD_FieldGroup_Trl (AD_Language,AD_FieldGroup_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_FieldGroup_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_FieldGroup t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_FieldGroup_ID=1120064 AND NOT EXISTS (SELECT * FROM AD_FieldGroup_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_FieldGroup_ID=t.AD_FieldGroup_ID)
;

-- 05/06/2018 16h6min34s BRT
-- NF-e 4.0
UPDATE AD_FieldGroup_Trl SET IsTranslated='Y',Name='Medicamentos',Updated=TO_TIMESTAMP('2018-06-05 16:06:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_FieldGroup_ID=1120064 AND AD_Language='pt_BR'
;

-- 05/06/2018 16h6min44s BRT
-- NF-e 4.0
INSERT INTO AD_FieldGroup (AD_Client_ID,AD_FieldGroup_ID,AD_Org_ID,Created,CreatedBy,EntityType,IsActive,IsCollapsedByDefault,Name,Updated,UpdatedBy) VALUES (0,1120065,0,TO_TIMESTAMP('2018-06-05 16:06:44','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','N','Fuel',TO_TIMESTAMP('2018-06-05 16:06:44','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 05/06/2018 16h6min44s BRT
-- NF-e 4.0
INSERT INTO AD_FieldGroup_Trl (AD_Language,AD_FieldGroup_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_FieldGroup_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_FieldGroup t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_FieldGroup_ID=1120065 AND NOT EXISTS (SELECT * FROM AD_FieldGroup_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_FieldGroup_ID=t.AD_FieldGroup_ID)
;

-- 05/06/2018 16h6min49s BRT
-- NF-e 4.0
UPDATE AD_FieldGroup_Trl SET IsTranslated='Y',Name='Combustível',Updated=TO_TIMESTAMP('2018-06-05 16:06:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_FieldGroup_ID=1120065 AND AD_Language='pt_BR'
;

-- 05/06/2018 16h7min0s BRT
-- NF-e 4.0
INSERT INTO AD_FieldGroup (AD_Client_ID,AD_FieldGroup_ID,AD_Org_ID,Created,CreatedBy,EntityType,IsActive,IsCollapsedByDefault,Name,Updated,UpdatedBy) VALUES (0,1120066,0,TO_TIMESTAMP('2018-06-05 16:06:59','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','N','Vehicle',TO_TIMESTAMP('2018-06-05 16:06:59','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 05/06/2018 16h7min0s BRT
-- NF-e 4.0
INSERT INTO AD_FieldGroup_Trl (AD_Language,AD_FieldGroup_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_FieldGroup_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_FieldGroup t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_FieldGroup_ID=1120066 AND NOT EXISTS (SELECT * FROM AD_FieldGroup_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_FieldGroup_ID=t.AD_FieldGroup_ID)
;

-- 05/06/2018 16h7min5s BRT
-- NF-e 4.0
UPDATE AD_FieldGroup_Trl SET IsTranslated='Y',Name='Veículo',Updated=TO_TIMESTAMP('2018-06-05 16:07:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_FieldGroup_ID=1120066 AND AD_Language='pt_BR'
;

-- 05/06/2018 16h7min20s BRT
-- NF-e 4.0
INSERT INTO AD_FieldGroup (AD_Client_ID,AD_FieldGroup_ID,AD_Org_ID,Created,CreatedBy,EntityType,IsActive,IsCollapsedByDefault,Name,Updated,UpdatedBy) VALUES (0,1120067,0,TO_TIMESTAMP('2018-06-05 16:07:20','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','N','Gun',TO_TIMESTAMP('2018-06-05 16:07:20','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 05/06/2018 16h7min20s BRT
-- NF-e 4.0
INSERT INTO AD_FieldGroup_Trl (AD_Language,AD_FieldGroup_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_FieldGroup_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_FieldGroup t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_FieldGroup_ID=1120067 AND NOT EXISTS (SELECT * FROM AD_FieldGroup_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_FieldGroup_ID=t.AD_FieldGroup_ID)
;

-- 05/06/2018 16h7min25s BRT
-- NF-e 4.0
UPDATE AD_FieldGroup_Trl SET IsTranslated='Y',Name='Armamentos',Updated=TO_TIMESTAMP('2018-06-05 16:07:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_FieldGroup_ID=1120067 AND AD_Language='pt_BR'
;

-- 05/06/2018 16h7min32s BRT
-- NF-e 4.0
UPDATE AD_FieldGroup SET Name='Gun Detail',Updated=TO_TIMESTAMP('2018-06-05 16:07:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_FieldGroup_ID=1120067
;

-- 05/06/2018 16h7min32s BRT
-- NF-e 4.0
UPDATE AD_FieldGroup_Trl SET IsTranslated='N' WHERE AD_FieldGroup_ID=1120067
;

-- 05/06/2018 16h7min32s BRT
-- NF-e 4.0
UPDATE AD_FieldGroup_Trl SET Name='Gun Detail',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_FieldGroup_ID=1120067
;

-- 05/06/2018 16h7min35s BRT
-- NF-e 4.0
UPDATE AD_FieldGroup SET Name='Vehicle Detail',Updated=TO_TIMESTAMP('2018-06-05 16:07:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_FieldGroup_ID=1120066
;

-- 05/06/2018 16h7min35s BRT
-- NF-e 4.0
UPDATE AD_FieldGroup_Trl SET IsTranslated='N' WHERE AD_FieldGroup_ID=1120066
;

-- 05/06/2018 16h7min35s BRT
-- NF-e 4.0
UPDATE AD_FieldGroup_Trl SET Name='Vehicle Detail',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_FieldGroup_ID=1120066
;

-- 05/06/2018 16h7min38s BRT
-- NF-e 4.0
UPDATE AD_FieldGroup SET Name='Fuel Detail',Updated=TO_TIMESTAMP('2018-06-05 16:07:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_FieldGroup_ID=1120065
;

-- 05/06/2018 16h7min38s BRT
-- NF-e 4.0
UPDATE AD_FieldGroup_Trl SET IsTranslated='N' WHERE AD_FieldGroup_ID=1120065
;

-- 05/06/2018 16h7min38s BRT
-- NF-e 4.0
UPDATE AD_FieldGroup_Trl SET Name='Fuel Detail',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_FieldGroup_ID=1120065
;

-- 05/06/2018 16h7min41s BRT
-- NF-e 4.0
UPDATE AD_FieldGroup SET Name='Medicine Detail',Updated=TO_TIMESTAMP('2018-06-05 16:07:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_FieldGroup_ID=1120064
;

-- 05/06/2018 16h7min41s BRT
-- NF-e 4.0
UPDATE AD_FieldGroup_Trl SET IsTranslated='N' WHERE AD_FieldGroup_ID=1120064
;

-- 05/06/2018 16h7min41s BRT
-- NF-e 4.0
UPDATE AD_FieldGroup_Trl SET Name='Medicine Detail',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_FieldGroup_ID=1120064
;

-- 05/06/2018 16h7min49s BRT
-- NF-e 4.0
UPDATE AD_FieldGroup SET Name='Tracking Detail',Updated=TO_TIMESTAMP('2018-06-05 16:07:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_FieldGroup_ID=1120063
;

-- 05/06/2018 16h7min49s BRT
-- NF-e 4.0
UPDATE AD_FieldGroup_Trl SET IsTranslated='N' WHERE AD_FieldGroup_ID=1120063
;

-- 05/06/2018 16h7min49s BRT
-- NF-e 4.0
UPDATE AD_FieldGroup_Trl SET Name='Tracking Detail',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_FieldGroup_ID=1120063
;

-- 05/06/2018 16h7min59s BRT
-- NF-e 4.0
UPDATE AD_FieldGroup_Trl SET IsTranslated='Y',Name='Detalhes de Rastreabilidade',Updated=TO_TIMESTAMP('2018-06-05 16:07:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_FieldGroup_ID=1120063 AND AD_Language='pt_BR'
;

-- 05/06/2018 16h8min4s BRT
-- NF-e 4.0
UPDATE AD_FieldGroup_Trl SET IsTranslated='Y',Name='Detalhes de Medicamentos',Updated=TO_TIMESTAMP('2018-06-05 16:08:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_FieldGroup_ID=1120064 AND AD_Language='pt_BR'
;

-- 05/06/2018 16h8min11s BRT
-- NF-e 4.0
UPDATE AD_FieldGroup_Trl SET IsTranslated='Y',Name='Detalhes de Combustíveis',Updated=TO_TIMESTAMP('2018-06-05 16:08:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_FieldGroup_ID=1120065 AND AD_Language='pt_BR'
;

-- 05/06/2018 16h8min18s BRT
-- NF-e 4.0
UPDATE AD_FieldGroup_Trl SET IsTranslated='Y',Name='Detalhes de Veículos',Updated=TO_TIMESTAMP('2018-06-05 16:08:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_FieldGroup_ID=1120066 AND AD_Language='pt_BR'
;

-- 05/06/2018 16h8min23s BRT
-- NF-e 4.0
UPDATE AD_FieldGroup_Trl SET IsTranslated='Y',Name='Detalhes de Armamentos',Updated=TO_TIMESTAMP('2018-06-05 16:08:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_FieldGroup_ID=1120067 AND AD_Language='pt_BR'
;

-- 05/06/2018 16h10min40s BRT
-- NF-e 4.0
UPDATE AD_Field SET AD_FieldGroup_ID=1120063,Updated=TO_TIMESTAMP('2018-06-05 16:10:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127381
;

-- 05/06/2018 16h10min46s BRT
-- NF-e 4.0
UPDATE AD_Field SET AD_FieldGroup_ID=1120063,Updated=TO_TIMESTAMP('2018-06-05 16:10:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127417
;

-- 05/06/2018 16h10min48s BRT
-- NF-e 4.0
UPDATE AD_Field SET AD_FieldGroup_ID=1120063,Updated=TO_TIMESTAMP('2018-06-05 16:10:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127397
;

-- 05/06/2018 16h10min51s BRT
-- NF-e 4.0
UPDATE AD_Field SET AD_FieldGroup_ID=1120063,Updated=TO_TIMESTAMP('2018-06-05 16:10:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127404
;

-- 05/06/2018 16h11min1s BRT
-- NF-e 4.0
UPDATE AD_Field SET AD_FieldGroup_ID=1120064,Updated=TO_TIMESTAMP('2018-06-05 16:11:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127379
;

-- 05/06/2018 16h11min9s BRT
-- NF-e 4.0
UPDATE AD_Field SET AD_FieldGroup_ID=1120065,Updated=TO_TIMESTAMP('2018-06-05 16:11:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127377
;

-- 05/06/2018 16h11min16s BRT
-- NF-e 4.0
UPDATE AD_Field SET AD_FieldGroup_ID=1120065, IsSameLine='Y',Updated=TO_TIMESTAMP('2018-06-05 16:11:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127378
;

-- 05/06/2018 16h11min19s BRT
-- NF-e 4.0
UPDATE AD_Field SET AD_FieldGroup_ID=1120065,Updated=TO_TIMESTAMP('2018-06-05 16:11:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127374
;

-- 05/06/2018 16h15min0s BRT
-- NF-e 4.0
UPDATE AD_Field SET AD_FieldGroup_ID=1120065, IsSameLine='Y', SeqNo=105,Updated=TO_TIMESTAMP('2018-06-05 16:15:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127407
;

-- 05/06/2018 16h15min7s BRT
-- NF-e 4.0
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2018-06-05 16:15:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127375
;

-- 05/06/2018 16h15min13s BRT
-- NF-e 4.0
UPDATE AD_Field SET SeqNo=145,Updated=TO_TIMESTAMP('2018-06-05 16:15:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127374
;

-- 05/06/2018 16h15min20s BRT
-- NF-e 4.0
UPDATE AD_Field SET AD_FieldGroup_ID=1120065,Updated=TO_TIMESTAMP('2018-06-05 16:15:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127376
;

-- 05/06/2018 16h15min22s BRT
-- NF-e 4.0
UPDATE AD_Field SET AD_FieldGroup_ID=1120065,Updated=TO_TIMESTAMP('2018-06-05 16:15:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127375
;

-- 05/06/2018 16h16min14s BRT
-- NF-e 4.0
UPDATE AD_Field SET AD_FieldGroup_ID=1120065,Updated=TO_TIMESTAMP('2018-06-05 16:16:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127383
;

-- 05/06/2018 16h16min33s BRT
-- NF-e 4.0
UPDATE AD_Field SET IsSameLine='N',Updated=TO_TIMESTAMP('2018-06-05 16:16:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127378
;

-- 05/06/2018 16h17min4s BRT
-- NF-e 4.0
UPDATE AD_Field SET IsSameLine='Y', SeqNo=146,Updated=TO_TIMESTAMP('2018-06-05 16:17:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127383
;

-- 05/06/2018 16h17min15s BRT
-- NF-e 4.0
UPDATE AD_Field SET AD_FieldGroup_ID=1120066,Updated=TO_TIMESTAMP('2018-06-05 16:17:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127401
;

-- 05/06/2018 16h17min22s BRT
-- NF-e 4.0
UPDATE AD_Field SET AD_FieldGroup_ID=1120066, IsSameLine='Y',Updated=TO_TIMESTAMP('2018-06-05 16:17:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127384
;

-- 05/06/2018 16h17min26s BRT
-- NF-e 4.0
UPDATE AD_Field SET AD_FieldGroup_ID=1120066,Updated=TO_TIMESTAMP('2018-06-05 16:17:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127387
;

-- 05/06/2018 16h17min33s BRT
-- NF-e 4.0
UPDATE AD_Field SET AD_FieldGroup_ID=1120066, DisplayLength=22, IsSameLine='Y',Updated=TO_TIMESTAMP('2018-06-05 16:17:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127388
;

-- 05/06/2018 16h17min37s BRT
-- NF-e 4.0
UPDATE AD_Field SET AD_FieldGroup_ID=1120066,Updated=TO_TIMESTAMP('2018-06-05 16:17:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127392
;

-- 05/06/2018 16h17min40s BRT
-- NF-e 4.0
UPDATE AD_Field SET AD_FieldGroup_ID=1120066, IsSameLine='Y',Updated=TO_TIMESTAMP('2018-06-05 16:17:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127389
;

-- 05/06/2018 16h17min45s BRT
-- NF-e 4.0
UPDATE AD_Field SET AD_FieldGroup_ID=1120066, DisplayLength=22,Updated=TO_TIMESTAMP('2018-06-05 16:17:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127412
;

-- 05/06/2018 16h17min51s BRT
-- NF-e 4.0
UPDATE AD_Field SET AD_FieldGroup_ID=1120066, DisplayLength=22, IsSameLine='Y',Updated=TO_TIMESTAMP('2018-06-05 16:17:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127393
;

-- 05/06/2018 16h17min57s BRT
-- NF-e 4.0
UPDATE AD_Field SET AD_FieldGroup_ID=1120066,Updated=TO_TIMESTAMP('2018-06-05 16:17:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127391
;

-- 05/06/2018 16h18min1s BRT
-- NF-e 4.0
UPDATE AD_Field SET AD_FieldGroup_ID=1120066, IsSameLine='Y',Updated=TO_TIMESTAMP('2018-06-05 16:18:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127408
;

-- 05/06/2018 16h18min7s BRT
-- NF-e 4.0
UPDATE AD_Field SET AD_FieldGroup_ID=1120066,Updated=TO_TIMESTAMP('2018-06-05 16:18:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127414
;

-- 05/06/2018 16h18min11s BRT
-- NF-e 4.0
UPDATE AD_Field SET AD_FieldGroup_ID=1120066,Updated=TO_TIMESTAMP('2018-06-05 16:18:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127415
;

-- 05/06/2018 16h18min15s BRT
-- NF-e 4.0
UPDATE AD_Field SET AD_FieldGroup_ID=1120066, IsSameLine='Y',Updated=TO_TIMESTAMP('2018-06-05 16:18:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127416
;

-- 05/06/2018 16h18min20s BRT
-- NF-e 4.0
UPDATE AD_Field SET AD_FieldGroup_ID=1120066,Updated=TO_TIMESTAMP('2018-06-05 16:18:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127403
;

-- 05/06/2018 16h18min24s BRT
-- NF-e 4.0
UPDATE AD_Field SET AD_FieldGroup_ID=1120066, IsSameLine='Y',Updated=TO_TIMESTAMP('2018-06-05 16:18:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127413
;

-- 05/06/2018 16h20min37s BRT
-- NF-e 4.0
UPDATE AD_Field SET AD_FieldGroup_ID=1120066,Updated=TO_TIMESTAMP('2018-06-05 16:20:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127411
;

-- 05/06/2018 16h20min44s BRT
-- NF-e 4.0
UPDATE AD_Field SET AD_FieldGroup_ID=1120066, DisplayLength=22, IsSameLine='Y',Updated=TO_TIMESTAMP('2018-06-05 16:20:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127409
;

-- 05/06/2018 16h20min50s BRT
-- NF-e 4.0
UPDATE AD_Field SET AD_FieldGroup_ID=1120066, DisplayLength=22,Updated=TO_TIMESTAMP('2018-06-05 16:20:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127410
;

-- 05/06/2018 16h20min55s BRT
-- NF-e 4.0
UPDATE AD_Field SET AD_FieldGroup_ID=1120066, DisplayLength=22, IsSameLine='Y',Updated=TO_TIMESTAMP('2018-06-05 16:20:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127382
;

-- 05/06/2018 16h21min4s BRT
-- NF-e 4.0
UPDATE AD_Field SET AD_FieldGroup_ID=1120066,Updated=TO_TIMESTAMP('2018-06-05 16:21:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127386
;

-- 05/06/2018 16h21min20s BRT
-- NF-e 4.0
UPDATE AD_Field SET AD_FieldGroup_ID=1120066, DisplayLength=22, IsSameLine='Y',Updated=TO_TIMESTAMP('2018-06-05 16:21:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127398
;

-- 05/06/2018 16h21min24s BRT
-- NF-e 4.0
UPDATE AD_Field SET AD_FieldGroup_ID=1120066, DisplayLength=22,Updated=TO_TIMESTAMP('2018-06-05 16:21:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127406
;

-- 05/06/2018 16h21min35s BRT
-- NF-e 4.0
UPDATE AD_Field SET AD_FieldGroup_ID=1120067,Updated=TO_TIMESTAMP('2018-06-05 16:21:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127396
;

-- 05/06/2018 16h21min44s BRT
-- NF-e 4.0
UPDATE AD_Field SET AD_FieldGroup_ID=1120067,Updated=TO_TIMESTAMP('2018-06-05 16:21:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127395
;

-- 05/06/2018 16h21min49s BRT
-- NF-e 4.0
UPDATE AD_Field SET AD_FieldGroup_ID=1120067, IsSameLine='Y',Updated=TO_TIMESTAMP('2018-06-05 16:21:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127394
;

-- 05/06/2018 16h22min3s BRT
-- NF-e 4.0
UPDATE AD_Field SET DisplayLength=22,Updated=TO_TIMESTAMP('2018-06-05 16:22:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127396
;

-- 05/06/2018 16h22min11s BRT
-- NF-e 4.0
UPDATE AD_Field SET AD_FieldGroup_ID=1120067, IsSameLine='Y', SeqNo=405,Updated=TO_TIMESTAMP('2018-06-05 16:22:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127405
;

-- 05/06/2018 16h23min15s BRT
-- NF-e 4.0
UPDATE AD_Field SET SeqNo=85,Updated=TO_TIMESTAMP('2018-06-05 16:23:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127397
;

-- 05/06/2018 16h23min21s BRT
-- NF-e 4.0
UPDATE AD_Field SET IsSameLine='N', SeqNo=70,Updated=TO_TIMESTAMP('2018-06-05 16:23:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127404
;

-- 05/06/2018 16h23min30s BRT
-- NF-e 4.0
UPDATE AD_Field SET IsSameLine='Y', SeqNo=75,Updated=TO_TIMESTAMP('2018-06-05 16:23:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127390
;

-- 05/06/2018 16h26min30s BRT
-- NF-e 4.0
UPDATE AD_FieldGroup SET FieldGroupType='C',Updated=TO_TIMESTAMP('2018-06-05 16:26:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_FieldGroup_ID=1120065
;

-- 05/06/2018 16h26min32s BRT
-- NF-e 4.0
UPDATE AD_FieldGroup SET FieldGroupType='C',Updated=TO_TIMESTAMP('2018-06-05 16:26:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_FieldGroup_ID=1120067
;

-- 05/06/2018 16h26min34s BRT
-- NF-e 4.0
UPDATE AD_FieldGroup SET FieldGroupType='C',Updated=TO_TIMESTAMP('2018-06-05 16:26:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_FieldGroup_ID=1120064
;

-- 05/06/2018 16h26min35s BRT
-- NF-e 4.0
UPDATE AD_FieldGroup SET FieldGroupType='C',Updated=TO_TIMESTAMP('2018-06-05 16:26:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_FieldGroup_ID=1120063
;

-- 05/06/2018 16h26min37s BRT
-- NF-e 4.0
UPDATE AD_FieldGroup SET FieldGroupType='C',Updated=TO_TIMESTAMP('2018-06-05 16:26:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_FieldGroup_ID=1120066
;

-- 05/06/2018 16h29min30s BRT
-- NF-e 4.0
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,1122514,0,'LBR_AttributeType',TO_TIMESTAMP('2018-06-05 16:29:30','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Attribute Type','Attribute Type',TO_TIMESTAMP('2018-06-05 16:29:30','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 05/06/2018 16h29min30s BRT
-- NF-e 4.0
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1122514 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 05/06/2018 16h29min52s BRT
-- NF-e 4.0
UPDATE AD_Element_Trl SET IsTranslated='Y',Name='Tipo de Atributo',PrintName='Tipo de Atributo',Description='Tipo de Atributo da NF (Medicamentos, Combustíveis, etc)',Updated=TO_TIMESTAMP('2018-06-05 16:29:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1122514 AND AD_Language='pt_BR'
;

-- 05/06/2018 16h30min28s BRT
-- NF-e 4.0
INSERT INTO AD_Reference (AD_Client_ID,AD_Org_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,IsOrderByValue,Name,Updated,UpdatedBy,ValidationType) VALUES (0,0,1120278,TO_TIMESTAMP('2018-06-05 16:30:28','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','N','LBR_AttributeType',TO_TIMESTAMP('2018-06-05 16:30:28','YYYY-MM-DD HH24:MI:SS'),100,'L')
;

-- 05/06/2018 16h30min28s BRT
-- NF-e 4.0
INSERT INTO AD_Reference_Trl (AD_Language,AD_Reference_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Reference_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Reference t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Reference_ID=1120278 AND NOT EXISTS (SELECT * FROM AD_Reference_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Reference_ID=t.AD_Reference_ID)
;

-- 05/06/2018 16h30min58s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121981,1120278,TO_TIMESTAMP('2018-06-05 16:30:58','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Rastreabilidade',TO_TIMESTAMP('2018-06-05 16:30:58','YYYY-MM-DD HH24:MI:SS'),100,'R00')
;

-- 05/06/2018 16h30min58s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121981 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 05/06/2018 16h31min31s BRT
-- NF-e 4.0
UPDATE AD_Ref_List SET Name='Tracking',Updated=TO_TIMESTAMP('2018-06-05 16:31:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121981
;

-- 05/06/2018 16h31min31s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=1121981
;

-- 05/06/2018 16h31min31s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET Description=NULL,Name='Tracking',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Ref_List_ID=1121981
;

-- 05/06/2018 16h31min33s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Updated=TO_TIMESTAMP('2018-06-05 16:31:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121981 AND AD_Language='pt_BR'
;

-- 05/06/2018 16h32min31s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121982,1120278,TO_TIMESTAMP('2018-06-05 16:32:31','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Medicamentos',TO_TIMESTAMP('2018-06-05 16:32:31','YYYY-MM-DD HH24:MI:SS'),100,'X01')
;

-- 05/06/2018 16h32min31s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121982 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 05/06/2018 16h32min35s BRT
-- NF-e 4.0
UPDATE AD_Ref_List SET Name='Medicine',Updated=TO_TIMESTAMP('2018-06-05 16:32:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121982
;

-- 05/06/2018 16h32min35s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=1121982
;

-- 05/06/2018 16h32min35s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET Description=NULL,Name='Medicine',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Ref_List_ID=1121982
;

-- 05/06/2018 16h32min37s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Updated=TO_TIMESTAMP('2018-06-05 16:32:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121982 AND AD_Language='pt_BR'
;

-- 05/06/2018 16h32min54s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121983,1120278,TO_TIMESTAMP('2018-06-05 16:32:54','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Combustível',TO_TIMESTAMP('2018-06-05 16:32:54','YYYY-MM-DD HH24:MI:SS'),100,'X02')
;

-- 05/06/2018 16h32min54s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121983 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 05/06/2018 16h33min4s BRT
-- NF-e 4.0
UPDATE AD_Ref_List SET Name='Fuel',Updated=TO_TIMESTAMP('2018-06-05 16:33:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121983
;

-- 05/06/2018 16h33min4s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=1121983
;

-- 05/06/2018 16h33min4s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET Description=NULL,Name='Fuel',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Ref_List_ID=1121983
;

-- 05/06/2018 16h33min7s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Updated=TO_TIMESTAMP('2018-06-05 16:33:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121983 AND AD_Language='pt_BR'
;

-- 05/06/2018 16h33min23s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121984,1120278,TO_TIMESTAMP('2018-06-05 16:33:23','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Veículo',TO_TIMESTAMP('2018-06-05 16:33:23','YYYY-MM-DD HH24:MI:SS'),100,'X03')
;

-- 05/06/2018 16h33min23s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121984 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 05/06/2018 16h33min28s BRT
-- NF-e 4.0
UPDATE AD_Ref_List SET Name='Vehicle',Updated=TO_TIMESTAMP('2018-06-05 16:33:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121984
;

-- 05/06/2018 16h33min28s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=1121984
;

-- 05/06/2018 16h33min28s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET Description=NULL,Name='Vehicle',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Ref_List_ID=1121984
;

-- 05/06/2018 16h33min30s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Updated=TO_TIMESTAMP('2018-06-05 16:33:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121984 AND AD_Language='pt_BR'
;

-- 05/06/2018 16h33min38s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121985,1120278,TO_TIMESTAMP('2018-06-05 16:33:37','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Armamento',TO_TIMESTAMP('2018-06-05 16:33:37','YYYY-MM-DD HH24:MI:SS'),100,'X04')
;

-- 05/06/2018 16h33min38s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121985 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 05/06/2018 16h33min41s BRT
-- NF-e 4.0
UPDATE AD_Ref_List SET Name='Gun',Updated=TO_TIMESTAMP('2018-06-05 16:33:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121985
;

-- 05/06/2018 16h33min41s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=1121985
;

-- 05/06/2018 16h33min41s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET Description=NULL,Name='Gun',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Ref_List_ID=1121985
;

-- 05/06/2018 16h33min43s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Updated=TO_TIMESTAMP('2018-06-05 16:33:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121985 AND AD_Language='pt_BR'
;

-- 05/06/2018 16h34min17s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121986,1120278,TO_TIMESTAMP('2018-06-05 16:34:16','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Medicamento e Rastreabilidade',TO_TIMESTAMP('2018-06-05 16:34:16','YYYY-MM-DD HH24:MI:SS'),100,'R01')
;

-- 05/06/2018 16h34min17s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121986 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 05/06/2018 16h34min28s BRT
-- NF-e 4.0
UPDATE AD_Ref_List SET Name='Medicine and Tracking',Updated=TO_TIMESTAMP('2018-06-05 16:34:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121986
;

-- 05/06/2018 16h34min28s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=1121986
;

-- 05/06/2018 16h34min28s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET Description=NULL,Name='Medicine and Tracking',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Ref_List_ID=1121986
;

-- 05/06/2018 16h34min30s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Updated=TO_TIMESTAMP('2018-06-05 16:34:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121986 AND AD_Language='pt_BR'
;

-- 05/06/2018 16h34min49s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121988,1120278,TO_TIMESTAMP('2018-06-05 16:34:49','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Combustível e Rastreabilidade',TO_TIMESTAMP('2018-06-05 16:34:49','YYYY-MM-DD HH24:MI:SS'),100,'R02')
;

-- 05/06/2018 16h34min49s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121988 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 05/06/2018 16h34min55s BRT
-- NF-e 4.0
UPDATE AD_Ref_List SET Name='Fuel and Tracking',Updated=TO_TIMESTAMP('2018-06-05 16:34:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121988
;

-- 05/06/2018 16h34min55s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=1121988
;

-- 05/06/2018 16h34min55s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET Description=NULL,Name='Fuel and Tracking',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Ref_List_ID=1121988
;

-- 05/06/2018 16h35min15s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121989,1120278,TO_TIMESTAMP('2018-06-05 16:35:14','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Veículo e Rastreabilidade',TO_TIMESTAMP('2018-06-05 16:35:14','YYYY-MM-DD HH24:MI:SS'),100,'R03')
;

-- 05/06/2018 16h35min15s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121989 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 05/06/2018 16h35min22s BRT
-- NF-e 4.0
UPDATE AD_Ref_List SET Name='Vehicle and Tracking',Updated=TO_TIMESTAMP('2018-06-05 16:35:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121989
;

-- 05/06/2018 16h35min22s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=1121989
;

-- 05/06/2018 16h35min22s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET Description=NULL,Name='Vehicle and Tracking',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Ref_List_ID=1121989
;

-- 05/06/2018 16h35min40s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121990,1120278,TO_TIMESTAMP('2018-06-05 16:35:40','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Armamento e Rastreabilidade',TO_TIMESTAMP('2018-06-05 16:35:40','YYYY-MM-DD HH24:MI:SS'),100,'R04')
;

-- 05/06/2018 16h35min40s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121990 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 05/06/2018 16h35min45s BRT
-- NF-e 4.0
UPDATE AD_Ref_List SET Name='Gun and Tracking',Updated=TO_TIMESTAMP('2018-06-05 16:35:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121990
;

-- 05/06/2018 16h35min45s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=1121990
;

-- 05/06/2018 16h35min45s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET Description=NULL,Name='Gun and Tracking',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Ref_List_ID=1121990
;

-- 05/06/2018 16h38min38s BRT
-- NF-e 4.0
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1130337,1122514,0,17,1120278,1000028,'LBR_AttributeType',TO_TIMESTAMP('2018-06-05 16:38:38','YYYY-MM-DD HH24:MI:SS'),100,'LBRA',2,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Attribute Type',0,TO_TIMESTAMP('2018-06-05 16:38:38','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 05/06/2018 16h38min38s BRT
-- NF-e 4.0
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1130337 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 05/06/2018 16h39min16s BRT
-- NF-e 4.0
UPDATE AD_Field SET SeqNo=179,Updated=TO_TIMESTAMP('2018-06-05 16:39:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127365
;

-- 05/06/2018 16h39min23s BRT
-- NF-e 4.0
UPDATE AD_Field SET SeqNo=178,Updated=TO_TIMESTAMP('2018-06-05 16:39:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127364
;

-- 05/06/2018 16h39min56s BRT
-- NF-e 4.0
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_FieldGroup_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1130337,106,1127418,0,1000021,TO_TIMESTAMP('2018-06-05 16:39:56','YYYY-MM-DD HH24:MI:SS'),100,22,'LBRA','Y','Y','Y','N','N','N','N','Y','Attribute Type',176,TO_TIMESTAMP('2018-06-05 16:39:56','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 05/06/2018 16h39min56s BRT
-- NF-e 4.0
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1127418 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 05/06/2018 16h40min24s BRT
-- NF-e 4.0
UPDATE AD_Tab SET DisplayLogic='@LBR_AttributeType@!''''',Updated=TO_TIMESTAMP('2018-06-05 16:40:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=1120287
;

-- 05/06/2018 16h42min4s BRT
-- NF-e 4.0
UPDATE AD_Field SET DisplayLogic='@LBR_AttributeType@=''R00'' | @LBR_AttributeType@=''R01'' | @LBR_AttributeType@=''R02'' | @LBR_AttributeType@=''R03'' | @LBR_AttributeType@=''R04''',Updated=TO_TIMESTAMP('2018-06-05 16:42:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127381
;

-- 05/06/2018 16h42min5s BRT
-- NF-e 4.0
UPDATE AD_Field SET DisplayLogic='@LBR_AttributeType@=''R00'' | @LBR_AttributeType@=''R01'' | @LBR_AttributeType@=''R02'' | @LBR_AttributeType@=''R03'' | @LBR_AttributeType@=''R04''',Updated=TO_TIMESTAMP('2018-06-05 16:42:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127417
;

-- 05/06/2018 16h42min8s BRT
-- NF-e 4.0
UPDATE AD_Field SET DisplayLogic='@LBR_AttributeType@=''R00'' | @LBR_AttributeType@=''R01'' | @LBR_AttributeType@=''R02'' | @LBR_AttributeType@=''R03'' | @LBR_AttributeType@=''R04''',Updated=TO_TIMESTAMP('2018-06-05 16:42:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127404
;

-- 05/06/2018 16h42min16s BRT
-- NF-e 4.0
UPDATE AD_Field SET AD_FieldGroup_ID=1120063, DisplayLogic='@LBR_AttributeType@=''R00'' | @LBR_AttributeType@=''R01'' | @LBR_AttributeType@=''R02'' | @LBR_AttributeType@=''R03'' | @LBR_AttributeType@=''R04''',Updated=TO_TIMESTAMP('2018-06-05 16:42:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127390
;

-- 05/06/2018 16h42min19s BRT
-- NF-e 4.0
UPDATE AD_Field SET DisplayLogic='@LBR_AttributeType@=''R00'' | @LBR_AttributeType@=''R01'' | @LBR_AttributeType@=''R02'' | @LBR_AttributeType@=''R03'' | @LBR_AttributeType@=''R04''',Updated=TO_TIMESTAMP('2018-06-05 16:42:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127397
;

-- 05/06/2018 16h42min41s BRT
-- NF-e 4.0
UPDATE AD_Field SET DisplayLogic='@LBR_AttributeType@=''X01'' | @LBR_AttributeType@=''R01''',Updated=TO_TIMESTAMP('2018-06-05 16:42:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127379
;

-- 05/06/2018 16h42min52s BRT
-- NF-e 4.0
UPDATE AD_Field SET DisplayLogic='@LBR_AttributeType@=''X02'' | @LBR_AttributeType@=''R02''',Updated=TO_TIMESTAMP('2018-06-05 16:42:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127377
;

-- 05/06/2018 16h42min54s BRT
-- NF-e 4.0
UPDATE AD_Field SET DisplayLogic='@LBR_AttributeType@=''X02'' | @LBR_AttributeType@=''R02''',Updated=TO_TIMESTAMP('2018-06-05 16:42:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127407
;

-- 05/06/2018 16h42min55s BRT
-- NF-e 4.0
UPDATE AD_Field SET DisplayLogic='@LBR_AttributeType@=''X02'' | @LBR_AttributeType@=''R02''',Updated=TO_TIMESTAMP('2018-06-05 16:42:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127378
;

-- 05/06/2018 16h42min57s BRT
-- NF-e 4.0
UPDATE AD_Field SET DisplayLogic='@LBR_AttributeType@=''X02'' | @LBR_AttributeType@=''R02''',Updated=TO_TIMESTAMP('2018-06-05 16:42:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127376
;

-- 05/06/2018 16h42min59s BRT
-- NF-e 4.0
UPDATE AD_Field SET DisplayLogic='@LBR_AttributeType@=''X02'' | @LBR_AttributeType@=''R02''',Updated=TO_TIMESTAMP('2018-06-05 16:42:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127375
;

-- 05/06/2018 16h43min0s BRT
-- NF-e 4.0
UPDATE AD_Field SET DisplayLogic='@LBR_AttributeType@=''X02'' | @LBR_AttributeType@=''R02''',Updated=TO_TIMESTAMP('2018-06-05 16:43:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127374
;

-- 05/06/2018 16h43min2s BRT
-- NF-e 4.0
UPDATE AD_Field SET DisplayLogic='@LBR_AttributeType@=''X02'' | @LBR_AttributeType@=''R02''',Updated=TO_TIMESTAMP('2018-06-05 16:43:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127383
;

-- 05/06/2018 16h43min16s BRT
-- NF-e 4.0
UPDATE AD_Field SET DisplayLogic='@LBR_AttributeType@=''X03'' | @LBR_AttributeType@=''R03''',Updated=TO_TIMESTAMP('2018-06-05 16:43:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127401
;

-- 05/06/2018 16h43min18s BRT
-- NF-e 4.0
UPDATE AD_Field SET DisplayLogic='@LBR_AttributeType@=''X03'' | @LBR_AttributeType@=''R03''',Updated=TO_TIMESTAMP('2018-06-05 16:43:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127384
;

-- 05/06/2018 16h43min20s BRT
-- NF-e 4.0
UPDATE AD_Field SET DisplayLogic='@LBR_AttributeType@=''X03'' | @LBR_AttributeType@=''R03''',Updated=TO_TIMESTAMP('2018-06-05 16:43:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127387
;

-- 05/06/2018 16h43min21s BRT
-- NF-e 4.0
UPDATE AD_Field SET DisplayLogic='@LBR_AttributeType@=''X03'' | @LBR_AttributeType@=''R03''',Updated=TO_TIMESTAMP('2018-06-05 16:43:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127388
;

-- 05/06/2018 16h43min22s BRT
-- NF-e 4.0
UPDATE AD_Field SET DisplayLogic='@LBR_AttributeType@=''X03'' | @LBR_AttributeType@=''R03''',Updated=TO_TIMESTAMP('2018-06-05 16:43:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127392
;

-- 05/06/2018 16h43min24s BRT
-- NF-e 4.0
UPDATE AD_Field SET DisplayLogic='@LBR_AttributeType@=''X03'' | @LBR_AttributeType@=''R03''',Updated=TO_TIMESTAMP('2018-06-05 16:43:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127389
;

-- 05/06/2018 16h43min26s BRT
-- NF-e 4.0
UPDATE AD_Field SET DisplayLogic='@LBR_AttributeType@=''X03'' | @LBR_AttributeType@=''R03''',Updated=TO_TIMESTAMP('2018-06-05 16:43:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127412
;

-- 05/06/2018 16h43min27s BRT
-- NF-e 4.0
UPDATE AD_Field SET DisplayLogic='@LBR_AttributeType@=''X03'' | @LBR_AttributeType@=''R03''',Updated=TO_TIMESTAMP('2018-06-05 16:43:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127393
;

-- 05/06/2018 16h43min29s BRT
-- NF-e 4.0
UPDATE AD_Field SET DisplayLogic='@LBR_AttributeType@=''X03'' | @LBR_AttributeType@=''R03''',Updated=TO_TIMESTAMP('2018-06-05 16:43:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127391
;

-- 05/06/2018 16h43min31s BRT
-- NF-e 4.0
UPDATE AD_Field SET DisplayLogic='@LBR_AttributeType@=''X03'' | @LBR_AttributeType@=''R03''',Updated=TO_TIMESTAMP('2018-06-05 16:43:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127408
;

-- 05/06/2018 16h43min33s BRT
-- NF-e 4.0
UPDATE AD_Field SET DisplayLogic='@LBR_AttributeType@=''X03'' | @LBR_AttributeType@=''R03''',Updated=TO_TIMESTAMP('2018-06-05 16:43:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127414
;

-- 05/06/2018 16h43min35s BRT
-- NF-e 4.0
UPDATE AD_Field SET DisplayLogic='@LBR_AttributeType@=''X03'' | @LBR_AttributeType@=''R03''',Updated=TO_TIMESTAMP('2018-06-05 16:43:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127415
;

-- 05/06/2018 16h43min36s BRT
-- NF-e 4.0
UPDATE AD_Field SET DisplayLogic='@LBR_AttributeType@=''X03'' | @LBR_AttributeType@=''R03''',Updated=TO_TIMESTAMP('2018-06-05 16:43:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127416
;

-- 05/06/2018 16h43min38s BRT
-- NF-e 4.0
UPDATE AD_Field SET DisplayLogic='@LBR_AttributeType@=''X03'' | @LBR_AttributeType@=''R03''',Updated=TO_TIMESTAMP('2018-06-05 16:43:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127403
;

-- 05/06/2018 16h43min39s BRT
-- NF-e 4.0
UPDATE AD_Field SET DisplayLogic='@LBR_AttributeType@=''X03'' | @LBR_AttributeType@=''R03''',Updated=TO_TIMESTAMP('2018-06-05 16:43:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127413
;

-- 05/06/2018 16h43min41s BRT
-- NF-e 4.0
UPDATE AD_Field SET DisplayLogic='@LBR_AttributeType@=''X03'' | @LBR_AttributeType@=''R03''',Updated=TO_TIMESTAMP('2018-06-05 16:43:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127411
;

-- 05/06/2018 16h43min42s BRT
-- NF-e 4.0
UPDATE AD_Field SET DisplayLogic='@LBR_AttributeType@=''X03'' | @LBR_AttributeType@=''R03''',Updated=TO_TIMESTAMP('2018-06-05 16:43:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127409
;

-- 05/06/2018 16h43min44s BRT
-- NF-e 4.0
UPDATE AD_Field SET DisplayLogic='@LBR_AttributeType@=''X03'' | @LBR_AttributeType@=''R03''',Updated=TO_TIMESTAMP('2018-06-05 16:43:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127410
;

-- 05/06/2018 16h43min45s BRT
-- NF-e 4.0
UPDATE AD_Field SET DisplayLogic='@LBR_AttributeType@=''X03'' | @LBR_AttributeType@=''R03''',Updated=TO_TIMESTAMP('2018-06-05 16:43:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127382
;

-- 05/06/2018 16h43min47s BRT
-- NF-e 4.0
UPDATE AD_Field SET DisplayLogic='@LBR_AttributeType@=''X03'' | @LBR_AttributeType@=''R03''',Updated=TO_TIMESTAMP('2018-06-05 16:43:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127386
;

-- 05/06/2018 16h43min49s BRT
-- NF-e 4.0
UPDATE AD_Field SET DisplayLogic='@LBR_AttributeType@=''X03'' | @LBR_AttributeType@=''R03''',Updated=TO_TIMESTAMP('2018-06-05 16:43:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127398
;

-- 05/06/2018 16h43min50s BRT
-- NF-e 4.0
UPDATE AD_Field SET DisplayLogic='@LBR_AttributeType@=''X03'' | @LBR_AttributeType@=''R03''',Updated=TO_TIMESTAMP('2018-06-05 16:43:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127406
;

-- 05/06/2018 16h43min59s BRT
-- NF-e 4.0
UPDATE AD_Field SET DisplayLogic='@LBR_AttributeType@=''X04'' | @LBR_AttributeType@=''R04''',Updated=TO_TIMESTAMP('2018-06-05 16:43:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127396
;

-- 05/06/2018 16h44min0s BRT
-- NF-e 4.0
UPDATE AD_Field SET DisplayLogic='@LBR_AttributeType@=''X04'' | @LBR_AttributeType@=''R04''',Updated=TO_TIMESTAMP('2018-06-05 16:44:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127405
;

-- 05/06/2018 16h44min2s BRT
-- NF-e 4.0
UPDATE AD_Field SET DisplayLogic='@LBR_AttributeType@=''X04'' | @LBR_AttributeType@=''R04''',Updated=TO_TIMESTAMP('2018-06-05 16:44:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127395
;

-- 05/06/2018 16h44min4s BRT
-- NF-e 4.0
UPDATE AD_Field SET DisplayLogic='@LBR_AttributeType@=''X04'' | @LBR_AttributeType@=''R04''',Updated=TO_TIMESTAMP('2018-06-05 16:44:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127394
;

-- 05/06/2018 16h44min40s BRT
-- NF-e 4.0
ALTER TABLE LBR_NotaFiscalLine ADD COLUMN LBR_AttributeType VARCHAR(2) DEFAULT NULL 
;

-- 05/06/2018 16h45min44s BRT
-- NF-e 4.0
UPDATE AD_Column SET FieldLength=3,Updated=TO_TIMESTAMP('2018-06-05 16:45:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1130337
;

-- 05/06/2018 16h45min47s BRT
-- NF-e 4.0
INSERT INTO t_alter_column values('lbr_notafiscalline','LBR_AttributeType','VARCHAR(3)',null,'NULL')
;

-- 05/06/2018 17h3min39s BRT
-- NF-e 4.0
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1130338,1122514,0,17,1120278,208,'LBR_AttributeType',TO_TIMESTAMP('2018-06-05 17:03:38','YYYY-MM-DD HH24:MI:SS'),100,'LBRA',3,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Attribute Type',0,TO_TIMESTAMP('2018-06-05 17:03:38','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 05/06/2018 17h3min39s BRT
-- NF-e 4.0
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1130338 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 05/06/2018 17h3min41s BRT
-- NF-e 4.0
ALTER TABLE M_Product ADD COLUMN LBR_AttributeType VARCHAR(3) DEFAULT NULL 
;

-- 05/06/2018 17h4min9s BRT
-- NF-e 4.0
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,SortNo,Updated,UpdatedBy) VALUES (0,1130338,1127419,0,180,TO_TIMESTAMP('2018-06-05 17:04:09','YYYY-MM-DD HH24:MI:SS'),100,22,'LBRA','Y','Y','Y','N','N','N','N','Y','Attribute Type',670,0,TO_TIMESTAMP('2018-06-05 17:04:09','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 05/06/2018 17h4min9s BRT
-- NF-e 4.0
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1127419 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 05/06/2018 17h4min21s BRT
-- NF-e 4.0
UPDATE AD_Field SET IsSameLine='N',Updated=TO_TIMESTAMP('2018-06-05 17:04:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127419
;

-- 05/06/2018 17h5min52s BRT
-- NF-e 4.0
UPDATE AD_Reference SET IsOrderByValue='Y',Updated=TO_TIMESTAMP('2018-06-05 17:05:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=1120278
;

-- 05/06/2018 17h5min58s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET Name='Medicamento',Updated=TO_TIMESTAMP('2018-06-05 17:05:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121982 AND AD_Language='pt_BR'
;

-- 05/06/2018 17h6min26s BRT
-- NF-e 4.0
UPDATE AD_Reference SET IsOrderByValue='N',Updated=TO_TIMESTAMP('2018-06-05 17:06:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=1120278
;

-- 05/06/2018 17h10min53s BRT
-- NF-e 4.0
UPDATE AD_Tab_Trl SET IsTranslated='Y',Name='Atributos das Linhas',Updated=TO_TIMESTAMP('2018-06-05 17:10:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=1120287 AND AD_Language='pt_BR'
;

-- 05/06/2018 17h26min5s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121991,1120278,TO_TIMESTAMP('2018-06-05 17:26:05','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Papel Imune',TO_TIMESTAMP('2018-06-05 17:26:05','YYYY-MM-DD HH24:MI:SS'),100,'X05')
;

-- 05/06/2018 17h26min5s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121991 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 05/06/2018 17h26min52s BRT
-- NF-e 4.0
UPDATE AD_Ref_List SET Name='Exempt Paper',Updated=TO_TIMESTAMP('2018-06-05 17:26:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121991
;

-- 05/06/2018 17h26min52s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=1121991
;

-- 05/06/2018 17h26min52s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET Description=NULL,Name='Exempt Paper',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Ref_List_ID=1121991
;

-- 05/06/2018 17h26min54s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Updated=TO_TIMESTAMP('2018-06-05 17:26:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121991 AND AD_Language='pt_BR'
;

-- 05/06/2018 17h27min15s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121992,1120278,TO_TIMESTAMP('2018-06-05 17:27:14','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Papel Imune e Rastreabilidade',TO_TIMESTAMP('2018-06-05 17:27:14','YYYY-MM-DD HH24:MI:SS'),100,'R05')
;

-- 05/06/2018 17h27min15s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121992 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 05/06/2018 17h27min22s BRT
-- NF-e 4.0
UPDATE AD_Ref_List SET Name='Exempt Paper and Tracking',Updated=TO_TIMESTAMP('2018-06-05 17:27:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121992
;

-- 05/06/2018 17h27min22s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=1121992
;

-- 05/06/2018 17h27min22s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET Description=NULL,Name='Exempt Paper and Tracking',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Ref_List_ID=1121992
;

-- 05/06/2018 17h27min24s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Updated=TO_TIMESTAMP('2018-06-05 17:27:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121992 AND AD_Language='pt_BR'
;

-- 05/06/2018 17h28min17s BRT
-- NF-e 4.0
INSERT INTO AD_FieldGroup (AD_Client_ID,AD_FieldGroup_ID,AD_Org_ID,Created,CreatedBy,EntityType,FieldGroupType,IsActive,IsCollapsedByDefault,Name,Updated,UpdatedBy) VALUES (0,1120068,0,TO_TIMESTAMP('2018-06-05 17:28:16','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','C','Y','N','Detalhes de Papel Imune',TO_TIMESTAMP('2018-06-05 17:28:16','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 05/06/2018 17h28min17s BRT
-- NF-e 4.0
INSERT INTO AD_FieldGroup_Trl (AD_Language,AD_FieldGroup_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_FieldGroup_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_FieldGroup t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_FieldGroup_ID=1120068 AND NOT EXISTS (SELECT * FROM AD_FieldGroup_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_FieldGroup_ID=t.AD_FieldGroup_ID)
;

-- 05/06/2018 17h28min19s BRT
-- NF-e 4.0
UPDATE AD_FieldGroup SET Name='Exempt Paper Detail',Updated=TO_TIMESTAMP('2018-06-05 17:28:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_FieldGroup_ID=1120068
;

-- 05/06/2018 17h28min19s BRT
-- NF-e 4.0
UPDATE AD_FieldGroup_Trl SET IsTranslated='N' WHERE AD_FieldGroup_ID=1120068
;

-- 05/06/2018 17h28min19s BRT
-- NF-e 4.0
UPDATE AD_FieldGroup_Trl SET Name='Exempt Paper Detail',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_FieldGroup_ID=1120068
;

-- 05/06/2018 17h28min21s BRT
-- NF-e 4.0
UPDATE AD_FieldGroup_Trl SET IsTranslated='Y',Updated=TO_TIMESTAMP('2018-06-05 17:28:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_FieldGroup_ID=1120068 AND AD_Language='pt_BR'
;

-- 05/06/2018 17h28min28s BRT
-- NF-e 4.0
UPDATE AD_Field SET AD_FieldGroup_ID=1120068, DisplayLogic='@LBR_AttributeType@=''X05'' | @LBR_AttributeType@=''R05''',Updated=TO_TIMESTAMP('2018-06-05 17:28:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127405
;

-- 05/06/2018 17h45min4s BRT
-- NF-e 4.0
UPDATE AD_Tab SET AD_Column_ID=1130335,Updated=TO_TIMESTAMP('2018-06-05 17:45:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=1120287
;

-- 05/06/2018 17h47min26s BRT
-- NF-e 4.0
UPDATE AD_Column SET IsMandatory='N',Updated=TO_TIMESTAMP('2018-06-05 17:47:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1130297
;

-- 05/06/2018 17h47min29s BRT
-- NF-e 4.0
INSERT INTO t_alter_column values('lbr_nflinema','M_AttributeSetInstance_ID','NUMERIC(10)',null,'NULL')
;

-- 05/06/2018 17h47min29s BRT
-- NF-e 4.0
INSERT INTO t_alter_column values('lbr_nflinema','M_AttributeSetInstance_ID',null,'NULL',null)
;

-- 05/06/2018 18h22min42s BRT
-- NF-e 4.0
UPDATE AD_Field SET SeqNo=430,Updated=TO_TIMESTAMP('2018-06-05 18:22:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127405
;

-- 05/06/2018 18h56min37s BRT
-- NF-e 4.0
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1130339,1122514,0,17,1120278,1120598,'LBR_AttributeType',TO_TIMESTAMP('2018-06-05 18:56:36','YYYY-MM-DD HH24:MI:SS'),100,'LBRA',3,'Y','Y','N','N','N','N','N','Y','N','N','N','N','Y','Attribute Type',0,TO_TIMESTAMP('2018-06-05 18:56:36','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 05/06/2018 18h56min37s BRT
-- NF-e 4.0
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1130339 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 05/06/2018 18h56min38s BRT
-- NF-e 4.0
ALTER TABLE LBR_NFLineMA ADD COLUMN LBR_AttributeType VARCHAR(3) NOT NULL
;

-- 05/06/2018 18h58min26s BRT
-- NF-e 4.0
UPDATE AD_Tab SET WhereClause='LBR_AttributeType<>''R00''',Updated=TO_TIMESTAMP('2018-06-05 18:58:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=1120287
;

-- 05/06/2018 19h0min1s BRT
-- NF-e 4.0
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DefaultValue,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1130339,1127420,0,1120287,TO_TIMESTAMP('2018-06-05 19:00:01','YYYY-MM-DD HH24:MI:SS'),100,'@LBR_AttributeType@',22,'LBRA','Y','Y','Y','N','N','N','N','N','Attribute Type',45,TO_TIMESTAMP('2018-06-05 19:00:01','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 05/06/2018 19h0min1s BRT
-- NF-e 4.0
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1127420 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 05/06/2018 19h4min40s BRT
-- NF-e 4.0
UPDATE AD_Field SET DisplayLogic='@LBR_AttributeType@=''R00'' | @LBR_AttributeType@=''R03'' | @LBR_AttributeType@=''R04''',Updated=TO_TIMESTAMP('2018-06-05 19:04:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127381
;

-- 05/06/2018 19h4min43s BRT
-- NF-e 4.0
UPDATE AD_Field SET DisplayLogic='@LBR_AttributeType@=''R00'' | @LBR_AttributeType@=''R03'' | @LBR_AttributeType@=''R04''',Updated=TO_TIMESTAMP('2018-06-05 19:04:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127417
;

-- 05/06/2018 19h4min45s BRT
-- NF-e 4.0
UPDATE AD_Field SET DisplayLogic='@LBR_AttributeType@=''R00'' | @LBR_AttributeType@=''R03'' | @LBR_AttributeType@=''R04''',Updated=TO_TIMESTAMP('2018-06-05 19:04:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127404
;

-- 05/06/2018 19h4min47s BRT
-- NF-e 4.0
UPDATE AD_Field SET DisplayLogic='@LBR_AttributeType@=''R00'' | @LBR_AttributeType@=''R03'' | @LBR_AttributeType@=''R04''',Updated=TO_TIMESTAMP('2018-06-05 19:04:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127390
;

-- 05/06/2018 19h4min50s BRT
-- NF-e 4.0
UPDATE AD_Field SET DisplayLogic='@LBR_AttributeType@=''R00'' | @LBR_AttributeType@=''R03'' | @LBR_AttributeType@=''R04''',Updated=TO_TIMESTAMP('2018-06-05 19:04:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127397
;

-- 05/06/2018 19h9min11s BRT
-- NF-e 4.0
INSERT INTO AD_Tab (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_Tab_ID,AD_Table_ID,AD_Window_ID,Created,CreatedBy,DisplayLogic,EntityType,HasTree,Help,ImportFields,IsActive,IsAdvancedTab,IsInfoTab,IsInsertRecord,IsReadOnly,IsSingleRow,IsSortTab,IsTranslationTab,Name,Processing,SeqNo,TabLevel,Updated,UpdatedBy,WhereClause) VALUES (0,1130335,0,1120288,1120598,1000015,TO_TIMESTAMP('2018-06-05 19:09:10','YYYY-MM-DD HH24:MI:SS'),100,'@LBR_AttributeType@=''R00'' | @LBR_AttributeType@=''R01'' | @LBR_AttributeType@=''R02'' | @LBR_AttributeType@=''R05''','LBRA','N',NULL,'N','Y','N','N','Y','N','N','N','N','Line Tracking','N',51,2,TO_TIMESTAMP('2018-06-05 19:09:10','YYYY-MM-DD HH24:MI:SS'),100,'LBR_AttributeType=''R00''')
;

-- 05/06/2018 19h9min11s BRT
-- NF-e 4.0
INSERT INTO AD_Tab_Trl (AD_Language,AD_Tab_ID, CommitWarning,Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Tab_ID, t.CommitWarning,t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Tab t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Tab_ID=1120288 AND NOT EXISTS (SELECT * FROM AD_Tab_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Tab_ID=t.AD_Tab_ID)
;

-- 05/06/2018 19h9min16s BRT
-- NF-e 4.0
UPDATE AD_Tab_Trl SET IsTranslated='Y',Name='Rastreio',Updated=TO_TIMESTAMP('2018-06-05 19:09:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=1120288 AND AD_Language='pt_BR'
;

-- 05/06/2018 19h9min26s BRT
-- NF-e 4.0
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1130290,1127421,0,1120288,TO_TIMESTAMP('2018-06-05 19:09:26','YYYY-MM-DD HH24:MI:SS'),100,'Client/Tenant for this installation.',10,'LBRA','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Y','Y','Y','N','N','N','N','N','Client',10,TO_TIMESTAMP('2018-06-05 19:09:26','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 05/06/2018 19h9min26s BRT
-- NF-e 4.0
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1127421 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 05/06/2018 19h9min27s BRT
-- NF-e 4.0
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DefaultValue,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1130291,1127422,0,1120288,TO_TIMESTAMP('2018-06-05 19:09:26','YYYY-MM-DD HH24:MI:SS'),100,'@AD_Org_ID@','Organizational entity within client',10,'LBRA','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Y','Y','Y','N','N','N','Y','Y','Organization',20,TO_TIMESTAMP('2018-06-05 19:09:26','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 05/06/2018 19h9min27s BRT
-- NF-e 4.0
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1127422 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 05/06/2018 19h9min27s BRT
-- NF-e 4.0
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1130335,1127423,0,1120288,TO_TIMESTAMP('2018-06-05 19:09:27','YYYY-MM-DD HH24:MI:SS'),100,'Primary key table LBR_NotaFiscalLine',10,'LBRA','Primary key table LBR_NotaFiscalLine','Y','Y','Y','N','N','N','Y','N','Nota Fiscal Line',30,TO_TIMESTAMP('2018-06-05 19:09:27','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 05/06/2018 19h9min27s BRT
-- NF-e 4.0
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1127423 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 05/06/2018 19h9min27s BRT
-- NF-e 4.0
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1130292,1127424,0,1120288,TO_TIMESTAMP('2018-06-05 19:09:27','YYYY-MM-DD HH24:MI:SS'),100,'The record is active in the system',1,'LBRA','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Y','Y','Y','N','N','N','N','Y','Active',40,TO_TIMESTAMP('2018-06-05 19:09:27','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 05/06/2018 19h9min27s BRT
-- NF-e 4.0
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1127424 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 05/06/2018 19h9min28s BRT
-- NF-e 4.0
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DefaultValue,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1130339,1127425,0,1120288,TO_TIMESTAMP('2018-06-05 19:09:27','YYYY-MM-DD HH24:MI:SS'),100,'@LBR_AttributeType@',22,'LBRA','Y','Y','Y','N','N','N','N','N','Attribute Type',45,TO_TIMESTAMP('2018-06-05 19:09:27','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 05/06/2018 19h9min28s BRT
-- NF-e 4.0
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1127425 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 05/06/2018 19h9min28s BRT
-- NF-e 4.0
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_FieldGroup_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,DisplayLogic,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1130297,1120063,1127426,0,1120288,TO_TIMESTAMP('2018-06-05 19:09:28','YYYY-MM-DD HH24:MI:SS'),100,'Product Attribute Set Instance',10,'@LBR_AttributeType@=''R00'' | @LBR_AttributeType@=''R03'' | @LBR_AttributeType@=''R04''','LBRA','The values of the actual Product Attribute Instances.  The product level attributes are defined on Product level.','Y','Y','Y','N','N','N','N','N','Attribute Set Instance',50,TO_TIMESTAMP('2018-06-05 19:09:28','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 05/06/2018 19h9min28s BRT
-- NF-e 4.0
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1127426 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 05/06/2018 19h9min28s BRT
-- NF-e 4.0
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_FieldGroup_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,DisplayLogic,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1130336,1120063,1127427,0,1120288,TO_TIMESTAMP('2018-06-05 19:09:28','YYYY-MM-DD HH24:MI:SS'),100,'Quantity',10,'@LBR_AttributeType@=''R00'' | @LBR_AttributeType@=''R03'' | @LBR_AttributeType@=''R04''','LBRA','The Quantity indicates the number of a specific product or item for this document.','Y','Y','Y','N','N','N','N','Y','Quantity',60,TO_TIMESTAMP('2018-06-05 19:09:28','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 05/06/2018 19h9min28s BRT
-- NF-e 4.0
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1127427 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 05/06/2018 19h9min28s BRT
-- NF-e 4.0
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_FieldGroup_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,DisplayLogic,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1130299,1120063,1127428,0,1120288,TO_TIMESTAMP('2018-06-05 19:09:28','YYYY-MM-DD HH24:MI:SS'),100,10,'@LBR_AttributeType@=''R00'' | @LBR_AttributeType@=''R03'' | @LBR_AttributeType@=''R04''','LBRA','Y','Y','Y','N','N','N','N','N','Production Date',70,TO_TIMESTAMP('2018-06-05 19:09:28','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 05/06/2018 19h9min28s BRT
-- NF-e 4.0
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1127428 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 05/06/2018 19h9min29s BRT
-- NF-e 4.0
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_FieldGroup_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,DisplayLogic,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1130300,1120063,1127429,0,1120288,TO_TIMESTAMP('2018-06-05 19:09:28','YYYY-MM-DD HH24:MI:SS'),100,'Date when the payment is due',10,'@LBR_AttributeType@=''R00'' | @LBR_AttributeType@=''R03'' | @LBR_AttributeType@=''R04''','LBRA','Date when the payment is due without deductions or discount','Y','Y','Y','N','N','N','N','Y','Due Date',75,TO_TIMESTAMP('2018-06-05 19:09:28','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 05/06/2018 19h9min29s BRT
-- NF-e 4.0
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1127429 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 05/06/2018 19h9min29s BRT
-- NF-e 4.0
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_FieldGroup_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,DisplayLogic,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1130298,1120063,1127430,0,1120288,TO_TIMESTAMP('2018-06-05 19:09:29','YYYY-MM-DD HH24:MI:SS'),100,'Lot number (alphanumeric)',20,'@LBR_AttributeType@=''R00'' | @LBR_AttributeType@=''R03'' | @LBR_AttributeType@=''R04''','LBRA','The Lot Number indicates the specific lot that a product was part of.','Y','Y','Y','N','N','N','N','N','Lot No',85,TO_TIMESTAMP('2018-06-05 19:09:29','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 05/06/2018 19h9min29s BRT
-- NF-e 4.0
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1127430 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 05/06/2018 19h9min29s BRT
-- NF-e 4.0
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_FieldGroup_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,DisplayLogic,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1130301,1120064,1127431,0,1120288,TO_TIMESTAMP('2018-06-05 19:09:29','YYYY-MM-DD HH24:MI:SS'),100,13,'@LBR_AttributeType@=''X01'' | @LBR_AttributeType@=''R01''','LBRA','Y','Y','Y','N','N','N','N','N','ANVISA Code',90,TO_TIMESTAMP('2018-06-05 19:09:29','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 05/06/2018 19h9min29s BRT
-- NF-e 4.0
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1127431 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 05/06/2018 19h9min30s BRT
-- NF-e 4.0
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_FieldGroup_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,DisplayLogic,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1130302,1120065,1127432,0,1120288,TO_TIMESTAMP('2018-06-05 19:09:29','YYYY-MM-DD HH24:MI:SS'),100,9,'@LBR_AttributeType@=''X02'' | @LBR_AttributeType@=''R02''','LBRA','Y','Y','Y','N','N','N','N','N','ANP Code',100,TO_TIMESTAMP('2018-06-05 19:09:29','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 05/06/2018 19h9min30s BRT
-- NF-e 4.0
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1127432 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 05/06/2018 19h9min30s BRT
-- NF-e 4.0
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_FieldGroup_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,DisplayLogic,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1130307,1120065,1127433,0,1120288,TO_TIMESTAMP('2018-06-05 19:09:30','YYYY-MM-DD HH24:MI:SS'),100,10,'@LBR_AttributeType@=''X02'' | @LBR_AttributeType@=''R02''','LBRA','Y','Y','Y','N','N','N','N','Y','Start Amount',105,TO_TIMESTAMP('2018-06-05 19:09:30','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 05/06/2018 19h9min30s BRT
-- NF-e 4.0
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1127433 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 05/06/2018 19h9min30s BRT
-- NF-e 4.0
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_FieldGroup_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,DisplayLogic,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1130303,1120065,1127434,0,1120288,TO_TIMESTAMP('2018-06-05 19:09:30','YYYY-MM-DD HH24:MI:SS'),100,95,'@LBR_AttributeType@=''X02'' | @LBR_AttributeType@=''R02''','LBRA','Y','Y','Y','N','N','N','N','N','ANP Description',110,TO_TIMESTAMP('2018-06-05 19:09:30','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 05/06/2018 19h9min30s BRT
-- NF-e 4.0
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1127434 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 05/06/2018 19h9min31s BRT
-- NF-e 4.0
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_FieldGroup_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,DisplayLogic,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1130305,1120065,1127435,0,1120288,TO_TIMESTAMP('2018-06-05 19:09:30','YYYY-MM-DD HH24:MI:SS'),100,10,'@LBR_AttributeType@=''X02'' | @LBR_AttributeType@=''R02''','LBRA','Y','Y','Y','N','N','N','N','N','% Gas Interior',130,TO_TIMESTAMP('2018-06-05 19:09:30','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 05/06/2018 19h9min31s BRT
-- NF-e 4.0
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1127435 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 05/06/2018 19h9min31s BRT
-- NF-e 4.0
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_FieldGroup_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,DisplayLogic,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1130306,1120065,1127436,0,1120288,TO_TIMESTAMP('2018-06-05 19:09:31','YYYY-MM-DD HH24:MI:SS'),100,10,'@LBR_AttributeType@=''X02'' | @LBR_AttributeType@=''R02''','LBRA','Y','Y','Y','N','N','N','N','Y','% Gas Imported',140,TO_TIMESTAMP('2018-06-05 19:09:31','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 05/06/2018 19h9min31s BRT
-- NF-e 4.0
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1127436 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 05/06/2018 19h9min31s BRT
-- NF-e 4.0
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_FieldGroup_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,DisplayLogic,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1130304,1120065,1127437,0,1120288,TO_TIMESTAMP('2018-06-05 19:09:31','YYYY-MM-DD HH24:MI:SS'),100,10,'@LBR_AttributeType@=''X02'' | @LBR_AttributeType@=''R02''','LBRA','Y','Y','Y','N','N','N','N','N','% GLP Derivative',145,TO_TIMESTAMP('2018-06-05 19:09:31','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 05/06/2018 19h9min31s BRT
-- NF-e 4.0
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1127437 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 05/06/2018 19h9min32s BRT
-- NF-e 4.0
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_FieldGroup_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,DisplayLogic,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1130308,1120065,1127438,0,1120288,TO_TIMESTAMP('2018-06-05 19:09:31','YYYY-MM-DD HH24:MI:SS'),100,'Authorization Code from CODIF',21,'@LBR_AttributeType@=''X02'' | @LBR_AttributeType@=''R02''','LBRA','Y','Y','Y','N','N','N','N','Y','CODIF',146,TO_TIMESTAMP('2018-06-05 19:09:31','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 05/06/2018 19h9min32s BRT
-- NF-e 4.0
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1127438 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 05/06/2018 19h9min32s BRT
-- NF-e 4.0
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_FieldGroup_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,DisplayLogic,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1130309,1120066,1127439,0,1120288,TO_TIMESTAMP('2018-06-05 19:09:32','YYYY-MM-DD HH24:MI:SS'),100,1,'@LBR_AttributeType@=''X03'' | @LBR_AttributeType@=''R03''','LBRA','Y','Y','Y','N','N','N','N','N','Operation Type',170,TO_TIMESTAMP('2018-06-05 19:09:32','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 05/06/2018 19h9min32s BRT
-- NF-e 4.0
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1127439 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 05/06/2018 19h9min32s BRT
-- NF-e 4.0
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_FieldGroup_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,DisplayLogic,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1130310,1120066,1127440,0,1120288,TO_TIMESTAMP('2018-06-05 19:09:32','YYYY-MM-DD HH24:MI:SS'),100,21,'@LBR_AttributeType@=''X03'' | @LBR_AttributeType@=''R03''','LBRA','Y','Y','Y','N','N','N','N','Y','Chassis',180,TO_TIMESTAMP('2018-06-05 19:09:32','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 05/06/2018 19h9min32s BRT
-- NF-e 4.0
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1127440 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 05/06/2018 19h9min33s BRT
-- NF-e 4.0
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_FieldGroup_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,DisplayLogic,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1130311,1120066,1127441,0,1120288,TO_TIMESTAMP('2018-06-05 19:09:32','YYYY-MM-DD HH24:MI:SS'),100,4,'@LBR_AttributeType@=''X03'' | @LBR_AttributeType@=''R03''','LBRA','Y','Y','Y','N','N','N','N','N','Color Code',190,TO_TIMESTAMP('2018-06-05 19:09:32','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 05/06/2018 19h9min33s BRT
-- NF-e 4.0
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1127441 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 05/06/2018 19h9min33s BRT
-- NF-e 4.0
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_FieldGroup_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,DisplayLogic,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1130312,1120066,1127442,0,1120288,TO_TIMESTAMP('2018-06-05 19:09:33','YYYY-MM-DD HH24:MI:SS'),100,22,'@LBR_AttributeType@=''X03'' | @LBR_AttributeType@=''R03''','LBRA','Y','Y','Y','N','N','N','N','Y','Color Description',200,TO_TIMESTAMP('2018-06-05 19:09:33','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 05/06/2018 19h9min33s BRT
-- NF-e 4.0
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1127442 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 05/06/2018 19h9min33s BRT
-- NF-e 4.0
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_FieldGroup_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,DisplayLogic,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1130313,1120066,1127443,0,1120288,TO_TIMESTAMP('2018-06-05 19:09:33','YYYY-MM-DD HH24:MI:SS'),100,10,'@LBR_AttributeType@=''X03'' | @LBR_AttributeType@=''R03''','LBRA','Y','Y','Y','N','N','N','N','N','Engine Power (CV)',210,TO_TIMESTAMP('2018-06-05 19:09:33','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 05/06/2018 19h9min33s BRT
-- NF-e 4.0
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1127443 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 05/06/2018 19h9min34s BRT
-- NF-e 4.0
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_FieldGroup_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,DisplayLogic,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1130314,1120066,1127444,0,1120288,TO_TIMESTAMP('2018-06-05 19:09:33','YYYY-MM-DD HH24:MI:SS'),100,10,'@LBR_AttributeType@=''X03'' | @LBR_AttributeType@=''R03''','LBRA','Y','Y','Y','N','N','N','N','Y','Cylinder',220,TO_TIMESTAMP('2018-06-05 19:09:33','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 05/06/2018 19h9min34s BRT
-- NF-e 4.0
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1127444 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 05/06/2018 19h9min34s BRT
-- NF-e 4.0
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_FieldGroup_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,DisplayLogic,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1130315,1120066,1127445,0,1120288,TO_TIMESTAMP('2018-06-05 19:09:34','YYYY-MM-DD HH24:MI:SS'),100,22,'@LBR_AttributeType@=''X03'' | @LBR_AttributeType@=''R03''','LBRA','Y','Y','Y','N','N','N','N','N','Vehicle Serial',230,TO_TIMESTAMP('2018-06-05 19:09:34','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 05/06/2018 19h9min34s BRT
-- NF-e 4.0
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1127445 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 05/06/2018 19h9min34s BRT
-- NF-e 4.0
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_FieldGroup_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,DisplayLogic,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1130316,1120066,1127446,0,1120288,TO_TIMESTAMP('2018-06-05 19:09:34','YYYY-MM-DD HH24:MI:SS'),100,22,'@LBR_AttributeType@=''X03'' | @LBR_AttributeType@=''R03''','LBRA','Y','Y','Y','N','N','N','N','Y','Fuel Type',240,TO_TIMESTAMP('2018-06-05 19:09:34','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 05/06/2018 19h9min34s BRT
-- NF-e 4.0
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1127446 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 05/06/2018 19h9min35s BRT
-- NF-e 4.0
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_FieldGroup_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,DisplayLogic,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1130317,1120066,1127447,0,1120288,TO_TIMESTAMP('2018-06-05 19:09:34','YYYY-MM-DD HH24:MI:SS'),100,21,'@LBR_AttributeType@=''X03'' | @LBR_AttributeType@=''R03''','LBRA','Y','Y','Y','N','N','N','N','N','Engine Number',250,TO_TIMESTAMP('2018-06-05 19:09:34','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 05/06/2018 19h9min35s BRT
-- NF-e 4.0
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1127447 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 05/06/2018 19h9min35s BRT
-- NF-e 4.0
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_FieldGroup_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,DisplayLogic,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1130318,1120066,1127448,0,1120288,TO_TIMESTAMP('2018-06-05 19:09:35','YYYY-MM-DD HH24:MI:SS'),100,10,'@LBR_AttributeType@=''X03'' | @LBR_AttributeType@=''R03''','LBRA','Y','Y','Y','N','N','N','N','Y','Traction Capacity',260,TO_TIMESTAMP('2018-06-05 19:09:35','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 05/06/2018 19h9min35s BRT
-- NF-e 4.0
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1127448 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 05/06/2018 19h9min35s BRT
-- NF-e 4.0
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_FieldGroup_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,DisplayLogic,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1130319,1120066,1127449,0,1120288,TO_TIMESTAMP('2018-06-05 19:09:35','YYYY-MM-DD HH24:MI:SS'),100,10,'@LBR_AttributeType@=''X03'' | @LBR_AttributeType@=''R03''','LBRA','Y','Y','Y','N','N','N','N','N','Wheel Base',270,TO_TIMESTAMP('2018-06-05 19:09:35','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 05/06/2018 19h9min35s BRT
-- NF-e 4.0
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1127449 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 05/06/2018 19h9min36s BRT
-- NF-e 4.0
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_FieldGroup_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,DisplayLogic,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1130320,1120066,1127450,0,1120288,TO_TIMESTAMP('2018-06-05 19:09:35','YYYY-MM-DD HH24:MI:SS'),100,4,'@LBR_AttributeType@=''X03'' | @LBR_AttributeType@=''R03''','LBRA','Y','Y','Y','N','N','N','N','N','Year Model',280,TO_TIMESTAMP('2018-06-05 19:09:35','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 05/06/2018 19h9min36s BRT
-- NF-e 4.0
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1127450 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 05/06/2018 19h9min36s BRT
-- NF-e 4.0
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_FieldGroup_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,DisplayLogic,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1130321,1120066,1127451,0,1120288,TO_TIMESTAMP('2018-06-05 19:09:36','YYYY-MM-DD HH24:MI:SS'),100,4,'@LBR_AttributeType@=''X03'' | @LBR_AttributeType@=''R03''','LBRA','Y','Y','Y','N','N','N','N','Y','Year Production',290,TO_TIMESTAMP('2018-06-05 19:09:36','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 05/06/2018 19h9min36s BRT
-- NF-e 4.0
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1127451 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 05/06/2018 19h9min36s BRT
-- NF-e 4.0
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_FieldGroup_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,DisplayLogic,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1130322,1120066,1127452,0,1120288,TO_TIMESTAMP('2018-06-05 19:09:36','YYYY-MM-DD HH24:MI:SS'),100,1,'@LBR_AttributeType@=''X03'' | @LBR_AttributeType@=''R03''','LBRA','Y','Y','Y','N','N','N','N','N','Paint Type',300,TO_TIMESTAMP('2018-06-05 19:09:36','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 05/06/2018 19h9min36s BRT
-- NF-e 4.0
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1127452 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 05/06/2018 19h9min37s BRT
-- NF-e 4.0
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_FieldGroup_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,DisplayLogic,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1130323,1120066,1127453,0,1120288,TO_TIMESTAMP('2018-06-05 19:09:36','YYYY-MM-DD HH24:MI:SS'),100,2,'@LBR_AttributeType@=''X03'' | @LBR_AttributeType@=''R03''','LBRA','Y','Y','Y','N','N','N','N','Y','Vehicle Type',310,TO_TIMESTAMP('2018-06-05 19:09:36','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 05/06/2018 19h9min37s BRT
-- NF-e 4.0
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1127453 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 05/06/2018 19h9min37s BRT
-- NF-e 4.0
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_FieldGroup_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,DisplayLogic,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1130324,1120066,1127454,0,1120288,TO_TIMESTAMP('2018-06-05 19:09:37','YYYY-MM-DD HH24:MI:SS'),100,2,'@LBR_AttributeType@=''X03'' | @LBR_AttributeType@=''R03''','LBRA','Y','Y','Y','N','N','N','N','N','Vehicle Kind',320,TO_TIMESTAMP('2018-06-05 19:09:37','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 05/06/2018 19h9min37s BRT
-- NF-e 4.0
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1127454 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 05/06/2018 19h9min37s BRT
-- NF-e 4.0
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_FieldGroup_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,DisplayLogic,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1130325,1120066,1127455,0,1120288,TO_TIMESTAMP('2018-06-05 19:09:37','YYYY-MM-DD HH24:MI:SS'),100,22,'@LBR_AttributeType@=''X03'' | @LBR_AttributeType@=''R03''','LBRA','Y','Y','Y','N','N','N','N','Y','VIN',330,TO_TIMESTAMP('2018-06-05 19:09:37','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 05/06/2018 19h9min37s BRT
-- NF-e 4.0
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1127455 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 05/06/2018 19h9min38s BRT
-- NF-e 4.0
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_FieldGroup_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,DisplayLogic,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1130326,1120066,1127456,0,1120288,TO_TIMESTAMP('2018-06-05 19:09:37','YYYY-MM-DD HH24:MI:SS'),100,22,'@LBR_AttributeType@=''X03'' | @LBR_AttributeType@=''R03''','LBRA','Y','Y','Y','N','N','N','N','N','Vehicle Condition',340,TO_TIMESTAMP('2018-06-05 19:09:37','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 05/06/2018 19h9min38s BRT
-- NF-e 4.0
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1127456 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 05/06/2018 19h9min38s BRT
-- NF-e 4.0
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_FieldGroup_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,DisplayLogic,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1130327,1120066,1127457,0,1120288,TO_TIMESTAMP('2018-06-05 19:09:38','YYYY-MM-DD HH24:MI:SS'),100,22,'@LBR_AttributeType@=''X03'' | @LBR_AttributeType@=''R03''','LBRA','Y','Y','Y','N','N','N','N','Y','Brand Code',350,TO_TIMESTAMP('2018-06-05 19:09:38','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 05/06/2018 19h9min38s BRT
-- NF-e 4.0
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1127457 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 05/06/2018 19h9min38s BRT
-- NF-e 4.0
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_FieldGroup_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,DisplayLogic,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1130328,1120066,1127458,0,1120288,TO_TIMESTAMP('2018-06-05 19:09:38','YYYY-MM-DD HH24:MI:SS'),100,2,'@LBR_AttributeType@=''X03'' | @LBR_AttributeType@=''R03''','LBRA','Y','Y','Y','N','N','N','N','N','Color (DENAT)',360,TO_TIMESTAMP('2018-06-05 19:09:38','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 05/06/2018 19h9min38s BRT
-- NF-e 4.0
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1127458 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 05/06/2018 19h9min39s BRT
-- NF-e 4.0
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_FieldGroup_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,DisplayLogic,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1130329,1120066,1127459,0,1120288,TO_TIMESTAMP('2018-06-05 19:09:38','YYYY-MM-DD HH24:MI:SS'),100,22,'@LBR_AttributeType@=''X03'' | @LBR_AttributeType@=''R03''','LBRA','Y','Y','Y','N','N','N','N','Y','Max. Capacity',380,TO_TIMESTAMP('2018-06-05 19:09:38','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 05/06/2018 19h9min39s BRT
-- NF-e 4.0
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1127459 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 05/06/2018 19h9min39s BRT
-- NF-e 4.0
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_FieldGroup_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,DisplayLogic,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1130330,1120066,1127460,0,1120288,TO_TIMESTAMP('2018-06-05 19:09:39','YYYY-MM-DD HH24:MI:SS'),100,22,'@LBR_AttributeType@=''X03'' | @LBR_AttributeType@=''R03''','LBRA','Y','Y','Y','N','N','N','N','N','Restriction',390,TO_TIMESTAMP('2018-06-05 19:09:39','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 05/06/2018 19h9min39s BRT
-- NF-e 4.0
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1127460 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 05/06/2018 19h9min39s BRT
-- NF-e 4.0
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_FieldGroup_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,DisplayLogic,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1130331,1120067,1127461,0,1120288,TO_TIMESTAMP('2018-06-05 19:09:39','YYYY-MM-DD HH24:MI:SS'),100,22,'@LBR_AttributeType@=''X04'' | @LBR_AttributeType@=''R04''','LBRA','Y','Y','Y','N','N','N','N','N','Gun Type',400,TO_TIMESTAMP('2018-06-05 19:09:39','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 05/06/2018 19h9min39s BRT
-- NF-e 4.0
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1127461 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 05/06/2018 19h9min40s BRT
-- NF-e 4.0
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_FieldGroup_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,DisplayLogic,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1130332,1120067,1127462,0,1120288,TO_TIMESTAMP('2018-06-05 19:09:39','YYYY-MM-DD HH24:MI:SS'),100,15,'@LBR_AttributeType@=''X04'' | @LBR_AttributeType@=''R04''','LBRA','Y','Y','Y','N','N','N','N','N','Gun Serial',410,TO_TIMESTAMP('2018-06-05 19:09:39','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 05/06/2018 19h9min40s BRT
-- NF-e 4.0
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1127462 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 05/06/2018 19h9min40s BRT
-- NF-e 4.0
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_FieldGroup_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,DisplayLogic,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1130333,1120067,1127463,0,1120288,TO_TIMESTAMP('2018-06-05 19:09:40','YYYY-MM-DD HH24:MI:SS'),100,15,'@LBR_AttributeType@=''X04'' | @LBR_AttributeType@=''R04''','LBRA','Y','Y','Y','N','N','N','N','Y','Gun Barrel',420,TO_TIMESTAMP('2018-06-05 19:09:40','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 05/06/2018 19h9min40s BRT
-- NF-e 4.0
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1127463 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 05/06/2018 19h9min40s BRT
-- NF-e 4.0
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_FieldGroup_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,DisplayLogic,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1130334,1120068,1127464,0,1120288,TO_TIMESTAMP('2018-06-05 19:09:40','YYYY-MM-DD HH24:MI:SS'),100,20,'@LBR_AttributeType@=''X05'' | @LBR_AttributeType@=''R05''','LBRA','Y','Y','Y','N','N','N','N','Y','RECOPI',430,TO_TIMESTAMP('2018-06-05 19:09:40','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 05/06/2018 19h9min40s BRT
-- NF-e 4.0
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1127464 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 05/06/2018 19h9min41s BRT
-- NF-e 4.0
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1130289,1127465,0,1120288,TO_TIMESTAMP('2018-06-05 19:09:40','YYYY-MM-DD HH24:MI:SS'),100,10,'LBRA','Y','Y','N','N','N','N','N','N','NF Line Material Attributes',TO_TIMESTAMP('2018-06-05 19:09:40','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 05/06/2018 19h9min41s BRT
-- NF-e 4.0
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1127465 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 05/06/2018 19h9min52s BRT
-- NF-e 4.0
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1127437
;

-- 05/06/2018 19h9min52s BRT
-- NF-e 4.0
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1127436
;

-- 05/06/2018 19h9min52s BRT
-- NF-e 4.0
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1127435
;

-- 05/06/2018 19h9min52s BRT
-- NF-e 4.0
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1127432
;

-- 05/06/2018 19h9min52s BRT
-- NF-e 4.0
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1127434
;

-- 05/06/2018 19h9min52s BRT
-- NF-e 4.0
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1127431
;

-- 05/06/2018 19h9min52s BRT
-- NF-e 4.0
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1127457
;

-- 05/06/2018 19h9min52s BRT
-- NF-e 4.0
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1127438
;

-- 05/06/2018 19h9min52s BRT
-- NF-e 4.0
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1127440
;

-- 05/06/2018 19h9min52s BRT
-- NF-e 4.0
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1127458
;

-- 05/06/2018 19h9min52s BRT
-- NF-e 4.0
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1127441
;

-- 05/06/2018 19h9min52s BRT
-- NF-e 4.0
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1127442
;

-- 05/06/2018 19h9min52s BRT
-- NF-e 4.0
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1127444
;

-- 05/06/2018 19h9min52s BRT
-- NF-e 4.0
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1127447
;

-- 05/06/2018 19h9min52s BRT
-- NF-e 4.0
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1127443
;

-- 05/06/2018 19h9min52s BRT
-- NF-e 4.0
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1127446
;

-- 05/06/2018 19h9min52s BRT
-- NF-e 4.0
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1127463
;

-- 05/06/2018 19h9min52s BRT
-- NF-e 4.0
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1127462
;

-- 05/06/2018 19h9min52s BRT
-- NF-e 4.0
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1127461
;

-- 05/06/2018 19h9min52s BRT
-- NF-e 4.0
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1127459
;

-- 05/06/2018 19h9min52s BRT
-- NF-e 4.0
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1127439
;

-- 05/06/2018 19h9min52s BRT
-- NF-e 4.0
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1127452
;

-- 05/06/2018 19h9min52s BRT
-- NF-e 4.0
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1127464
;

-- 05/06/2018 19h9min52s BRT
-- NF-e 4.0
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1127460
;

-- 05/06/2018 19h9min52s BRT
-- NF-e 4.0
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1127433
;

-- 05/06/2018 19h9min52s BRT
-- NF-e 4.0
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1127448
;

-- 05/06/2018 19h9min52s BRT
-- NF-e 4.0
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1127455
;

-- 05/06/2018 19h9min52s BRT
-- NF-e 4.0
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1127456
;

-- 05/06/2018 19h9min52s BRT
-- NF-e 4.0
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1127454
;

-- 05/06/2018 19h9min52s BRT
-- NF-e 4.0
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1127445
;

-- 05/06/2018 19h9min52s BRT
-- NF-e 4.0
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1127453
;

-- 05/06/2018 19h9min52s BRT
-- NF-e 4.0
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1127449
;

-- 05/06/2018 19h9min52s BRT
-- NF-e 4.0
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1127450
;

-- 05/06/2018 19h9min52s BRT
-- NF-e 4.0
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1127451
;

-- 05/06/2018 19h9min52s BRT
-- NF-e 4.0
UPDATE AD_Field SET SeqNo=50,IsDisplayed='Y' WHERE AD_Field_ID=1127425
;

-- 05/06/2018 19h9min52s BRT
-- NF-e 4.0
UPDATE AD_Field SET SeqNo=60,IsDisplayed='Y' WHERE AD_Field_ID=1127426
;

-- 05/06/2018 19h9min52s BRT
-- NF-e 4.0
UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y' WHERE AD_Field_ID=1127427
;

-- 05/06/2018 19h9min52s BRT
-- NF-e 4.0
UPDATE AD_Field SET SeqNo=80,IsDisplayed='Y' WHERE AD_Field_ID=1127428
;

-- 05/06/2018 19h9min52s BRT
-- NF-e 4.0
UPDATE AD_Field SET SeqNo=90,IsDisplayed='Y' WHERE AD_Field_ID=1127429
;

-- 05/06/2018 19h9min52s BRT
-- NF-e 4.0
UPDATE AD_Field SET SeqNo=100,IsDisplayed='Y' WHERE AD_Field_ID=1127430
;

-- 05/06/2018 19h10min12s BRT
-- NF-e 4.0
UPDATE AD_Field SET DefaultValue='R00', IsReadOnly='Y',Updated=TO_TIMESTAMP('2018-06-05 19:10:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127425
;

-- 05/06/2018 19h10min19s BRT
-- NF-e 4.0
UPDATE AD_Field SET DisplayLogic=NULL,Updated=TO_TIMESTAMP('2018-06-05 19:10:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127426
;

-- 05/06/2018 19h10min22s BRT
-- NF-e 4.0
UPDATE AD_Field SET DisplayLogic=NULL,Updated=TO_TIMESTAMP('2018-06-05 19:10:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127427
;

-- 05/06/2018 19h10min25s BRT
-- NF-e 4.0
UPDATE AD_Field SET DisplayLogic=NULL,Updated=TO_TIMESTAMP('2018-06-05 19:10:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127428
;

-- 05/06/2018 19h10min28s BRT
-- NF-e 4.0
UPDATE AD_Field SET DisplayLogic=NULL,Updated=TO_TIMESTAMP('2018-06-05 19:10:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127429
;

-- 05/06/2018 19h10min31s BRT
-- NF-e 4.0
UPDATE AD_Field SET DisplayLogic=NULL,Updated=TO_TIMESTAMP('2018-06-05 19:10:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127430
;

-- 05/06/2018 19h10min42s BRT
-- NF-e 4.0
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2018-06-05 19:10:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127420
;

-- 05/06/2018 19h12min23s BRT
-- NF-e 4.0
UPDATE AD_Tab SET DisplayLogic='@LBR_AttributeType@!'''' & @LBR_AttributeType@!''R00''',Updated=TO_TIMESTAMP('2018-06-05 19:12:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=1120287
;

-- 05/06/2018 20h18min11s BRT
-- NF-e 4.0
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,1122515,0,'LBR_MaxPrice',TO_TIMESTAMP('2018-06-05 20:18:11','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Max Price','Max Price',TO_TIMESTAMP('2018-06-05 20:18:11','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 05/06/2018 20h18min11s BRT
-- NF-e 4.0
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1122515 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 05/06/2018 20h18min41s BRT
-- NF-e 4.0
UPDATE AD_Element_Trl SET IsTranslated='Y',Name='Preço Máximo',PrintName='Preço Máximo',Description='Preço Máximo ao Consumidor',Help='Preço Máximo ao Consumidor',Updated=TO_TIMESTAMP('2018-06-05 20:18:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1122515 AND AD_Language='pt_BR'
;

-- 05/06/2018 20h19min1s BRT
-- NF-e 4.0
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1130340,1122515,0,12,1120598,'LBR_MaxPrice',TO_TIMESTAMP('2018-06-05 20:19:01','YYYY-MM-DD HH24:MI:SS'),100,'0','LBRA',10,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Max Price',0,TO_TIMESTAMP('2018-06-05 20:19:01','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 05/06/2018 20h19min1s BRT
-- NF-e 4.0
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1130340 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 05/06/2018 20h19min3s BRT
-- NF-e 4.0
ALTER TABLE LBR_NFLineMA ADD COLUMN LBR_MaxPrice NUMERIC DEFAULT '0' 
;

-- 05/06/2018 20h19min42s BRT
-- NF-e 4.0
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_FieldGroup_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,DisplayLogic,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1130340,1120064,1127466,0,1120287,TO_TIMESTAMP('2018-06-05 20:19:42','YYYY-MM-DD HH24:MI:SS'),100,13,'@LBR_AttributeType@=''X01'' | @LBR_AttributeType@=''R01''','LBRA','Y','Y','Y','N','N','N','N','Y','Max Price',95,TO_TIMESTAMP('2018-06-05 20:19:42','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 05/06/2018 20h19min42s BRT
-- NF-e 4.0
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1127466 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 06/06/2018 10h45min0s BRT
-- NF-e 4.0
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,Description,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,1122516,0,'LBR_XMLMapping',TO_TIMESTAMP('2018-06-06 10:45:00','YYYY-MM-DD HH24:MI:SS'),100,'XML Mapping of NF-e','LBRA','Y','XML Mapping','XML Mapping',TO_TIMESTAMP('2018-06-06 10:45:00','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 06/06/2018 10h45min0s BRT
-- NF-e 4.0
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1122516 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 06/06/2018 10h45min32s BRT
-- NF-e 4.0
UPDATE AD_Element_Trl SET IsTranslated='Y',Name='Mapear no XML',PrintName='Mapear no XML',Description='Mapear no XML da NF-e',Help='Mapeia este atributo para uma TAG específica no XML da NF-e',Updated=TO_TIMESTAMP('2018-06-06 10:45:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1122516 AND AD_Language='pt_BR'
;

-- 06/06/2018 10h46min15s BRT
-- NF-e 4.0
INSERT INTO AD_Reference (AD_Client_ID,AD_Org_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,IsOrderByValue,Name,Updated,UpdatedBy,ValidationType) VALUES (0,0,1120279,TO_TIMESTAMP('2018-06-06 10:46:15','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Y','LBR_XMLMapping',TO_TIMESTAMP('2018-06-06 10:46:15','YYYY-MM-DD HH24:MI:SS'),100,'L')
;

-- 06/06/2018 10h46min15s BRT
-- NF-e 4.0
INSERT INTO AD_Reference_Trl (AD_Language,AD_Reference_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Reference_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Reference t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Reference_ID=1120279 AND NOT EXISTS (SELECT * FROM AD_Reference_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Reference_ID=t.AD_Reference_ID)
;

-- 06/06/2018 10h52min2s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121993,1120279,TO_TIMESTAMP('2018-06-06 10:52:01','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Rastreio: Número do Lote',TO_TIMESTAMP('2018-06-06 10:52:01','YYYY-MM-DD HH24:MI:SS'),100,'TR01')
;

-- 06/06/2018 10h52min2s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121993 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 06/06/2018 10h52min6s BRT
-- NF-e 4.0
UPDATE AD_Ref_List SET Name='Tracking: Lot Number',Updated=TO_TIMESTAMP('2018-06-06 10:52:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121993
;

-- 06/06/2018 10h52min6s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=1121993
;

-- 06/06/2018 10h52min6s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET Description=NULL,Name='Tracking: Lot Number',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Ref_List_ID=1121993
;

-- 06/06/2018 10h52min18s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121994,1120279,TO_TIMESTAMP('2018-06-06 10:52:18','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Rastreio: Data de Fabricação',TO_TIMESTAMP('2018-06-06 10:52:18','YYYY-MM-DD HH24:MI:SS'),100,'TR02')
;

-- 06/06/2018 10h52min18s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121994 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 06/06/2018 10h52min22s BRT
-- NF-e 4.0
UPDATE AD_Ref_List SET Name='Tracking: Production Date',Updated=TO_TIMESTAMP('2018-06-06 10:52:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121994
;

-- 06/06/2018 10h52min22s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=1121994
;

-- 06/06/2018 10h52min22s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET Description=NULL,Name='Tracking: Production Date',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Ref_List_ID=1121994
;

-- 06/06/2018 10h52min31s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121995,1120279,TO_TIMESTAMP('2018-06-06 10:52:31','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Rastreio: Data de Validade',TO_TIMESTAMP('2018-06-06 10:52:31','YYYY-MM-DD HH24:MI:SS'),100,'TR03')
;

-- 06/06/2018 10h52min31s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121995 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 06/06/2018 10h52min35s BRT
-- NF-e 4.0
UPDATE AD_Ref_List SET Name='Tracking: Due Date',Updated=TO_TIMESTAMP('2018-06-06 10:52:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121995
;

-- 06/06/2018 10h52min35s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=1121995
;

-- 06/06/2018 10h52min35s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET Description=NULL,Name='Tracking: Due Date',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Ref_List_ID=1121995
;

-- 06/06/2018 10h52min44s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121996,1120279,TO_TIMESTAMP('2018-06-06 10:52:44','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Medicamento: Código ANVISA',TO_TIMESTAMP('2018-06-06 10:52:44','YYYY-MM-DD HH24:MI:SS'),100,'ME01')
;

-- 06/06/2018 10h52min44s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121996 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 06/06/2018 10h52min49s BRT
-- NF-e 4.0
UPDATE AD_Ref_List SET Name='Medicine: ANVISA Code',Updated=TO_TIMESTAMP('2018-06-06 10:52:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121996
;

-- 06/06/2018 10h52min49s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=1121996
;

-- 06/06/2018 10h52min49s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET Description=NULL,Name='Medicine: ANVISA Code',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Ref_List_ID=1121996
;

-- 06/06/2018 10h53min0s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121997,1120279,TO_TIMESTAMP('2018-06-06 10:53:00','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Medicamento: Preço Máximo',TO_TIMESTAMP('2018-06-06 10:53:00','YYYY-MM-DD HH24:MI:SS'),100,'ME02')
;

-- 06/06/2018 10h53min0s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121997 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 06/06/2018 10h53min4s BRT
-- NF-e 4.0
UPDATE AD_Ref_List SET Name='Medicine: Max Price',Updated=TO_TIMESTAMP('2018-06-06 10:53:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121997
;

-- 06/06/2018 10h53min4s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=1121997
;

-- 06/06/2018 10h53min4s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET Description=NULL,Name='Medicine: Max Price',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Ref_List_ID=1121997
;

-- 06/06/2018 10h53min14s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121998,1120279,TO_TIMESTAMP('2018-06-06 10:53:13','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Combustível: Código da ANP',TO_TIMESTAMP('2018-06-06 10:53:13','YYYY-MM-DD HH24:MI:SS'),100,'FU01')
;

-- 06/06/2018 10h53min14s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121998 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 06/06/2018 10h53min44s BRT
-- NF-e 4.0
UPDATE AD_Ref_List SET Name='Fuel: ANP Code',Updated=TO_TIMESTAMP('2018-06-06 10:53:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121998
;

-- 06/06/2018 10h53min44s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=1121998
;

-- 06/06/2018 10h53min44s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET Description=NULL,Name='Fuel: ANP Code',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Ref_List_ID=1121998
;

-- 06/06/2018 10h53min55s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121999,1120279,TO_TIMESTAMP('2018-06-06 10:53:55','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Combustível: Descrição na ANP',TO_TIMESTAMP('2018-06-06 10:53:55','YYYY-MM-DD HH24:MI:SS'),100,'FU02')
;

-- 06/06/2018 10h53min55s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121999 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 06/06/2018 10h53min59s BRT
-- NF-e 4.0
UPDATE AD_Ref_List SET Name='Fuel: ANP Description',Updated=TO_TIMESTAMP('2018-06-06 10:53:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121999
;

-- 06/06/2018 10h53min59s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=1121999
;

-- 06/06/2018 10h53min59s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET Description=NULL,Name='Fuel: ANP Description',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Ref_List_ID=1121999
;

-- 06/06/2018 10h54min8s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1122000,1120279,TO_TIMESTAMP('2018-06-06 10:54:08','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Combustível: % GLP Derivado',TO_TIMESTAMP('2018-06-06 10:54:08','YYYY-MM-DD HH24:MI:SS'),100,'FU03')
;

-- 06/06/2018 10h54min8s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1122000 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 06/06/2018 10h54min12s BRT
-- NF-e 4.0
UPDATE AD_Ref_List SET Name='Fuel: % GLP Derivative',Updated=TO_TIMESTAMP('2018-06-06 10:54:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1122000
;

-- 06/06/2018 10h54min12s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=1122000
;

-- 06/06/2018 10h54min12s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET Description=NULL,Name='Fuel: % GLP Derivative',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Ref_List_ID=1122000
;

-- 06/06/2018 10h54min22s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1122001,1120279,TO_TIMESTAMP('2018-06-06 10:54:21','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Combustível: % Gás Nacional',TO_TIMESTAMP('2018-06-06 10:54:21','YYYY-MM-DD HH24:MI:SS'),100,'FU04')
;

-- 06/06/2018 10h54min22s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1122001 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 06/06/2018 10h54min25s BRT
-- NF-e 4.0
UPDATE AD_Ref_List SET Name='Fuel: % Gás Interior',Updated=TO_TIMESTAMP('2018-06-06 10:54:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1122001
;

-- 06/06/2018 10h54min25s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=1122001
;

-- 06/06/2018 10h54min25s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET Description=NULL,Name='Fuel: % Gás Interior',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Ref_List_ID=1122001
;

-- 06/06/2018 10h54min33s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1122002,1120279,TO_TIMESTAMP('2018-06-06 10:54:32','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Combustível: % Gás Importado',TO_TIMESTAMP('2018-06-06 10:54:32','YYYY-MM-DD HH24:MI:SS'),100,'FU05')
;

-- 06/06/2018 10h54min33s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1122002 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 06/06/2018 10h54min36s BRT
-- NF-e 4.0
UPDATE AD_Ref_List SET Name='Fuel: % Gás Imported',Updated=TO_TIMESTAMP('2018-06-06 10:54:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1122002
;

-- 06/06/2018 10h54min36s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=1122002
;

-- 06/06/2018 10h54min36s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET Description=NULL,Name='Fuel: % Gás Imported',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Ref_List_ID=1122002
;

-- 06/06/2018 10h54min50s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1122003,1120279,TO_TIMESTAMP('2018-06-06 10:54:50','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Combustível: Valor de Partida',TO_TIMESTAMP('2018-06-06 10:54:50','YYYY-MM-DD HH24:MI:SS'),100,'FU06')
;

-- 06/06/2018 10h54min50s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1122003 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 06/06/2018 10h54min51s BRT
-- NF-e 4.0
UPDATE AD_Ref_List SET Name='Fuel: Start Amount',Updated=TO_TIMESTAMP('2018-06-06 10:54:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1122003
;

-- 06/06/2018 10h54min51s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=1122003
;

-- 06/06/2018 10h54min51s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET Description=NULL,Name='Fuel: Start Amount',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Ref_List_ID=1122003
;

-- 06/06/2018 10h55min5s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1122004,1120279,TO_TIMESTAMP('2018-06-06 10:55:05','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Combustível: CODIF',TO_TIMESTAMP('2018-06-06 10:55:05','YYYY-MM-DD HH24:MI:SS'),100,'FU07')
;

-- 06/06/2018 10h55min5s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1122004 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 06/06/2018 10h55min9s BRT
-- NF-e 4.0
UPDATE AD_Ref_List SET Name='Fuel: CODIF',Updated=TO_TIMESTAMP('2018-06-06 10:55:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1122004
;

-- 06/06/2018 10h55min9s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=1122004
;

-- 06/06/2018 10h55min9s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET Description=NULL,Name='Fuel: CODIF',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Ref_List_ID=1122004
;

-- 06/06/2018 10h55min20s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1122005,1120279,TO_TIMESTAMP('2018-06-06 10:55:19','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Veículo: Tipo da operação',TO_TIMESTAMP('2018-06-06 10:55:19','YYYY-MM-DD HH24:MI:SS'),100,'VE01')
;

-- 06/06/2018 10h55min20s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1122005 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 06/06/2018 10h55min23s BRT
-- NF-e 4.0
UPDATE AD_Ref_List SET Name='Vehicle: Operation Tipe',Updated=TO_TIMESTAMP('2018-06-06 10:55:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1122005
;

-- 06/06/2018 10h55min23s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=1122005
;

-- 06/06/2018 10h55min23s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET Description=NULL,Name='Vehicle: Operation Tipe',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Ref_List_ID=1122005
;

-- 06/06/2018 10h55min31s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1122006,1120279,TO_TIMESTAMP('2018-06-06 10:55:30','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Veículo: Chassi do veículo',TO_TIMESTAMP('2018-06-06 10:55:30','YYYY-MM-DD HH24:MI:SS'),100,'VE02')
;

-- 06/06/2018 10h55min31s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1122006 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 06/06/2018 10h55min34s BRT
-- NF-e 4.0
UPDATE AD_Ref_List SET Name='Vehicle: Chassis',Updated=TO_TIMESTAMP('2018-06-06 10:55:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1122006
;

-- 06/06/2018 10h55min34s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=1122006
;

-- 06/06/2018 10h55min34s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET Description=NULL,Name='Vehicle: Chassis',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Ref_List_ID=1122006
;

-- 06/06/2018 10h55min42s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1122007,1120279,TO_TIMESTAMP('2018-06-06 10:55:42','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Veículo: Código da Cor',TO_TIMESTAMP('2018-06-06 10:55:42','YYYY-MM-DD HH24:MI:SS'),100,'VE03')
;

-- 06/06/2018 10h55min42s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1122007 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 06/06/2018 10h55min46s BRT
-- NF-e 4.0
UPDATE AD_Ref_List SET Name='Vehicle: Color Code',Updated=TO_TIMESTAMP('2018-06-06 10:55:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1122007
;

-- 06/06/2018 10h55min46s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=1122007
;

-- 06/06/2018 10h55min46s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET Description=NULL,Name='Vehicle: Color Code',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Ref_List_ID=1122007
;

-- 06/06/2018 10h55min56s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1122008,1120279,TO_TIMESTAMP('2018-06-06 10:55:55','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Veículo: Descrição da Cor',TO_TIMESTAMP('2018-06-06 10:55:55','YYYY-MM-DD HH24:MI:SS'),100,'VE04')
;

-- 06/06/2018 10h55min56s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1122008 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 06/06/2018 10h55min59s BRT
-- NF-e 4.0
UPDATE AD_Ref_List SET Name='Vehicle: Color Description',Updated=TO_TIMESTAMP('2018-06-06 10:55:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1122008
;

-- 06/06/2018 10h55min59s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=1122008
;

-- 06/06/2018 10h55min59s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET Description=NULL,Name='Vehicle: Color Description',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Ref_List_ID=1122008
;

-- 06/06/2018 10h56min15s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1122009,1120279,TO_TIMESTAMP('2018-06-06 10:56:08','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Veículo: Potência Motor (CV)',TO_TIMESTAMP('2018-06-06 10:56:08','YYYY-MM-DD HH24:MI:SS'),100,'VE05')
;

-- 06/06/2018 10h56min15s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1122009 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 06/06/2018 10h56min19s BRT
-- NF-e 4.0
UPDATE AD_Ref_List SET Name='Vehicle: Engine Power (CV)',Updated=TO_TIMESTAMP('2018-06-06 10:56:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1122009
;

-- 06/06/2018 10h56min19s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=1122009
;

-- 06/06/2018 10h56min19s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET Description=NULL,Name='Vehicle: Engine Power (CV)',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Ref_List_ID=1122009
;

-- 06/06/2018 10h56min36s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1122010,1120279,TO_TIMESTAMP('2018-06-06 10:56:35','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Veículo: Cilindradas',TO_TIMESTAMP('2018-06-06 10:56:35','YYYY-MM-DD HH24:MI:SS'),100,'VE06')
;

-- 06/06/2018 10h56min36s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1122010 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 06/06/2018 10h56min41s BRT
-- NF-e 4.0
UPDATE AD_Ref_List SET Name='Vehicle: Cylinder',Updated=TO_TIMESTAMP('2018-06-06 10:56:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1122010
;

-- 06/06/2018 10h56min41s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=1122010
;

-- 06/06/2018 10h56min41s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET Description=NULL,Name='Vehicle: Cylinder',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Ref_List_ID=1122010
;

-- 06/06/2018 10h56min50s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1122011,1120279,TO_TIMESTAMP('2018-06-06 10:56:49','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Veículo: Serial',TO_TIMESTAMP('2018-06-06 10:56:49','YYYY-MM-DD HH24:MI:SS'),100,'VE07')
;

-- 06/06/2018 10h56min50s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1122011 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 06/06/2018 10h56min54s BRT
-- NF-e 4.0
UPDATE AD_Ref_List SET Name='Vehicle: Serial Number',Updated=TO_TIMESTAMP('2018-06-06 10:56:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1122011
;

-- 06/06/2018 10h56min54s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=1122011
;

-- 06/06/2018 10h56min54s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET Description=NULL,Name='Vehicle: Serial Number',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Ref_List_ID=1122011
;

-- 06/06/2018 10h57min2s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1122012,1120279,TO_TIMESTAMP('2018-06-06 10:57:02','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Veículo: Tipo de combustível',TO_TIMESTAMP('2018-06-06 10:57:02','YYYY-MM-DD HH24:MI:SS'),100,'VE08')
;

-- 06/06/2018 10h57min2s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1122012 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 06/06/2018 10h57min6s BRT
-- NF-e 4.0
UPDATE AD_Ref_List SET Name='Vehicle: Fuel Ty[e',Updated=TO_TIMESTAMP('2018-06-06 10:57:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1122012
;

-- 06/06/2018 10h57min6s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=1122012
;

-- 06/06/2018 10h57min6s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET Description=NULL,Name='Vehicle: Fuel Ty[e',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Ref_List_ID=1122012
;

-- 06/06/2018 10h57min15s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1122013,1120279,TO_TIMESTAMP('2018-06-06 10:57:14','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Veículo: Número de Motor',TO_TIMESTAMP('2018-06-06 10:57:14','YYYY-MM-DD HH24:MI:SS'),100,'VE09')
;

-- 06/06/2018 10h57min15s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1122013 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 06/06/2018 10h57min20s BRT
-- NF-e 4.0
UPDATE AD_Ref_List SET Name='Vehicle: Engine Number',Updated=TO_TIMESTAMP('2018-06-06 10:57:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1122013
;

-- 06/06/2018 10h57min20s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=1122013
;

-- 06/06/2018 10h57min20s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET Description=NULL,Name='Vehicle: Engine Number',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Ref_List_ID=1122013
;

-- 06/06/2018 10h57min33s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1122014,1120279,TO_TIMESTAMP('2018-06-06 10:57:33','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Veículo: Capacidade de Tração',TO_TIMESTAMP('2018-06-06 10:57:33','YYYY-MM-DD HH24:MI:SS'),100,'VE10')
;

-- 06/06/2018 10h57min33s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1122014 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 06/06/2018 10h57min37s BRT
-- NF-e 4.0
UPDATE AD_Ref_List SET Name='Vehicle: Traction Capacity',Updated=TO_TIMESTAMP('2018-06-06 10:57:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1122014
;

-- 06/06/2018 10h57min37s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=1122014
;

-- 06/06/2018 10h57min37s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET Description=NULL,Name='Vehicle: Traction Capacity',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Ref_List_ID=1122014
;

-- 06/06/2018 10h57min47s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1122015,1120279,TO_TIMESTAMP('2018-06-06 10:57:47','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Veículo: Distância entre eixos',TO_TIMESTAMP('2018-06-06 10:57:47','YYYY-MM-DD HH24:MI:SS'),100,'VE11')
;

-- 06/06/2018 10h57min47s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1122015 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 06/06/2018 10h57min51s BRT
-- NF-e 4.0
UPDATE AD_Ref_List SET Name='Vehicle: Wheel Base',Updated=TO_TIMESTAMP('2018-06-06 10:57:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1122015
;

-- 06/06/2018 10h57min51s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=1122015
;

-- 06/06/2018 10h57min51s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET Description=NULL,Name='Vehicle: Wheel Base',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Ref_List_ID=1122015
;

-- 06/06/2018 10h58min2s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1122016,1120279,TO_TIMESTAMP('2018-06-06 10:58:02','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Veículo: Ano Modelo',TO_TIMESTAMP('2018-06-06 10:58:02','YYYY-MM-DD HH24:MI:SS'),100,'VE12')
;

-- 06/06/2018 10h58min2s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1122016 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 06/06/2018 10h58min5s BRT
-- NF-e 4.0
UPDATE AD_Ref_List SET Name='Vehicle: Year Model',Updated=TO_TIMESTAMP('2018-06-06 10:58:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1122016
;

-- 06/06/2018 10h58min5s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=1122016
;

-- 06/06/2018 10h58min5s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET Description=NULL,Name='Vehicle: Year Model',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Ref_List_ID=1122016
;

-- 06/06/2018 10h58min14s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1122017,1120279,TO_TIMESTAMP('2018-06-06 10:58:13','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Veículo: Ano de Fabricação',TO_TIMESTAMP('2018-06-06 10:58:13','YYYY-MM-DD HH24:MI:SS'),100,'VE13')
;

-- 06/06/2018 10h58min14s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1122017 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 06/06/2018 10h58min17s BRT
-- NF-e 4.0
UPDATE AD_Ref_List SET Name='Vehicle: Year Production',Updated=TO_TIMESTAMP('2018-06-06 10:58:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1122017
;

-- 06/06/2018 10h58min17s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=1122017
;

-- 06/06/2018 10h58min17s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET Description=NULL,Name='Vehicle: Year Production',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Ref_List_ID=1122017
;

-- 06/06/2018 10h58min26s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1122018,1120279,TO_TIMESTAMP('2018-06-06 10:58:26','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Veículo: Tipo de Pintura',TO_TIMESTAMP('2018-06-06 10:58:26','YYYY-MM-DD HH24:MI:SS'),100,'VE14')
;

-- 06/06/2018 10h58min26s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1122018 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 06/06/2018 10h58min30s BRT
-- NF-e 4.0
UPDATE AD_Ref_List SET Name='Vehicle: Paint Type',Updated=TO_TIMESTAMP('2018-06-06 10:58:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1122018
;

-- 06/06/2018 10h58min30s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=1122018
;

-- 06/06/2018 10h58min30s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET Description=NULL,Name='Vehicle: Paint Type',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Ref_List_ID=1122018
;

-- 06/06/2018 10h58min40s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1122019,1120279,TO_TIMESTAMP('2018-06-06 10:58:40','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Veículo: Tipo de Veículo',TO_TIMESTAMP('2018-06-06 10:58:40','YYYY-MM-DD HH24:MI:SS'),100,'VE15')
;

-- 06/06/2018 10h58min40s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1122019 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 06/06/2018 10h58min43s BRT
-- NF-e 4.0
UPDATE AD_Ref_List SET Name='Vehicle: Vehicle Type',Updated=TO_TIMESTAMP('2018-06-06 10:58:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1122019
;

-- 06/06/2018 10h58min43s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=1122019
;

-- 06/06/2018 10h58min43s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET Description=NULL,Name='Vehicle: Vehicle Type',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Ref_List_ID=1122019
;

-- 06/06/2018 10h58min54s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1122020,1120279,TO_TIMESTAMP('2018-06-06 10:58:53','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Veículo: Espécie de Veículo',TO_TIMESTAMP('2018-06-06 10:58:53','YYYY-MM-DD HH24:MI:SS'),100,'VE16')
;

-- 06/06/2018 10h58min54s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1122020 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 06/06/2018 10h59min0s BRT
-- NF-e 4.0
UPDATE AD_Ref_List SET Name='Vehicle: Vehicle Kind',Updated=TO_TIMESTAMP('2018-06-06 10:59:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1122020
;

-- 06/06/2018 10h59min0s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=1122020
;

-- 06/06/2018 10h59min0s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET Description=NULL,Name='Vehicle: Vehicle Kind',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Ref_List_ID=1122020
;

-- 06/06/2018 10h59min9s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1122021,1120279,TO_TIMESTAMP('2018-06-06 10:59:09','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Veículo: Condição do VIN',TO_TIMESTAMP('2018-06-06 10:59:09','YYYY-MM-DD HH24:MI:SS'),100,'VE17')
;

-- 06/06/2018 10h59min9s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1122021 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 06/06/2018 10h59min13s BRT
-- NF-e 4.0
UPDATE AD_Ref_List SET Name='Vehicle: Vehicle VIN',Updated=TO_TIMESTAMP('2018-06-06 10:59:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1122021
;

-- 06/06/2018 10h59min13s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=1122021
;

-- 06/06/2018 10h59min13s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET Description=NULL,Name='Vehicle: Vehicle VIN',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Ref_List_ID=1122021
;

-- 06/06/2018 10h59min21s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1122022,1120279,TO_TIMESTAMP('2018-06-06 10:59:20','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Veículo: Condição do Veículo',TO_TIMESTAMP('2018-06-06 10:59:20','YYYY-MM-DD HH24:MI:SS'),100,'VE18')
;

-- 06/06/2018 10h59min21s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1122022 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 06/06/2018 10h59min24s BRT
-- NF-e 4.0
UPDATE AD_Ref_List SET Name='Vehicle: Vehicle Condition',Updated=TO_TIMESTAMP('2018-06-06 10:59:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1122022
;

-- 06/06/2018 10h59min24s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=1122022
;

-- 06/06/2018 10h59min24s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET Description=NULL,Name='Vehicle: Vehicle Condition',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Ref_List_ID=1122022
;

-- 06/06/2018 10h59min37s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1122023,1120279,TO_TIMESTAMP('2018-06-06 10:59:37','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Vehicle: Model Number',TO_TIMESTAMP('2018-06-06 10:59:37','YYYY-MM-DD HH24:MI:SS'),100,'VE19')
;

-- 06/06/2018 10h59min37s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1122023 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 06/06/2018 10h59min48s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1122024,1120279,TO_TIMESTAMP('2018-06-06 10:59:47','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Veículo: Código da Cor DENATRAN',TO_TIMESTAMP('2018-06-06 10:59:47','YYYY-MM-DD HH24:MI:SS'),100,'VE20')
;

-- 06/06/2018 10h59min48s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1122024 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 06/06/2018 10h59min51s BRT
-- NF-e 4.0
UPDATE AD_Ref_List SET Name='Vehicle: Color Code DENATRAN',Updated=TO_TIMESTAMP('2018-06-06 10:59:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1122024
;

-- 06/06/2018 10h59min51s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=1122024
;

-- 06/06/2018 10h59min51s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET Description=NULL,Name='Vehicle: Color Code DENATRAN',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Ref_List_ID=1122024
;

-- 06/06/2018 11h0min0s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1122025,1120279,TO_TIMESTAMP('2018-06-06 10:59:59','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Veículo: Capacidade de Lotação',TO_TIMESTAMP('2018-06-06 10:59:59','YYYY-MM-DD HH24:MI:SS'),100,'VE21')
;

-- 06/06/2018 11h0min0s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1122025 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 06/06/2018 11h0min3s BRT
-- NF-e 4.0
UPDATE AD_Ref_List SET Name='Vehicle: Max Capacity',Updated=TO_TIMESTAMP('2018-06-06 11:00:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1122025
;

-- 06/06/2018 11h0min3s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=1122025
;

-- 06/06/2018 11h0min3s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET Description=NULL,Name='Vehicle: Max Capacity',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Ref_List_ID=1122025
;

-- 06/06/2018 11h0min31s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1122026,1120279,TO_TIMESTAMP('2018-06-06 11:00:31','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Veículo: Restrição',TO_TIMESTAMP('2018-06-06 11:00:31','YYYY-MM-DD HH24:MI:SS'),100,'VE22')
;

-- 06/06/2018 11h0min31s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1122026 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 06/06/2018 11h0min35s BRT
-- NF-e 4.0
UPDATE AD_Ref_List SET Name='Vehicle: Restriction',Updated=TO_TIMESTAMP('2018-06-06 11:00:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1122026
;

-- 06/06/2018 11h0min35s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=1122026
;

-- 06/06/2018 11h0min35s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET Description=NULL,Name='Vehicle: Restriction',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Ref_List_ID=1122026
;

-- 06/06/2018 11h0min48s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1122027,1120279,TO_TIMESTAMP('2018-06-06 11:00:48','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Arma: Indicador do tipo de arma de fogo',TO_TIMESTAMP('2018-06-06 11:00:48','YYYY-MM-DD HH24:MI:SS'),100,'GU01')
;

-- 06/06/2018 11h0min48s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1122027 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 06/06/2018 11h0min52s BRT
-- NF-e 4.0
UPDATE AD_Ref_List SET Name='Gun: Gun Type',Updated=TO_TIMESTAMP('2018-06-06 11:00:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1122027
;

-- 06/06/2018 11h0min52s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=1122027
;

-- 06/06/2018 11h0min52s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET Description=NULL,Name='Gun: Gun Type',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Ref_List_ID=1122027
;

-- 06/06/2018 11h1min1s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1122028,1120279,TO_TIMESTAMP('2018-06-06 11:01:01','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Arma: Serial da Arma',TO_TIMESTAMP('2018-06-06 11:01:01','YYYY-MM-DD HH24:MI:SS'),100,'GU02')
;

-- 06/06/2018 11h1min1s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1122028 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 06/06/2018 11h1min5s BRT
-- NF-e 4.0
UPDATE AD_Ref_List SET Name='Gun: Gun Serial',Updated=TO_TIMESTAMP('2018-06-06 11:01:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1122028
;

-- 06/06/2018 11h1min5s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=1122028
;

-- 06/06/2018 11h1min5s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET Description=NULL,Name='Gun: Gun Serial',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Ref_List_ID=1122028
;

-- 06/06/2018 11h1min15s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1122029,1120279,TO_TIMESTAMP('2018-06-06 11:01:15','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Arma: Serial do Cano',TO_TIMESTAMP('2018-06-06 11:01:15','YYYY-MM-DD HH24:MI:SS'),100,'GU03')
;

-- 06/06/2018 11h1min15s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1122029 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 06/06/2018 11h1min19s BRT
-- NF-e 4.0
UPDATE AD_Ref_List SET Name='Gun: Gun Barrel Serial',Updated=TO_TIMESTAMP('2018-06-06 11:01:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1122029
;

-- 06/06/2018 11h1min19s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=1122029
;

-- 06/06/2018 11h1min19s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET Description=NULL,Name='Gun: Gun Barrel Serial',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Ref_List_ID=1122029
;

-- 06/06/2018 11h1min28s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1122030,1120279,TO_TIMESTAMP('2018-06-06 11:01:28','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Papel: RECOPI',TO_TIMESTAMP('2018-06-06 11:01:28','YYYY-MM-DD HH24:MI:SS'),100,'PA01')
;

-- 06/06/2018 11h1min28s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1122030 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 06/06/2018 11h1min32s BRT
-- NF-e 4.0
UPDATE AD_Ref_List SET Name='Paper: RECOPI',Updated=TO_TIMESTAMP('2018-06-06 11:01:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1122030
;

-- 06/06/2018 11h1min32s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=1122030
;

-- 06/06/2018 11h1min32s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET Description=NULL,Name='Paper: RECOPI',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Ref_List_ID=1122030
;

-- 06/06/2018 11h1min42s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Updated=TO_TIMESTAMP('2018-06-06 11:01:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121993 AND AD_Language='pt_BR'
;

-- 06/06/2018 11h1min45s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Updated=TO_TIMESTAMP('2018-06-06 11:01:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121994 AND AD_Language='pt_BR'
;

-- 06/06/2018 11h1min49s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Updated=TO_TIMESTAMP('2018-06-06 11:01:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121995 AND AD_Language='pt_BR'
;

-- 06/06/2018 11h1min52s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Updated=TO_TIMESTAMP('2018-06-06 11:01:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121996 AND AD_Language='pt_BR'
;

-- 06/06/2018 11h1min56s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Updated=TO_TIMESTAMP('2018-06-06 11:01:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121997 AND AD_Language='pt_BR'
;

-- 06/06/2018 11h1min59s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Updated=TO_TIMESTAMP('2018-06-06 11:01:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121998 AND AD_Language='pt_BR'
;

-- 06/06/2018 11h2min3s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Updated=TO_TIMESTAMP('2018-06-06 11:02:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121999 AND AD_Language='pt_BR'
;

-- 06/06/2018 11h2min7s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Updated=TO_TIMESTAMP('2018-06-06 11:02:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1122000 AND AD_Language='pt_BR'
;

-- 06/06/2018 11h2min10s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Updated=TO_TIMESTAMP('2018-06-06 11:02:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1122001 AND AD_Language='pt_BR'
;

-- 06/06/2018 11h2min14s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Updated=TO_TIMESTAMP('2018-06-06 11:02:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1122002 AND AD_Language='pt_BR'
;

-- 06/06/2018 11h2min18s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Updated=TO_TIMESTAMP('2018-06-06 11:02:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1122003 AND AD_Language='pt_BR'
;

-- 06/06/2018 11h2min22s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Updated=TO_TIMESTAMP('2018-06-06 11:02:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1122004 AND AD_Language='pt_BR'
;

-- 06/06/2018 11h2min25s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Updated=TO_TIMESTAMP('2018-06-06 11:02:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1122005 AND AD_Language='pt_BR'
;

-- 06/06/2018 11h2min29s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Updated=TO_TIMESTAMP('2018-06-06 11:02:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1122006 AND AD_Language='pt_BR'
;

-- 06/06/2018 11h2min33s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Updated=TO_TIMESTAMP('2018-06-06 11:02:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1122007 AND AD_Language='pt_BR'
;

-- 06/06/2018 11h2min37s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Updated=TO_TIMESTAMP('2018-06-06 11:02:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1122008 AND AD_Language='pt_BR'
;

-- 06/06/2018 11h2min40s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Updated=TO_TIMESTAMP('2018-06-06 11:02:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1122009 AND AD_Language='pt_BR'
;

-- 06/06/2018 11h2min44s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Updated=TO_TIMESTAMP('2018-06-06 11:02:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1122010 AND AD_Language='pt_BR'
;

-- 06/06/2018 11h2min47s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Updated=TO_TIMESTAMP('2018-06-06 11:02:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1122011 AND AD_Language='pt_BR'
;

-- 06/06/2018 11h2min50s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Updated=TO_TIMESTAMP('2018-06-06 11:02:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1122012 AND AD_Language='pt_BR'
;

-- 06/06/2018 11h2min53s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Updated=TO_TIMESTAMP('2018-06-06 11:02:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1122013 AND AD_Language='pt_BR'
;

-- 06/06/2018 11h2min56s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Updated=TO_TIMESTAMP('2018-06-06 11:02:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1122014 AND AD_Language='pt_BR'
;

-- 06/06/2018 11h3min0s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Updated=TO_TIMESTAMP('2018-06-06 11:03:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1122015 AND AD_Language='pt_BR'
;

-- 06/06/2018 11h3min3s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Updated=TO_TIMESTAMP('2018-06-06 11:03:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1122016 AND AD_Language='pt_BR'
;

-- 06/06/2018 11h3min6s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Updated=TO_TIMESTAMP('2018-06-06 11:03:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1122017 AND AD_Language='pt_BR'
;

-- 06/06/2018 11h3min10s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Updated=TO_TIMESTAMP('2018-06-06 11:03:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1122018 AND AD_Language='pt_BR'
;

-- 06/06/2018 11h3min14s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Updated=TO_TIMESTAMP('2018-06-06 11:03:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1122019 AND AD_Language='pt_BR'
;

-- 06/06/2018 11h3min16s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Updated=TO_TIMESTAMP('2018-06-06 11:03:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1122020 AND AD_Language='pt_BR'
;

-- 06/06/2018 11h3min20s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Updated=TO_TIMESTAMP('2018-06-06 11:03:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1122021 AND AD_Language='pt_BR'
;

-- 06/06/2018 11h3min23s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Updated=TO_TIMESTAMP('2018-06-06 11:03:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1122022 AND AD_Language='pt_BR'
;

-- 06/06/2018 11h3min26s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Updated=TO_TIMESTAMP('2018-06-06 11:03:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1122023 AND AD_Language='pt_BR'
;

-- 06/06/2018 11h3min30s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Updated=TO_TIMESTAMP('2018-06-06 11:03:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1122024 AND AD_Language='pt_BR'
;

-- 06/06/2018 11h3min33s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Updated=TO_TIMESTAMP('2018-06-06 11:03:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1122025 AND AD_Language='pt_BR'
;

-- 06/06/2018 11h3min36s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Updated=TO_TIMESTAMP('2018-06-06 11:03:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1122026 AND AD_Language='pt_BR'
;

-- 06/06/2018 11h3min39s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Updated=TO_TIMESTAMP('2018-06-06 11:03:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1122027 AND AD_Language='pt_BR'
;

-- 06/06/2018 11h3min43s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Updated=TO_TIMESTAMP('2018-06-06 11:03:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1122028 AND AD_Language='pt_BR'
;

-- 06/06/2018 11h3min47s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Updated=TO_TIMESTAMP('2018-06-06 11:03:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1122029 AND AD_Language='pt_BR'
;

-- 06/06/2018 11h3min51s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Updated=TO_TIMESTAMP('2018-06-06 11:03:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1122030 AND AD_Language='pt_BR'
;

-- 06/06/2018 11h4min12s BRT
-- NF-e 4.0
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1130341,1122516,0,17,1120279,562,'LBR_XMLMapping',TO_TIMESTAMP('2018-06-06 11:04:12','YYYY-MM-DD HH24:MI:SS'),100,'XML Mapping of NF-e','LBRA',2,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','XML Mapping',0,TO_TIMESTAMP('2018-06-06 11:04:12','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 06/06/2018 11h4min12s BRT
-- NF-e 4.0
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1130341 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 06/06/2018 11h4min20s BRT
-- NF-e 4.0
UPDATE AD_Column SET FieldLength=4,Updated=TO_TIMESTAMP('2018-06-06 11:04:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1130341
;

-- 06/06/2018 11h4min23s BRT
-- NF-e 4.0
ALTER TABLE M_Attribute ADD COLUMN LBR_XMLMapping VARCHAR(4) DEFAULT NULL 
;

-- 06/06/2018 11h4min55s BRT
-- NF-e 4.0
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,SortNo,Updated,UpdatedBy) VALUES (0,1130341,1127467,0,462,TO_TIMESTAMP('2018-06-06 11:04:55','YYYY-MM-DD HH24:MI:SS'),100,'XML Mapping of NF-e',22,'LBRA','Y','Y','Y','N','N','N','N','N','XML Mapping',100,0,TO_TIMESTAMP('2018-06-06 11:04:55','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 06/06/2018 11h4min55s BRT
-- NF-e 4.0
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1127467 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 06/06/2018 11h13min12s BRT
-- NF-e 4.0
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1130342,2002,0,20,1120598,'IsValid',TO_TIMESTAMP('2018-06-06 11:13:11','YYYY-MM-DD HH24:MI:SS'),100,'N','Element is valid','LBRA',1,'The element passed the validation check','Y','Y','N','N','N','N','N','Y','N','N','N','N','Y','Valid',0,TO_TIMESTAMP('2018-06-06 11:13:11','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 06/06/2018 11h13min12s BRT
-- NF-e 4.0
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1130342 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 06/06/2018 11h13min14s BRT
-- NF-e 4.0
ALTER TABLE LBR_NFLineMA ADD COLUMN IsValid CHAR(1) DEFAULT 'N' CHECK (IsValid IN ('Y','N')) NOT NULL
;

-- 06/06/2018 11h14min4s BRT
-- NF-e 4.0
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DefaultValue,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1130342,1127468,0,1120287,TO_TIMESTAMP('2018-06-06 11:14:04','YYYY-MM-DD HH24:MI:SS'),100,'@LBR_AttributeType@','Element is valid',22,'LBRA','The element passed the validation check','Y','Y','Y','N','N','N','Y','Y','Valid',46,TO_TIMESTAMP('2018-06-06 11:14:04','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 06/06/2018 11h14min4s BRT
-- NF-e 4.0
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1127468 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 06/06/2018 11h14min29s BRT
-- NF-e 4.0
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DefaultValue,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1130342,1127469,0,1120288,TO_TIMESTAMP('2018-06-06 11:14:28','YYYY-MM-DD HH24:MI:SS'),100,'R00','Element is valid',22,'LBRA','The element passed the validation check','Y','Y','Y','N','N','N','Y','Y','Valid',51,TO_TIMESTAMP('2018-06-06 11:14:28','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 06/06/2018 11h14min29s BRT
-- NF-e 4.0
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1127469 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 06/06/2018 12h7min18s BRT
-- NF-e 4.0
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2018-06-06 12:07:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127380
;

-- 06/06/2018 12h7min30s BRT
-- NF-e 4.0
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2018-06-06 12:07:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127424
;

-- 07/06/2018 10h39min19s BRT
-- NF-e 4.0
UPDATE AD_Column SET ReadOnlyLogic='@IsManual@!Y',Updated=TO_TIMESTAMP('2018-06-07 10:39:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1126588
;

-- 07/06/2018 10h39min23s BRT
-- NF-e 4.0
UPDATE AD_Column SET ReadOnlyLogic='@IsManual@!Y',Updated=TO_TIMESTAMP('2018-06-07 10:39:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1130282
;

-- 07/06/2018 10h39min26s BRT
-- NF-e 4.0
UPDATE AD_Column SET ReadOnlyLogic='@IsManual@!Y',Updated=TO_TIMESTAMP('2018-06-07 10:39:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1130337
;

-- 07/06/2018 10h39min29s BRT
-- NF-e 4.0
UPDATE AD_Column SET ReadOnlyLogic='@IsManual@!Y',Updated=TO_TIMESTAMP('2018-06-07 10:39:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1128694
;

-- 07/06/2018 10h39min32s BRT
-- NF-e 4.0
UPDATE AD_Column SET ReadOnlyLogic='@IsManual@!Y',Updated=TO_TIMESTAMP('2018-06-07 10:39:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1128692
;

-- 07/06/2018 10h39min37s BRT
-- NF-e 4.0
UPDATE AD_Column SET ReadOnlyLogic='@IsManual@!Y',Updated=TO_TIMESTAMP('2018-06-07 10:39:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1130278
;

-- 07/06/2018 10h39min39s BRT
-- NF-e 4.0
UPDATE AD_Column SET ReadOnlyLogic='@IsManual@!Y',Updated=TO_TIMESTAMP('2018-06-07 10:39:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1125165
;

-- 07/06/2018 10h39min42s BRT
-- NF-e 4.0
UPDATE AD_Column SET ReadOnlyLogic='@IsManual@!Y',Updated=TO_TIMESTAMP('2018-06-07 10:39:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1130281
;

-- 07/06/2018 10h39min45s BRT
-- NF-e 4.0
UPDATE AD_Column SET ReadOnlyLogic='@IsManual@!Y',Updated=TO_TIMESTAMP('2018-06-07 10:39:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1130277
;

-- 07/06/2018 10h39min48s BRT
-- NF-e 4.0
UPDATE AD_Column SET ReadOnlyLogic='@IsManual@!Y',Updated=TO_TIMESTAMP('2018-06-07 10:39:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1130279
;

-- 07/06/2018 10h39min51s BRT
-- NF-e 4.0
UPDATE AD_Column SET ReadOnlyLogic='@IsManual@!Y',Updated=TO_TIMESTAMP('2018-06-07 10:39:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1130280
;

-- 07/06/2018 10h39min56s BRT
-- NF-e 4.0
UPDATE AD_Column SET ReadOnlyLogic='@IsManual@!Y',Updated=TO_TIMESTAMP('2018-06-07 10:39:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1126589
;

-- 07/06/2018 10h40min29s BRT
-- NF-e 4.0
UPDATE AD_Column SET ReadOnlyLogic='@IsManual@!Y',Updated=TO_TIMESTAMP('2018-06-07 10:40:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1130290
;

-- 07/06/2018 10h40min32s BRT
-- NF-e 4.0
UPDATE AD_Column SET ReadOnlyLogic='@IsManual@!Y',Updated=TO_TIMESTAMP('2018-06-07 10:40:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1130291
;

-- 07/06/2018 10h40min34s BRT
-- NF-e 4.0
UPDATE AD_Column SET ReadOnlyLogic='@IsManual@!Y',Updated=TO_TIMESTAMP('2018-06-07 10:40:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1130293
;

-- 07/06/2018 10h40min36s BRT
-- NF-e 4.0
UPDATE AD_Column SET ReadOnlyLogic='@IsManual@!Y',Updated=TO_TIMESTAMP('2018-06-07 10:40:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1130294
;

-- 07/06/2018 10h40min39s BRT
-- NF-e 4.0
UPDATE AD_Column SET ReadOnlyLogic='@IsManual@!Y',Updated=TO_TIMESTAMP('2018-06-07 10:40:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1130300
;

-- 07/06/2018 10h40min41s BRT
-- NF-e 4.0
UPDATE AD_Column SET ReadOnlyLogic='@IsManual@!Y',Updated=TO_TIMESTAMP('2018-06-07 10:40:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1130292
;

-- 07/06/2018 10h40min43s BRT
-- NF-e 4.0
UPDATE AD_Column SET ReadOnlyLogic='@IsManual@!Y',Updated=TO_TIMESTAMP('2018-06-07 10:40:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1130342
;

-- 07/06/2018 10h40min46s BRT
-- NF-e 4.0
UPDATE AD_Column SET ReadOnlyLogic='@IsManual@!Y',Updated=TO_TIMESTAMP('2018-06-07 10:40:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1130302
;

-- 07/06/2018 10h40min49s BRT
-- NF-e 4.0
UPDATE AD_Column SET ReadOnlyLogic='@IsManual@!Y',Updated=TO_TIMESTAMP('2018-06-07 10:40:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1130303
;

-- 07/06/2018 10h40min52s BRT
-- NF-e 4.0
UPDATE AD_Column SET ReadOnlyLogic='@IsManual@!Y',Updated=TO_TIMESTAMP('2018-06-07 10:40:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1130301
;

-- 07/06/2018 10h40min54s BRT
-- NF-e 4.0
UPDATE AD_Column SET ReadOnlyLogic='@IsManual@!Y',Updated=TO_TIMESTAMP('2018-06-07 10:40:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1130339
;

-- 07/06/2018 10h40min56s BRT
-- NF-e 4.0
UPDATE AD_Column SET ReadOnlyLogic='@IsManual@!Y',Updated=TO_TIMESTAMP('2018-06-07 10:40:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1130308
;

-- 07/06/2018 10h40min58s BRT
-- NF-e 4.0
UPDATE AD_Column SET ReadOnlyLogic='@IsManual@!Y',Updated=TO_TIMESTAMP('2018-06-07 10:40:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1130333
;

-- 07/06/2018 10h41min0s BRT
-- NF-e 4.0
UPDATE AD_Column SET ReadOnlyLogic='@IsManual@!Y',Updated=TO_TIMESTAMP('2018-06-07 10:41:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1130332
;

-- 07/06/2018 10h41min2s BRT
-- NF-e 4.0
UPDATE AD_Column SET ReadOnlyLogic='@IsManual@!Y',Updated=TO_TIMESTAMP('2018-06-07 10:41:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1130331
;

-- 07/06/2018 10h41min5s BRT
-- NF-e 4.0
UPDATE AD_Column SET ReadOnlyLogic='@IsManual@!Y',Updated=TO_TIMESTAMP('2018-06-07 10:41:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1130340
;

-- 07/06/2018 10h41min7s BRT
-- NF-e 4.0
UPDATE AD_Column SET IsUpdateable='N', ReadOnlyLogic='@IsManual@!Y',Updated=TO_TIMESTAMP('2018-06-07 10:41:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1130289
;

-- 07/06/2018 10h41min9s BRT
-- NF-e 4.0
UPDATE AD_Column SET ReadOnlyLogic='@IsManual@!Y',Updated=TO_TIMESTAMP('2018-06-07 10:41:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1130335
;

-- 07/06/2018 10h41min12s BRT
-- NF-e 4.0
UPDATE AD_Column SET ReadOnlyLogic='@IsManual@!Y',Updated=TO_TIMESTAMP('2018-06-07 10:41:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1130304
;

-- 07/06/2018 10h41min14s BRT
-- NF-e 4.0
UPDATE AD_Column SET ReadOnlyLogic='@IsManual@!Y',Updated=TO_TIMESTAMP('2018-06-07 10:41:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1130306
;

-- 07/06/2018 10h41min16s BRT
-- NF-e 4.0
UPDATE AD_Column SET ReadOnlyLogic='@IsManual@!Y',Updated=TO_TIMESTAMP('2018-06-07 10:41:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1130305
;

-- 07/06/2018 10h41min18s BRT
-- NF-e 4.0
UPDATE AD_Column SET ReadOnlyLogic='@IsManual@!Y',Updated=TO_TIMESTAMP('2018-06-07 10:41:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1130299
;

-- 07/06/2018 10h41min21s BRT
-- NF-e 4.0
UPDATE AD_Column SET ReadOnlyLogic='@IsManual@!Y',Updated=TO_TIMESTAMP('2018-06-07 10:41:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1130334
;

-- 07/06/2018 10h41min22s BRT
-- NF-e 4.0
UPDATE AD_Column SET ReadOnlyLogic='@IsManual@!Y',Updated=TO_TIMESTAMP('2018-06-07 10:41:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1130307
;

-- 07/06/2018 10h41min25s BRT
-- NF-e 4.0
UPDATE AD_Column SET ReadOnlyLogic='@IsManual@!Y',Updated=TO_TIMESTAMP('2018-06-07 10:41:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1130327
;

-- 07/06/2018 10h41min26s BRT
-- NF-e 4.0
UPDATE AD_Column SET ReadOnlyLogic='@IsManual@!Y',Updated=TO_TIMESTAMP('2018-06-07 10:41:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1130310
;

-- 07/06/2018 10h41min31s BRT
-- NF-e 4.0
UPDATE AD_Column SET ReadOnlyLogic='@IsManual@!Y',Updated=TO_TIMESTAMP('2018-06-07 10:41:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1130311
;

-- 07/06/2018 10h41min32s BRT
-- NF-e 4.0
UPDATE AD_Column SET ReadOnlyLogic='@IsManual@!Y',Updated=TO_TIMESTAMP('2018-06-07 10:41:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1130328
;

-- 07/06/2018 10h41min35s BRT
-- NF-e 4.0
UPDATE AD_Column SET ReadOnlyLogic='@IsManual@!Y',Updated=TO_TIMESTAMP('2018-06-07 10:41:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1130312
;

-- 07/06/2018 10h41min37s BRT
-- NF-e 4.0
UPDATE AD_Column SET ReadOnlyLogic='@IsManual@!Y',Updated=TO_TIMESTAMP('2018-06-07 10:41:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1130326
;

-- 07/06/2018 10h41min39s BRT
-- NF-e 4.0
UPDATE AD_Column SET ReadOnlyLogic='@IsManual@!Y',Updated=TO_TIMESTAMP('2018-06-07 10:41:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1130314
;

-- 07/06/2018 10h41min41s BRT
-- NF-e 4.0
UPDATE AD_Column SET ReadOnlyLogic='@IsManual@!Y',Updated=TO_TIMESTAMP('2018-06-07 10:41:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1130317
;

-- 07/06/2018 10h41min43s BRT
-- NF-e 4.0
UPDATE AD_Column SET ReadOnlyLogic='@IsManual@!Y',Updated=TO_TIMESTAMP('2018-06-07 10:41:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1130324
;

-- 07/06/2018 10h41min45s BRT
-- NF-e 4.0
UPDATE AD_Column SET ReadOnlyLogic='@IsManual@!Y',Updated=TO_TIMESTAMP('2018-06-07 10:41:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1130329
;

-- 07/06/2018 10h41min46s BRT
-- NF-e 4.0
UPDATE AD_Column SET ReadOnlyLogic='@IsManual@!Y',Updated=TO_TIMESTAMP('2018-06-07 10:41:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1130309
;

-- 07/06/2018 10h41min49s BRT
-- NF-e 4.0
UPDATE AD_Column SET ReadOnlyLogic='@IsManual@!Y',Updated=TO_TIMESTAMP('2018-06-07 10:41:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1130313
;

-- 07/06/2018 10h41min51s BRT
-- NF-e 4.0
UPDATE AD_Column SET ReadOnlyLogic='@IsManual@!Y',Updated=TO_TIMESTAMP('2018-06-07 10:41:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1130330
;

-- 07/06/2018 10h41min53s BRT
-- NF-e 4.0
UPDATE AD_Column SET ReadOnlyLogic='@IsManual@!Y',Updated=TO_TIMESTAMP('2018-06-07 10:41:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1130315
;

-- 07/06/2018 10h41min55s BRT
-- NF-e 4.0
UPDATE AD_Column SET ReadOnlyLogic='@IsManual@!Y',Updated=TO_TIMESTAMP('2018-06-07 10:41:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1130316
;

-- 07/06/2018 10h41min57s BRT
-- NF-e 4.0
UPDATE AD_Column SET ReadOnlyLogic='@IsManual@!Y',Updated=TO_TIMESTAMP('2018-06-07 10:41:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1130322
;

-- 07/06/2018 10h41min59s BRT
-- NF-e 4.0
UPDATE AD_Column SET ReadOnlyLogic='@IsManual@!Y',Updated=TO_TIMESTAMP('2018-06-07 10:41:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1130318
;

-- 07/06/2018 10h42min1s BRT
-- NF-e 4.0
UPDATE AD_Column SET ReadOnlyLogic='@IsManual@!Y',Updated=TO_TIMESTAMP('2018-06-07 10:42:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1130323
;

-- 07/06/2018 10h42min3s BRT
-- NF-e 4.0
UPDATE AD_Column SET ReadOnlyLogic='@IsManual@!Y',Updated=TO_TIMESTAMP('2018-06-07 10:42:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1130325
;

-- 07/06/2018 10h42min5s BRT
-- NF-e 4.0
UPDATE AD_Column SET ReadOnlyLogic='@IsManual@!Y',Updated=TO_TIMESTAMP('2018-06-07 10:42:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1130319
;

-- 07/06/2018 10h42min9s BRT
-- NF-e 4.0
UPDATE AD_Column SET ReadOnlyLogic='@IsManual@!Y',Updated=TO_TIMESTAMP('2018-06-07 10:42:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1130320
;

-- 07/06/2018 10h42min11s BRT
-- NF-e 4.0
UPDATE AD_Column SET ReadOnlyLogic='@IsManual@!Y',Updated=TO_TIMESTAMP('2018-06-07 10:42:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1130321
;

-- 07/06/2018 10h42min13s BRT
-- NF-e 4.0
UPDATE AD_Column SET ReadOnlyLogic='@IsManual@!Y',Updated=TO_TIMESTAMP('2018-06-07 10:42:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1130298
;

-- 07/06/2018 10h42min17s BRT
-- NF-e 4.0
UPDATE AD_Column SET ReadOnlyLogic='@IsManual@!Y',Updated=TO_TIMESTAMP('2018-06-07 10:42:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1130297
;

-- 07/06/2018 10h42min19s BRT
-- NF-e 4.0
UPDATE AD_Column SET ReadOnlyLogic='@IsManual@!Y',Updated=TO_TIMESTAMP('2018-06-07 10:42:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1130336
;

-- 07/06/2018 10h42min22s BRT
-- NF-e 4.0
UPDATE AD_Column SET ReadOnlyLogic='@IsManual@!Y',Updated=TO_TIMESTAMP('2018-06-07 10:42:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1130295
;

-- 07/06/2018 10h42min25s BRT
-- NF-e 4.0
UPDATE AD_Column SET ReadOnlyLogic='@IsManual@!Y',Updated=TO_TIMESTAMP('2018-06-07 10:42:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1130296
;

-- 07/06/2018 10h43min20s BRT
-- NF-e 4.0
UPDATE AD_Column SET ReadOnlyLogic='@IsManual@!Y',Updated=TO_TIMESTAMP('2018-06-07 10:43:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1129712
;

-- 07/06/2018 10h43min25s BRT
-- NF-e 4.0
UPDATE AD_Column SET ReadOnlyLogic='@IsManual@!Y',Updated=TO_TIMESTAMP('2018-06-07 10:43:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1128768
;

-- 07/06/2018 10h43min39s BRT
-- NF-e 4.0
UPDATE AD_Column SET ReadOnlyLogic='@IsManual@!Y',Updated=TO_TIMESTAMP('2018-06-07 10:43:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1130283
;

-- 07/06/2018 10h43min44s BRT
-- NF-e 4.0
UPDATE AD_Column SET ReadOnlyLogic='@IsManual@!Y',Updated=TO_TIMESTAMP('2018-06-07 10:43:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1128799
;

-- 07/06/2018 10h43min53s BRT
-- NF-e 4.0
UPDATE AD_Column SET ReadOnlyLogic='@IsManual@!Y',Updated=TO_TIMESTAMP('2018-06-07 10:43:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1130288
;

-- 07/06/2018 10h43min53s BRT
SELECT Register_Migration_Script ('201806071030_NFeProdAttributes.sql') FROM DUAL
;

