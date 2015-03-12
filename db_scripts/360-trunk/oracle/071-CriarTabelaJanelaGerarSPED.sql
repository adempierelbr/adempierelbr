-- 07/02/2013 17h18min41s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Table (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Table_ID,CopyColumnsFromTable,Created,CreatedBy,EntityType,ImportTable,IsActive,IsCentrallyMaintained,IsChangeLog,IsDeleteable,IsHighVolume,IsSecurityEnabled,IsSystemLanguage,IsView,LoadSeq,Name,ReplicationType,TableName,Updated,UpdatedBy) VALUES ('4',0,0,1120328,'N',TO_DATE('2013-02-07 17:18:40','YYYY-MM-DD HH24:MI:SS'),100,'LBR','N','Y','Y','N','Y','N','N','N','N',0,'LBR_SPED','L','LBR_SPED',TO_DATE('2013-02-07 17:18:40','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 07/02/2013 17h20min17s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Table SET AccessLevel='3',Updated=TO_DATE('2013-02-07 17:20:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=1120328
;

-- 07/02/2013 17h21min53s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1124140,102,0,19,1120328,129,'AD_Client_ID',TO_DATE('2013-02-07 17:21:51','YYYY-MM-DD HH24:MI:SS'),100,'@#AD_Client_ID@','Client/Tenant for this installation.','LBR',22,'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Y','Y','N','N','N','N','N','Y','N','N','N','N','N','Client',0,TO_DATE('2013-02-07 17:21:51','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 07/02/2013 17h21min53s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1124140 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 07/02/2013 17h22min6s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET Version=1.000000000000,Updated=TO_DATE('2013-02-07 17:22:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1124140
;

-- 07/02/2013 17h22min50s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1124141,113,0,19,1120328,104,'AD_Org_ID',TO_DATE('2013-02-07 17:22:48','YYYY-MM-DD HH24:MI:SS'),100,'@#AD_Org_ID@','Organizational entity within client','LBR',22,'An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Y','Y','N','N','N','N','N','Y','N','N','N','N','N','Organization',0,TO_DATE('2013-02-07 17:22:48','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 07/02/2013 17h22min50s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1124141 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 07/02/2013 17h23min43s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1124142,245,0,16,1120328,'Created',TO_DATE('2013-02-07 17:23:41','YYYY-MM-DD HH24:MI:SS'),100,'Date this record was created','LBR',7,'The Created field indicates the date that this record was created.','Y','Y','N','N','N','N','N','Y','N','N','N','N','N','Created',0,TO_DATE('2013-02-07 17:23:41','YYYY-MM-DD HH24:MI:SS'),100,1.000000000000)
;

-- 07/02/2013 17h23min43s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1124142 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 07/02/2013 17h24min21s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1124143,246,0,18,110,1120328,'CreatedBy',TO_DATE('2013-02-07 17:24:18','YYYY-MM-DD HH24:MI:SS'),100,'User who created this records','LBR',22,'The Created By field indicates the user who created this record.','Y','Y','N','N','N','N','N','Y','N','N','N','N','N','Created By',0,TO_DATE('2013-02-07 17:24:18','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 07/02/2013 17h24min21s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1124143 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 07/02/2013 17h24min30s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET Version=1.000000000000,Updated=TO_DATE('2013-02-07 17:24:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1124143
;

-- 07/02/2013 17h25min16s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1124144,348,0,20,1120328,'IsActive',TO_DATE('2013-02-07 17:25:14','YYYY-MM-DD HH24:MI:SS'),100,'Y','The record is active in the system','LBR',1,'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Y','Y','N','N','N','N','N','Y','N','N','N','N','Y','Active',0,TO_DATE('2013-02-07 17:25:14','YYYY-MM-DD HH24:MI:SS'),100,1.000000000000)
;

-- 07/02/2013 17h25min16s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1124144 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 07/02/2013 17h26min16s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1124145,607,0,16,1120328,'Updated',TO_DATE('2013-02-07 17:26:14','YYYY-MM-DD HH24:MI:SS'),100,'Date this record was updated','LBR',7,'The Updated field indicates the date that this record was updated.','Y','Y','N','N','N','N','N','Y','N','N','N','N','N','Updated',0,TO_DATE('2013-02-07 17:26:14','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 07/02/2013 17h26min16s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1124145 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 07/02/2013 17h26min48s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1124146,608,0,18,110,1120328,'UpdatedBy',TO_DATE('2013-02-07 17:26:47','YYYY-MM-DD HH24:MI:SS'),100,'User who updated this records','LBR',22,'The Updated By field indicates the user who updated this record.','Y','Y','N','N','N','N','N','Y','N','N','N','N','N','Updated By',0,TO_DATE('2013-02-07 17:26:47','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 07/02/2013 17h26min48s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1124146 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 07/02/2013 17h27min37s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET Version=1.000000000000,Updated=TO_DATE('2013-02-07 17:27:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1124141
;

-- 07/02/2013 17h27min38s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET Version=1.000000000000,Updated=TO_DATE('2013-02-07 17:27:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1124145
;

-- 07/02/2013 17h27min41s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET Version=1.000000000000,Updated=TO_DATE('2013-02-07 17:27:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1124146
;

-- 07/02/2013 17h41min33s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,1121261,0,'LBR_SPED_ID',TO_DATE('2013-02-07 17:41:15','YYYY-MM-DD HH24:MI:SS'),100,'LBR','Y','LBR_SPED_ID','LBR_SPED_ID',TO_DATE('2013-02-07 17:41:15','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 07/02/2013 17h41min33s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1121261 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 07/02/2013 17h43min0s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1124147,1121261,0,13,1120328,'LBR_SPED_ID',TO_DATE('2013-02-07 17:42:58','YYYY-MM-DD HH24:MI:SS'),100,'LBR',22,'Y','Y','N','N','N','N','Y','Y','N','N','N','N','N','LBR_SPED_ID',0,TO_DATE('2013-02-07 17:42:58','YYYY-MM-DD HH24:MI:SS'),100,1.000000000000)
;

-- 07/02/2013 17h43min0s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1124147 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 07/02/2013 17h48min39s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1124148,223,0,19,1120328,'C_Year_ID',TO_DATE('2013-02-07 17:48:38','YYYY-MM-DD HH24:MI:SS'),100,'Calendar Year','LBR',22,'The Year uniquely identifies an accounting year for a calendar.','Y','Y','N','N','N','N','N','Y','N','N','N','N','Y','Year',0,TO_DATE('2013-02-07 17:48:38','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 07/02/2013 17h48min39s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1124148 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 07/02/2013 17h49min14s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1124149,206,0,19,1120328,'C_Period_ID',TO_DATE('2013-02-07 17:49:13','YYYY-MM-DD HH24:MI:SS'),100,'Period of the Calendar','LBR',10,'The Period indicates an exclusive range of dates for a calendar.','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Period',0,TO_DATE('2013-02-07 17:49:13','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 07/02/2013 17h49min14s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1124149 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 07/02/2013 17h49min32s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET AD_Val_Rule_ID=199,Updated=TO_DATE('2013-02-07 17:49:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1124149
;

-- 07/02/2013 17h49min50s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET IsMandatory='Y',Updated=TO_DATE('2013-02-07 17:49:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1124149
;

-- 07/02/2013 17h50min18s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
CREATE TABLE LBR_SPED (AD_Client_ID NUMBER(10) NOT NULL, AD_Org_ID NUMBER(10) NOT NULL, C_Period_ID NUMBER(10) NOT NULL, Created DATE NOT NULL, CreatedBy NUMBER(10) NOT NULL, C_Year_ID NUMBER(10) NOT NULL, IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, LBR_SPED_ID NUMBER(10) NOT NULL, Updated DATE NOT NULL, UpdatedBy NUMBER(10) NOT NULL, CONSTRAINT LBR_SPED_Key PRIMARY KEY (LBR_SPED_ID))
;

-- 07/02/2013 17h51min14s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Window (AD_Client_ID,AD_Org_ID,AD_Window_ID,Created,CreatedBy,EntityType,IsActive,IsBetaFunctionality,IsDefault,IsSOTrx,Name,Processing,Updated,UpdatedBy,WindowType,WinHeight,WinWidth) VALUES (0,0,1120076,TO_DATE('2013-02-07 17:51:13','YYYY-MM-DD HH24:MI:SS'),100,'LBR','Y','N','N','N','Sped','N',TO_DATE('2013-02-07 17:51:13','YYYY-MM-DD HH24:MI:SS'),100,'M',0,0)
;

-- 07/02/2013 17h51min14s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Window_Trl (AD_Language,AD_Window_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Window_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Window t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Window_ID=1120076 AND NOT EXISTS (SELECT * FROM AD_Window_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Window_ID=t.AD_Window_ID)
;

-- 07/02/2013 17h52min4s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1121262 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 07/02/2013 17h52min42s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Reference_Trl (AD_Language,AD_Reference_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Reference_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Reference t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Reference_ID=1120159 AND NOT EXISTS (SELECT * FROM AD_Reference_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Reference_ID=t.AD_Reference_ID)
;

-- 07/02/2013 17h55min23s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Tab (AD_Client_ID,AD_Org_ID,AD_Tab_ID,AD_Table_ID,AD_Window_ID,Created,CreatedBy,EntityType,HasTree,ImportFields,IsActive,IsAdvancedTab,IsInfoTab,IsInsertRecord,IsReadOnly,IsSingleRow,IsSortTab,IsTranslationTab,Name,Processing,SeqNo,TabLevel,Updated,UpdatedBy) VALUES (0,0,1120115,1120328,1120076,TO_DATE('2013-02-07 17:55:17','YYYY-MM-DD HH24:MI:SS'),100,'LBR','N','N','Y','N','N','Y','N','N','N','N','Gerar SPED','N',10,0,TO_DATE('2013-02-07 17:55:17','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 07/02/2013 17h55min23s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Tab_Trl (AD_Language,AD_Tab_ID, CommitWarning,Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Tab_ID, t.CommitWarning,t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Tab t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Tab_ID=1120115 AND NOT EXISTS (SELECT * FROM AD_Tab_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Tab_ID=t.AD_Tab_ID)
;

-- 07/02/2013 17h56min18s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Window SET Name='SPED',Updated=TO_DATE('2013-02-07 17:56:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Window_ID=1120076
;

-- 07/02/2013 17h56min18s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Window_Trl SET IsTranslated='N' WHERE AD_Window_ID=1120076
;

-- 07/02/2013 17h56min18s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Window_Trl SET Description=NULL,Help=NULL,Name='SPED',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Window_ID=1120076
;

-- 07/02/2013 17h56min27s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1124144,1123473,0,1120115,TO_DATE('2013-02-07 17:56:26','YYYY-MM-DD HH24:MI:SS'),100,'The record is active in the system',1,'LBR','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Y','Y','Y','N','N','N','N','N','Active',TO_DATE('2013-02-07 17:56:26','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 07/02/2013 17h56min27s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1123473 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 07/02/2013 17h56min27s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1124140,1123474,0,1120115,TO_DATE('2013-02-07 17:56:27','YYYY-MM-DD HH24:MI:SS'),100,'Client/Tenant for this installation.',22,'LBR','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Y','Y','Y','N','N','N','N','N','Client',TO_DATE('2013-02-07 17:56:27','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 07/02/2013 17h56min27s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1123474 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 07/02/2013 17h56min27s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1124147,1123475,0,1120115,TO_DATE('2013-02-07 17:56:27','YYYY-MM-DD HH24:MI:SS'),100,22,'LBR','Y','Y','N','N','N','N','N','N','LBR_SPED_ID',TO_DATE('2013-02-07 17:56:27','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 07/02/2013 17h56min27s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1123475 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 07/02/2013 17h56min28s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1124141,1123476,0,1120115,TO_DATE('2013-02-07 17:56:28','YYYY-MM-DD HH24:MI:SS'),100,'Organizational entity within client',22,'LBR','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Y','Y','Y','N','N','N','N','N','Organization',TO_DATE('2013-02-07 17:56:28','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 07/02/2013 17h56min28s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1123476 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 07/02/2013 17h56min28s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1124149,1123477,0,1120115,TO_DATE('2013-02-07 17:56:28','YYYY-MM-DD HH24:MI:SS'),100,'Period of the Calendar',10,'LBR','The Period indicates an exclusive range of dates for a calendar.','Y','Y','Y','N','N','N','N','N','Period',TO_DATE('2013-02-07 17:56:28','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 07/02/2013 17h56min28s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1123477 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 07/02/2013 17h56min29s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1124148,1123478,0,1120115,TO_DATE('2013-02-07 17:56:28','YYYY-MM-DD HH24:MI:SS'),100,'Calendar Year',22,'LBR','The Year uniquely identifies an accounting year for a calendar.','Y','Y','Y','N','N','N','N','N','Year',TO_DATE('2013-02-07 17:56:28','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 07/02/2013 17h56min29s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1123478 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 07/02/2013 17h57min2s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Window SET Name='Gerar SPED',Updated=TO_DATE('2013-02-07 17:57:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Window_ID=1120076
;

-- 07/02/2013 17h57min2s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Window_Trl SET IsTranslated='N' WHERE AD_Window_ID=1120076
;

-- 07/02/2013 17h57min2s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Window_Trl SET Description=NULL,Help=NULL,Name='Gerar SPED',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Window_ID=1120076
;

-- 07/02/2013 17h57min51s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1123473
;

-- 07/02/2013 17h57min51s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=10,IsDisplayed='Y' WHERE AD_Field_ID=1123474
;

-- 07/02/2013 17h57min51s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=20,IsDisplayed='Y' WHERE AD_Field_ID=1123476
;

-- 07/02/2013 17h57min51s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=30,IsDisplayed='Y' WHERE AD_Field_ID=1123478
;

-- 07/02/2013 17h57min51s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=40,IsDisplayed='Y' WHERE AD_Field_ID=1123477
;

-- 07/02/2013 17h59min28s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,1121263,0,'ToProcessSPED',TO_DATE('2013-02-07 17:59:27','YYYY-MM-DD HH24:MI:SS'),100,'LBR','Y','ToProcessSPED','ToProcessSPED',TO_DATE('2013-02-07 17:59:27','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 07/02/2013 17h59min28s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1121263 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 07/02/2013 18h0min16s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1124150,1121263,0,28,1120328,'ToProcessSPED',TO_DATE('2013-02-07 18:00:15','YYYY-MM-DD HH24:MI:SS'),100,'LBR',1,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','ToProcessSPED',0,TO_DATE('2013-02-07 18:00:15','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 07/02/2013 18h0min16s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1124150 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 07/02/2013 18h0min51s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
ALTER TABLE LBR_SPED ADD ToProcessSPED CHAR(1) DEFAULT NULL 
;

-- 07/02/2013 18h1min10s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1124150,1123479,0,1120115,TO_DATE('2013-02-07 18:01:08','YYYY-MM-DD HH24:MI:SS'),100,1,'LBR','Y','Y','Y','N','N','N','N','N','ToProcessSPED',TO_DATE('2013-02-07 18:01:08','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 07/02/2013 18h1min10s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1123479 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 07/02/2013 18h2min26s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2013-02-07 18:02:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1123476
;

-- 07/02/2013 18h2min37s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2013-02-07 18:02:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1123477
;

-- 07/02/2013 18h2min44s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET DisplayLength=22,Updated=TO_DATE('2013-02-07 18:02:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1123479
;

-- 07/02/2013 18h3min0s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
ALTER TABLE LBR_SPED MODIFY ToProcessSPED CHAR(1) DEFAULT NULL 
;

-- 14/02/2013 15h47min10s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Menu (AD_Client_ID,AD_Menu_ID,AD_Org_ID,Created,CreatedBy,EntityType,IsActive,IsCentrallyMaintained,IsReadOnly,IsSOTrx,IsSummary,Name,Updated,UpdatedBy) VALUES (0,1120179,0,TO_DATE('2013-02-14 15:47:09','YYYY-MM-DD HH24:MI:SS'),100,'LBR','Y','Y','N','N','Y','SPED',TO_DATE('2013-02-14 15:47:09','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/02/2013 15h47min10s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Menu_Trl (AD_Language,AD_Menu_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Menu_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Menu t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Menu_ID=1120179 AND NOT EXISTS (SELECT * FROM AD_Menu_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Menu_ID=t.AD_Menu_ID)
;

-- 14/02/2013 15h47min10s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo) SELECT t.AD_Client_ID, 0, 'Y', SysDate, 100, SysDate, 100,t.AD_Tree_ID, 1120179, 0, 999 FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=1120179)
;

-- 14/02/2013 15h48min0s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120179
;

-- 14/02/2013 15h48min0s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000023
;

-- 14/02/2013 15h48min0s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000015
;

-- 14/02/2013 15h48min0s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000014
;

-- 14/02/2013 15h48min0s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000035
;

-- 14/02/2013 15h48min0s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000039
;

-- 14/02/2013 15h48min0s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120014
;

-- 14/02/2013 15h48min0s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000009
;

-- 14/02/2013 15h50min55s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Menu (Action,AD_Client_ID,AD_Menu_ID,AD_Org_ID,AD_Window_ID,Created,CreatedBy,EntityType,IsActive,IsCentrallyMaintained,IsReadOnly,IsSOTrx,IsSummary,Name,Updated,UpdatedBy) VALUES ('W',0,1120180,0,1120076,TO_DATE('2013-02-14 15:50:54','YYYY-MM-DD HH24:MI:SS'),100,'LBR','Y','Y','N','N','N','Gerar SPED',TO_DATE('2013-02-14 15:50:54','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/02/2013 15h50min55s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Menu_Trl (AD_Language,AD_Menu_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Menu_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Menu t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Menu_ID=1120180 AND NOT EXISTS (SELECT * FROM AD_Menu_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Menu_ID=t.AD_Menu_ID)
;

-- 14/02/2013 15h50min55s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo) SELECT t.AD_Client_ID, 0, 'Y', SysDate, 100, SysDate, 100,t.AD_Tree_ID, 1120180, 0, 999 FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=1120180)
;

-- 14/02/2013 15h51min4s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1120179, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120180
;

-- 14/02/2013 15h52min1s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1120179, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120180
;

-- 14/02/2013 15h52min28s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1120179, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120180
;

-- 14/02/2013 15h52min28s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1120179, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120180
;

-- 14/02/2013 15h52min56s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Sequence (AD_Client_ID,AD_Org_ID,AD_Sequence_ID,Created,CreatedBy,CurrentNext,CurrentNextSys,Description,IncrementNo,IsActive,IsAudited,IsAutoSequence,IsTableID,Name,StartNewYear,StartNo,Updated,UpdatedBy) VALUES (0,0,1152716,TO_DATE('2013-02-14 15:52:54','YYYY-MM-DD HH24:MI:SS'),100,1000000,50000,'Table LBR_SPED',1,'Y','N','Y','Y','LBR_SPED','N',1000000,TO_DATE('2013-02-14 15:52:54','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/02/2013 15h52min56s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Sequence s SET Name = (SELECT TableName FROM AD_Table t WHERE t.IsView='N' AND UPPER(s.Name)=UPPER(t.TableName)) WHERE s.IsTableID='Y' AND EXISTS (SELECT * FROM AD_Table t WHERE t.IsActive='Y' AND t.IsView='N' AND UPPER(s.Name)=UPPER(t.TableName) AND s.Name<>t.TableName)
;

-- 14/02/2013 15h54min13s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Sequence SET CurrentNext=2000000,Updated=TO_DATE('2013-02-14 15:54:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Sequence_ID=1152716
;

-- 14/02/2013 16h25min30s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Process (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Process_ID,Classname,CopyFromProcess,Created,CreatedBy,EntityType,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value) VALUES ('3',0,0,1120114,'org.adempierelbr.sped.efd.process.ProcGenerateEFD','N',TO_DATE('2013-02-14 16:25:28','YYYY-MM-DD HH24:MI:SS'),100,'LBR','Y','N','N','N','N','Processar SPED','Y',0,0,TO_DATE('2013-02-14 16:25:28','YYYY-MM-DD HH24:MI:SS'),100,'Processar SPED')
;

-- 14/02/2013 16h25min30s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=1120114 AND NOT EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_ID=t.AD_Process_ID)
;

-- 14/02/2013 16h27min11s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET AD_Process_ID=1120114,Updated=TO_DATE('2013-02-14 16:27:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1124150
;

-- 14/02/2013 16h27min39s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Element_Trl SET IsTranslated='Y',Name='Processar SPED',PrintName='Processar SPED',Updated=TO_DATE('2013-02-14 16:27:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1121263 AND AD_Language='pt_BR'
;

-- 14/02/2013 16h29min6s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Window_Trl SET IsTranslated='Y',Name='Gerar SPED',Updated=TO_DATE('2013-02-14 16:29:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Window_ID=1120076 AND AD_Language='pt_BR'
;

-- 14/02/2013 16h29min15s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Tab_Trl SET IsTranslated='Y',Updated=TO_DATE('2013-02-14 16:29:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=1120115 AND AD_Language='pt_BR'
;

-- 14/02/2013 16h30min58s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_ELEMENT_TRL (AD_Element_ID, AD_LANGUAGE, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Name, PrintName, Description, Help, IsTranslated) SELECT m.AD_Element_ID, l.AD_LANGUAGE, m.AD_Client_ID, m.AD_Org_ID, m.IsActive, m.Created, m.CreatedBy, m.Updated, m.UpdatedBy, m.Name, m.PrintName, m.Description, m.Help, 'N' FROM	AD_ELEMENT m, AD_LANGUAGE l WHERE	l.IsActive = 'Y' AND l.IsSystemLanguage = 'Y' AND	AD_Element_ID || AD_LANGUAGE NOT IN  (SELECT AD_Element_ID || AD_LANGUAGE FROM AD_ELEMENT_TRL)
;

-- 14/02/2013 16h30min58s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE	AD_COLUMN c SET		AD_Element_id = 	(SELECT AD_Element_ID FROM AD_ELEMENT e 	WHERE UPPER(c.ColumnName)=UPPER(e.ColumnName)) 	WHERE AD_Element_ID IS NULL
;

-- 14/02/2013 16h30min58s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
DELETE	AD_ELEMENT_TRL 	WHERE	AD_Element_ID IN 	(SELECT AD_Element_ID FROM AD_ELEMENT e  	WHERE NOT EXISTS 	(SELECT 1 FROM AD_COLUMN c WHERE UPPER(e.ColumnName)=UPPER(c.ColumnName)) 	AND NOT EXISTS 	(SELECT 1 FROM AD_PROCESS_PARA p WHERE UPPER(e.ColumnName)=UPPER(p.ColumnName)))
;

-- 14/02/2013 16h30min58s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
DELETE	AD_ELEMENT e 	WHERE AD_Element_ID >= 1000000 AND NOT EXISTS 	(SELECT 1 FROM AD_COLUMN c WHERE UPPER(e.ColumnName)=UPPER(c.ColumnName)) 	AND NOT EXISTS 	(SELECT 1 FROM AD_PROCESS_PARA p WHERE UPPER(e.ColumnName)=UPPER(p.ColumnName))
;

-- 14/02/2013 16h30min58s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
 	UPDATE AD_COLUMN c 		SET	(ColumnName, Name, Description, Help) = 	           (SELECT ColumnName, Name, Description, Help 	            FROM AD_ELEMENT e WHERE c.AD_Element_ID=e.AD_Element_ID), 			Updated = SYSDATE 	WHERE EXISTS (SELECT 1 FROM AD_ELEMENT e  				WHERE c.AD_Element_ID=e.AD_Element_ID 				  AND (c.ColumnName <> e.ColumnName OR c.Name <> e.Name  					OR NVL(c.Description,' ') <> NVL(e.Description,' ') OR NVL(c.Help,' ') <> NVL(e.Help,' ')))
;

-- 14/02/2013 16h30min58s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
 	UPDATE AD_FIELD f 		SET (Name, Description, Help) =  	            (SELECT e.Name, e.Description, e.Help 	            FROM AD_ELEMENT e, AD_COLUMN c 	    	    WHERE e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=f.AD_Column_ID), 			Updated = SYSDATE 	WHERE f.IsCentrallyMaintained='Y' AND f.IsActive='Y' 	 AND EXISTS (SELECT 1 FROM AD_ELEMENT e, AD_COLUMN c 				WHERE f.AD_Column_ID=c.AD_Column_ID 				  AND c.AD_Element_ID=e.AD_Element_ID AND c.AD_Process_ID IS NULL 				  AND (f.Name <> e.Name OR NVL(f.Description,' ') <> NVL(e.Description,' ') OR NVL(f.Help,' ') <> NVL(e.Help,' ')))
;

-- 14/02/2013 16h30min59s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_FIELD_TRL trl SET Name = (SELECT e.Name FROM AD_ELEMENT_TRL e, AD_COLUMN c, AD_FIELD f			WHERE e.AD_LANGUAGE=trl.AD_LANGUAGE AND e.AD_Element_ID=c.AD_Element_ID 			  AND c.AD_Column_ID=f.AD_Column_ID AND f.AD_Field_ID=trl.AD_Field_ID),	Description = (SELECT e.Description FROM AD_ELEMENT_TRL e, AD_COLUMN c, AD_FIELD f			WHERE e.AD_LANGUAGE=trl.AD_LANGUAGE AND e.AD_Element_ID=c.AD_Element_ID 			  AND c.AD_Column_ID=f.AD_Column_ID AND f.AD_Field_ID=trl.AD_Field_ID),	Help = (SELECT e.Help FROM AD_ELEMENT_TRL e, AD_COLUMN c, AD_FIELD f			WHERE e.AD_LANGUAGE=trl.AD_LANGUAGE AND e.AD_Element_ID=c.AD_Element_ID 			  AND c.AD_Column_ID=f.AD_Column_ID AND f.AD_Field_ID=trl.AD_Field_ID),	IsTranslated = (SELECT e.IsTranslated FROM AD_ELEMENT_TRL e, AD_COLUMN c, AD_FIELD f			WHERE e.AD_LANGUAGE=trl.AD_LANGUAGE AND e.AD_Element_ID=c.AD_Element_ID 			  AND c.AD_Column_ID=f.AD_Column_ID AND f.AD_Field_ID=trl.AD_Field_ID),	Updated = SYSDATE WHERE EXISTS (SELECT 1 FROM AD_FIELD f, AD_ELEMENT_TRL e, AD_COLUMN c		WHERE trl.AD_Field_ID=f.AD_Field_ID		  AND f.AD_Column_ID=c.AD_Column_ID		  AND c.AD_Element_ID=e.AD_Element_ID AND c.AD_Process_ID IS NULL		  AND trl.AD_LANGUAGE=e.AD_LANGUAGE		  AND f.IsCentrallyMaintained='Y' AND f.IsActive='Y'		  AND (trl.Name <> e.Name OR NVL(trl.Description,' ') <> NVL(e.Description,' ') OR NVL(trl.Help,' ') <> NVL(e.Help,' ')))
;

-- 14/02/2013 16h30min59s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_FIELD f SET Name = (SELECT e.PO_Name FROM AD_ELEMENT e, AD_COLUMN c 			WHERE e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=f.AD_Column_ID), 	Description = (SELECT e.PO_Description FROM AD_ELEMENT e, AD_COLUMN c 			WHERE e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=f.AD_Column_ID), 	Help = (SELECT e.PO_Help FROM AD_ELEMENT e, AD_COLUMN c 			WHERE e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=f.AD_Column_ID), 	Updated = SYSDATE WHERE f.IsCentrallyMaintained='Y' AND f.IsActive='Y' AND EXISTS (SELECT 1 FROM AD_ELEMENT e, AD_COLUMN c 		WHERE f.AD_Column_ID=c.AD_Column_ID 		  AND c.AD_Element_ID=e.AD_Element_ID AND c.AD_Process_ID IS NULL 		  AND (f.Name <> e.PO_Name OR NVL(f.Description,' ') <> NVL(e.PO_Description,' ') OR NVL(f.Help,' ') <> NVL(e.PO_Help,' ')) 		  AND e.PO_Name IS NOT NULL) AND EXISTS (SELECT 1 FROM AD_TAB t, AD_WINDOW w 		WHERE f.AD_Tab_ID=t.AD_Tab_ID 		  AND t.AD_Window_ID=w.AD_Window_ID 		  AND w.IsSOTrx='N')
;

-- 14/02/2013 16h30min59s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
 UPDATE AD_FIELD_TRL trl SET Name = (SELECT e.PO_Name FROM AD_ELEMENT_TRL e, AD_COLUMN c, AD_FIELD f 		WHERE e.AD_LANGUAGE=trl.AD_LANGUAGE AND e.AD_Element_ID=c.AD_Element_ID 		  AND c.AD_Column_ID=f.AD_Column_ID AND f.AD_Field_ID=trl.AD_Field_ID), Description = (SELECT e.PO_Description FROM AD_ELEMENT_TRL e, AD_COLUMN c, AD_FIELD f 		WHERE e.AD_LANGUAGE=trl.AD_LANGUAGE AND e.AD_Element_ID=c.AD_Element_ID  		  AND c.AD_Column_ID=f.AD_Column_ID AND f.AD_Field_ID=trl.AD_Field_ID), Help = (SELECT e.PO_Help FROM AD_ELEMENT_TRL e, AD_COLUMN c, AD_FIELD f 		WHERE e.AD_LANGUAGE=trl.AD_LANGUAGE AND e.AD_Element_ID=c.AD_Element_ID 		  AND c.AD_Column_ID=f.AD_Column_ID AND f.AD_Field_ID=trl.AD_Field_ID), IsTranslated = (SELECT e.IsTranslated FROM AD_ELEMENT_TRL e, AD_COLUMN c, AD_FIELD f 		WHERE e.AD_LANGUAGE=trl.AD_LANGUAGE AND e.AD_Element_ID=c.AD_Element_ID  		  AND c.AD_Column_ID=f.AD_Column_ID AND f.AD_Field_ID=trl.AD_Field_ID), Updated = SYSDATE WHERE EXISTS (SELECT 1 FROM AD_FIELD f, AD_ELEMENT_TRL e, AD_COLUMN c 	WHERE trl.AD_Field_ID=f.AD_Field_ID 	  AND f.AD_Column_ID=c.AD_Column_ID 	  AND c.AD_Element_ID=e.AD_Element_ID AND c.AD_Process_ID IS NULL 	  AND trl.AD_LANGUAGE=e.AD_LANGUAGE 	  AND f.IsCentrallyMaintained='Y' AND f.IsActive='Y' 	  AND (trl.Name <> e.PO_Name OR NVL(trl.Description,' ') <> NVL(e.PO_Description,' ') OR NVL(trl.Help,' ') <> NVL(e.PO_Help,' ')) 	  AND e.PO_Name IS NOT NULL) AND EXISTS (SELECT 1 FROM AD_FIELD f, AD_TAB t, AD_WINDOW w 	WHERE trl.AD_Field_ID=f.AD_Field_ID 	  AND f.AD_Tab_ID=t.AD_Tab_ID 	  AND t.AD_Window_ID=w.AD_Window_ID 	  AND w.IsSOTrx='N')
;

-- 14/02/2013 16h30min59s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_FIELD f SET Name = (SELECT p.Name FROM AD_PROCESS p, AD_COLUMN c WHERE p.AD_Process_ID=c.AD_Process_ID 			AND c.AD_Column_ID=f.AD_Column_ID), 	Description = (SELECT p.Description FROM AD_PROCESS p, AD_COLUMN c WHERE p.AD_Process_ID=c.AD_Process_ID 			AND c.AD_Column_ID=f.AD_Column_ID), 	Help = (SELECT p.Help FROM AD_PROCESS p, AD_COLUMN c WHERE p.AD_Process_ID=c.AD_Process_ID 			AND c.AD_Column_ID=f.AD_Column_ID), 	Updated = SYSDATE WHERE f.IsCentrallyMaintained='Y' AND f.IsActive='Y' AND EXISTS (SELECT 1 FROM AD_PROCESS p, AD_COLUMN c 		WHERE c.AD_Process_ID=p.AD_Process_ID AND f.AD_Column_ID=c.AD_Column_ID 		AND (f.Name<>p.Name OR NVL(f.Description,' ')<>NVL(p.Description,' ') OR NVL(f.Help,' ')<>NVL(p.Help,' ')))
;

-- 14/02/2013 16h30min59s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_FIELD_TRL trl SET Name = (SELECT p.Name FROM AD_PROCESS_TRL p, AD_COLUMN c, AD_FIELD f 			WHERE p.AD_Process_ID=c.AD_Process_ID AND c.AD_Column_ID=f.AD_Column_ID 			AND f.AD_Field_ID=trl.AD_Field_ID AND p.AD_LANGUAGE=trl.AD_LANGUAGE), 	Description = (SELECT p.Description FROM AD_PROCESS_TRL p, AD_COLUMN c, AD_FIELD f 			WHERE p.AD_Process_ID=c.AD_Process_ID AND c.AD_Column_ID=f.AD_Column_ID 			AND f.AD_Field_ID=trl.AD_Field_ID AND p.AD_LANGUAGE=trl.AD_LANGUAGE), 	Help = (SELECT p.Help FROM AD_PROCESS_TRL p, AD_COLUMN c, AD_FIELD f  			WHERE p.AD_Process_ID=c.AD_Process_ID AND c.AD_Column_ID=f.AD_Column_ID 			AND f.AD_Field_ID=trl.AD_Field_ID AND p.AD_LANGUAGE=trl.AD_LANGUAGE), 	IsTranslated = (SELECT p.IsTranslated FROM AD_PROCESS_TRL p, AD_COLUMN c, AD_FIELD f 			WHERE p.AD_Process_ID=c.AD_Process_ID AND c.AD_Column_ID=f.AD_Column_ID 			AND f.AD_Field_ID=trl.AD_Field_ID AND p.AD_LANGUAGE=trl.AD_LANGUAGE), 	Updated = SYSDATE WHERE EXISTS (SELECT 1 FROM AD_PROCESS_TRL p, AD_COLUMN c, AD_FIELD f 		WHERE c.AD_Process_ID=p.AD_Process_ID AND f.AD_Column_ID=c.AD_Column_ID 		AND f.AD_Field_ID=trl.AD_Field_ID AND p.AD_LANGUAGE=trl.AD_LANGUAGE 		AND f.IsCentrallyMaintained='Y' AND f.IsActive='Y' 		AND (trl.Name<>p.Name OR NVL(trl.Description,' ')<>NVL(p.Description,' ') OR NVL(trl.Help,' ')<>NVL(p.Help,' ')))
;

-- 14/02/2013 16h30min59s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE	AD_PROCESS_PARA f SET	ColumnName = (SELECT e.ColumnName FROM AD_ELEMENT e 			WHERE UPPER(e.ColumnName)=UPPER(f.ColumnName)) WHERE f.IsCentrallyMaintained='Y' AND f.IsActive='Y' AND EXISTS (SELECT 1 FROM AD_ELEMENT e WHERE UPPER(e.ColumnName)=UPPER(f.ColumnName) AND e.ColumnName<>f.ColumnName)
;

-- 14/02/2013 16h30min59s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE	AD_PROCESS_PARA p SET	IsCentrallyMaintained = 'N' WHERE	IsCentrallyMaintained <> 'N' AND NOT EXISTS (SELECT 1 FROM AD_ELEMENT e WHERE p.ColumnName=e.ColumnName)
;

-- 14/02/2013 16h30min59s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_PROCESS_PARA f SET Name = (SELECT e.Name FROM AD_ELEMENT e 			WHERE e.ColumnName=f.ColumnName), 	Description = (SELECT e.Description FROM AD_ELEMENT e 			WHERE e.ColumnName=f.ColumnName), 	Help = (SELECT e.Help FROM AD_ELEMENT e 			WHERE e.ColumnName=f.ColumnName), 	Updated = SYSDATE WHERE f.IsCentrallyMaintained='Y' AND f.IsActive='Y' AND EXISTS (SELECT 1 FROM AD_ELEMENT e 		WHERE e.ColumnName=f.ColumnName 		  AND (f.Name <> e.Name OR NVL(f.Description,' ') <> NVL(e.Description,' ') OR NVL(f.Help,' ') <> NVL(e.Help,' ')))
;

-- 14/02/2013 16h30min59s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_PROCESS_PARA_TRL trl SET Name = (SELECT et.Name FROM AD_ELEMENT_TRL et, AD_ELEMENT e, AD_PROCESS_PARA f 			WHERE et.AD_LANGUAGE=trl.AD_LANGUAGE AND et.AD_Element_ID=e.AD_Element_ID 			  AND e.ColumnName=f.ColumnName AND f.AD_Process_Para_ID=trl.AD_Process_Para_ID), 	Description = (SELECT et.Description FROM AD_ELEMENT_TRL et, AD_ELEMENT e, AD_PROCESS_PARA f 			WHERE et.AD_LANGUAGE=trl.AD_LANGUAGE AND et.AD_Element_ID=e.AD_Element_ID 			  AND e.ColumnName=f.ColumnName AND f.AD_Process_Para_ID=trl.AD_Process_Para_ID), 	Help = (SELECT et.Help FROM AD_ELEMENT_TRL et, AD_ELEMENT e, AD_PROCESS_PARA f 			WHERE et.AD_LANGUAGE=trl.AD_LANGUAGE AND et.AD_Element_ID=e.AD_Element_ID 			  AND e.ColumnName=f.ColumnName AND f.AD_Process_Para_ID=trl.AD_Process_Para_ID), 	IsTranslated = (SELECT et.IsTranslated FROM AD_ELEMENT_TRL et, AD_ELEMENT e, AD_PROCESS_PARA f 			WHERE et.AD_LANGUAGE=trl.AD_LANGUAGE AND et.AD_Element_ID=e.AD_Element_ID 			  AND e.ColumnName=f.ColumnName AND f.AD_Process_Para_ID=trl.AD_Process_Para_ID), 	Updated = SYSDATE WHERE EXISTS (SELECT 1 FROM AD_ELEMENT_TRL et, AD_ELEMENT e, AD_PROCESS_PARA f 			WHERE et.AD_LANGUAGE=trl.AD_LANGUAGE AND et.AD_Element_ID=e.AD_Element_ID 			  AND e.ColumnName=f.ColumnName AND f.AD_Process_Para_ID=trl.AD_Process_Para_ID 			  AND f.IsCentrallyMaintained='Y' AND f.IsActive='Y' 			  AND (trl.Name <> et.Name OR NVL(trl.Description,' ') <> NVL(et.Description,' ') OR NVL(trl.Help,' ') <> NVL(et.Help,' ')))
;

-- 14/02/2013 16h30min59s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_WF_NODE n SET Name = (SELECT w.Name FROM AD_WINDOW w 			WHERE w.AD_Window_ID=n.AD_Window_ID), 	Description = (SELECT w.Description FROM AD_WINDOW w 			WHERE w.AD_Window_ID=n.AD_Window_ID), 	Help = (SELECT w.Help FROM AD_WINDOW w 			WHERE w.AD_Window_ID=n.AD_Window_ID) WHERE n.IsCentrallyMaintained = 'Y'  AND EXISTS  (SELECT 1 FROM AD_WINDOW w 		WHERE w.AD_Window_ID=n.AD_Window_ID 		  AND (w.Name <> n.Name OR NVL(w.Description,' ') <> NVL(n.Description,' ') OR NVL(w.Help,' ') <> NVL(n.Help,' ')))
;

-- 14/02/2013 16h30min59s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_WF_NODE_TRL trl SET Name = (SELECT t.Name FROM AD_WINDOW_TRL t, AD_WF_NODE n 			WHERE trl.AD_WF_Node_ID=n.AD_WF_Node_ID AND n.AD_Window_ID=t.AD_Window_ID 			  AND trl.AD_LANGUAGE=t.AD_LANGUAGE), 	Description = (SELECT t.Description FROM AD_WINDOW_TRL t, AD_WF_NODE n 			WHERE trl.AD_WF_Node_ID=n.AD_WF_Node_ID AND n.AD_Window_ID=t.AD_Window_ID 			  AND trl.AD_LANGUAGE=t.AD_LANGUAGE), 	Help = (SELECT t.Help FROM AD_WINDOW_TRL t, AD_WF_NODE n 			WHERE trl.AD_WF_Node_ID=n.AD_WF_Node_ID AND n.AD_Window_ID=t.AD_Window_ID 			  AND trl.AD_LANGUAGE=t.AD_LANGUAGE) WHERE EXISTS (SELECT 1 FROM AD_WINDOW_TRL t, AD_WF_NODE n 		WHERE trl.AD_WF_Node_ID=n.AD_WF_Node_ID AND n.AD_Window_ID=t.AD_Window_ID 		  AND trl.AD_LANGUAGE=t.AD_LANGUAGE AND n.IsCentrallyMaintained='Y' AND n.IsActive='Y' 		  AND (trl.Name <> t.Name OR NVL(trl.Description,' ') <> NVL(t.Description,' ') OR NVL(trl.Help,' ') <> NVL(t.Help,' ')))
;

-- 14/02/2013 16h30min59s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_WF_NODE n SET (Name, Description, Help) = (SELECT f.Name, f.Description, f.Help 		FROM AD_FORM f 		WHERE f.AD_Form_ID=n.AD_Form_ID) WHERE n.IsCentrallyMaintained = 'Y' AND EXISTS  (SELECT 1 FROM AD_FORM f 		WHERE f.AD_Form_ID=n.AD_Form_ID 		  AND (f.Name <> n.Name OR NVL(f.Description,' ') <> NVL(n.Description,' ') OR NVL(f.Help,' ') <> NVL(n.Help,' ')))
;

-- 14/02/2013 16h30min59s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
 UPDATE AD_WF_NODE_TRL trl SET (Name, Description, Help) = (SELECT t.Name, t.Description, t.Help 	FROM AD_FORM_TRL t, AD_WF_NODE n 	WHERE trl.AD_WF_Node_ID=n.AD_WF_Node_ID AND n.AD_Form_ID=t.AD_Form_ID 	  AND trl.AD_LANGUAGE=t.AD_LANGUAGE) WHERE EXISTS (SELECT 1 FROM AD_FORM_TRL t, AD_WF_NODE n 		WHERE trl.AD_WF_Node_ID=n.AD_WF_Node_ID AND n.AD_Form_ID=t.AD_Form_ID 		  AND trl.AD_LANGUAGE=t.AD_LANGUAGE AND n.IsCentrallyMaintained='Y' AND n.IsActive='Y' 		  AND (trl.Name <> t.Name OR NVL(trl.Description,' ') <> NVL(t.Description,' ') OR NVL(trl.Help,' ') <> NVL(t.Help,' ')))
;

-- 14/02/2013 16h30min59s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_WF_NODE n SET (Name, Description, Help) = (SELECT f.Name, f.Description, f.Help 		FROM AD_PROCESS f 		WHERE f.AD_Process_ID=n.AD_Process_ID) WHERE n.IsCentrallyMaintained = 'Y' AND EXISTS  (SELECT 1 FROM AD_PROCESS f 		WHERE f.AD_Process_ID=n.AD_Process_ID 		  AND (f.Name <> n.Name OR NVL(f.Description,' ') <> NVL(n.Description,' ') OR NVL(f.Help,' ') <> NVL(n.Help,' ')))
;

-- 14/02/2013 16h30min59s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_WF_NODE_TRL trl SET (Name, Description, Help) = (SELECT t.Name, t.Description, t.Help FROM AD_PROCESS_TRL t, AD_WF_NODE n WHERE trl.AD_WF_Node_ID=n.AD_WF_Node_ID AND n.AD_Process_ID=t.AD_Process_ID  AND trl.AD_LANGUAGE=t.AD_LANGUAGE) WHERE EXISTS (SELECT 1 FROM AD_PROCESS_TRL t, AD_WF_NODE n WHERE trl.AD_WF_Node_ID=n.AD_WF_Node_ID AND n.AD_Process_ID=t.AD_Process_ID  AND trl.AD_LANGUAGE=t.AD_LANGUAGE AND n.IsCentrallyMaintained='Y' AND n.IsActive='Y'  AND (trl.Name <> t.Name OR NVL(trl.Description,' ') <> NVL(t.Description,' ') OR NVL(trl.Help,' ') <> NVL(t.Help,' ')))
;

-- 14/02/2013 16h30min59s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_PRINTFORMATITEM pfi SET Name = (SELECT e.Name  FROM AD_ELEMENT e, AD_COLUMN c WHERE e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=pfi.AD_Column_ID) WHERE pfi.IsCentrallyMaintained='Y' AND EXISTS (SELECT 1  FROM AD_ELEMENT e, AD_COLUMN c WHERE e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=pfi.AD_Column_ID AND e.Name<>pfi.Name) AND EXISTS (SELECT 1 FROM AD_CLIENT WHERE AD_Client_ID=pfi.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 14/02/2013 16h31min0s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_PRINTFORMATITEM pfi SET PrintName = (SELECT e.PrintName  FROM AD_ELEMENT e, AD_COLUMN c WHERE e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=pfi.AD_Column_ID) WHERE pfi.IsCentrallyMaintained='Y' AND EXISTS (SELECT 1  FROM AD_ELEMENT e, AD_COLUMN c, AD_PRINTFORMAT pf WHERE e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=pfi.AD_Column_ID AND LENGTH(pfi.PrintName) > 0 AND e.PrintName<>pfi.PrintName AND pf.AD_PrintFormat_ID=pfi.AD_PrintFormat_ID AND pf.IsForm='N' AND IsTableBased='Y') AND EXISTS (SELECT 1 FROM AD_CLIENT  WHERE AD_Client_ID=pfi.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 14/02/2013 16h31min3s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_PRINTFORMATITEM_TRL trl SET PrintName = (SELECT e.PrintName FROM AD_ELEMENT_TRL e, AD_COLUMN c, AD_PRINTFORMATITEM pfi WHERE e.AD_LANGUAGE=trl.AD_LANGUAGE AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=pfi.AD_Column_ID AND pfi.AD_PrintFormatItem_ID=trl.AD_PrintFormatItem_ID) WHERE EXISTS (SELECT 1  FROM AD_ELEMENT_TRL e, AD_COLUMN c, AD_PRINTFORMATITEM pfi, AD_PRINTFORMAT pf WHERE e.AD_LANGUAGE=trl.AD_LANGUAGE AND e.AD_Element_ID=c.AD_Element_ID AND c.AD_Column_ID=pfi.AD_Column_ID AND pfi.AD_PrintFormatItem_ID=trl.AD_PrintFormatItem_ID AND pfi.IsCentrallyMaintained='Y' AND LENGTH(pfi.PrintName) > 0 AND (e.PrintName<>trl.PrintName OR trl.PrintName IS NULL) AND pf.AD_PrintFormat_ID=pfi.AD_PrintFormat_ID  AND pf.IsForm='N' AND IsTableBased='Y') AND EXISTS (SELECT 1 FROM AD_CLIENT  WHERE AD_Client_ID=trl.AD_Client_ID AND IsMultiLingualDocument='Y')
;

-- 14/02/2013 16h31min3s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_PRINTFORMATITEM_TRL trl SET PrintName = (SELECT pfi.PrintName FROM AD_PRINTFORMATITEM pfi WHERE pfi.AD_PrintFormatItem_ID=trl.AD_PrintFormatItem_ID) WHERE EXISTS (SELECT 1  FROM AD_PRINTFORMATITEM pfi, AD_PRINTFORMAT pf WHERE pfi.AD_PrintFormatItem_ID=trl.AD_PrintFormatItem_ID AND pfi.IsCentrallyMaintained='Y' AND LENGTH(pfi.PrintName) > 0 AND pfi.PrintName<>trl.PrintName AND pf.AD_PrintFormat_ID=pfi.AD_PrintFormat_ID  AND pf.IsForm='N' AND pf.IsTableBased='Y') AND EXISTS (SELECT 1 FROM AD_CLIENT  WHERE AD_Client_ID=trl.AD_Client_ID AND IsMultiLingualDocument='N')
;

-- 14/02/2013 16h31min3s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_PRINTFORMATITEM_TRL trl SET PrintName = NULL WHERE PrintName IS NOT NULL AND EXISTS (SELECT 1 FROM AD_PRINTFORMATITEM pfi WHERE pfi.AD_PrintFormatItem_ID=trl.AD_PrintFormatItem_ID AND pfi.IsCentrallyMaintained='Y' AND (LENGTH (pfi.PrintName) = 0 OR pfi.PrintName IS NULL))
;

-- 14/02/2013 16h31min3s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE	AD_MENU m SET		Name = (SELECT Name FROM AD_WINDOW w WHERE m.AD_Window_ID=w.AD_Window_ID), Description = (SELECT Description FROM AD_WINDOW w WHERE m.AD_Window_ID=w.AD_Window_ID) WHERE	m.AD_Window_ID IS NOT NULL  AND m.Action = 'W'  AND m.IsCentrallyMaintained='Y' AND m.IsActive='Y'
;

-- 14/02/2013 16h31min3s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE	AD_MENU_TRL mt SET		Name = (SELECT wt.Name FROM AD_WINDOW_TRL wt, AD_MENU m  WHERE mt.AD_Menu_ID=m.AD_Menu_ID AND m.AD_Window_ID=wt.AD_Window_ID  AND mt.AD_LANGUAGE=wt.AD_LANGUAGE), Description = (SELECT wt.Description FROM AD_WINDOW_TRL wt, AD_MENU m  WHERE mt.AD_Menu_ID=m.AD_Menu_ID AND m.AD_Window_ID=wt.AD_Window_ID  AND mt.AD_LANGUAGE=wt.AD_LANGUAGE), IsTranslated = (SELECT wt.IsTranslated FROM AD_WINDOW_TRL wt, AD_MENU m  WHERE mt.AD_Menu_ID=m.AD_Menu_ID AND m.AD_Window_ID=wt.AD_Window_ID  AND mt.AD_LANGUAGE=wt.AD_LANGUAGE) WHERE EXISTS (SELECT 1 FROM AD_WINDOW_TRL wt, AD_MENU m  WHERE mt.AD_Menu_ID=m.AD_Menu_ID AND m.AD_Window_ID=wt.AD_Window_ID  AND mt.AD_LANGUAGE=wt.AD_LANGUAGE AND m.AD_Window_ID IS NOT NULL AND m.Action = 'W' AND m.IsCentrallyMaintained='Y' AND m.IsActive='Y')
;

-- 14/02/2013 16h31min3s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE	AD_MENU m SET		Name = (SELECT p.Name FROM AD_PROCESS p WHERE m.AD_Process_ID=p.AD_Process_ID), Description = (SELECT p.Description FROM AD_PROCESS p WHERE m.AD_Process_ID=p.AD_Process_ID) WHERE m.AD_Process_ID IS NOT NULL AND m.Action IN ('R', 'P') AND m.IsCentrallyMaintained='Y' AND m.IsActive='Y'
;

-- 14/02/2013 16h31min3s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE	AD_MENU_TRL mt SET		Name = (SELECT pt.Name FROM AD_PROCESS_TRL pt, AD_MENU m WHERE mt.AD_Menu_ID=m.AD_Menu_ID AND m.AD_Process_ID=pt.AD_Process_ID AND mt.AD_LANGUAGE=pt.AD_LANGUAGE), Description = (SELECT pt.Description FROM AD_PROCESS_TRL pt, AD_MENU m WHERE mt.AD_Menu_ID=m.AD_Menu_ID AND m.AD_Process_ID=pt.AD_Process_ID AND mt.AD_LANGUAGE=pt.AD_LANGUAGE), IsTranslated = (SELECT pt.IsTranslated FROM AD_PROCESS_TRL pt, AD_MENU m WHERE mt.AD_Menu_ID=m.AD_Menu_ID AND m.AD_Process_ID=pt.AD_Process_ID AND mt.AD_LANGUAGE=pt.AD_LANGUAGE) WHERE EXISTS (SELECT 1 FROM AD_PROCESS_TRL pt, AD_MENU m WHERE mt.AD_Menu_ID=m.AD_Menu_ID AND m.AD_Process_ID=pt.AD_Process_ID AND mt.AD_LANGUAGE=pt.AD_LANGUAGE AND m.AD_Process_ID IS NOT NULL AND m.Action IN ('R', 'P') AND m.IsCentrallyMaintained='Y' AND m.IsActive='Y')
;

-- 14/02/2013 16h31min3s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE	AD_MENU m SET		Name = (SELECT Name FROM AD_FORM f WHERE m.AD_Form_ID=f.AD_Form_ID), Description = (SELECT Description FROM AD_FORM f WHERE m.AD_Form_ID=f.AD_Form_ID) WHERE m.AD_Form_ID IS NOT NULL AND m.Action = 'X' AND m.IsCentrallyMaintained='Y' AND m.IsActive='Y'
;

-- 14/02/2013 16h31min3s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE	AD_MENU_TRL mt SET		Name = (SELECT ft.Name FROM AD_FORM_TRL ft, AD_MENU m WHERE mt.AD_Menu_ID=m.AD_Menu_ID AND m.AD_Form_ID=ft.AD_Form_ID AND mt.AD_LANGUAGE=ft.AD_LANGUAGE), Description = (SELECT ft.Description FROM AD_FORM_TRL ft, AD_MENU m WHERE mt.AD_Menu_ID=m.AD_Menu_ID AND m.AD_Form_ID=ft.AD_Form_ID AND mt.AD_LANGUAGE=ft.AD_LANGUAGE), IsTranslated = (SELECT ft.IsTranslated FROM AD_FORM_TRL ft, AD_MENU m WHERE mt.AD_Menu_ID=m.AD_Menu_ID AND m.AD_Form_ID=ft.AD_Form_ID AND mt.AD_LANGUAGE=ft.AD_LANGUAGE) WHERE EXISTS (SELECT 1 FROM AD_FORM_TRL ft, AD_MENU m WHERE mt.AD_Menu_ID=m.AD_Menu_ID AND m.AD_Form_ID=ft.AD_Form_ID AND mt.AD_LANGUAGE=ft.AD_LANGUAGE AND m.AD_Form_ID IS NOT NULL AND m.Action = 'X' AND m.IsCentrallyMaintained='Y' AND m.IsActive='Y')
;

-- 14/02/2013 16h31min3s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE	AD_MENU m SET		Name = (SELECT p.Name FROM AD_WORKFLOW p WHERE m.AD_Workflow_ID=p.AD_Workflow_ID), Description = (SELECT p.Description FROM AD_WORKFLOW p WHERE m.AD_Workflow_ID=p.AD_Workflow_ID) WHERE m.AD_Workflow_ID IS NOT NULL AND m.Action = 'F' AND m.IsCentrallyMaintained='Y' AND m.IsActive='Y'
;

-- 14/02/2013 16h31min3s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE	AD_MENU_TRL mt SET		Name = (SELECT pt.Name FROM AD_WORKFLOW_TRL pt, AD_MENU m WHERE mt.AD_Menu_ID=m.AD_Menu_ID AND m.AD_Workflow_ID=pt.AD_Workflow_ID AND mt.AD_LANGUAGE=pt.AD_LANGUAGE), Description = (SELECT pt.Description FROM AD_WORKFLOW_TRL pt, AD_MENU m WHERE mt.AD_Menu_ID=m.AD_Menu_ID AND m.AD_Workflow_ID=pt.AD_Workflow_ID AND mt.AD_LANGUAGE=pt.AD_LANGUAGE), IsTranslated = (SELECT pt.IsTranslated FROM AD_WORKFLOW_TRL pt, AD_MENU m WHERE mt.AD_Menu_ID=m.AD_Menu_ID AND m.AD_Workflow_ID=pt.AD_Workflow_ID AND mt.AD_LANGUAGE=pt.AD_LANGUAGE) WHERE EXISTS (SELECT 1 FROM AD_WORKFLOW_TRL pt, AD_MENU m WHERE mt.AD_Menu_ID=m.AD_Menu_ID AND m.AD_Workflow_ID=pt.AD_Workflow_ID AND mt.AD_LANGUAGE=pt.AD_LANGUAGE AND m.AD_Workflow_ID IS NOT NULL AND m.Action = 'F' AND m.IsCentrallyMaintained='Y' AND m.IsActive='Y')
;

-- 14/02/2013 16h31min3s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE	AD_MENU m SET		Name = (SELECT Name FROM AD_TASK f WHERE m.AD_Task_ID=f.AD_Task_ID), Description = (SELECT Description FROM AD_TASK f WHERE m.AD_Task_ID=f.AD_Task_ID) WHERE m.AD_Task_ID IS NOT NULL AND m.Action = 'T' AND m.IsCentrallyMaintained='Y' AND m.IsActive='Y'
;

-- 14/02/2013 16h31min3s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE	AD_MENU_TRL mt SET		Name = (SELECT ft.Name FROM AD_TASK_TRL ft, AD_MENU m WHERE mt.AD_Menu_ID=m.AD_Menu_ID AND m.AD_Task_ID=ft.AD_Task_ID AND mt.AD_LANGUAGE=ft.AD_LANGUAGE), Description = (SELECT ft.Description FROM AD_TASK_TRL ft, AD_MENU m WHERE mt.AD_Menu_ID=m.AD_Menu_ID AND m.AD_Task_ID=ft.AD_Task_ID AND mt.AD_LANGUAGE=ft.AD_LANGUAGE), IsTranslated = (SELECT ft.IsTranslated FROM AD_TASK_TRL ft, AD_MENU m WHERE mt.AD_Menu_ID=m.AD_Menu_ID AND m.AD_Task_ID=ft.AD_Task_ID AND mt.AD_LANGUAGE=ft.AD_LANGUAGE) WHERE EXISTS (SELECT 1 FROM AD_TASK_TRL ft, AD_MENU m WHERE mt.AD_Menu_ID=m.AD_Menu_ID AND m.AD_Task_ID=ft.AD_Task_ID AND mt.AD_LANGUAGE=ft.AD_LANGUAGE AND m.AD_Task_ID IS NOT NULL AND m.Action = 'T' AND m.IsCentrallyMaintained='Y' AND m.IsActive='Y')
;

-- 14/02/2013 16h31min3s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_COLUMN c SET (Name,Description,Help) = (SELECT e.Name,e.Description,e.Help  FROM AD_ELEMENT e WHERE c.AD_Element_ID=e.AD_Element_ID) WHERE EXISTS  (SELECT 1 FROM AD_ELEMENT e  WHERE c.AD_Element_ID=e.AD_Element_ID AND c.Name<>e.Name)
;

-- 14/02/2013 16h31min3s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_COLUMN_TRL ct SET Name = (SELECT e.Name FROM AD_COLUMN c INNER JOIN AD_ELEMENT_TRL e ON (c.AD_Element_ID=e.AD_Element_ID) WHERE ct.AD_Column_ID=c.AD_Column_ID AND ct.AD_LANGUAGE=e.AD_LANGUAGE) WHERE EXISTS  (SELECT 1 FROM AD_COLUMN c INNER JOIN AD_ELEMENT_TRL e ON (c.AD_Element_ID=e.AD_Element_ID) WHERE ct.AD_Column_ID=c.AD_Column_ID AND ct.AD_LANGUAGE=e.AD_LANGUAGE AND ct.Name<>e.Name)
;

-- 14/02/2013 16h31min3s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TABLE t SET (Name,Description) = (SELECT e.Name,e.Description FROM AD_ELEMENT e WHERE t.TableName||'_ID'=e.ColumnName) WHERE EXISTS (SELECT 1 FROM AD_ELEMENT e WHERE t.TableName||'_ID'=e.ColumnName AND t.Name<>e.Name)
;

-- 14/02/2013 16h31min3s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TABLE_TRL tt SET Name = (SELECT e.Name  FROM AD_TABLE t INNER JOIN AD_ELEMENT ex ON (t.TableName||'_ID'=ex.ColumnName) INNER JOIN AD_ELEMENT_TRL e ON (ex.AD_Element_ID=e.AD_Element_ID) WHERE tt.AD_Table_ID=t.AD_Table_ID AND tt.AD_LANGUAGE=e.AD_LANGUAGE) WHERE EXISTS (SELECT 1  FROM AD_TABLE t INNER JOIN AD_ELEMENT ex ON (t.TableName||'_ID'=ex.ColumnName) INNER JOIN AD_ELEMENT_TRL e ON (ex.AD_Element_ID=e.AD_Element_ID) WHERE tt.AD_Table_ID=t.AD_Table_ID AND tt.AD_LANGUAGE=e.AD_LANGUAGE AND tt.Name<>e.Name)
;

-- 14/02/2013 16h31min3s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TABLE t SET (Name,Description) = (SELECT e.Name||' Trl', e.Description  FROM AD_ELEMENT e  WHERE SUBSTR(t.TableName,1,LENGTH(t.TableName)-4)||'_ID'=e.ColumnName) WHERE TableName LIKE '%_Trl' AND EXISTS (SELECT 1 FROM AD_ELEMENT e  WHERE SUBSTR(t.TableName,1,LENGTH(t.TableName)-4)||'_ID'=e.ColumnName AND t.Name<>e.Name)
;

-- 14/02/2013 16h31min3s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
 UPDATE AD_TABLE_TRL tt SET Name = (SELECT e.Name || ' **' FROM AD_TABLE t INNER JOIN AD_ELEMENT ex ON (SUBSTR(t.TableName,1,LENGTH(t.TableName)-4)||'_ID'=ex.ColumnName) INNER JOIN AD_ELEMENT_TRL e ON (ex.AD_Element_ID=e.AD_Element_ID) WHERE tt.AD_Table_ID=t.AD_Table_ID AND tt.AD_LANGUAGE=e.AD_LANGUAGE) WHERE EXISTS (SELECT 1  FROM AD_TABLE t INNER JOIN AD_ELEMENT ex ON (SUBSTR(t.TableName,1,LENGTH(t.TableName)-4)||'_ID'=ex.ColumnName) INNER JOIN AD_ELEMENT_TRL e ON (ex.AD_Element_ID=e.AD_Element_ID) WHERE tt.AD_Table_ID=t.AD_Table_ID AND tt.AD_LANGUAGE=e.AD_LANGUAGE AND t.TableName LIKE '%_Trl' AND tt.Name<>e.Name)
;

-- 14/02/2013 16h47min18s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Table (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Table_ID,CopyColumnsFromTable,Created,CreatedBy,EntityType,ImportTable,IsActive,IsCentrallyMaintained,IsChangeLog,IsDeleteable,IsHighVolume,IsSecurityEnabled,IsSystemLanguage,IsView,LoadSeq,Name,ReplicationType,TableName,Updated,UpdatedBy) VALUES ('3',0,0,1120331,'N',TO_DATE('2013-02-14 16:47:16','YYYY-MM-DD HH24:MI:SS'),100,'LBR','N','Y','Y','N','Y','N','N','N','N',0,'Tax Assessment','L','LBR_TaxAssessment',TO_DATE('2013-02-14 16:47:16','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/02/2013 16h47min18s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Table_Trl (AD_Language,AD_Table_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Table_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Table t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Table_ID=1120331 AND NOT EXISTS (SELECT * FROM AD_Table_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Table_ID=t.AD_Table_ID)
;

-- 14/02/2013 16h47min19s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Sequence (AD_Client_ID,AD_Org_ID,AD_Sequence_ID,Created,CreatedBy,CurrentNext,CurrentNextSys,Description,IncrementNo,IsActive,IsAudited,IsAutoSequence,IsTableID,Name,StartNewYear,StartNo,Updated,UpdatedBy) VALUES (0,0,1152718,TO_DATE('2013-02-14 16:47:18','YYYY-MM-DD HH24:MI:SS'),100,1000000,50000,'Table LBR_TaxAssessment',1,'Y','N','Y','Y','LBR_TaxAssessment','N',1000000,TO_DATE('2013-02-14 16:47:18','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/02/2013 16h47min54s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,1121271,0,'LBR_TaxAssessment_ID',TO_DATE('2013-02-14 16:47:52','YYYY-MM-DD HH24:MI:SS'),100,'LBR','Y','Tax Assessment','Tax Assessment',TO_DATE('2013-02-14 16:47:52','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/02/2013 16h47min54s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1121271 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 14/02/2013 16h47min55s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1124166,1121271,0,13,1120331,'LBR_TaxAssessment_ID',TO_DATE('2013-02-14 16:47:52','YYYY-MM-DD HH24:MI:SS'),100,'LBR',10,'Y','N','N','N','Y','Y','N','N','N','N','Tax Assessment',TO_DATE('2013-02-14 16:47:52','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 14/02/2013 16h47min55s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1124166 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 14/02/2013 16h47min56s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1124167,102,0,19,1120331,'AD_Client_ID',TO_DATE('2013-02-14 16:47:55','YYYY-MM-DD HH24:MI:SS'),100,'Client/Tenant for this installation.','LBR',10,'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Y','N','N','N','N','Y','N','N','N','N','Client',TO_DATE('2013-02-14 16:47:55','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 14/02/2013 16h47min56s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1124167 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 14/02/2013 16h47min57s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1124168,113,0,19,1120331,'AD_Org_ID',TO_DATE('2013-02-14 16:47:56','YYYY-MM-DD HH24:MI:SS'),100,'Organizational entity within client','LBR',10,'An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Y','N','N','N','N','Y','N','N','N','N','Organization',TO_DATE('2013-02-14 16:47:56','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 14/02/2013 16h47min57s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1124168 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 14/02/2013 16h47min58s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1124169,164,0,12,1120331,'AmtSourceCr',TO_DATE('2013-02-14 16:47:57','YYYY-MM-DD HH24:MI:SS'),100,'Source Credit Amount','LBR',131089,'The Source Credit Amount indicates the credit amount for this line in the source currency.','Y','N','N','N','N','Y','N','N','N','Y','Source Credit',TO_DATE('2013-02-14 16:47:57','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 14/02/2013 16h47min58s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1124169 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 14/02/2013 16h47min59s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1124170,165,0,12,1120331,'AmtSourceDr',TO_DATE('2013-02-14 16:47:58','YYYY-MM-DD HH24:MI:SS'),100,'Source Debit Amount','LBR',131089,'The Source Debit Amount indicates the credit amount for this line in the source currency.','Y','N','N','N','N','Y','N','N','N','Y','Source Debit',TO_DATE('2013-02-14 16:47:58','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 14/02/2013 16h47min59s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1124170 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 14/02/2013 16h47min59s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,1121272,0,'booknumber',TO_DATE('2013-02-14 16:47:59','YYYY-MM-DD HH24:MI:SS'),100,'LBR','Y','booknumber','booknumber',TO_DATE('2013-02-14 16:47:59','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/02/2013 16h47min59s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1121272 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 14/02/2013 16h48min0s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1124171,1121272,0,11,1120331,'booknumber',TO_DATE('2013-02-14 16:47:59','YYYY-MM-DD HH24:MI:SS'),100,'LBR',10,'Y','N','N','N','N','Y','N','N','N','Y','booknumber',TO_DATE('2013-02-14 16:47:59','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 14/02/2013 16h48min0s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1124171 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 14/02/2013 16h48min1s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1124172,206,0,19,1120331,'C_Period_ID',TO_DATE('2013-02-14 16:48:00','YYYY-MM-DD HH24:MI:SS'),100,'Period of the Calendar','LBR',10,'The Period indicates an exclusive range of dates for a calendar.','Y','N','N','N','N','Y','N','N','N','Y','Period',TO_DATE('2013-02-14 16:48:00','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 14/02/2013 16h48min1s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1124172 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 14/02/2013 16h48min1s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1124173,245,0,16,1120331,'Created',TO_DATE('2013-02-14 16:48:01','YYYY-MM-DD HH24:MI:SS'),100,'Date this record was created','LBR',29,'The Created field indicates the date that this record was created.','Y','N','N','N','N','Y','N','N','N','N','Created',TO_DATE('2013-02-14 16:48:01','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 14/02/2013 16h48min1s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1124173 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 14/02/2013 16h48min2s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1124174,246,0,18,110,1120331,'CreatedBy',TO_DATE('2013-02-14 16:48:01','YYYY-MM-DD HH24:MI:SS'),100,'User who created this records','LBR',10,'The Created By field indicates the user who created this record.','Y','N','N','N','N','N','N','N','N','N','Created By',TO_DATE('2013-02-14 16:48:01','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 14/02/2013 16h48min2s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1124174 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 14/02/2013 16h48min3s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1124175,2822,0,12,1120331,'CumulatedAmt',TO_DATE('2013-02-14 16:48:02','YYYY-MM-DD HH24:MI:SS'),100,'Total Amount','LBR',131089,'Sum of all amounts','Y','N','N','N','N','Y','N','N','N','Y','Accumulated Amt',TO_DATE('2013-02-14 16:48:02','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 14/02/2013 16h48min3s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1124175 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 14/02/2013 16h48min3s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1124176,348,0,20,1120331,'IsActive',TO_DATE('2013-02-14 16:48:03','YYYY-MM-DD HH24:MI:SS'),100,'The record is active in the system','LBR',1,'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Y','N','N','N','N','Y','N','N','N','Y','Active',TO_DATE('2013-02-14 16:48:03','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 14/02/2013 16h48min3s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1124176 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 14/02/2013 16h48min4s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,1121273,0,'pagenumber',TO_DATE('2013-02-14 16:48:03','YYYY-MM-DD HH24:MI:SS'),100,'LBR','Y','pagenumber','pagenumber',TO_DATE('2013-02-14 16:48:03','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/02/2013 16h48min4s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1121273 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 14/02/2013 16h48min5s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1124177,1121273,0,11,1120331,'pagenumber',TO_DATE('2013-02-14 16:48:03','YYYY-MM-DD HH24:MI:SS'),100,'LBR',10,'Y','N','N','N','N','Y','N','N','N','Y','pagenumber',TO_DATE('2013-02-14 16:48:03','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 14/02/2013 16h48min5s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1124177 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 14/02/2013 16h48min5s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1124178,1047,0,20,1120331,'Processed',TO_DATE('2013-02-14 16:48:05','YYYY-MM-DD HH24:MI:SS'),100,'The document has been processed','LBR',1,'The Processed checkbox indicates that a document has been processed.','Y','N','N','N','N','Y','N','N','N','Y','Processed',TO_DATE('2013-02-14 16:48:05','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 14/02/2013 16h48min5s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1124178 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 14/02/2013 16h48min6s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1124179,524,0,20,1120331,'Processing',TO_DATE('2013-02-14 16:48:06','YYYY-MM-DD HH24:MI:SS'),100,'LBR',1,'Y','N','N','N','N','N','N','N','N','Y','Process Now',TO_DATE('2013-02-14 16:48:06','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 14/02/2013 16h48min6s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1124179 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 14/02/2013 16h48min7s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1124180,1539,0,12,1120331,'TotalAmt',TO_DATE('2013-02-14 16:48:06','YYYY-MM-DD HH24:MI:SS'),100,'Total Amount','LBR',131089,'The Total Amount indicates the total document amount.','Y','N','N','N','N','Y','N','N','N','Y','Total Amount',TO_DATE('2013-02-14 16:48:06','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 14/02/2013 16h48min7s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1124180 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 14/02/2013 16h48min8s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1124181,596,0,22,1120331,'TotalCr',TO_DATE('2013-02-14 16:48:07','YYYY-MM-DD HH24:MI:SS'),100,'Total Credit in document currency','LBR',131089,'The Total Credit indicates the total credit amount for a journal or journal batch in the source currency','Y','N','N','N','N','Y','N','N','N','Y','Total Credit',TO_DATE('2013-02-14 16:48:07','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 14/02/2013 16h48min8s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1124181 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 14/02/2013 16h48min8s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1124182,597,0,22,1120331,'TotalDr',TO_DATE('2013-02-14 16:48:08','YYYY-MM-DD HH24:MI:SS'),100,'Total debit in document currency','LBR',131089,'The Total Debit indicates the total debit amount for a journal or journal batch in the source currency','Y','N','N','N','N','Y','N','N','N','Y','Total Debit',TO_DATE('2013-02-14 16:48:08','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 14/02/2013 16h48min8s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1124182 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 14/02/2013 16h48min9s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1124183,607,0,16,1120331,'Updated',TO_DATE('2013-02-14 16:48:08','YYYY-MM-DD HH24:MI:SS'),100,'Date this record was updated','LBR',29,'The Updated field indicates the date that this record was updated.','Y','N','N','N','N','Y','N','N','N','N','Updated',TO_DATE('2013-02-14 16:48:08','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 14/02/2013 16h48min9s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1124183 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 14/02/2013 16h48min9s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1124184,608,0,18,110,1120331,'UpdatedBy',TO_DATE('2013-02-14 16:48:09','YYYY-MM-DD HH24:MI:SS'),100,'User who updated this records','LBR',10,'The Updated By field indicates the user who updated this record.','Y','N','N','N','N','Y','N','N','N','N','Updated By',TO_DATE('2013-02-14 16:48:09','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 14/02/2013 16h48min9s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1124184 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 14/02/2013 16h48min10s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1124185,1000169,0,19,1120331,'LBR_TaxName_ID',TO_DATE('2013-02-14 16:48:09','YYYY-MM-DD HH24:MI:SS'),100,'Primary key table LBR_TaxName','LBR',10,'Primary key table LBR_TaxName','Y','N','N','N','N','Y','N','N','N','Y','Tax Name',TO_DATE('2013-02-14 16:48:09','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 14/02/2013 16h48min10s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1124185 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 14/02/2013 16h48min11s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,1121274,0,'lbr_saldocredortrasnportar',TO_DATE('2013-02-14 16:48:10','YYYY-MM-DD HH24:MI:SS'),100,'LBR','Y','lbr_saldocredortrasnportar','lbr_saldocredortrasnportar',TO_DATE('2013-02-14 16:48:10','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/02/2013 16h48min11s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1121274 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 14/02/2013 16h48min12s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1124186,1121274,0,22,1120331,'lbr_saldocredortrasnportar',TO_DATE('2013-02-14 16:48:10','YYYY-MM-DD HH24:MI:SS'),100,'LBR',131089,'Y','N','N','N','N','Y','N','N','N','Y','lbr_saldocredortrasnportar',TO_DATE('2013-02-14 16:48:10','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 14/02/2013 16h48min12s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1124186 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 14/02/2013 16h49min37s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET FieldLength=13,Updated=TO_DATE('2013-02-14 16:49:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1124169
;

-- 14/02/2013 16h49min40s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET FieldLength=13,Updated=TO_DATE('2013-02-14 16:49:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1124170
;

-- 14/02/2013 16h49min57s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Element_Trl SET Name='Número do Livro',PrintName='Número do Livro',Updated=TO_DATE('2013-02-14 16:49:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1121272 AND AD_Language='pt_BR'
;

-- 14/02/2013 16h50min46s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Element_Trl SET Name='Saldo Credor Transportar',PrintName='Saldo Credor Transportar',Updated=TO_DATE('2013-02-14 16:50:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1121274 AND AD_Language='pt_BR'
;

-- 14/02/2013 16h50min53s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET FieldLength=13,Updated=TO_DATE('2013-02-14 16:50:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1124186
;

-- 14/02/2013 16h50min59s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET FieldLength=13,Updated=TO_DATE('2013-02-14 16:50:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1124175
;

-- 14/02/2013 16h51min20s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Element_Trl SET Name='Apuração de Impostos',Updated=TO_DATE('2013-02-14 16:51:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1121271 AND AD_Language='pt_BR'
;

-- 14/02/2013 16h51min36s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Element_Trl SET Name='Número da Página',Updated=TO_DATE('2013-02-14 16:51:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1121273 AND AD_Language='pt_BR'
;

-- 14/02/2013 16h51min46s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET FieldLength=13,Updated=TO_DATE('2013-02-14 16:51:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1124180
;

-- 14/02/2013 16h51min49s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET FieldLength=13,Updated=TO_DATE('2013-02-14 16:51:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1124181
;

-- 14/02/2013 16h51min52s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET FieldLength=13,Updated=TO_DATE('2013-02-14 16:51:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1124182
;

-- 14/02/2013 16h52min7s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Table (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Table_ID,CopyColumnsFromTable,Created,CreatedBy,EntityType,ImportTable,IsActive,IsCentrallyMaintained,IsChangeLog,IsDeleteable,IsHighVolume,IsSecurityEnabled,IsSystemLanguage,IsView,LoadSeq,Name,ReplicationType,TableName,Updated,UpdatedBy) VALUES ('3',0,0,1120332,'N',TO_DATE('2013-02-14 16:52:05','YYYY-MM-DD HH24:MI:SS'),100,'LBR','N','Y','Y','N','Y','N','N','N','N',0,'Tax Assessment Line','L','LBR_TaxAssessmentLine',TO_DATE('2013-02-14 16:52:05','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/02/2013 16h52min7s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Table_Trl (AD_Language,AD_Table_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Table_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Table t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Table_ID=1120332 AND NOT EXISTS (SELECT * FROM AD_Table_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Table_ID=t.AD_Table_ID)
;

-- 14/02/2013 16h52min8s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Sequence (AD_Client_ID,AD_Org_ID,AD_Sequence_ID,Created,CreatedBy,CurrentNext,CurrentNextSys,Description,IncrementNo,IsActive,IsAudited,IsAutoSequence,IsTableID,Name,StartNewYear,StartNo,Updated,UpdatedBy) VALUES (0,0,1152719,TO_DATE('2013-02-14 16:52:07','YYYY-MM-DD HH24:MI:SS'),100,1000000,50000,'Table LBR_TaxAssessmentLine',1,'Y','N','Y','Y','LBR_TaxAssessmentLine','N',1000000,TO_DATE('2013-02-14 16:52:07','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/02/2013 16h52min11s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1124187,1121271,0,19,1120332,'LBR_TaxAssessment_ID',TO_DATE('2013-02-14 16:52:10','YYYY-MM-DD HH24:MI:SS'),100,'LBR',10,'Y','N','N','N','N','Y','N','N','N','Y','Tax Assessment',TO_DATE('2013-02-14 16:52:10','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 14/02/2013 16h52min11s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1124187 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 14/02/2013 16h52min12s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,1121275,0,'LBR_TaxAssessmentLine_ID',TO_DATE('2013-02-14 16:52:11','YYYY-MM-DD HH24:MI:SS'),100,'LBR','Y','Tax Assessment Line','Tax Assessment Line',TO_DATE('2013-02-14 16:52:11','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/02/2013 16h52min12s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1121275 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 14/02/2013 16h52min12s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1124188,1121275,0,13,1120332,'LBR_TaxAssessmentLine_ID',TO_DATE('2013-02-14 16:52:11','YYYY-MM-DD HH24:MI:SS'),100,'LBR',10,'Y','N','N','N','Y','Y','N','N','N','N','Tax Assessment Line',TO_DATE('2013-02-14 16:52:11','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 14/02/2013 16h52min12s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1124188 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 14/02/2013 16h52min13s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1124189,102,0,19,1120332,'AD_Client_ID',TO_DATE('2013-02-14 16:52:13','YYYY-MM-DD HH24:MI:SS'),100,'Client/Tenant for this installation.','LBR',10,'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Y','N','N','N','N','Y','N','N','N','N','Client',TO_DATE('2013-02-14 16:52:13','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 14/02/2013 16h52min13s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1124189 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 14/02/2013 16h52min14s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1124190,113,0,19,1120332,'AD_Org_ID',TO_DATE('2013-02-14 16:52:13','YYYY-MM-DD HH24:MI:SS'),100,'Organizational entity within client','LBR',10,'An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Y','N','N','N','N','Y','N','N','N','N','Organization',TO_DATE('2013-02-14 16:52:13','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 14/02/2013 16h52min14s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1124190 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 14/02/2013 16h52min15s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1124191,245,0,16,1120332,'Created',TO_DATE('2013-02-14 16:52:14','YYYY-MM-DD HH24:MI:SS'),100,'Date this record was created','LBR',29,'The Created field indicates the date that this record was created.','Y','N','N','N','N','Y','N','N','N','N','Created',TO_DATE('2013-02-14 16:52:14','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 14/02/2013 16h52min15s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1124191 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 14/02/2013 16h52min15s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1124192,246,0,18,110,1120332,'CreatedBy',TO_DATE('2013-02-14 16:52:15','YYYY-MM-DD HH24:MI:SS'),100,'User who created this records','LBR',10,'The Created By field indicates the user who created this record.','Y','N','N','N','N','N','N','N','N','N','Created By',TO_DATE('2013-02-14 16:52:15','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 14/02/2013 16h52min15s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1124192 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 14/02/2013 16h52min16s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1124193,160,0,12,1120332,'Amt',TO_DATE('2013-02-14 16:52:15','YYYY-MM-DD HH24:MI:SS'),100,'Amount','LBR',131089,'Amount','Y','N','N','N','N','Y','N','N','N','Y','Amount',TO_DATE('2013-02-14 16:52:15','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 14/02/2013 16h52min16s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1124193 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 14/02/2013 16h52min17s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1124194,348,0,20,1120332,'IsActive',TO_DATE('2013-02-14 16:52:16','YYYY-MM-DD HH24:MI:SS'),100,'The record is active in the system','LBR',1,'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Y','N','N','N','N','Y','N','N','N','Y','Active',TO_DATE('2013-02-14 16:52:16','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 14/02/2013 16h52min17s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1124194 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 14/02/2013 16h52min17s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1124195,600,0,10,1120332,'Type',TO_DATE('2013-02-14 16:52:17','YYYY-MM-DD HH24:MI:SS'),100,'Type of Validation (SQL, Java Script, Java Language)','LBR',3,'The Type indicates the type of validation that will occur.  This can be SQL, Java Script or Java Language.','Y','N','N','N','N','N','N','N','N','Y','Type',TO_DATE('2013-02-14 16:52:17','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 14/02/2013 16h52min17s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1124195 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 14/02/2013 16h52min18s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1124196,275,0,10,1120332,'Description',TO_DATE('2013-02-14 16:52:17','YYYY-MM-DD HH24:MI:SS'),100,'Optional short description of the record','LBR',255,'A description is limited to 255 characters.','Y','N','N','N','N','N','N','N','N','Y','Description',TO_DATE('2013-02-14 16:52:17','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 14/02/2013 16h52min18s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1124196 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 14/02/2013 16h52min19s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1124197,607,0,16,1120332,'Updated',TO_DATE('2013-02-14 16:52:18','YYYY-MM-DD HH24:MI:SS'),100,'Date this record was updated','LBR',29,'The Updated field indicates the date that this record was updated.','Y','N','N','N','N','Y','N','N','N','N','Updated',TO_DATE('2013-02-14 16:52:18','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 14/02/2013 16h52min19s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1124197 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 14/02/2013 16h52min19s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1124198,608,0,18,110,1120332,'UpdatedBy',TO_DATE('2013-02-14 16:52:19','YYYY-MM-DD HH24:MI:SS'),100,'User who updated this records','LBR',10,'The Updated By field indicates the user who updated this record.','Y','N','N','N','N','Y','N','N','N','N','Updated By',TO_DATE('2013-02-14 16:52:19','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 14/02/2013 16h52min19s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1124198 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 14/02/2013 16h52min29s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET FieldLength=13,Updated=TO_DATE('2013-02-14 16:52:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1124193
;

-- 14/02/2013 16h52min53s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Element_Trl SET Name='Outros Lançamentos',Updated=TO_DATE('2013-02-14 16:52:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1121275 AND AD_Language='pt_BR'
;

-- 14/02/2013 16h53min28s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Window (AD_Client_ID,AD_Org_ID,AD_Window_ID,Created,CreatedBy,EntityType,IsActive,IsBetaFunctionality,IsDefault,IsSOTrx,Name,Processing,Updated,UpdatedBy,WindowType,WinHeight,WinWidth) VALUES (0,0,1120078,TO_DATE('2013-02-14 16:53:26','YYYY-MM-DD HH24:MI:SS'),100,'LBR','Y','N','N','Y','Apuração de Impostos','N',TO_DATE('2013-02-14 16:53:26','YYYY-MM-DD HH24:MI:SS'),100,'M',0,0)
;

-- 14/02/2013 16h53min28s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Window_Trl (AD_Language,AD_Window_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Window_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Window t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Window_ID=1120078 AND NOT EXISTS (SELECT * FROM AD_Window_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Window_ID=t.AD_Window_ID)
;

-- 14/02/2013 16h53min54s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Tab (AD_Client_ID,AD_Org_ID,AD_Tab_ID,AD_Table_ID,AD_Window_ID,Created,CreatedBy,EntityType,HasTree,ImportFields,IsActive,IsAdvancedTab,IsInfoTab,IsInsertRecord,IsReadOnly,IsSingleRow,IsSortTab,IsTranslationTab,Name,Processing,SeqNo,TabLevel,Updated,UpdatedBy) VALUES (0,0,1120117,1120331,1120078,TO_DATE('2013-02-14 16:53:52','YYYY-MM-DD HH24:MI:SS'),100,'LBR','N','N','Y','N','N','Y','N','Y','N','N','Apuração de Impostos','N',10,0,TO_DATE('2013-02-14 16:53:52','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/02/2013 16h53min54s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Tab_Trl (AD_Language,AD_Tab_ID, CommitWarning,Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Tab_ID, t.CommitWarning,t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Tab t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Tab_ID=1120117 AND NOT EXISTS (SELECT * FROM AD_Tab_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Tab_ID=t.AD_Tab_ID)
;

-- 14/02/2013 16h54min7s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1124175,1123489,0,1120117,TO_DATE('2013-02-14 16:54:06','YYYY-MM-DD HH24:MI:SS'),100,'Total Amount',13,'LBR','Sum of all amounts','Y','Y','Y','N','N','N','N','N','Accumulated Amt',TO_DATE('2013-02-14 16:54:06','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/02/2013 16h54min7s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1123489 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 14/02/2013 16h54min8s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1124176,1123490,0,1120117,TO_DATE('2013-02-14 16:54:07','YYYY-MM-DD HH24:MI:SS'),100,'The record is active in the system',1,'LBR','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Y','Y','Y','N','N','N','N','N','Active',TO_DATE('2013-02-14 16:54:07','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/02/2013 16h54min8s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1123490 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 14/02/2013 16h54min9s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1124171,1123491,0,1120117,TO_DATE('2013-02-14 16:54:08','YYYY-MM-DD HH24:MI:SS'),100,10,'LBR','Y','Y','Y','N','N','N','N','N','booknumber',TO_DATE('2013-02-14 16:54:08','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/02/2013 16h54min9s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1123491 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 14/02/2013 16h54min9s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1124167,1123492,0,1120117,TO_DATE('2013-02-14 16:54:09','YYYY-MM-DD HH24:MI:SS'),100,'Client/Tenant for this installation.',10,'LBR','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Y','Y','Y','N','N','N','N','N','Client',TO_DATE('2013-02-14 16:54:09','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/02/2013 16h54min9s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1123492 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 14/02/2013 16h54min10s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1124186,1123493,0,1120117,TO_DATE('2013-02-14 16:54:09','YYYY-MM-DD HH24:MI:SS'),100,13,'LBR','Y','Y','Y','N','N','N','N','N','lbr_saldocredortrasnportar',TO_DATE('2013-02-14 16:54:09','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/02/2013 16h54min10s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1123493 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 14/02/2013 16h54min11s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1124168,1123494,0,1120117,TO_DATE('2013-02-14 16:54:10','YYYY-MM-DD HH24:MI:SS'),100,'Organizational entity within client',10,'LBR','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Y','Y','Y','N','N','N','N','N','Organization',TO_DATE('2013-02-14 16:54:10','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/02/2013 16h54min11s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1123494 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 14/02/2013 16h54min11s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1124177,1123495,0,1120117,TO_DATE('2013-02-14 16:54:11','YYYY-MM-DD HH24:MI:SS'),100,10,'LBR','Y','Y','Y','N','N','N','N','N','pagenumber',TO_DATE('2013-02-14 16:54:11','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/02/2013 16h54min11s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1123495 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 14/02/2013 16h54min12s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1124172,1123496,0,1120117,TO_DATE('2013-02-14 16:54:11','YYYY-MM-DD HH24:MI:SS'),100,'Period of the Calendar',10,'LBR','The Period indicates an exclusive range of dates for a calendar.','Y','Y','Y','N','N','N','N','N','Period',TO_DATE('2013-02-14 16:54:11','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/02/2013 16h54min12s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1123496 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 14/02/2013 16h54min13s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1124178,1123497,0,1120117,TO_DATE('2013-02-14 16:54:12','YYYY-MM-DD HH24:MI:SS'),100,'The document has been processed',1,'LBR','The Processed checkbox indicates that a document has been processed.','Y','Y','Y','N','N','N','N','N','Processed',TO_DATE('2013-02-14 16:54:12','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/02/2013 16h54min13s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1123497 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 14/02/2013 16h54min13s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1124179,1123498,0,1120117,TO_DATE('2013-02-14 16:54:13','YYYY-MM-DD HH24:MI:SS'),100,1,'LBR','Y','Y','Y','N','N','N','N','N','Process Now',TO_DATE('2013-02-14 16:54:13','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/02/2013 16h54min13s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1123498 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 14/02/2013 16h54min14s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1124169,1123499,0,1120117,TO_DATE('2013-02-14 16:54:13','YYYY-MM-DD HH24:MI:SS'),100,'Source Credit Amount',13,'LBR','The Source Credit Amount indicates the credit amount for this line in the source currency.','Y','Y','Y','N','N','N','N','N','Source Credit',TO_DATE('2013-02-14 16:54:13','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/02/2013 16h54min14s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1123499 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 14/02/2013 16h54min15s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1124170,1123500,0,1120117,TO_DATE('2013-02-14 16:54:14','YYYY-MM-DD HH24:MI:SS'),100,'Source Debit Amount',13,'LBR','The Source Debit Amount indicates the credit amount for this line in the source currency.','Y','Y','Y','N','N','N','N','N','Source Debit',TO_DATE('2013-02-14 16:54:14','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/02/2013 16h54min15s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1123500 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 14/02/2013 16h54min15s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1124166,1123501,0,1120117,TO_DATE('2013-02-14 16:54:15','YYYY-MM-DD HH24:MI:SS'),100,10,'LBR','Y','Y','N','N','N','N','N','N','Tax Assessment',TO_DATE('2013-02-14 16:54:15','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/02/2013 16h54min15s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1123501 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 14/02/2013 16h54min16s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1124185,1123502,0,1120117,TO_DATE('2013-02-14 16:54:15','YYYY-MM-DD HH24:MI:SS'),100,'Primary key table LBR_TaxName',10,'LBR','Primary key table LBR_TaxName','Y','Y','Y','N','N','N','N','N','Tax Name',TO_DATE('2013-02-14 16:54:15','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/02/2013 16h54min16s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1123502 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 14/02/2013 16h54min16s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1124180,1123503,0,1120117,TO_DATE('2013-02-14 16:54:16','YYYY-MM-DD HH24:MI:SS'),100,'Total Amount',13,'LBR','The Total Amount indicates the total document amount.','Y','Y','Y','N','N','N','N','N','Total Amount',TO_DATE('2013-02-14 16:54:16','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/02/2013 16h54min17s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1123503 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 14/02/2013 16h54min17s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1124181,1123504,0,1120117,TO_DATE('2013-02-14 16:54:17','YYYY-MM-DD HH24:MI:SS'),100,'Total Credit in document currency',13,'LBR','The Total Credit indicates the total credit amount for a journal or journal batch in the source currency','Y','Y','Y','N','N','N','N','N','Total Credit',TO_DATE('2013-02-14 16:54:17','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/02/2013 16h54min17s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1123504 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 14/02/2013 16h54min18s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1124182,1123505,0,1120117,TO_DATE('2013-02-14 16:54:17','YYYY-MM-DD HH24:MI:SS'),100,'Total debit in document currency',13,'LBR','The Total Debit indicates the total debit amount for a journal or journal batch in the source currency','Y','Y','Y','N','N','N','N','N','Total Debit',TO_DATE('2013-02-14 16:54:17','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/02/2013 16h54min18s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1123505 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 14/02/2013 16h55min38s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=10,IsDisplayed='Y' WHERE AD_Field_ID=1123492
;

-- 14/02/2013 16h55min38s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=20,IsDisplayed='Y' WHERE AD_Field_ID=1123494
;

-- 14/02/2013 16h55min38s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=30,IsDisplayed='Y' WHERE AD_Field_ID=1123490
;

-- 14/02/2013 16h55min38s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=40,IsDisplayed='Y' WHERE AD_Field_ID=1123497
;

-- 14/02/2013 16h55min38s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=50,IsDisplayed='Y' WHERE AD_Field_ID=1123496
;

-- 14/02/2013 16h55min38s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=60,IsDisplayed='Y' WHERE AD_Field_ID=1123502
;

-- 14/02/2013 16h55min38s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y' WHERE AD_Field_ID=1123491
;

-- 14/02/2013 16h55min38s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=80,IsDisplayed='Y' WHERE AD_Field_ID=1123495
;

-- 14/02/2013 16h55min38s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=90,IsDisplayed='Y' WHERE AD_Field_ID=1123489
;

-- 14/02/2013 16h55min38s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=100,IsDisplayed='Y' WHERE AD_Field_ID=1123493
;

-- 14/02/2013 16h55min38s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=110,IsDisplayed='Y' WHERE AD_Field_ID=1123498
;

-- 14/02/2013 16h55min38s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=120,IsDisplayed='Y' WHERE AD_Field_ID=1123499
;

-- 14/02/2013 16h55min38s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=130,IsDisplayed='Y' WHERE AD_Field_ID=1123500
;

-- 14/02/2013 16h55min38s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=140,IsDisplayed='Y' WHERE AD_Field_ID=1123503
;

-- 14/02/2013 16h55min38s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=150,IsDisplayed='Y' WHERE AD_Field_ID=1123504
;

-- 14/02/2013 16h55min38s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=160,IsDisplayed='Y' WHERE AD_Field_ID=1123505
;

-- 14/02/2013 17h22min4s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2013-02-14 17:22:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1123494
;

-- 14/02/2013 17h22min8s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2013-02-14 17:22:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1123497
;

-- 14/02/2013 17h22min14s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2013-02-14 17:22:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1123502
;

-- 14/02/2013 17h22min31s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2013-02-14 17:22:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1123495
;

-- 14/02/2013 17h22min36s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2013-02-14 17:22:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1123493
;

-- 14/02/2013 17h22min44s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=110,IsDisplayed='Y' WHERE AD_Field_ID=1123499
;

-- 14/02/2013 17h22min44s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=120,IsDisplayed='Y' WHERE AD_Field_ID=1123500
;

-- 14/02/2013 17h22min45s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=130,IsDisplayed='Y' WHERE AD_Field_ID=1123503
;

-- 14/02/2013 17h22min45s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=140,IsDisplayed='Y' WHERE AD_Field_ID=1123504
;

-- 14/02/2013 17h22min45s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=150,IsDisplayed='Y' WHERE AD_Field_ID=1123505
;

-- 14/02/2013 17h22min45s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=160,IsDisplayed='Y' WHERE AD_Field_ID=1123498
;

-- 14/02/2013 17h22min58s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2013-02-14 17:22:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1123500
;

-- 14/02/2013 17h23min2s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2013-02-14 17:23:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1123504
;

-- 14/02/2013 17h23min47s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Tab (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_Tab_ID,AD_Table_ID,AD_Window_ID,Created,CreatedBy,EntityType,HasTree,ImportFields,IsActive,IsAdvancedTab,IsInfoTab,IsInsertRecord,IsReadOnly,IsSingleRow,IsSortTab,IsTranslationTab,Name,Processing,SeqNo,TabLevel,Updated,UpdatedBy) VALUES (0,1124187,0,1120118,1120332,1120078,TO_DATE('2013-02-14 17:23:45','YYYY-MM-DD HH24:MI:SS'),100,'LBR','N','N','Y','N','N','Y','N','Y','N','N','Outros Lançamentos','N',20,0,TO_DATE('2013-02-14 17:23:45','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/02/2013 17h23min47s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Tab_Trl (AD_Language,AD_Tab_ID, CommitWarning,Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Tab_ID, t.CommitWarning,t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Tab t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Tab_ID=1120118 AND NOT EXISTS (SELECT * FROM AD_Tab_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Tab_ID=t.AD_Tab_ID)
;

-- 14/02/2013 17h23min51s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1124194,1123506,0,1120118,TO_DATE('2013-02-14 17:23:50','YYYY-MM-DD HH24:MI:SS'),100,'The record is active in the system',1,'LBR','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Y','Y','Y','N','N','N','N','N','Active',TO_DATE('2013-02-14 17:23:50','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/02/2013 17h23min51s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1123506 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 14/02/2013 17h23min53s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1124193,1123507,0,1120118,TO_DATE('2013-02-14 17:23:51','YYYY-MM-DD HH24:MI:SS'),100,'Amount',13,'LBR','Amount','Y','Y','Y','N','N','N','N','N','Amount',TO_DATE('2013-02-14 17:23:51','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/02/2013 17h23min53s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1123507 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 14/02/2013 17h23min55s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1124189,1123508,0,1120118,TO_DATE('2013-02-14 17:23:53','YYYY-MM-DD HH24:MI:SS'),100,'Client/Tenant for this installation.',10,'LBR','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Y','Y','Y','N','N','N','N','N','Client',TO_DATE('2013-02-14 17:23:53','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/02/2013 17h23min55s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1123508 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 14/02/2013 17h23min58s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1124196,1123509,0,1120118,TO_DATE('2013-02-14 17:23:55','YYYY-MM-DD HH24:MI:SS'),100,'Optional short description of the record',255,'LBR','A description is limited to 255 characters.','Y','Y','Y','N','N','N','N','N','Description',TO_DATE('2013-02-14 17:23:55','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/02/2013 17h23min58s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1123509 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 14/02/2013 17h24min2s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1124190,1123510,0,1120118,TO_DATE('2013-02-14 17:23:58','YYYY-MM-DD HH24:MI:SS'),100,'Organizational entity within client',10,'LBR','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Y','Y','Y','N','N','N','N','N','Organization',TO_DATE('2013-02-14 17:23:58','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/02/2013 17h24min2s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1123510 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 14/02/2013 17h24min5s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1124187,1123511,0,1120118,TO_DATE('2013-02-14 17:24:02','YYYY-MM-DD HH24:MI:SS'),100,10,'LBR','Y','Y','Y','N','N','N','N','N','Tax Assessment',TO_DATE('2013-02-14 17:24:02','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/02/2013 17h24min5s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1123511 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 14/02/2013 17h24min7s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1124188,1123512,0,1120118,TO_DATE('2013-02-14 17:24:05','YYYY-MM-DD HH24:MI:SS'),100,10,'LBR','Y','Y','N','N','N','N','N','N','Tax Assessment Line',TO_DATE('2013-02-14 17:24:05','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/02/2013 17h24min7s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1123512 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 14/02/2013 17h24min10s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1124195,1123513,0,1120118,TO_DATE('2013-02-14 17:24:07','YYYY-MM-DD HH24:MI:SS'),100,'Type of Validation (SQL, Java Script, Java Language)',3,'LBR','The Type indicates the type of validation that will occur.  This can be SQL, Java Script or Java Language.','Y','Y','Y','N','N','N','N','N','Type',TO_DATE('2013-02-14 17:24:07','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/02/2013 17h24min10s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1123513 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 14/02/2013 17h24min30s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=10,IsDisplayed='Y' WHERE AD_Field_ID=1123508
;

-- 14/02/2013 17h24min30s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=20,IsDisplayed='Y' WHERE AD_Field_ID=1123510
;

-- 14/02/2013 17h24min30s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=30,IsDisplayed='Y' WHERE AD_Field_ID=1123511
;

-- 14/02/2013 17h24min30s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=40,IsDisplayed='Y' WHERE AD_Field_ID=1123506
;

-- 14/02/2013 17h24min30s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=50,IsDisplayed='Y' WHERE AD_Field_ID=1123513
;

-- 14/02/2013 17h24min30s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=60,IsDisplayed='Y' WHERE AD_Field_ID=1123507
;

-- 14/02/2013 17h24min30s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y' WHERE AD_Field_ID=1123509
;

-- 14/02/2013 17h24min36s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2013-02-14 17:24:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1123510
;

-- 14/02/2013 17h24min39s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2013-02-14 17:24:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1123506
;

-- 14/02/2013 17h24min41s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2013-02-14 17:24:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1123507
;

-- 14/02/2013 17h39min32s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Menu (Action,AD_Client_ID,AD_Menu_ID,AD_Org_ID,AD_Window_ID,Created,CreatedBy,EntityType,IsActive,IsCentrallyMaintained,IsReadOnly,IsSOTrx,IsSummary,Name,Updated,UpdatedBy) VALUES ('W',0,1120182,0,1120078,TO_DATE('2013-02-14 17:39:30','YYYY-MM-DD HH24:MI:SS'),100,'LBR','Y','Y','N','N','N','Apuração de Impostos',TO_DATE('2013-02-14 17:39:30','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/02/2013 17h39min32s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Menu_Trl (AD_Language,AD_Menu_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Menu_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Menu t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Menu_ID=1120182 AND NOT EXISTS (SELECT * FROM AD_Menu_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Menu_ID=t.AD_Menu_ID)
;

-- 14/02/2013 17h39min32s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo) SELECT t.AD_Client_ID, 0, 'Y', SysDate, 100, SysDate, 100,t.AD_Tree_ID, 1120182, 0, 999 FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=1120182)
;

-- 14/02/2013 17h40min29s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1120179, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120182
;

-- 14/02/2013 17h40min29s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1120179, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120180
;

-- 14/02/2013 17h40min35s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1120179, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120180
;

-- 14/02/2013 17h40min35s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1120179, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120182
;

-- 14/02/2013 17h40min35s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1120179, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120180
;

--	Atualiza o ultimo script
UPDATE AD_SysConfig SET Value='360-trunk/71-CriarTabelaJanelaGerarSPED.sql' WHERE AD_SysConfig_ID=1100006
;

-- 21/02/2013 18h0min2s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
CREATE TABLE LBR_TaxAssessment (AD_Client_ID NUMERIC(10) NOT NULL, AD_Org_ID NUMERIC(10) NOT NULL, AmtSourceCr NUMERIC NOT NULL, AmtSourceDr NUMERIC NOT NULL, booknumber NUMERIC(10) NOT NULL, C_Period_ID NUMERIC(10) NOT NULL, Created TIMESTAMP NOT NULL, CreatedBy NUMERIC(10) DEFAULT NULL , CumulatedAmt NUMERIC NOT NULL, IsActive CHAR(1) CHECK (IsActive IN ('Y','N')) NOT NULL, lbr_saldocredortrasnportar NUMERIC NOT NULL, LBR_TaxAssessment_ID NUMERIC(10) NOT NULL, LBR_TaxName_ID NUMERIC(10) NOT NULL, pagenumber NUMERIC(10) NOT NULL, Processed CHAR(1) CHECK (Processed IN ('Y','N')) NOT NULL, Processing CHAR(1) DEFAULT NULL CHECK (Processing IN ('Y','N')), TotalAmt NUMERIC NOT NULL, TotalCr NUMERIC NOT NULL, TotalDr NUMERIC NOT NULL, Updated TIMESTAMP NOT NULL, UpdatedBy NUMERIC(10) NOT NULL, CONSTRAINT LBR_TaxAssessment_Key PRIMARY KEY (LBR_TaxAssessment_ID))
;

-- 21/02/2013 15h21min9s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,1121276,0,'LBR_COD_OR',TO_DATE('2013-02-21 15:21:05','YYYY-MM-DD HH24:MI:SS'),100,'U','Y','Código da Obrigação','Código da Obrigação',TO_DATE('2013-02-21 15:21:05','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 21/02/2013 15h21min9s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1121276 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 21/02/2013 15h21min39s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Element SET Help='Código da Obrigação à recolher conforme tabela 5.4',Updated=TO_DATE('2013-02-21 15:21:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1121276
;

-- 21/02/2013 15h21min40s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Element_Trl SET IsTranslated='N' WHERE AD_Element_ID=1121276
;

-- 21/02/2013 15h21min40s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Element_Trl SET Description=NULL,Help='Código da Obrigação à recolher conforme tabela 5.4',Name='Código da Obrigação',PO_Description=NULL,PO_Help=NULL,PO_Name=NULL,PO_PrintName=NULL,PrintName='Código da Obrigação',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Element_ID=1121276
;

-- 21/02/2013 15h21min40s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET ColumnName='LBR_COD_OR', Name='Código da Obrigação', Description=NULL, Help='Código da Obrigação à recolher conforme tabela 5.4' WHERE AD_Element_ID=1121276
;

-- 21/02/2013 15h21min40s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Process_Para SET ColumnName='LBR_COD_OR', Name='Código da Obrigação', Description=NULL, Help='Código da Obrigação à recolher conforme tabela 5.4', AD_Element_ID=1121276 WHERE UPPER(ColumnName)='LBR_COD_OR' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 21/02/2013 15h21min40s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Process_Para SET ColumnName='LBR_COD_OR', Name='Código da Obrigação', Description=NULL, Help='Código da Obrigação à recolher conforme tabela 5.4' WHERE AD_Element_ID=1121276 AND IsCentrallyMaintained='Y'
;

-- 21/02/2013 15h21min40s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET Name='Código da Obrigação', Description=NULL, Help='Código da Obrigação à recolher conforme tabela 5.4' WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=1121276) AND IsCentrallyMaintained='Y'
;

-- 21/02/2013 15h26min17s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1124199,1121276,0,17,1120331,'LBR_COD_OR',TO_DATE('2013-02-21 15:26:15','YYYY-MM-DD HH24:MI:SS'),100,'U',3,'Código da Obrigação à recolher conforme tabela 5.4','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Código da Obrigação',0,TO_DATE('2013-02-21 15:26:15','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 21/02/2013 15h26min17s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1124199 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 21/02/2013 15h26min50s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Reference (AD_Client_ID,AD_Org_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,IsOrderByValue,Name,Updated,UpdatedBy,ValidationType) VALUES (0,0,1120160,TO_DATE('2013-02-21 15:26:45','YYYY-MM-DD HH24:MI:SS'),100,'U','Y','N','LBR_COD_OR',TO_DATE('2013-02-21 15:26:45','YYYY-MM-DD HH24:MI:SS'),100,'L')
;

-- 21/02/2013 15h26min51s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Reference_Trl (AD_Language,AD_Reference_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Reference_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Reference t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Reference_ID=1120160 AND NOT EXISTS (SELECT * FROM AD_Reference_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Reference_ID=t.AD_Reference_ID)
;

-- 21/02/2013 15h27min6s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1120160,1121374,TO_DATE('2013-02-21 15:27:04','YYYY-MM-DD HH24:MI:SS'),100,'U','Y','ICMS a recolher',TO_DATE('2013-02-21 15:27:04','YYYY-MM-DD HH24:MI:SS'),100,'000')
;

-- 21/02/2013 15h27min6s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121374 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 21/02/2013 15h27min20s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1120160,1121375,TO_DATE('2013-02-21 15:27:18','YYYY-MM-DD HH24:MI:SS'),100,'U','Y','ICMS da substituição tributária pelas entradas',TO_DATE('2013-02-21 15:27:18','YYYY-MM-DD HH24:MI:SS'),100,'001')
;

-- 21/02/2013 15h27min20s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121375 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 21/02/2013 15h27min43s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1120160,1121376,TO_DATE('2013-02-21 15:27:36','YYYY-MM-DD HH24:MI:SS'),100,'U','Y','ICMS da substituição tributária pelas saídas para o Estado',TO_DATE('2013-02-21 15:27:36','YYYY-MM-DD HH24:MI:SS'),100,'002')
;

-- 21/02/2013 15h27min43s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121376 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 21/02/2013 15h27min59s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1120160,1121377,TO_DATE('2013-02-21 15:27:57','YYYY-MM-DD HH24:MI:SS'),100,'U','Y','Antecipação do diferencial de alíquotas do ICMS',TO_DATE('2013-02-21 15:27:57','YYYY-MM-DD HH24:MI:SS'),100,'003')
;

-- 21/02/2013 15h27min59s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121377 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 21/02/2013 15h28min10s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1120160,1121378,TO_DATE('2013-02-21 15:28:09','YYYY-MM-DD HH24:MI:SS'),100,'U','Y','Antecipação do ICMS da importação',TO_DATE('2013-02-21 15:28:09','YYYY-MM-DD HH24:MI:SS'),100,'004')
;

-- 21/02/2013 15h28min10s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121378 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 21/02/2013 15h28min24s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1120160,1121379,TO_DATE('2013-02-21 15:28:22','YYYY-MM-DD HH24:MI:SS'),100,'U','Y','Antecipação tributária',TO_DATE('2013-02-21 15:28:22','YYYY-MM-DD HH24:MI:SS'),100,'005')
;

-- 21/02/2013 15h28min24s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121379 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 21/02/2013 15h28min42s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1120160,1121380,TO_DATE('2013-02-21 15:28:40','YYYY-MM-DD HH24:MI:SS'),100,'U','Y','ICMS resultante da alíquota adicional dos itens incluídos no Fundo de Combate à Pobreza',TO_DATE('2013-02-21 15:28:40','YYYY-MM-DD HH24:MI:SS'),100,'006')
;

-- 21/02/2013 15h28min42s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121380 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 21/02/2013 15h29min7s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1120160,1121381,TO_DATE('2013-02-21 15:29:03','YYYY-MM-DD HH24:MI:SS'),100,'U','Y','Outras obrigações do ICMS',TO_DATE('2013-02-21 15:29:03','YYYY-MM-DD HH24:MI:SS'),100,'090')
;

-- 21/02/2013 15h29min7s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121381 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 21/02/2013 15h29min23s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1120160,1121382,TO_DATE('2013-02-21 15:29:12','YYYY-MM-DD HH24:MI:SS'),100,'U','Y','ICMS da substituição tributária pelas saídas para outro Estado',TO_DATE('2013-02-21 15:29:12','YYYY-MM-DD HH24:MI:SS'),100,'999')
;

-- 21/02/2013 15h29min23s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121382 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 21/02/2013 15h29min34s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET AD_Reference_Value_ID=1120160,Updated=TO_DATE('2013-02-21 15:29:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1124199
;

-- 21/02/2013 15h29min40s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
ALTER TABLE LBR_TaxAssessment ADD LBR_COD_OR NVARCHAR2(3) DEFAULT NULL 
;

-- 21/02/2013 15h30min45s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,Help,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,1121277,0,'LBR_VL_OR',TO_DATE('2013-02-21 15:30:42','YYYY-MM-DD HH24:MI:SS'),100,'U','Valor da Obrigação à Recolher','Y','Valor à Recolher','Valor à Recolher',TO_DATE('2013-02-21 15:30:42','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 21/02/2013 15h30min45s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1121277 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 21/02/2013 15h31min3s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1124200,1121277,0,12,1120331,'LBR_VL_OR',TO_DATE('2013-02-21 15:31:01','YYYY-MM-DD HH24:MI:SS'),100,'U',13,'Valor da Obrigação à Recolher','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Valor à Recolher',0,TO_DATE('2013-02-21 15:31:01','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 21/02/2013 15h31min3s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1124200 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 21/02/2013 15h31min6s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
ALTER TABLE LBR_TaxAssessment ADD LBR_VL_OR NUMBER DEFAULT NULL 
;

-- 21/02/2013 15h32min50s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Element SET ColumnName='LBR_Cod_OR',Updated=TO_DATE('2013-02-21 15:32:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1121276
;

-- 21/02/2013 15h32min50s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET ColumnName='LBR_Cod_OR', Name='Código da Obrigação', Description=NULL, Help='Código da Obrigação à recolher conforme tabela 5.4' WHERE AD_Element_ID=1121276
;

-- 21/02/2013 15h32min50s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Process_Para SET ColumnName='LBR_Cod_OR', Name='Código da Obrigação', Description=NULL, Help='Código da Obrigação à recolher conforme tabela 5.4', AD_Element_ID=1121276 WHERE UPPER(ColumnName)='LBR_COD_OR' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 21/02/2013 15h32min50s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Process_Para SET ColumnName='LBR_Cod_OR', Name='Código da Obrigação', Description=NULL, Help='Código da Obrigação à recolher conforme tabela 5.4' WHERE AD_Element_ID=1121276 AND IsCentrallyMaintained='Y'
;

-- 21/02/2013 15h34min12s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,Help,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,1121278,0,'LBR_Dt_Vcto',TO_DATE('2013-02-21 15:33:58','YYYY-MM-DD HH24:MI:SS'),100,'U','Data do Vencimento à Recolher','Y','Data do Vencimento','Data do Vencimento',TO_DATE('2013-02-21 15:33:58','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 21/02/2013 15h34min12s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1121278 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 21/02/2013 15h34min36s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1124201,1121278,0,15,1120331,'LBR_Dt_Vcto',TO_DATE('2013-02-21 15:34:34','YYYY-MM-DD HH24:MI:SS'),100,'U',7,'Data do Vencimento à Recolher','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Data do Vencimento',0,TO_DATE('2013-02-21 15:34:34','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 21/02/2013 15h34min36s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1124201 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 21/02/2013 15h34min39s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
ALTER TABLE LBR_TaxAssessment ADD LBR_Dt_Vcto DATE DEFAULT NULL 
;

-- 21/02/2013 15h37min8s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,Help,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,1121279,0,'LBR_Cod_Rec',TO_DATE('2013-02-21 15:37:03','YYYY-MM-DD HH24:MI:SS'),100,'U','Código da Receita referente a obrigação, próprio da unidade de federação, conforme legislação estadual.','Y','Código da Receita','Código da Receita',TO_DATE('2013-02-21 15:37:03','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 21/02/2013 15h37min8s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1121279 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 21/02/2013 15h37min53s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1124202,1121279,0,10,1120331,'LBR_Cod_Rec',TO_DATE('2013-02-21 15:37:51','YYYY-MM-DD HH24:MI:SS'),100,'U',60,'Código da Receita referente a obrigação, próprio da unidade de federação, conforme legislação estadual.','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Código da Receita',0,TO_DATE('2013-02-21 15:37:51','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 21/02/2013 15h37min53s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1124202 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 21/02/2013 15h37min59s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
ALTER TABLE LBR_TaxAssessment ADD LBR_Cod_Rec NVARCHAR2(60) DEFAULT NULL 
;

-- 21/02/2013 15h41min5s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,Help,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,1121280,0,'LBR_Num_Proc',TO_DATE('2013-02-21 15:41:04','YYYY-MM-DD HH24:MI:SS'),100,'U','Número do Processo ou auto de infração ao qual a obrigação está vinculada, se houver.','Y','Número do Processo','Número do Processo',TO_DATE('2013-02-21 15:41:04','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 21/02/2013 15h41min5s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1121280 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 21/02/2013 15h41min53s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1124203,1121280,0,10,1120331,'LBR_Num_Proc',TO_DATE('2013-02-21 15:41:51','YYYY-MM-DD HH24:MI:SS'),100,'U',15,'Número do Processo ou auto de infração ao qual a obrigação está vinculada, se houver.','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Número do Processo',0,TO_DATE('2013-02-21 15:41:51','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 21/02/2013 15h41min53s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1124203 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 21/02/2013 15h41min57s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
ALTER TABLE LBR_TaxAssessment ADD LBR_Num_Proc NVARCHAR2(15) DEFAULT NULL 
;

-- 21/02/2013 15h42min51s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,Help,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,1121281,0,'LBR_Ind_Proc',TO_DATE('2013-02-21 15:42:50','YYYY-MM-DD HH24:MI:SS'),100,'U','Indicador da origem do Processo','Y','Origem do Processo','Origem do Processo',TO_DATE('2013-02-21 15:42:50','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 21/02/2013 15h42min51s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1121281 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 21/02/2013 15h43min12s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1124204,1121281,0,17,1120331,'LBR_Ind_Proc',TO_DATE('2013-02-21 15:43:06','YYYY-MM-DD HH24:MI:SS'),100,'U',1,'Indicador da origem do Processo','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Origem do Processo',0,TO_DATE('2013-02-21 15:43:06','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 21/02/2013 15h43min12s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1124204 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 21/02/2013 15h43min23s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Reference (AD_Client_ID,AD_Org_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,IsOrderByValue,Name,Updated,UpdatedBy,ValidationType) VALUES (0,0,1120161,TO_DATE('2013-02-21 15:43:21','YYYY-MM-DD HH24:MI:SS'),100,'U','Y','N','LBR_Ind_Proc',TO_DATE('2013-02-21 15:43:21','YYYY-MM-DD HH24:MI:SS'),100,'L')
;

-- 21/02/2013 15h43min23s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Reference_Trl (AD_Language,AD_Reference_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Reference_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Reference t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Reference_ID=1120161 AND NOT EXISTS (SELECT * FROM AD_Reference_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Reference_ID=t.AD_Reference_ID)
;

-- 21/02/2013 15h44min3s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1120161,1121383,TO_DATE('2013-02-21 15:43:41','YYYY-MM-DD HH24:MI:SS'),100,'U','Y','0 - SEFAZ',TO_DATE('2013-02-21 15:43:41','YYYY-MM-DD HH24:MI:SS'),100,'0')
;

-- 21/02/2013 15h44min3s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121383 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 21/02/2013 15h44min9s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Ref_List SET Name='SEFAZ',Updated=TO_DATE('2013-02-21 15:44:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121383
;

-- 21/02/2013 15h44min9s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=1121383
;

-- 21/02/2013 15h44min9s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Ref_List_Trl SET Description=NULL,Name='SEFAZ',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Ref_List_ID=1121383
;

-- 21/02/2013 15h44min20s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1120161,1121384,TO_DATE('2013-02-21 15:44:18','YYYY-MM-DD HH24:MI:SS'),100,'U','Y','Justiça Federal',TO_DATE('2013-02-21 15:44:18','YYYY-MM-DD HH24:MI:SS'),100,'1')
;

-- 21/02/2013 15h44min20s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121384 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 21/02/2013 15h44min31s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1120161,1121385,TO_DATE('2013-02-21 15:44:29','YYYY-MM-DD HH24:MI:SS'),100,'U','Y','Justiça Estadual',TO_DATE('2013-02-21 15:44:29','YYYY-MM-DD HH24:MI:SS'),100,'2')
;

-- 21/02/2013 15h44min31s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121385 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 21/02/2013 15h44min47s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1120161,1121386,TO_DATE('2013-02-21 15:44:38','YYYY-MM-DD HH24:MI:SS'),100,'U','Y','Outros',TO_DATE('2013-02-21 15:44:38','YYYY-MM-DD HH24:MI:SS'),100,'9')
;

-- 21/02/2013 15h44min47s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121386 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 21/02/2013 15h44min55s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET AD_Reference_Value_ID=1120161,Updated=TO_DATE('2013-02-21 15:44:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1124204
;

-- 21/02/2013 15h44min59s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
ALTER TABLE LBR_TaxAssessment ADD LBR_Ind_Proc CHAR(1) DEFAULT NULL 
;

-- 21/02/2013 15h45min55s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,Help,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,1121282,0,'LBR_Proc',TO_DATE('2013-02-21 15:45:54','YYYY-MM-DD HH24:MI:SS'),100,'U','Descrição resumida do processo que embasou o lançamento.','Y','Descrição do Processo','Descrição do Processo',TO_DATE('2013-02-21 15:45:54','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 21/02/2013 15h45min55s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1121282 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 21/02/2013 15h46min38s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1124205,1121282,0,10,1120331,'LBR_Proc',TO_DATE('2013-02-21 15:46:37','YYYY-MM-DD HH24:MI:SS'),100,'U',255,'Descrição resumida do processo que embasou o lançamento.','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Descrição do Processo',0,TO_DATE('2013-02-21 15:46:37','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 21/02/2013 15h46min38s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1124205 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 21/02/2013 15h46min42s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
ALTER TABLE LBR_TaxAssessment ADD LBR_Proc NVARCHAR2(255) DEFAULT NULL 
;

-- 21/02/2013 15h47min40s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,Help,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,1121283,0,'LBR_Txt_Compl',TO_DATE('2013-02-21 15:47:38','YYYY-MM-DD HH24:MI:SS'),100,'U','Descrição Complementar das obrigações a Recolher.','Y','Descrição Complementar','Descrição Complementar',TO_DATE('2013-02-21 15:47:38','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 21/02/2013 15h47min40s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1121283 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 21/02/2013 15h48min0s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1124206,1121283,0,10,1120331,'LBR_Txt_Compl',TO_DATE('2013-02-21 15:47:58','YYYY-MM-DD HH24:MI:SS'),100,'U',255,'Descrição Complementar das obrigações a Recolher.','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Descrição Complementar',0,TO_DATE('2013-02-21 15:47:58','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 21/02/2013 15h48min0s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1124206 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 21/02/2013 15h48min2s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
ALTER TABLE LBR_TaxAssessment ADD LBR_Txt_Compl NVARCHAR2(255) DEFAULT NULL 
;

-- 21/02/2013 15h48min48s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Table SET AD_Window_ID=1120078,Updated=TO_DATE('2013-02-21 15:48:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=1120331
;

-- 21/02/2013 15h49min2s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1124199,1123514,0,1120117,TO_DATE('2013-02-21 15:48:59','YYYY-MM-DD HH24:MI:SS'),100,3,'U','Código da Obrigação à recolher conforme tabela 5.4','Y','Y','Y','N','N','N','N','N','Código da Obrigação',TO_DATE('2013-02-21 15:48:59','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 21/02/2013 15h49min2s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1123514 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 21/02/2013 15h49min6s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1124202,1123515,0,1120117,TO_DATE('2013-02-21 15:49:02','YYYY-MM-DD HH24:MI:SS'),100,60,'U','Código da Receita referente a obrigação, próprio da unidade de federação, conforme legislação estadual.','Y','Y','Y','N','N','N','N','N','Código da Receita',TO_DATE('2013-02-21 15:49:02','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 21/02/2013 15h49min6s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1123515 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 21/02/2013 15h49min8s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1124201,1123516,0,1120117,TO_DATE('2013-02-21 15:49:06','YYYY-MM-DD HH24:MI:SS'),100,7,'U','Data do Vencimento à Recolher','Y','Y','Y','N','N','N','N','N','Data do Vencimento',TO_DATE('2013-02-21 15:49:06','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 21/02/2013 15h49min8s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1123516 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 21/02/2013 15h49min12s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1124206,1123517,0,1120117,TO_DATE('2013-02-21 15:49:08','YYYY-MM-DD HH24:MI:SS'),100,255,'U','Descrição Complementar das obrigações a Recolher.','Y','Y','Y','N','N','N','N','N','Descrição Complementar',TO_DATE('2013-02-21 15:49:08','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 21/02/2013 15h49min12s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1123517 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 21/02/2013 15h49min13s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1124205,1123518,0,1120117,TO_DATE('2013-02-21 15:49:12','YYYY-MM-DD HH24:MI:SS'),100,255,'U','Descrição resumida do processo que embasou o lançamento.','Y','Y','Y','N','N','N','N','N','Descrição do Processo',TO_DATE('2013-02-21 15:49:12','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 21/02/2013 15h49min13s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1123518 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 21/02/2013 15h49min15s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1124203,1123519,0,1120117,TO_DATE('2013-02-21 15:49:13','YYYY-MM-DD HH24:MI:SS'),100,15,'U','Número do Processo ou auto de infração ao qual a obrigação está vinculada, se houver.','Y','Y','Y','N','N','N','N','N','Número do Processo',TO_DATE('2013-02-21 15:49:13','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 21/02/2013 15h49min15s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1123519 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 21/02/2013 15h49min16s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1124204,1123520,0,1120117,TO_DATE('2013-02-21 15:49:15','YYYY-MM-DD HH24:MI:SS'),100,1,'U','Indicador da origem do Processo','Y','Y','Y','N','N','N','N','N','Origem do Processo',TO_DATE('2013-02-21 15:49:15','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 21/02/2013 15h49min16s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1123520 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 21/02/2013 15h49min18s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1124200,1123521,0,1120117,TO_DATE('2013-02-21 15:49:16','YYYY-MM-DD HH24:MI:SS'),100,13,'U','Valor da Obrigação à Recolher','Y','Y','Y','N','N','N','N','N','Valor à Recolher',TO_DATE('2013-02-21 15:49:16','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 21/02/2013 15h49min18s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1123521 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 21/02/2013 15h49min45s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=170,IsDisplayed='Y' WHERE AD_Field_ID=1123514
;

-- 21/02/2013 15h49min45s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=180,IsDisplayed='Y' WHERE AD_Field_ID=1123515
;

-- 21/02/2013 15h49min45s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=190,IsDisplayed='Y' WHERE AD_Field_ID=1123516
;

-- 21/02/2013 15h49min45s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=200,IsDisplayed='Y' WHERE AD_Field_ID=1123521
;

-- 21/02/2013 15h49min45s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=210,IsDisplayed='Y' WHERE AD_Field_ID=1123517
;

-- 21/02/2013 15h49min45s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=220,IsDisplayed='Y' WHERE AD_Field_ID=1123519
;

-- 21/02/2013 15h49min45s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=230,IsDisplayed='Y' WHERE AD_Field_ID=1123520
;

-- 21/02/2013 15h49min45s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=240,IsDisplayed='Y' WHERE AD_Field_ID=1123518
;

-- 21/02/2013 15h50min9s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET AD_FieldGroup_ID=125,Updated=TO_DATE('2013-02-21 15:50:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1123514
;

-- 21/02/2013 15h50min16s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2013-02-21 15:50:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1123515
;

-- 21/02/2013 15h50min18s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2013-02-21 15:50:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1123521
;

-- 21/02/2013 15h50min24s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2013-02-21 15:50:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1123520
;

-- 21/02/2013 15h51min52s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Tab SET TabLevel=1,Updated=TO_DATE('2013-02-21 15:51:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=1120118
;

-- 21/02/2013 15h52min47s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET AD_Reference_ID=28,Updated=TO_DATE('2013-02-21 15:52:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1124179
;

-- 21/02/2013 16h8min7s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Element SET ColumnName='LBR_SaldoCredorTrasnportar', Name='Saldo Credor Trasnportar', PrintName='Saldo Credor Trasnportar',Updated=TO_TIMESTAMP('2013-02-21 16:08:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1121274
;

-- 21/02/2013 16h8min7s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Element_Trl SET IsTranslated='N' WHERE AD_Element_ID=1121274
;

-- 21/02/2013 16h8min7s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Element_Trl SET Description=NULL,Help=NULL,Name='Saldo Credor Trasnportar',PO_Description=NULL,PO_Help=NULL,PO_Name=NULL,PO_PrintName=NULL,PrintName='Saldo Credor Trasnportar',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Element_ID=1121274
;

-- 21/02/2013 16h8min7s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET ColumnName='LBR_SaldoCredorTrasnportar', Name='Saldo Credor Trasnportar', Description=NULL, Help=NULL WHERE AD_Element_ID=1121274
;

-- 21/02/2013 16h8min7s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Process_Para SET ColumnName='LBR_SaldoCredorTrasnportar', Name='Saldo Credor Trasnportar', Description=NULL, Help=NULL, AD_Element_ID=1121274 WHERE UPPER(ColumnName)='LBR_SALDOCREDORTRASNPORTAR' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 21/02/2013 16h8min7s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Process_Para SET ColumnName='LBR_SaldoCredorTrasnportar', Name='Saldo Credor Trasnportar', Description=NULL, Help=NULL WHERE AD_Element_ID=1121274 AND IsCentrallyMaintained='Y'
;

-- 21/02/2013 16h8min7s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET Name='Saldo Credor Trasnportar', Description=NULL, Help=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=1121274) AND IsCentrallyMaintained='Y'
;

-- 21/02/2013 16h8min7s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_PrintFormatItem SET PrintName='Saldo Credor Trasnportar', Name='Saldo Credor Trasnportar' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=AD_PrintFormatItem.AD_Column_ID AND c.AD_Element_ID=1121274)
;

-- 22/02/2013 11h19min52s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,Help,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,1121285,0,'LBR_COD_AJ_APUR',TO_DATE('2013-02-22 11:19:32','YYYY-MM-DD HH24:MI:SS'),100,'U','Código do Ajuste da apuração','Y','Código do Ajuste','Código do Ajuste',TO_DATE('2013-02-22 11:19:32','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 22/02/2013 11h19min52s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1121285 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 22/02/2013 11h20min53s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Element SET Help='Código do ajuste da apuração e dedução, conforme a Tabela indicada no item 5.1.1.',Updated=TO_DATE('2013-02-22 11:20:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1121285
;

-- 22/02/2013 11h20min53s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Element_Trl SET IsTranslated='N' WHERE AD_Element_ID=1121285
;

-- 22/02/2013 11h20min53s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Element_Trl SET Description=NULL,Help='Código do ajuste da apuração e dedução, conforme a Tabela indicada no item 5.1.1.',Name='Código do Ajuste',PO_Description=NULL,PO_Help=NULL,PO_Name=NULL,PO_PrintName=NULL,PrintName='Código do Ajuste',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Element_ID=1121285
;

-- 22/02/2013 11h20min53s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET ColumnName='LBR_COD_AJ_APUR', Name='Código do Ajuste', Description=NULL, Help='Código do ajuste da apuração e dedução, conforme a Tabela indicada no item 5.1.1.' WHERE AD_Element_ID=1121285
;

-- 22/02/2013 11h20min54s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Process_Para SET ColumnName='LBR_COD_AJ_APUR', Name='Código do Ajuste', Description=NULL, Help='Código do ajuste da apuração e dedução, conforme a Tabela indicada no item 5.1.1.', AD_Element_ID=1121285 WHERE UPPER(ColumnName)='LBR_COD_AJ_APUR' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 22/02/2013 11h20min54s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Process_Para SET ColumnName='LBR_COD_AJ_APUR', Name='Código do Ajuste', Description=NULL, Help='Código do ajuste da apuração e dedução, conforme a Tabela indicada no item 5.1.1.' WHERE AD_Element_ID=1121285 AND IsCentrallyMaintained='Y'
;

-- 22/02/2013 11h20min54s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET Name='Código do Ajuste', Description=NULL, Help='Código do ajuste da apuração e dedução, conforme a Tabela indicada no item 5.1.1.' WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=1121285) AND IsCentrallyMaintained='Y'
;

-- 22/02/2013 11h21min8s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1124207,1121285,0,10,1120332,'LBR_COD_AJ_APUR',TO_DATE('2013-02-22 11:21:07','YYYY-MM-DD HH24:MI:SS'),100,'U',10,'Código do ajuste da apuração e dedução, conforme a Tabela indicada no item 5.1.1.','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Código do Ajuste',0,TO_DATE('2013-02-22 11:21:07','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 22/02/2013 11h21min8s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1124207 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 22/02/2013 11h21min16s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET Description='Código do ajuste da apuração e dedução, conforme a Tabela indicada no item 5.1.1.',Updated=TO_DATE('2013-02-22 11:21:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1124207
;

-- 22/02/2013 11h21min16s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET Name='Código do Ajuste', Description='Código do ajuste da apuração e dedução, conforme a Tabela indicada no item 5.1.1.', Help='Código do ajuste da apuração e dedução, conforme a Tabela indicada no item 5.1.1.' WHERE AD_Column_ID=1124207 AND IsCentrallyMaintained='Y'
;

-- 11/03/2015 23h20min38s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
CREATE TABLE LBR_TaxAssessmentLine (AD_Client_ID NUMBER(10) NOT NULL, AD_Org_ID NUMBER(10) NOT NULL, Amt NUMBER NOT NULL, Created DATE NOT NULL, CreatedBy NUMBER(10) DEFAULT NULL , Description NVARCHAR2(255) DEFAULT NULL , IsActive CHAR(1) CHECK (IsActive IN ('Y','N')) NOT NULL, LBR_TaxAssessmentLine_ID NUMBER(10) NOT NULL, LBR_TaxAssessment_ID NUMBER(10) NOT NULL, Type NVARCHAR2(3) DEFAULT NULL , Updated DATE NOT NULL, UpdatedBy NUMBER(10) NOT NULL, CONSTRAINT LBR_TaxAssessmentLine_Key PRIMARY KEY (LBR_TaxAssessmentLine_ID))
;

-- 22/02/2013 11h21min32s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
ALTER TABLE LBR_TaxAssessmentLine ADD LBR_COD_AJ_APUR NVARCHAR2(10) DEFAULT NULL 
;

-- 22/02/2013 11h26min25s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Table SET AD_Window_ID=1120078,Updated=TO_DATE('2013-02-22 11:26:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=1120332
;

-- 22/02/2013 11h26min43s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1124207,1123522,0,1120118,TO_DATE('2013-02-22 11:26:41','YYYY-MM-DD HH24:MI:SS'),100,10,'U','Código do ajuste da apuração e dedução, conforme a Tabela indicada no item 5.1.1.','Y','Y','Y','N','N','N','N','N','Código do Ajuste',TO_DATE('2013-02-22 11:26:41','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 22/02/2013 11h26min43s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1123522 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 22/02/2013 12h52min47s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Reference (AD_Client_ID,AD_Org_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,IsOrderByValue,Name,Updated,UpdatedBy,ValidationType) VALUES (0,0,1120162,TO_DATE('2013-02-22 12:52:40','YYYY-MM-DD HH24:MI:SS'),100,'U','Y','N','LBR_TypeCodAjustes',TO_DATE('2013-02-22 12:52:40','YYYY-MM-DD HH24:MI:SS'),100,'L')
;

-- 22/02/2013 12h52min47s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Reference_Trl (AD_Language,AD_Reference_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Reference_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Reference t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Reference_ID=1120162 AND NOT EXISTS (SELECT * FROM AD_Reference_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Reference_ID=t.AD_Reference_ID)
;

-- 22/02/2013 12h53min57s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1120162,1121387,TO_DATE('2013-02-22 12:53:55','YYYY-MM-DD HH24:MI:SS'),100,'U','Y','Outros Débitos',TO_DATE('2013-02-22 12:53:55','YYYY-MM-DD HH24:MI:SS'),100,'0')
;

-- 22/02/2013 12h53min57s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121387 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 22/02/2013 12h54min25s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1120162,1121388,TO_DATE('2013-02-22 12:54:24','YYYY-MM-DD HH24:MI:SS'),100,'U','Y','Estornos de Créditos',TO_DATE('2013-02-22 12:54:24','YYYY-MM-DD HH24:MI:SS'),100,'1')
;

-- 22/02/2013 12h54min25s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121388 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 22/02/2013 12h54min37s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1120162,1121389,TO_DATE('2013-02-22 12:54:36','YYYY-MM-DD HH24:MI:SS'),100,'U','Y','Outros Créditos',TO_DATE('2013-02-22 12:54:36','YYYY-MM-DD HH24:MI:SS'),100,'2')
;

-- 22/02/2013 12h54min37s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121389 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 22/02/2013 12h54min51s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1120162,1121390,TO_DATE('2013-02-22 12:54:49','YYYY-MM-DD HH24:MI:SS'),100,'U','Y','Estornos de Débitos',TO_DATE('2013-02-22 12:54:49','YYYY-MM-DD HH24:MI:SS'),100,'3')
;

-- 22/02/2013 12h54min51s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121390 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 22/02/2013 12h55min5s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET AD_Reference_ID=17, AD_Reference_Value_ID=1120162,Updated=TO_DATE('2013-02-22 12:55:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1124195
;

-- 22/02/2013 12h57min44s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Table SET EntityType='LBRA',Updated=TO_DATE('2013-02-22 12:57:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=1120332
;

-- 22/02/2013 12h59min37s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET EntityType='LBRA',Updated=TO_DATE('2013-02-22 12:59:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1124207
;

-- 22/02/2013 13h2min8s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Ref_List SET Name='Estorno de Débitos',Updated=TO_DATE('2013-02-22 13:02:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121390
;

-- 22/02/2013 13h2min8s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=1121390
;

-- 22/02/2013 13h2min8s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Ref_List_Trl SET Description=NULL,Name='Estorno de Débitos',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Ref_List_ID=1121390
;

-- 26/02/2013 14h30min57s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Table (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Table_ID,CopyColumnsFromTable,Created,CreatedBy,EntityType,ImportTable,IsActive,IsCentrallyMaintained,IsChangeLog,IsDeleteable,IsHighVolume,IsSecurityEnabled,IsSystemLanguage,IsView,LoadSeq,Name,ReplicationType,TableName,Updated,UpdatedBy) VALUES ('3',0,0,1120333,'N',TO_DATE('2013-02-26 14:30:52','YYYY-MM-DD HH24:MI:SS'),100,'U','N','Y','Y','N','Y','N','N','N','N',0,'Total de Vendas no Cartão','L','LBR_SalesCardTotal',TO_DATE('2013-02-26 14:30:52','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 26/02/2013 14h30min57s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Table_Trl (AD_Language,AD_Table_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Table_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Table t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Table_ID=1120333 AND NOT EXISTS (SELECT * FROM AD_Table_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Table_ID=t.AD_Table_ID)
;

-- 26/02/2013 14h30min59s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Sequence (AD_Client_ID,AD_Org_ID,AD_Sequence_ID,Created,CreatedBy,CurrentNext,CurrentNextSys,Description,IncrementNo,IsActive,IsAudited,IsAutoSequence,IsTableID,Name,StartNewYear,StartNo,Updated,UpdatedBy) VALUES (0,0,1152721,TO_DATE('2013-02-26 14:30:57','YYYY-MM-DD HH24:MI:SS'),100,1000000,50000,'Table LBR_SalesCardTotal',1,'Y','N','Y','Y','LBR_SalesCardTotal','N',1000000,TO_DATE('2013-02-26 14:30:57','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 26/02/2013 14h36min16s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,1121286,0,'LBR_SalesCardTotal_ID',TO_DATE('2013-02-26 14:36:13','YYYY-MM-DD HH24:MI:SS'),100,'U','Y','Total de Vendas no Cartão','Total de Vendas no Cartão',TO_DATE('2013-02-26 14:36:13','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 26/02/2013 14h36min16s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1121286 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 26/02/2013 14h36min18s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1124208,1121286,0,13,1120333,'LBR_SalesCardTotal_ID',TO_DATE('2013-02-26 14:36:13','YYYY-MM-DD HH24:MI:SS'),100,'U',22,'Y','N','N','N','Y','Y','N','N','N','N','N','Total de Vendas no Cartão',0,TO_DATE('2013-02-26 14:36:13','YYYY-MM-DD HH24:MI:SS'),100,1)
;

-- 26/02/2013 14h36min18s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1124208 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 26/02/2013 14h36min19s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1124209,2370,0,19,1120333,'AD_AlertProcessor_ID',TO_DATE('2013-02-26 14:36:18','YYYY-MM-DD HH24:MI:SS'),100,'Alert Processor/Server Parameter','U',22,'Alert Processor/Server Parameter','Y','N','N','N','N','Y','N','N','N','N','Y','Alert Processor',0,TO_DATE('2013-02-26 14:36:18','YYYY-MM-DD HH24:MI:SS'),100,1)
;

-- 26/02/2013 14h36min19s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1124209 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 26/02/2013 14h36min20s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1124210,102,0,19,1120333,'AD_Client_ID',TO_DATE('2013-02-26 14:36:19','YYYY-MM-DD HH24:MI:SS'),100,'@#AD_Client_ID@','Client/Tenant for this installation.','U',22,'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Y','N','N','N','N','Y','N','N','N','N','N','Client',0,TO_DATE('2013-02-26 14:36:19','YYYY-MM-DD HH24:MI:SS'),100,1)
;

-- 26/02/2013 14h36min20s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1124210 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 26/02/2013 14h36min21s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1124211,113,0,19,1120333,104,'AD_Org_ID',TO_DATE('2013-02-26 14:36:20','YYYY-MM-DD HH24:MI:SS'),100,'@#AD_Org_ID@','Organizational entity within client','U',22,'An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Y','N','N','N','N','Y','N','N','N','N','N','Organization',0,TO_DATE('2013-02-26 14:36:20','YYYY-MM-DD HH24:MI:SS'),100,1)
;

-- 26/02/2013 14h36min21s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1124211 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 26/02/2013 14h36min22s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1124212,2090,0,14,1120333,'AlertMessage',TO_DATE('2013-02-26 14:36:21','YYYY-MM-DD HH24:MI:SS'),100,'Message of the Alert','U',2000,'The message of the email sent for the alert','Y','N','N','N','N','Y','N','N','N','N','Y','Alert Message',0,TO_DATE('2013-02-26 14:36:21','YYYY-MM-DD HH24:MI:SS'),100,1)
;

-- 26/02/2013 14h36min22s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1124212 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 26/02/2013 14h36min23s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1124213,2089,0,10,1120333,'AlertSubject',TO_DATE('2013-02-26 14:36:22','YYYY-MM-DD HH24:MI:SS'),100,'Subject of the Alert','U',60,'The subject of the email message sent for the alert','Y','N','N','N','N','Y','N','N','N','N','Y','Alert Subject',0,TO_DATE('2013-02-26 14:36:22','YYYY-MM-DD HH24:MI:SS'),100,1)
;

-- 26/02/2013 14h36min23s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1124213 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 26/02/2013 14h36min23s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1124214,245,0,16,1120333,'Created',TO_DATE('2013-02-26 14:36:23','YYYY-MM-DD HH24:MI:SS'),100,'Date this record was created','U',7,'The Created field indicates the date that this record was created.','Y','N','N','N','N','Y','N','N','N','N','N','Created',0,TO_DATE('2013-02-26 14:36:23','YYYY-MM-DD HH24:MI:SS'),100,1)
;

-- 26/02/2013 14h36min24s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1124214 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 26/02/2013 14h36min25s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1124215,246,0,18,110,1120333,'CreatedBy',TO_DATE('2013-02-26 14:36:24','YYYY-MM-DD HH24:MI:SS'),100,'User who created this records','U',22,'The Created By field indicates the user who created this record.','Y','N','N','N','N','Y','N','N','N','N','N','Created By',0,TO_DATE('2013-02-26 14:36:24','YYYY-MM-DD HH24:MI:SS'),100,1)
;

-- 26/02/2013 14h36min25s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1124215 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 26/02/2013 14h36min25s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1124216,275,0,10,1120333,'Description',TO_DATE('2013-02-26 14:36:25','YYYY-MM-DD HH24:MI:SS'),100,'Optional short description of the record','U',255,'A description is limited to 255 characters.','Y','N','N','N','N','N','N','N','N','N','Y','Description',0,TO_DATE('2013-02-26 14:36:25','YYYY-MM-DD HH24:MI:SS'),100,1)
;

-- 26/02/2013 14h36min25s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1124216 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 26/02/2013 14h36min26s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1124217,2099,0,20,1120333,'EnforceClientSecurity',TO_DATE('2013-02-26 14:36:25','YYYY-MM-DD HH24:MI:SS'),100,'Y','Send alerts to recipient only if the client security rules of the role allows','U',1,'Y','N','N','N','N','Y','N','N','N','N','Y','Enforce Client Security',0,TO_DATE('2013-02-26 14:36:25','YYYY-MM-DD HH24:MI:SS'),100,1)
;

-- 26/02/2013 14h36min26s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1124217 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 26/02/2013 14h36min26s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1124218,2100,0,20,1120333,'EnforceRoleSecurity',TO_DATE('2013-02-26 14:36:26','YYYY-MM-DD HH24:MI:SS'),100,'Y','Send alerts to recipient only if the data security rules of the role allows','U',1,'Y','N','N','N','N','Y','N','N','N','N','Y','Enforce Role Security',0,TO_DATE('2013-02-26 14:36:26','YYYY-MM-DD HH24:MI:SS'),100,1)
;

-- 26/02/2013 14h36min26s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1124218 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 26/02/2013 14h36min27s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1124219,326,0,14,1120333,'Help',TO_DATE('2013-02-26 14:36:26','YYYY-MM-DD HH24:MI:SS'),100,'Comment or Hint','U',2000,'The Help field contains a hint, comment or help about the use of this item.','Y','N','N','N','N','N','N','N','N','N','Y','Comment/Help',0,TO_DATE('2013-02-26 14:36:26','YYYY-MM-DD HH24:MI:SS'),100,1)
;

-- 26/02/2013 14h36min27s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1124219 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 26/02/2013 14h36min28s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1124220,348,0,20,1120333,'IsActive',TO_DATE('2013-02-26 14:36:27','YYYY-MM-DD HH24:MI:SS'),100,'Y','The record is active in the system','U',1,'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Y','N','N','N','N','Y','N','N','N','N','Y','Active',0,TO_DATE('2013-02-26 14:36:27','YYYY-MM-DD HH24:MI:SS'),100,1)
;

-- 26/02/2013 14h36min28s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1124220 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 26/02/2013 14h36min28s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1124221,2002,0,20,1120333,'IsValid',TO_DATE('2013-02-26 14:36:28','YYYY-MM-DD HH24:MI:SS'),100,'Y','Element is valid','U',1,'The element passed the validation check','Y','N','N','N','N','Y','N','N','N','N','Y','Valid',0,TO_DATE('2013-02-26 14:36:28','YYYY-MM-DD HH24:MI:SS'),100,1)
;

-- 26/02/2013 14h36min28s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1124221 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 26/02/2013 14h36min29s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1124222,469,0,10,1120333,'Name',TO_DATE('2013-02-26 14:36:28','YYYY-MM-DD HH24:MI:SS'),100,'Alphanumeric identifier of the entity','U',60,'The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.','Y','N','N','Y','N','Y','N','N','N','N','Y','Name',1,TO_DATE('2013-02-26 14:36:28','YYYY-MM-DD HH24:MI:SS'),100,1)
;

-- 26/02/2013 14h36min29s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1124222 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 26/02/2013 14h36min30s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1124223,607,0,16,1120333,'Updated',TO_DATE('2013-02-26 14:36:29','YYYY-MM-DD HH24:MI:SS'),100,'Date this record was updated','U',7,'The Updated field indicates the date that this record was updated.','Y','N','N','N','N','Y','N','N','N','N','N','Updated',0,TO_DATE('2013-02-26 14:36:29','YYYY-MM-DD HH24:MI:SS'),100,1)
;

-- 26/02/2013 14h36min30s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1124223 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 26/02/2013 14h36min31s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1124224,608,0,18,110,1120333,'UpdatedBy',TO_DATE('2013-02-26 14:36:30','YYYY-MM-DD HH24:MI:SS'),100,'User who updated this records','U',22,'The Updated By field indicates the user who updated this record.','Y','N','N','N','N','Y','N','N','N','N','N','Updated By',0,TO_DATE('2013-02-26 14:36:30','YYYY-MM-DD HH24:MI:SS'),100,1)
;

-- 26/02/2013 14h36min31s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1124224 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 26/02/2013 14h36min46s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
DELETE  FROM  AD_Column_Trl WHERE AD_Column_ID=1124209
;

-- 26/02/2013 14h36min46s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
DELETE FROM AD_Column WHERE AD_Column_ID=1124209
;

-- 26/02/2013 14h36min50s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
DELETE  FROM  AD_Column_Trl WHERE AD_Column_ID=1124212
;

-- 26/02/2013 14h36min50s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
DELETE FROM AD_Column WHERE AD_Column_ID=1124212
;

-- 26/02/2013 14h36min51s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
DELETE  FROM  AD_Column_Trl WHERE AD_Column_ID=1124213
;

-- 26/02/2013 14h36min51s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
DELETE FROM AD_Column WHERE AD_Column_ID=1124213
;

-- 26/02/2013 14h36min59s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
DELETE  FROM  AD_Column_Trl WHERE AD_Column_ID=1124216
;

-- 26/02/2013 14h36min59s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
DELETE FROM AD_Column WHERE AD_Column_ID=1124216
;

-- 26/02/2013 14h37min2s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
DELETE  FROM  AD_Column_Trl WHERE AD_Column_ID=1124217
;

-- 26/02/2013 14h37min2s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
DELETE FROM AD_Column WHERE AD_Column_ID=1124217
;

-- 26/02/2013 14h37min3s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
DELETE  FROM  AD_Column_Trl WHERE AD_Column_ID=1124218
;

-- 26/02/2013 14h37min3s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
DELETE FROM AD_Column WHERE AD_Column_ID=1124218
;

-- 26/02/2013 14h38min29s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
DELETE  FROM  AD_Column_Trl WHERE AD_Column_ID=1124219
;

-- 26/02/2013 14h38min29s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
DELETE FROM AD_Column WHERE AD_Column_ID=1124219
;

-- 26/02/2013 14h38min35s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
DELETE  FROM  AD_Column_Trl WHERE AD_Column_ID=1124221
;

-- 26/02/2013 14h38min35s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
DELETE FROM AD_Column WHERE AD_Column_ID=1124221
;

-- 26/02/2013 14h38min44s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
DELETE  FROM  AD_Column_Trl WHERE AD_Column_ID=1124222
;

-- 26/02/2013 14h38min44s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
DELETE FROM AD_Column WHERE AD_Column_ID=1124222
;

-- 26/02/2013 14h43min13s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1124225,187,0,30,1120333,'C_BPartner_ID',TO_DATE('2013-02-26 14:43:11','YYYY-MM-DD HH24:MI:SS'),100,'Identifies a Business Partner','U',10,'A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson','Y','Y','N','N','N','N','N','Y','N','N','N','N','Y','Business Partner ',0,TO_DATE('2013-02-26 14:43:11','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 26/02/2013 14h43min13s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1124225 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 26/02/2013 14h43min53s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,1121287,0,'LBR_CreditCardAmt',TO_DATE('2013-02-26 14:43:49','YYYY-MM-DD HH24:MI:SS'),100,'U','Y','Credit Card Amount','Credit Card Amount',TO_DATE('2013-02-26 14:43:49','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 26/02/2013 14h43min53s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1121287 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 26/02/2013 14h44min7s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Element_Trl SET Name='Total Cartão de Crédito',PrintName='Total Cartão de Crédito',Updated=TO_DATE('2013-02-26 14:44:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1121287 AND AD_Language='pt_BR'
;

-- 26/02/2013 14h44min34s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,1121288,0,'LBR_DebitCardAmt',TO_DATE('2013-02-26 14:44:31','YYYY-MM-DD HH24:MI:SS'),100,'U','Y','Debit Card Amount','Credit Card Amount',TO_DATE('2013-02-26 14:44:31','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 26/02/2013 14h44min34s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1121288 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 26/02/2013 14h44min47s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Element_Trl SET Name='Total Cartão de Débito',PrintName='Total Cartão de Débito',Updated=TO_DATE('2013-02-26 14:44:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1121288 AND AD_Language='pt_BR'
;

-- 26/02/2013 14h44min55s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Element SET PrintName='Debit Card Amount',Updated=TO_DATE('2013-02-26 14:44:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1121288
;

-- 26/02/2013 14h44min55s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Element_Trl SET IsTranslated='N' WHERE AD_Element_ID=1121288
;

-- 26/02/2013 14h44min55s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Element_Trl SET Description=NULL,Help=NULL,Name='Debit Card Amount',PO_Description=NULL,PO_Help=NULL,PO_Name=NULL,PO_PrintName=NULL,PrintName='Debit Card Amount',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Element_ID=1121288
;

-- 26/02/2013 14h44min55s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_PrintFormatItem pi SET PrintName='Debit Card Amount', Name='Debit Card Amount' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=pi.AD_Column_ID AND c.AD_Element_ID=1121288)
;

-- 26/02/2013 14h45min14s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1124226,1121288,0,12,1120333,'LBR_DebitCardAmt',TO_DATE('2013-02-26 14:45:12','YYYY-MM-DD HH24:MI:SS'),100,'U',13,'Y','Y','N','N','N','N','N','Y','N','N','N','N','Y','Debit Card Amount',0,TO_DATE('2013-02-26 14:45:12','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 26/02/2013 14h45min14s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1124226 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 26/02/2013 14h45min18s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET DefaultValue='0',Updated=TO_DATE('2013-02-26 14:45:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1124226
;

-- 26/02/2013 14h45min28s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1124227,1121287,0,12,1120333,'LBR_CreditCardAmt',TO_DATE('2013-02-26 14:45:26','YYYY-MM-DD HH24:MI:SS'),100,'0','U',13,'Y','Y','N','N','N','N','N','Y','N','N','N','N','Y','Credit Card Amount',0,TO_DATE('2013-02-26 14:45:26','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 26/02/2013 14h45min28s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1124227 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 26/02/2013 14h45min53s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1124228,206,0,19,1120333,'C_Period_ID',TO_DATE('2013-02-26 14:45:52','YYYY-MM-DD HH24:MI:SS'),100,'Period of the Calendar','U',10,'The Period indicates an exclusive range of dates for a calendar.','Y','Y','N','N','N','N','N','Y','N','N','N','N','Y','Period',0,TO_DATE('2013-02-26 14:45:52','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 26/02/2013 14h45min53s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1124228 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 26/02/2013 14h46min3s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET AD_Val_Rule_ID=217,Updated=TO_DATE('2013-02-26 14:46:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1124228
;

-- 26/02/2013 14h46min25s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
CREATE TABLE LBR_SalesCardTotal (AD_Client_ID NUMBER(10) NOT NULL, AD_Org_ID NUMBER(10) NOT NULL, C_BPartner_ID NUMBER(10) NOT NULL, C_Period_ID NUMBER(10) NOT NULL, Created DATE NOT NULL, CreatedBy NUMBER(10) NOT NULL, IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, LBR_CreditCardAmt NUMBER DEFAULT 0 NOT NULL, LBR_DebitCardAmt NUMBER DEFAULT 0 NOT NULL, LBR_SalesCardTotal_ID NUMBER(10) NOT NULL, Updated DATE NOT NULL, UpdatedBy NUMBER(10) NOT NULL, CONSTRAINT LBR_SalesCardTotal_Key PRIMARY KEY (LBR_SalesCardTotal_ID))
;

-- 26/02/2013 14h47min3s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Window (AD_Client_ID,AD_Org_ID,AD_Window_ID,Created,CreatedBy,EntityType,IsActive,IsBetaFunctionality,IsDefault,IsSOTrx,Name,Processing,Updated,UpdatedBy,WindowType,WinHeight,WinWidth) VALUES (0,0,1120079,TO_DATE('2013-02-26 14:47:00','YYYY-MM-DD HH24:MI:SS'),100,'U','Y','N','N','Y','Total de Transações com Cartão','N',TO_DATE('2013-02-26 14:47:00','YYYY-MM-DD HH24:MI:SS'),100,'M',0,0)
;

-- 26/02/2013 14h47min3s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Window_Trl (AD_Language,AD_Window_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Window_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Window t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Window_ID=1120079 AND NOT EXISTS (SELECT * FROM AD_Window_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Window_ID=t.AD_Window_ID)
;

-- 26/02/2013 14h47min50s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Tab (AD_Client_ID,AD_Org_ID,AD_Tab_ID,AD_Table_ID,AD_Window_ID,Created,CreatedBy,EntityType,HasTree,ImportFields,IsActive,IsAdvancedTab,IsInfoTab,IsInsertRecord,IsReadOnly,IsSingleRow,IsSortTab,IsTranslationTab,Name,Processing,SeqNo,TabLevel,Updated,UpdatedBy) VALUES (0,0,1120119,1120333,1120079,TO_DATE('2013-02-26 14:47:46','YYYY-MM-DD HH24:MI:SS'),100,'U','N','N','Y','N','N','Y','N','Y','N','N','Total de Transações com Cartão','N',10,0,TO_DATE('2013-02-26 14:47:46','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 26/02/2013 14h47min50s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Tab_Trl (AD_Language,AD_Tab_ID, CommitWarning,Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Tab_ID, t.CommitWarning,t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Tab t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Tab_ID=1120119 AND NOT EXISTS (SELECT * FROM AD_Tab_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Tab_ID=t.AD_Tab_ID)
;

-- 26/02/2013 14h48min59s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1124220,1123523,0,1120119,TO_DATE('2013-02-26 14:48:57','YYYY-MM-DD HH24:MI:SS'),100,'The record is active in the system',1,'U','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Y','Y','Y','N','N','N','N','N','Active',TO_DATE('2013-02-26 14:48:57','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 26/02/2013 14h48min59s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1123523 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 26/02/2013 14h49min0s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1124225,1123524,0,1120119,TO_DATE('2013-02-26 14:48:59','YYYY-MM-DD HH24:MI:SS'),100,'Identifies a Business Partner',10,'U','A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson','Y','Y','Y','N','N','N','N','N','Business Partner ',TO_DATE('2013-02-26 14:48:59','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 26/02/2013 14h49min0s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1123524 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 26/02/2013 14h49min1s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1124210,1123525,0,1120119,TO_DATE('2013-02-26 14:49:00','YYYY-MM-DD HH24:MI:SS'),100,'Client/Tenant for this installation.',22,'U','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Y','Y','Y','N','N','N','N','N','Client',TO_DATE('2013-02-26 14:49:00','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 26/02/2013 14h49min1s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1123525 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 26/02/2013 14h49min2s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1124227,1123526,0,1120119,TO_DATE('2013-02-26 14:49:01','YYYY-MM-DD HH24:MI:SS'),100,13,'U','Y','Y','Y','N','N','N','N','N','Credit Card Amount',TO_DATE('2013-02-26 14:49:01','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 26/02/2013 14h49min2s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1123526 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 26/02/2013 14h49min3s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1124226,1123527,0,1120119,TO_DATE('2013-02-26 14:49:02','YYYY-MM-DD HH24:MI:SS'),100,13,'U','Y','Y','Y','N','N','N','N','N','Debit Card Amount',TO_DATE('2013-02-26 14:49:02','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 26/02/2013 14h49min3s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1123527 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 26/02/2013 14h49min4s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1124211,1123528,0,1120119,TO_DATE('2013-02-26 14:49:03','YYYY-MM-DD HH24:MI:SS'),100,'Organizational entity within client',22,'U','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Y','Y','Y','N','N','N','N','N','Organization',TO_DATE('2013-02-26 14:49:03','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 26/02/2013 14h49min4s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1123528 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 26/02/2013 14h49min5s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1124228,1123529,0,1120119,TO_DATE('2013-02-26 14:49:04','YYYY-MM-DD HH24:MI:SS'),100,'Period of the Calendar',10,'U','The Period indicates an exclusive range of dates for a calendar.','Y','Y','Y','N','N','N','N','N','Period',TO_DATE('2013-02-26 14:49:04','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 26/02/2013 14h49min5s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1123529 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 26/02/2013 14h49min6s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1124208,1123530,0,1120119,TO_DATE('2013-02-26 14:49:05','YYYY-MM-DD HH24:MI:SS'),100,22,'U','Y','Y','N','N','N','N','N','N','Total de Vendas no Cartão',TO_DATE('2013-02-26 14:49:05','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 26/02/2013 14h49min6s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1123530 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 26/02/2013 14h49min26s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=10,IsDisplayed='Y' WHERE AD_Field_ID=1123525
;

-- 26/02/2013 14h49min26s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=20,IsDisplayed='Y' WHERE AD_Field_ID=1123528
;

-- 26/02/2013 14h49min26s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=30,IsDisplayed='Y' WHERE AD_Field_ID=1123529
;

-- 26/02/2013 14h49min26s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=40,IsDisplayed='Y' WHERE AD_Field_ID=1123523
;

-- 26/02/2013 14h49min26s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=50,IsDisplayed='Y' WHERE AD_Field_ID=1123524
;

-- 26/02/2013 14h49min26s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=60,IsDisplayed='Y' WHERE AD_Field_ID=1123526
;

-- 26/02/2013 14h49min26s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y' WHERE AD_Field_ID=1123527
;

-- 26/02/2013 15h13min31s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2013-02-26 15:13:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1123528
;

-- 26/02/2013 15h13min35s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2013-02-26 15:13:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1123523
;

-- 26/02/2013 15h13min43s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2013-02-26 15:13:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1123527
;

-- 26/02/2013 15h14min2s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Table SET AD_Window_ID=1120079,Updated=TO_DATE('2013-02-26 15:14:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=1120333
;

-- 26/02/2013 15h16min56s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Menu (Action,AD_Client_ID,AD_Menu_ID,AD_Org_ID,AD_Window_ID,Created,CreatedBy,EntityType,IsActive,IsCentrallyMaintained,IsReadOnly,IsSOTrx,IsSummary,Name,Updated,UpdatedBy) VALUES ('W',0,1120183,0,1120079,TO_DATE('2013-02-26 15:16:55','YYYY-MM-DD HH24:MI:SS'),100,'U','Y','Y','N','N','N','Total de Transações com Cartão',TO_DATE('2013-02-26 15:16:55','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 26/02/2013 15h16min56s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Menu_Trl (AD_Language,AD_Menu_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Menu_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Menu t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Menu_ID=1120183 AND NOT EXISTS (SELECT * FROM AD_Menu_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Menu_ID=t.AD_Menu_ID)
;

-- 26/02/2013 15h16min56s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo) SELECT t.AD_Client_ID, 0, 'Y', SysDate, 100, SysDate, 100,t.AD_Tree_ID, 1120183, 0, 999 FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=1120183)
;

-- 26/02/2013 15h17min8s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=2000008, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120183
;

-- 26/02/2013 15h17min8s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=2000008, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120182
;

-- 26/02/2013 15h17min8s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=2000008, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=2000010
;

-- 26/02/2013 15h17min8s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=2000008, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=2000009
;

-- 26/02/2013 15h19min44s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1124230,190,0,19,1120333,'C_Calendar_ID',TO_DATE('2013-02-26 15:19:42','YYYY-MM-DD HH24:MI:SS'),100,'Accounting Calendar Name','U',10,'The Calendar uniquely identifies an accounting calendar.  Multiple calendars can be used.  For example you may need a standard calendar that runs from Jan 1 to Dec 31 and a fiscal calendar that runs from July 1 to June 30.','Y','Y','N','N','N','N','N','Y','N','N','N','N','Y','Calendar',0,TO_DATE('2013-02-26 15:19:42','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 26/02/2013 15h19min44s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1124230 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 26/02/2013 15h19min47s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
ALTER TABLE LBR_SalesCardTotal ADD C_Calendar_ID NUMBER(10) NOT NULL
;

-- 26/02/2013 15h20min0s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1124230,1123531,0,1120119,TO_DATE('2013-02-26 15:19:58','YYYY-MM-DD HH24:MI:SS'),100,'Accounting Calendar Name',10,'U','The Calendar uniquely identifies an accounting calendar.  Multiple calendars can be used.  For example you may need a standard calendar that runs from Jan 1 to Dec 31 and a fiscal calendar that runs from July 1 to June 30.','Y','Y','Y','N','N','N','N','N','Calendar',TO_DATE('2013-02-26 15:19:58','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 26/02/2013 15h20min0s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1123531 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 26/02/2013 15h20min13s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=30,IsDisplayed='Y' WHERE AD_Field_ID=1123524
;

-- 26/02/2013 15h20min13s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=50,IsDisplayed='Y' WHERE AD_Field_ID=1123531
;

-- 26/02/2013 15h20min13s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=60,IsDisplayed='Y' WHERE AD_Field_ID=1123529
;

-- 26/02/2013 15h20min13s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y' WHERE AD_Field_ID=1123526
;

-- 26/02/2013 15h20min13s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=80,IsDisplayed='Y' WHERE AD_Field_ID=1123527
;

-- 26/02/2013 15h20min23s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2013-02-26 15:20:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1123529
;


