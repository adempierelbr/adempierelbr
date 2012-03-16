-- 09/02/2011 10h24min22s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Table (AD_Client_ID,AD_Org_ID,AD_Table_ID,AccessLevel,CopyColumnsFromTable,Created,CreatedBy,EntityType,ImportTable,IsActive,IsCentrallyMaintained,IsChangeLog,IsDeleteable,IsHighVolume,IsPersonalLock,IsSecurityEnabled,IsView,LoadSeq,Name,ReplicationType,TableName,Updated,UpdatedBy) VALUES (0,0,1120009,'3','N',TO_DATE('2011-02-09 10:24:20','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','N','Y','Y','N','Y','N','N','N','N',0,'Fundamentos Legais ICMS','L','LBR_ICMSBasis',TO_DATE('2011-02-09 10:24:20','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 09/02/2011 10h24min22s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Table_Trl (AD_Language,AD_Table_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Table_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Table t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Table_ID=1120009 AND NOT EXISTS (SELECT * FROM AD_Table_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Table_ID=t.AD_Table_ID)
;

-- 09/02/2011 10h24min22s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Sequence (AD_Client_ID,AD_Org_ID,AD_Sequence_ID,Created,CreatedBy,CurrentNext,CurrentNextSys,Description,IncrementNo,IsActive,IsAudited,IsAutoSequence,IsTableID,Name,StartNewYear,StartNo,Updated,UpdatedBy) VALUES (0,0,1120000,TO_DATE('2011-02-09 10:24:22','YYYY-MM-DD HH24:MI:SS'),100,1000000,50000,'Table LBR_ICMSBasis',1,'Y','N','Y','Y','LBR_ICMSBasis','N',1000000,TO_DATE('2011-02-09 10:24:22','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 09/02/2011 10h25min52s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,Description,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,1120013,0,'LBR_ICMSBasis_ID',TO_DATE('2011-02-09 10:25:51','YYYY-MM-DD HH24:MI:SS'),100,'Describe ICMS Basis','LBRA','Y','ICMS Basis','ICMS Basis',TO_DATE('2011-02-09 10:25:51','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 09/02/2011 10h25min52s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1120013 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 09/02/2011 10h26min23s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Element_Trl SET IsTranslated='Y',Name='Fundamento ICMS',PrintName='Fundamento ICMS',Description='Descreve o Fundamento Legal do ICMS',Updated=TO_DATE('2011-02-09 10:26:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1120013 AND AD_Language='pt_BR'
;

-- 09/02/2011 10h28min32s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1120117,1120013,0,13,1120009,'LBR_ICMSBasis_ID',TO_DATE('2011-02-09 10:28:31','YYYY-MM-DD HH24:MI:SS'),100,'Describe ICMS Basis','LBRA',22,'Y','Y','N','N','N','Y','Y','Y','N','N','N','N','N','ICMS Basis',0,TO_DATE('2011-02-09 10:28:31','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 09/02/2011 10h28min32s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1120117 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 09/02/2011 10h28min33s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
CREATE TABLE LBR_ICMSBasis (LBR_ICMSBasis_ID NUMBER(10) NOT NULL, CONSTRAINT LBR_ICMSBasis_Key PRIMARY KEY (LBR_ICMSBasis_ID))
;

-- 09/02/2011 10h29min5s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1120118,102,0,19,1120009,116,'AD_Client_ID',TO_DATE('2011-02-09 10:29:04','YYYY-MM-DD HH24:MI:SS'),100,'Client/Tenant for this installation.','LBRA',22,'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Y','Y','N','N','N','N','N','Y','N','N','N','N','N','Client',0,TO_DATE('2011-02-09 10:29:04','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 09/02/2011 10h29min5s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1120118 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 09/02/2011 10h29min6s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
ALTER TABLE LBR_ICMSBasis ADD AD_Client_ID NUMBER(10) NOT NULL
;

-- 09/02/2011 10h29min17s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET DefaultValue='@#AD_Client_ID@',Updated=TO_DATE('2011-02-09 10:29:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1120118
;

-- 09/02/2011 10h29min43s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1120119,113,0,19,1120009,104,'AD_Org_ID',TO_DATE('2011-02-09 10:29:39','YYYY-MM-DD HH24:MI:SS'),100,'Organizational entity within client','LBRA',22,'An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Y','Y','N','N','N','N','N','Y','N','N','N','N','N','Organization',0,TO_DATE('2011-02-09 10:29:39','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 09/02/2011 10h29min43s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1120119 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 09/02/2011 10h29min45s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
ALTER TABLE LBR_ICMSBasis ADD AD_Org_ID NUMBER(10) NOT NULL
;

-- 09/02/2011 10h29min53s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET DefaultValue='@#AD_Org_ID@',Updated=TO_DATE('2011-02-09 10:29:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1120119
;

-- 09/02/2011 10h30min47s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1120120,348,0,20,1120009,'IsActive',TO_DATE('2011-02-09 10:30:46','YYYY-MM-DD HH24:MI:SS'),100,'Y','The record is active in the system','LBRA',1,'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Y','Y','N','N','N','N','N','Y','N','N','N','N','Y','Active',0,TO_DATE('2011-02-09 10:30:46','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 09/02/2011 10h30min47s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1120120 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 09/02/2011 10h30min48s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
ALTER TABLE LBR_ICMSBasis ADD IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL
;

-- 09/02/2011 10h31min16s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1120121,245,0,18,110,1120009,'Created',TO_DATE('2011-02-09 10:31:15','YYYY-MM-DD HH24:MI:SS'),100,'Date this record was created','LBRA',22,'The Created field indicates the date that this record was created.','Y','Y','N','N','N','N','N','Y','N','N','N','N','N','Created',0,TO_DATE('2011-02-09 10:31:15','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 09/02/2011 10h31min16s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1120121 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 09/02/2011 10h31min17s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
ALTER TABLE LBR_ICMSBasis ADD Created DATE NOT NULL
;

-- 09/02/2011 10h31min52s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET AD_Reference_ID=16, AD_Reference_Value_ID=NULL, FieldLength=7,Updated=TO_DATE('2011-02-09 10:31:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1120121
;


-- 09/02/2011 10h33min31s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1120122,246,0,18,110,1120009,'CreatedBy',TO_DATE('2011-02-09 10:33:30','YYYY-MM-DD HH24:MI:SS'),100,'User who created this records','LBRA',22,'The Created By field indicates the user who created this record.','Y','Y','N','N','N','N','N','Y','N','N','N','N','N','Created By',0,TO_DATE('2011-02-09 10:33:30','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 09/02/2011 10h33min31s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1120122 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 09/02/2011 10h33min32s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
ALTER TABLE LBR_ICMSBasis ADD CreatedBy NUMBER(10) NOT NULL
;

-- 09/02/2011 10h33min53s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1120123,607,0,16,1120009,'Updated',TO_DATE('2011-02-09 10:33:52','YYYY-MM-DD HH24:MI:SS'),100,'Date this record was updated','LBRA',7,'The Updated field indicates the date that this record was updated.','Y','Y','N','N','N','N','N','Y','N','N','N','N','N','Updated',0,TO_DATE('2011-02-09 10:33:52','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 09/02/2011 10h33min53s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1120123 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 09/02/2011 10h33min54s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
ALTER TABLE LBR_ICMSBasis ADD Updated DATE NOT NULL
;

-- 09/02/2011 10h34min24s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1120124,608,0,18,110,1120009,'UpdatedBy',TO_DATE('2011-02-09 10:34:20','YYYY-MM-DD HH24:MI:SS'),100,'User who updated this records','LBRA',22,'The Updated By field indicates the user who updated this record.','Y','Y','N','N','N','N','N','Y','N','N','N','N','N','Updated By',0,TO_DATE('2011-02-09 10:34:20','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 09/02/2011 10h34min24s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1120124 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 09/02/2011 10h34min25s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
ALTER TABLE LBR_ICMSBasis ADD UpdatedBy NUMBER(10) NOT NULL
;

-- 09/02/2011 10h35min29s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1120125,620,0,10,1120009,'Value',TO_DATE('2011-02-09 10:35:29','YYYY-MM-DD HH24:MI:SS'),100,'Search key for the record in the format required - must be unique','LBRA',6,'A search key allows you a fast method of finding a particular record.
If you leave the search key empty, the system automatically creates a numeric number.  The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).','Y','Y','N','N','N','N','N','Y','N','N','N','N','Y','Search Key',0,TO_DATE('2011-02-09 10:35:29','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 09/02/2011 10h35min29s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1120125 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 09/02/2011 10h35min31s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
ALTER TABLE LBR_ICMSBasis ADD Value NVARCHAR2(6) NOT NULL
;

-- 09/02/2011 10h36min38s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1120126,275,0,34,1120009,'Description',TO_DATE('2011-02-09 10:36:37','YYYY-MM-DD HH24:MI:SS'),100,'Optional short description of the record','LBRA',255,'A description is limited to 255 characters.','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Description',0,TO_DATE('2011-02-09 10:36:37','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 09/02/2011 10h36min38s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1120126 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 09/02/2011 10h36min39s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
ALTER TABLE LBR_ICMSBasis ADD Description NVARCHAR2(255) DEFAULT NULL 
;

-- 09/02/2011 10h37min6s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1120127,326,0,34,1120009,'Help',TO_DATE('2011-02-09 10:37:06','YYYY-MM-DD HH24:MI:SS'),100,'Comment or Hint','LBRA',255,'The Help field contains a hint, comment or help about the use of this item.','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Comment/Help',0,TO_DATE('2011-02-09 10:37:06','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 09/02/2011 10h37min6s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1120127 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 09/02/2011 10h37min7s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
ALTER TABLE LBR_ICMSBasis ADD Help NVARCHAR2(255) DEFAULT NULL 
;

-- 09/02/2011 10h39min53s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Reference (AD_Client_ID,AD_Org_ID,AD_Reference_ID,Created,CreatedBy,Description,EntityType,IsActive,IsOrderByValue,Name,Updated,UpdatedBy,ValidationType) VALUES (0,0,1120010,TO_DATE('2011-02-09 10:39:52','YYYY-MM-DD HH24:MI:SS'),100,'ICMS Basis Type','LBRA','Y','N','LBR_ICMSBasis Type',TO_DATE('2011-02-09 10:39:52','YYYY-MM-DD HH24:MI:SS'),100,'L')
;

-- 09/02/2011 10h39min53s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Reference_Trl (AD_Language,AD_Reference_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Reference_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Reference t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Reference_ID=1120010 AND NOT EXISTS (SELECT * FROM AD_Reference_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Reference_ID=t.AD_Reference_ID)
;

-- 09/02/2011 10h40min9s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Reference_Trl SET IsTranslated='Y',Name='Tipo Fundamento ICMS',Description='Tipo Fundamento Legal do ICMS',Updated=TO_DATE('2011-02-09 10:40:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=1120010 AND AD_Language='pt_BR'
;

-- 09/02/2011 10h40min56s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1120054,1120010,TO_DATE('2011-02-09 10:40:55','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Operação Própria',TO_DATE('2011-02-09 10:40:55','YYYY-MM-DD HH24:MI:SS'),100,'P')
;

-- 09/02/2011 10h40min56s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1120054 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 09/02/2011 10h41min3s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Updated=TO_DATE('2011-02-09 10:41:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1120054 AND AD_Language='pt_BR'
;

-- 09/02/2011 10h42min1s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1120055,1120010,TO_DATE('2011-02-09 10:41:56','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Substituição Tributária',TO_DATE('2011-02-09 10:41:56','YYYY-MM-DD HH24:MI:SS'),100,'S')
;

-- 09/02/2011 10h42min1s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1120055 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 09/02/2011 10h42min6s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Updated=TO_DATE('2011-02-09 10:42:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1120055 AND AD_Language='pt_BR'
;

-- 09/02/2011 10h42min47s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1120128,600,0,17,1120010,1120009,'Type',TO_DATE('2011-02-09 10:42:47','YYYY-MM-DD HH24:MI:SS'),100,'P','Type of Validation (SQL, Java Script, Java Language)','LBRA',1,'The Type indicates the type of validation that will occur.  This can be SQL, Java Script or Java Language.','Y','Y','N','N','N','N','N','Y','N','N','N','N','Y','Type',0,TO_DATE('2011-02-09 10:42:47','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 09/02/2011 10h42min47s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1120128 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 09/02/2011 10h42min49s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
ALTER TABLE LBR_ICMSBasis ADD Type CHAR(1) DEFAULT 'P' NOT NULL
;

-- 09/02/2011 10h43min23s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Window (AD_Client_ID,AD_Org_ID,AD_Window_ID,Created,CreatedBy,EntityType,IsActive,IsBetaFunctionality,IsDefault,IsSOTrx,Name,Processing,Updated,UpdatedBy,WinHeight,WinWidth,WindowType) VALUES (0,0,1120005,TO_DATE('2011-02-09 10:43:23','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','N','N','Y','ICMS Basis','N',TO_DATE('2011-02-09 10:43:23','YYYY-MM-DD HH24:MI:SS'),100,0,0,'M')
;

-- 09/02/2011 10h43min23s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Window_Trl (AD_Language,AD_Window_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Window_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Window t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Window_ID=1120005 AND NOT EXISTS (SELECT * FROM AD_Window_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Window_ID=t.AD_Window_ID)
;

-- 09/02/2011 10h43min36s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Window_Trl SET IsTranslated='Y',Name='Fundamento Legal ICMS',Updated=TO_DATE('2011-02-09 10:43:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Window_ID=1120005 AND AD_Language='pt_BR'
;

-- 09/02/2011 10h44min1s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Tab (AD_Client_ID,AD_Org_ID,AD_Tab_ID,AD_Table_ID,AD_Window_ID,Created,CreatedBy,EntityType,HasTree,ImportFields,IsActive,IsAdvancedTab,IsInfoTab,IsInsertRecord,IsReadOnly,IsSingleRow,IsSortTab,IsTranslationTab,Name,Processing,SeqNo,TabLevel,Updated,UpdatedBy) VALUES (0,0,1120007,1120009,1120005,TO_DATE('2011-02-09 10:44:01','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','N','N','Y','N','N','Y','N','N','N','N','ICMS Basis','N',10,0,TO_DATE('2011-02-09 10:44:01','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 09/02/2011 10h44min1s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Tab_Trl (AD_Language,AD_Tab_ID, CommitWarning,Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Tab_ID, t.CommitWarning,t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Tab t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Tab_ID=1120007 AND NOT EXISTS (SELECT * FROM AD_Tab_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Tab_ID=t.AD_Tab_ID)
;

-- 09/02/2011 10h44min11s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Tab_Trl SET IsTranslated='Y',Name='Fundamento Legal ICMS',Updated=TO_DATE('2011-02-09 10:44:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=1120007 AND AD_Language='pt_BR'
;

-- 09/02/2011 10h44min29s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1120120,1120083,0,1120007,TO_DATE('2011-02-09 10:44:26','YYYY-MM-DD HH24:MI:SS'),100,'The record is active in the system',1,'LBRA','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Y','Y','Y','N','N','N','N','N','Active',TO_DATE('2011-02-09 10:44:26','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 09/02/2011 10h44min29s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1120083 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 09/02/2011 10h44min30s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1120118,1120084,0,1120007,TO_DATE('2011-02-09 10:44:29','YYYY-MM-DD HH24:MI:SS'),100,'Client/Tenant for this installation.',22,'LBRA','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Y','Y','Y','N','N','N','N','N','Client',TO_DATE('2011-02-09 10:44:29','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 09/02/2011 10h44min30s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1120084 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 09/02/2011 10h44min31s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1120127,1120085,0,1120007,TO_DATE('2011-02-09 10:44:30','YYYY-MM-DD HH24:MI:SS'),100,'Comment or Hint',255,'LBRA','The Help field contains a hint, comment or help about the use of this item.','Y','Y','Y','N','N','N','N','N','Comment/Help',TO_DATE('2011-02-09 10:44:30','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 09/02/2011 10h44min31s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1120085 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 09/02/2011 10h44min31s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1120126,1120086,0,1120007,TO_DATE('2011-02-09 10:44:31','YYYY-MM-DD HH24:MI:SS'),100,'Optional short description of the record',255,'LBRA','A description is limited to 255 characters.','Y','Y','Y','N','N','N','N','N','Description',TO_DATE('2011-02-09 10:44:31','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 09/02/2011 10h44min31s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1120086 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 09/02/2011 10h44min32s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1120117,1120087,0,1120007,TO_DATE('2011-02-09 10:44:31','YYYY-MM-DD HH24:MI:SS'),100,'Describe ICMS Basis',22,'LBRA','Y','Y','N','N','N','N','N','N','ICMS Basis',TO_DATE('2011-02-09 10:44:31','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 09/02/2011 10h44min32s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1120087 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 09/02/2011 10h44min35s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1120119,1120088,0,1120007,TO_DATE('2011-02-09 10:44:32','YYYY-MM-DD HH24:MI:SS'),100,'Organizational entity within client',22,'LBRA','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Y','Y','Y','N','N','N','N','N','Organization',TO_DATE('2011-02-09 10:44:32','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 09/02/2011 10h44min35s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1120088 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 09/02/2011 10h44min35s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1120125,1120089,0,1120007,TO_DATE('2011-02-09 10:44:35','YYYY-MM-DD HH24:MI:SS'),100,'Search key for the record in the format required - must be unique',6,'LBRA','A search key allows you a fast method of finding a particular record.
If you leave the search key empty, the system automatically creates a numeric number.  The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).','Y','Y','Y','N','N','N','N','N','Search Key',TO_DATE('2011-02-09 10:44:35','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 09/02/2011 10h44min35s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1120089 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 09/02/2011 10h44min39s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1120128,1120090,0,1120007,TO_DATE('2011-02-09 10:44:35','YYYY-MM-DD HH24:MI:SS'),100,'Type of Validation (SQL, Java Script, Java Language)',1,'LBRA','The Type indicates the type of validation that will occur.  This can be SQL, Java Script or Java Language.','Y','Y','Y','N','N','N','N','N','Type',TO_DATE('2011-02-09 10:44:35','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 09/02/2011 10h44min39s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1120090 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 09/02/2011 10h45min47s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=10,IsDisplayed='Y' WHERE AD_Field_ID=1120084
;

-- 09/02/2011 10h45min47s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=20,IsDisplayed='Y' WHERE AD_Field_ID=1120088
;

-- 09/02/2011 10h45min47s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=30,IsDisplayed='Y' WHERE AD_Field_ID=1120089
;

-- 09/02/2011 10h45min47s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=40,IsDisplayed='Y' WHERE AD_Field_ID=1120083
;

-- 09/02/2011 10h45min47s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=50,IsDisplayed='Y' WHERE AD_Field_ID=1120090
;

-- 09/02/2011 10h45min47s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=60,IsDisplayed='Y' WHERE AD_Field_ID=1120086
;

-- 09/02/2011 10h45min47s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y' WHERE AD_Field_ID=1120085
;

-- 09/02/2011 10h46min0s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2011-02-09 10:46:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1120088
;

-- 09/02/2011 10h46min3s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2011-02-09 10:46:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1120083
;

-- 09/02/2011 10h46min36s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET IsCentrallyMaintained='N',Updated=TO_DATE('2011-02-09 10:46:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1120090
;

-- 09/02/2011 10h46min52s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field_Trl SET IsTranslated='Y',Name='Tipo de Operação',Description='Informa o Tipo de Operação',Help=NULL,Updated=TO_DATE('2011-02-09 10:46:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1120090 AND AD_Language='pt_BR'
;

-- 09/02/2011 10h47min24s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Window_Trl SET Description='Fundamentos Legais do ICMS para Livro de Apuração',Updated=TO_DATE('2011-02-09 10:47:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Window_ID=1120005 AND AD_Language='pt_BR'
;

-- 09/02/2011 10h47min40s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Table SET AD_Window_ID=1120005,Updated=TO_DATE('2011-02-09 10:47:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=1120009
;

-- 09/02/2011 10h49min25s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Table (AD_Client_ID,AD_Org_ID,AD_Table_ID,AccessLevel,CopyColumnsFromTable,Created,CreatedBy,EntityType,ImportTable,IsActive,IsCentrallyMaintained,IsChangeLog,IsDeleteable,IsHighVolume,IsPersonalLock,IsSecurityEnabled,IsView,LoadSeq,Name,ReplicationType,TableName,Updated,UpdatedBy) VALUES (0,0,1120010,'3','N',TO_DATE('2011-02-09 10:49:22','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','N','Y','Y','N','Y','N','N','N','N',0,'Apuração do ICMS','L','LBR_ApuracaoICMS',TO_DATE('2011-02-09 10:49:22','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 09/02/2011 10h49min25s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Table_Trl (AD_Language,AD_Table_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Table_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Table t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Table_ID=1120010 AND NOT EXISTS (SELECT * FROM AD_Table_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Table_ID=t.AD_Table_ID)
;

-- 09/02/2011 10h49min29s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Sequence (AD_Client_ID,AD_Org_ID,AD_Sequence_ID,Created,CreatedBy,CurrentNext,CurrentNextSys,Description,IncrementNo,IsActive,IsAudited,IsAutoSequence,IsTableID,Name,StartNewYear,StartNo,Updated,UpdatedBy) VALUES (0,0,1120001,TO_DATE('2011-02-09 10:49:25','YYYY-MM-DD HH24:MI:SS'),100,1000000,50000,'Table LBR_ApuracaoICMS',1,'Y','N','Y','Y','LBR_ApuracaoICMS','N',1000000,TO_DATE('2011-02-09 10:49:25','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 09/02/2011 10h49min58s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,1120014,0,'LBR_ApuracaoICMS_ID',TO_DATE('2011-02-09 10:49:57','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Apuração do ICMS','Apuração do ICMS',TO_DATE('2011-02-09 10:49:57','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 09/02/2011 10h49min58s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1120014 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 09/02/2011 10h50min0s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Element_Trl SET IsTranslated='Y',Updated=TO_DATE('2011-02-09 10:50:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1120014 AND AD_Language='pt_BR'
;

-- 09/02/2011 10h50min18s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1120129,1120014,0,13,1120010,'LBR_ApuracaoICMS_ID',TO_DATE('2011-02-09 10:50:18','YYYY-MM-DD HH24:MI:SS'),100,'LBRA',22,'Y','Y','N','N','N','Y','Y','Y','N','N','N','N','N','Apuração do ICMS',0,TO_DATE('2011-02-09 10:50:18','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 09/02/2011 10h50min18s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1120129 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 09/02/2011 10h50min20s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
CREATE TABLE LBR_ApuracaoICMS (LBR_ApuracaoICMS_ID NUMBER(10) NOT NULL, CONSTRAINT LBR_ApuracaoICMS_Key PRIMARY KEY (LBR_ApuracaoICMS_ID))
;

-- 09/02/2011 10h51min23s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1120130,102,0,19,1120010,116,'AD_Client_ID',TO_DATE('2011-02-09 10:51:20','YYYY-MM-DD HH24:MI:SS'),100,'Client/Tenant for this installation.','LBRA',22,'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Y','Y','N','N','N','N','N','Y','N','N','N','N','N','Client',0,TO_DATE('2011-02-09 10:51:20','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 09/02/2011 10h51min23s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1120130 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 09/02/2011 10h51min24s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
ALTER TABLE LBR_ApuracaoICMS ADD AD_Client_ID NUMBER(10) NOT NULL
;

-- 09/02/2011 10h52min14s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1120131,113,0,19,1120010,104,'AD_Org_ID',TO_DATE('2011-02-09 10:52:08','YYYY-MM-DD HH24:MI:SS'),100,'Organizational entity within client','LBRA',22,'An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Y','Y','N','N','N','N','N','Y','N','N','N','N','N','Organization',0,TO_DATE('2011-02-09 10:52:08','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 09/02/2011 10h52min14s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1120131 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 09/02/2011 10h52min16s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
ALTER TABLE LBR_ApuracaoICMS ADD AD_Org_ID NUMBER(10) NOT NULL
;

-- 09/02/2011 10h52min32s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET DefaultValue='@#AD_Client_ID@',Updated=TO_DATE('2011-02-09 10:52:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1120130
;

-- 09/02/2011 10h52min38s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET DefaultValue='@#AD_Org_ID@',Updated=TO_DATE('2011-02-09 10:52:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1120131
;

-- 09/02/2011 10h55min4s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1120132,348,0,20,1120010,'IsActive',TO_DATE('2011-02-09 10:55:04','YYYY-MM-DD HH24:MI:SS'),100,'Y','The record is active in the system','LBRA',1,'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Y','Y','N','N','N','N','N','Y','N','N','N','N','Y','Active',0,TO_DATE('2011-02-09 10:55:04','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 09/02/2011 10h55min4s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1120132 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 09/02/2011 10h55min6s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
ALTER TABLE LBR_ApuracaoICMS ADD IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL
;

-- 09/02/2011 10h56min2s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1120133,245,0,16,1120010,'Created',TO_DATE('2011-02-09 10:55:59','YYYY-MM-DD HH24:MI:SS'),100,'Date this record was created','LBRA',7,'The Created field indicates the date that this record was created.','Y','Y','N','N','N','N','N','Y','N','N','N','N','N','Created',0,TO_DATE('2011-02-09 10:55:59','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 09/02/2011 10h56min2s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1120133 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 09/02/2011 10h56min4s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
ALTER TABLE LBR_ApuracaoICMS ADD Created DATE NOT NULL
;

-- 09/02/2011 10h56min29s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1120134,246,0,18,110,1120010,'CreatedBy',TO_DATE('2011-02-09 10:56:28','YYYY-MM-DD HH24:MI:SS'),100,'User who created this records','LBRA',22,'The Created By field indicates the user who created this record.','Y','Y','N','N','N','N','N','Y','N','N','N','N','N','Created By',0,TO_DATE('2011-02-09 10:56:28','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 09/02/2011 10h56min29s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1120134 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 09/02/2011 10h56min30s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
ALTER TABLE LBR_ApuracaoICMS ADD CreatedBy NUMBER(10) NOT NULL
;

-- 09/02/2011 10h56min51s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1120135,607,0,16,1120010,'Updated',TO_DATE('2011-02-09 10:56:48','YYYY-MM-DD HH24:MI:SS'),100,'Date this record was updated','LBRA',7,'The Updated field indicates the date that this record was updated.','Y','Y','N','N','N','N','N','Y','N','N','N','N','N','Updated',0,TO_DATE('2011-02-09 10:56:48','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 09/02/2011 10h56min51s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1120135 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 09/02/2011 10h56min52s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
ALTER TABLE LBR_ApuracaoICMS ADD Updated DATE NOT NULL
;

-- 09/02/2011 10h57min16s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1120136,608,0,18,110,1120010,'UpdatedBy',TO_DATE('2011-02-09 10:57:16','YYYY-MM-DD HH24:MI:SS'),100,'User who updated this records','LBRA',22,'The Updated By field indicates the user who updated this record.','Y','Y','N','N','N','N','N','Y','N','N','N','N','N','Updated By',0,TO_DATE('2011-02-09 10:57:16','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 09/02/2011 10h57min16s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1120136 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 09/02/2011 10h57min17s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
ALTER TABLE LBR_ApuracaoICMS ADD UpdatedBy NUMBER(10) NOT NULL
;

-- 09/02/2011 10h58min29s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1120137,206,0,18,275,1120010,'C_Period_ID',TO_DATE('2011-02-09 10:58:28','YYYY-MM-DD HH24:MI:SS'),100,'Period of the Calendar','LBRA',22,'The Period indicates an exclusive range of dates for a calendar.','Y','Y','N','N','N','N','N','Y','N','N','N','N','N','Period',0,TO_DATE('2011-02-09 10:58:28','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 09/02/2011 10h58min29s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1120137 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 09/02/2011 10h58min30s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
ALTER TABLE LBR_ApuracaoICMS ADD C_Period_ID NUMBER(10) NOT NULL
;

-- 09/02/2011 11h0min42s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1120138,596,0,12,1120010,'TotalCr',TO_DATE('2011-02-09 11:00:41','YYYY-MM-DD HH24:MI:SS'),100,'Total Credit in document currency','LBRA',22,'The Total Credit indicates the total credit amount for a journal or journal batch in the source currency','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Total Credit',0,TO_DATE('2011-02-09 11:00:41','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 09/02/2011 11h0min42s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1120138 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 09/02/2011 11h0min43s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
ALTER TABLE LBR_ApuracaoICMS ADD TotalCr NUMBER DEFAULT NULL 
;

-- 09/02/2011 11h1min35s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1120139,597,0,12,1120010,'TotalDr',TO_DATE('2011-02-09 11:01:31','YYYY-MM-DD HH24:MI:SS'),100,'Total debit in document currency','LBRA',22,'The Total Debit indicates the total debit amount for a journal or journal batch in the source currency','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Total Debit',0,TO_DATE('2011-02-09 11:01:31','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 09/02/2011 11h1min35s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1120139 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 09/02/2011 11h1min36s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
ALTER TABLE LBR_ApuracaoICMS ADD TotalDr NUMBER DEFAULT NULL 
;

-- 09/02/2011 11h2min39s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1120140,1539,0,12,1120010,'TotalAmt',TO_DATE('2011-02-09 11:02:29','YYYY-MM-DD HH24:MI:SS'),100,'Total Amount','LBRA',22,'The Total Amount indicates the total document amount.','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Total Amount',0,TO_DATE('2011-02-09 11:02:29','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 09/02/2011 11h2min39s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1120140 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 09/02/2011 11h2min40s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
ALTER TABLE LBR_ApuracaoICMS ADD TotalAmt NUMBER DEFAULT NULL 
;

-- 09/02/2011 11h3min21s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1120141,1047,0,20,1120010,'Processed',TO_DATE('2011-02-09 11:03:20','YYYY-MM-DD HH24:MI:SS'),100,'N','The document has been processed','LBRA',1,'The Processed checkbox indicates that a document has been processed.','Y','Y','N','N','N','N','N','Y','N','N','N','N','Y','Processed',0,TO_DATE('2011-02-09 11:03:20','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 09/02/2011 11h3min21s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1120141 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 09/02/2011 11h3min22s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
ALTER TABLE LBR_ApuracaoICMS ADD Processed CHAR(1) DEFAULT 'N' CHECK (Processed IN ('Y','N')) NOT NULL
;

-- 09/02/2011 11h6min34s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Process (AD_Client_ID,AD_Org_ID,AD_Process_ID,AccessLevel,Classname,CopyFromProcess,Created,CreatedBy,Description,EntityType,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value) VALUES (0,0,1120005,'3','org.adempierelbr.process.ProcApuracaoICMS','N',TO_DATE('2011-02-09 11:06:34','YYYY-MM-DD HH24:MI:SS'),100,'Processo para criar saldos da Apuração do ICMS','LBRA','Y','N','N','N','N','Criar Saldos Apuração ICMS','Y',0,0,TO_DATE('2011-02-09 11:06:34','YYYY-MM-DD HH24:MI:SS'),100,'ProcApuracaoICMS')
;

-- 09/02/2011 11h6min34s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=1120005 AND NOT EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_ID=t.AD_Process_ID)
;

-- 09/02/2011 11h6min38s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Process_Trl SET IsTranslated='Y',Updated=TO_DATE('2011-02-09 11:06:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=1120005 AND AD_Language='pt_BR'
;

-- 09/02/2011 11h7min5s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,ReadOnlyLogic,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1120142,524,0,1120005,28,1120010,'Processing',TO_DATE('2011-02-09 11:07:05','YYYY-MM-DD HH24:MI:SS'),100,'N','LBRA',1,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Process Now','@Processed@=''Y''',0,TO_DATE('2011-02-09 11:07:05','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 09/02/2011 11h7min5s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1120142 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 09/02/2011 11h7min7s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
ALTER TABLE LBR_ApuracaoICMS ADD Processing CHAR(1) DEFAULT 'N'
;

-- 09/02/2011 11h9min56s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Process (AD_Client_ID,AD_Org_ID,AD_Process_ID,AccessLevel,Classname,CopyFromProcess,Created,CreatedBy,EntityType,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,JasperReport,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value) VALUES (0,0,1120006,'3','org.compiere.report.ReportStarter','N',TO_DATE('2011-02-09 11:09:55','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','N','N','N','N','http://ad-srv-prd/webApp/Modelo9.jasper','Modelo 9 - Registro de Apuração do ICMS','Y',0,0,TO_DATE('2011-02-09 11:09:55','YYYY-MM-DD HH24:MI:SS'),100,'ReportModelo9')
;

-- 09/02/2011 11h9min56s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=1120006 AND NOT EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_ID=t.AD_Process_ID)
;

-- 09/02/2011 11h10min13s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1120143,53323,0,1120006,28,1120010,'JasperProcessing',TO_DATE('2011-02-09 11:10:10','YYYY-MM-DD HH24:MI:SS'),100,'N','U',1,'Y','Y','Y','N','N','N','N','N','N','N','N','N','Y','Jasper Process Now',0,TO_DATE('2011-02-09 11:10:10','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 09/02/2011 11h10min13s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1120143 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 09/02/2011 11h10min18s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET EntityType='LBRA',Updated=TO_DATE('2011-02-09 11:10:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1120143
;

-- 09/02/2011 11h10min19s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
ALTER TABLE LBR_ApuracaoICMS ADD JasperProcessing CHAR(1) DEFAULT 'N'
;

-- 09/02/2011 11h12min12s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1120144,165,0,12,1120010,'AmtSourceDr','(SELECT SUM(al.Amt) FROM LBR_ApuracaoICMSLine al WHERE al.LBR_ApuracaoICMS_ID = LBR_ApuracaoICMS.LBR_ApuracaoICMS_ID AND al.Type IN (''002'',''003''))',TO_DATE('2011-02-09 11:12:11','YYYY-MM-DD HH24:MI:SS'),100,'Source Debit Amount','LBRA',22,'The Source Debit Amount indicates the credit amount for this line in the source currency.','Y','Y','N','N','N','N','N','N','N','N','N','N','N','Source Debit',0,TO_DATE('2011-02-09 11:12:11','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 09/02/2011 11h12min12s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1120144 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 09/02/2011 11h13min25s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,ColumnSQL,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1120145,164,0,12,1120010,'AmtSourceCr','(SELECT SUM(al.Amt) FROM LBR_ApuracaoICMSLine al WHERE al.LBR_ApuracaoICMS_ID = LBR_ApuracaoICMS.LBR_ApuracaoICMS_ID AND al.Type IN (''006'',''007''))',TO_DATE('2011-02-09 11:13:21','YYYY-MM-DD HH24:MI:SS'),100,'Source Credit Amount','LBRA',22,'The Source Credit Amount indicates the credit amount for this line in the source currency.','Y','Y','N','N','N','N','N','N','N','N','N','N','N','Source Credit',0,TO_DATE('2011-02-09 11:13:21','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 09/02/2011 11h13min25s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1120145 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 09/02/2011 11h14min19s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1120146,2822,0,12,1120010,'CumulatedAmt',TO_DATE('2011-02-09 11:14:15','YYYY-MM-DD HH24:MI:SS'),100,'Total Amount','LBRA',22,'Sum of all amounts','Y','Y','N','N','N','N','N','N','N','N','N','N','N','Accumulated Amt',0,TO_DATE('2011-02-09 11:14:15','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 09/02/2011 11h14min19s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1120146 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 09/02/2011 11h16min53s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET ColumnSQL='(SELECT TotalAmt FROM LBR_ApuracaoICMS ai WHERE ai.C_Period_ID = (SELECT p1.C_Period_ID FROM C_Period p1 WHERE p1.StartDate = (SELECT TRUNC(p2.StartDate-1,''MM'') FROM C_Period p2 WHERE p2.C_Period_ID = LBR_ApuracaoICMS.C_Period_ID) AND p1.AD_Client_ID = LBR_ApuracaoICMS.AD_Client_ID))',Updated=TO_DATE('2011-02-09 11:16:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1120146
;

-- 09/02/2011 11h17min53s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Window (AD_Client_ID,AD_Org_ID,AD_Window_ID,Created,CreatedBy,Description,EntityType,IsActive,IsBetaFunctionality,IsDefault,IsSOTrx,Name,Processing,Updated,UpdatedBy,WinHeight,WinWidth,WindowType) VALUES (0,0,1120006,TO_DATE('2011-02-09 11:17:52','YYYY-MM-DD HH24:MI:SS'),100,'Registro de Apuração do ICMS','LBRA','Y','N','N','Y','Apuração do ICMS','N',TO_DATE('2011-02-09 11:17:52','YYYY-MM-DD HH24:MI:SS'),100,0,0,'M')
;

-- 09/02/2011 11h17min53s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Window_Trl (AD_Language,AD_Window_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Window_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Window t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Window_ID=1120006 AND NOT EXISTS (SELECT * FROM AD_Window_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Window_ID=t.AD_Window_ID)
;

-- 09/02/2011 11h17min55s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Window_Trl SET IsTranslated='Y',Updated=TO_DATE('2011-02-09 11:17:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Window_ID=1120006 AND AD_Language='pt_BR'
;

-- 09/02/2011 11h18min6s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Table SET AD_Window_ID=1120006,Updated=TO_DATE('2011-02-09 11:18:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=1120010
;

-- 09/02/2011 11h18min58s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Table (AD_Client_ID,AD_Org_ID,AD_Table_ID,AD_Window_ID,AccessLevel,CopyColumnsFromTable,Created,CreatedBy,EntityType,ImportTable,IsActive,IsCentrallyMaintained,IsChangeLog,IsDeleteable,IsHighVolume,IsPersonalLock,IsSecurityEnabled,IsView,LoadSeq,Name,ReplicationType,TableName,Updated,UpdatedBy) VALUES (0,0,1120011,1120006,'3','N',TO_DATE('2011-02-09 11:18:57','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','N','Y','Y','N','Y','N','N','N','N',0,'Linha de Apuração do ICMS','L','LBR_ApuracaoICMSLine',TO_DATE('2011-02-09 11:18:57','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 09/02/2011 11h18min58s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Table_Trl (AD_Language,AD_Table_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Table_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Table t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Table_ID=1120011 AND NOT EXISTS (SELECT * FROM AD_Table_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Table_ID=t.AD_Table_ID)
;

-- 09/02/2011 11h18min59s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Sequence (AD_Client_ID,AD_Org_ID,AD_Sequence_ID,Created,CreatedBy,CurrentNext,CurrentNextSys,Description,IncrementNo,IsActive,IsAudited,IsAutoSequence,IsTableID,Name,StartNewYear,StartNo,Updated,UpdatedBy) VALUES (0,0,1120002,TO_DATE('2011-02-09 11:18:58','YYYY-MM-DD HH24:MI:SS'),100,1000000,50000,'Table LBR_ApuracaoICMSLine',1,'Y','N','Y','Y','LBR_ApuracaoICMSLine','N',1000000,TO_DATE('2011-02-09 11:18:58','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 09/02/2011 11h19min1s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Table_Trl SET IsTranslated='Y',Updated=TO_DATE('2011-02-09 11:19:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=1120011 AND AD_Language='pt_BR'
;

-- 09/02/2011 11h19min32s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,1120015,0,'LBR_ApuracaoICMSLine_ID',TO_DATE('2011-02-09 11:19:28','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Linha de Apuração do ICMS','Linha de Apuração do ICMS',TO_DATE('2011-02-09 11:19:28','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 09/02/2011 11h19min32s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1120015 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 09/02/2011 11h19min34s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Element_Trl SET IsTranslated='Y',Updated=TO_DATE('2011-02-09 11:19:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1120015 AND AD_Language='pt_BR'
;

-- 09/02/2011 11h19min52s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1120147,1120015,0,13,1120011,'LBR_ApuracaoICMSLine_ID',TO_DATE('2011-02-09 11:19:51','YYYY-MM-DD HH24:MI:SS'),100,'LBRA',22,'Y','Y','N','N','N','Y','Y','Y','N','N','N','N','N','Linha de Apuração do ICMS',0,TO_DATE('2011-02-09 11:19:51','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 09/02/2011 11h19min52s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1120147 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 09/02/2011 11h19min53s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
CREATE TABLE LBR_ApuracaoICMSLine (LBR_ApuracaoICMSLine_ID NUMBER(10) NOT NULL, CONSTRAINT LBR_ApuracaoICMSLine_Key PRIMARY KEY (LBR_ApuracaoICMSLine_ID))
;

-- 09/02/2011 11h35min35s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1120148,102,0,19,1120011,116,'AD_Client_ID',TO_DATE('2011-02-09 11:35:28','YYYY-MM-DD HH24:MI:SS'),100,'Client/Tenant for this installation.','LBRA',22,'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Y','Y','N','N','N','N','N','Y','N','N','N','N','N','Client',0,TO_DATE('2011-02-09 11:35:28','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 09/02/2011 11h35min35s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1120148 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 09/02/2011 11h35min36s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
ALTER TABLE LBR_ApuracaoICMSLine ADD AD_Client_ID NUMBER(10) NOT NULL
;

-- 09/02/2011 11h35min48s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET DefaultValue='@#AD_Client_ID@',Updated=TO_DATE('2011-02-09 11:35:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1120148
;

-- 09/02/2011 11h36min11s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1120149,113,0,19,1120011,104,'AD_Org_ID',TO_DATE('2011-02-09 11:36:10','YYYY-MM-DD HH24:MI:SS'),100,'Organizational entity within client','LBRA',22,'An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Y','Y','N','N','N','N','N','Y','N','N','N','N','N','Organization',0,TO_DATE('2011-02-09 11:36:10','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 09/02/2011 11h36min11s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1120149 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 09/02/2011 11h36min12s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
ALTER TABLE LBR_ApuracaoICMSLine ADD AD_Org_ID NUMBER(10) NOT NULL
;

-- 09/02/2011 11h36min20s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET DefaultValue='@#AD_Org_ID@',Updated=TO_DATE('2011-02-09 11:36:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1120149
;

-- 09/02/2011 11h36min58s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1120150,348,0,20,1120011,'IsActive',TO_DATE('2011-02-09 11:36:48','YYYY-MM-DD HH24:MI:SS'),100,'Y','The record is active in the system','LBRA',1,'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Y','Y','N','N','N','N','N','Y','N','N','N','N','Y','Active',0,TO_DATE('2011-02-09 11:36:48','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 09/02/2011 11h36min58s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1120150 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 09/02/2011 11h36min59s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
ALTER TABLE LBR_ApuracaoICMSLine ADD IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL
;

-- 09/02/2011 11h39min41s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1120151,245,0,16,1120011,'Created',TO_DATE('2011-02-09 11:39:22','YYYY-MM-DD HH24:MI:SS'),100,'Date this record was created','LBRA',7,'The Created field indicates the date that this record was created.','Y','Y','N','N','N','N','N','Y','N','N','N','N','N','Created',0,TO_DATE('2011-02-09 11:39:22','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 09/02/2011 11h39min41s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1120151 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 09/02/2011 11h39min42s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
ALTER TABLE LBR_ApuracaoICMSLine ADD Created DATE NOT NULL
;

-- 09/02/2011 11h40min7s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1120152,246,0,18,110,1120011,'CreatedBy',TO_DATE('2011-02-09 11:40:06','YYYY-MM-DD HH24:MI:SS'),100,'User who created this records','LBRA',22,'The Created By field indicates the user who created this record.','Y','Y','N','N','N','N','N','Y','N','N','N','N','N','Created By',0,TO_DATE('2011-02-09 11:40:06','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 09/02/2011 11h40min7s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1120152 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 09/02/2011 11h40min8s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
ALTER TABLE LBR_ApuracaoICMSLine ADD CreatedBy NUMBER(10) NOT NULL
;

-- 09/02/2011 11h40min34s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1120153,607,0,16,1120011,'Updated',TO_DATE('2011-02-09 11:40:31','YYYY-MM-DD HH24:MI:SS'),100,'Date this record was updated','LBRA',7,'The Updated field indicates the date that this record was updated.','Y','Y','N','N','N','N','N','Y','N','N','N','N','N','Updated',0,TO_DATE('2011-02-09 11:40:31','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 09/02/2011 11h40min34s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1120153 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 09/02/2011 11h40min35s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
ALTER TABLE LBR_ApuracaoICMSLine ADD Updated DATE NOT NULL
;

-- 09/02/2011 11h41min19s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1120154,608,0,18,110,1120011,'UpdatedBy',TO_DATE('2011-02-09 11:41:03','YYYY-MM-DD HH24:MI:SS'),100,'User who updated this records','LBRA',22,'The Updated By field indicates the user who updated this record.','Y','Y','N','N','N','N','N','Y','N','N','N','N','N','Updated By',0,TO_DATE('2011-02-09 11:41:03','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 09/02/2011 11h41min19s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1120154 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 09/02/2011 11h41min32s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
ALTER TABLE LBR_ApuracaoICMSLine ADD UpdatedBy NUMBER(10) NOT NULL
;

-- 09/02/2011 11h42min18s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1120155,1120014,0,19,1120011,'LBR_ApuracaoICMS_ID',TO_DATE('2011-02-09 11:42:09','YYYY-MM-DD HH24:MI:SS'),100,'LBRA',22,'Y','Y','N','N','N','N','N','Y','Y','N','N','N','N','Apuração do ICMS',0,TO_DATE('2011-02-09 11:42:09','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 09/02/2011 11h42min18s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1120155 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 09/02/2011 11h42min20s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
ALTER TABLE LBR_ApuracaoICMSLine ADD LBR_ApuracaoICMS_ID NUMBER(10) NOT NULL
;

-- 09/02/2011 11h44min4s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Reference (AD_Client_ID,AD_Org_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,IsOrderByValue,Name,Updated,UpdatedBy,ValidationType) VALUES (0,0,1120011,TO_DATE('2011-02-09 11:44:01','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','N','LBR_ICMSBasis',TO_DATE('2011-02-09 11:44:01','YYYY-MM-DD HH24:MI:SS'),100,'T')
;

-- 09/02/2011 11h44min4s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Reference_Trl (AD_Language,AD_Reference_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Reference_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Reference t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Reference_ID=1120011 AND NOT EXISTS (SELECT * FROM AD_Reference_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Reference_ID=t.AD_Reference_ID)
;

-- 09/02/2011 11h44min12s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Reference_Trl SET IsTranslated='Y',Name='Fundamentos Legais ICMS',Updated=TO_DATE('2011-02-09 11:44:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=1120011 AND AD_Language='pt_BR'
;

-- 09/02/2011 11h44min58s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Ref_Table (AD_Client_ID,AD_Display,AD_Key,AD_Org_ID,AD_Reference_ID,AD_Table_ID,Created,CreatedBy,EntityType,IsActive,IsValueDisplayed,OrderByClause,Updated,UpdatedBy) VALUES (0,1120125,1120117,0,1120011,1120009,TO_DATE('2011-02-09 11:44:58','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','N','LBR_ICMSBasis.Value',TO_DATE('2011-02-09 11:44:58','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 09/02/2011 11h45min23s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1120156,1120013,0,30,1120011,1120011,'LBR_ICMSBasis_ID',TO_DATE('2011-02-09 11:45:20','YYYY-MM-DD HH24:MI:SS'),100,'Describe ICMS Basis','LBRA',22,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','ICMS Basis',0,TO_DATE('2011-02-09 11:45:20','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 09/02/2011 11h45min23s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1120156 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 09/02/2011 11h45min25s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
ALTER TABLE LBR_ApuracaoICMSLine ADD LBR_ICMSBasis_ID NUMBER(10) DEFAULT NULL 
;

-- 09/02/2011 11h47min24s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Reference (AD_Client_ID,AD_Org_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,IsOrderByValue,Name,Updated,UpdatedBy,ValidationType) VALUES (0,0,1120012,TO_DATE('2011-02-09 11:47:05','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','N','Tipo de Apuração',TO_DATE('2011-02-09 11:47:05','YYYY-MM-DD HH24:MI:SS'),100,'L')
;

-- 09/02/2011 11h47min24s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Reference_Trl (AD_Language,AD_Reference_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Reference_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Reference t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Reference_ID=1120012 AND NOT EXISTS (SELECT * FROM AD_Reference_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Reference_ID=t.AD_Reference_ID)
;

-- 09/02/2011 11h47min31s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Reference_Trl SET IsTranslated='Y',Updated=TO_DATE('2011-02-09 11:47:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=1120012 AND AD_Language='pt_BR'
;

-- 09/02/2011 11h47min43s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1120056,1120012,TO_DATE('2011-02-09 11:47:39','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Outros Débitos',TO_DATE('2011-02-09 11:47:39','YYYY-MM-DD HH24:MI:SS'),100,'002')
;

-- 09/02/2011 11h47min43s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1120056 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 09/02/2011 11h47min59s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1120057,1120012,TO_DATE('2011-02-09 11:47:55','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Estornos de Créditos',TO_DATE('2011-02-09 11:47:55','YYYY-MM-DD HH24:MI:SS'),100,'003')
;

-- 09/02/2011 11h47min59s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1120057 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 09/02/2011 11h48min30s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1120058,1120012,TO_DATE('2011-02-09 11:48:08','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Outros Créditos',TO_DATE('2011-02-09 11:48:08','YYYY-MM-DD HH24:MI:SS'),100,'006')
;

-- 09/02/2011 11h48min30s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1120058 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 09/02/2011 11h49min2s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1120059,1120012,TO_DATE('2011-02-09 11:48:59','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Estorno de Débitos',TO_DATE('2011-02-09 11:48:59','YYYY-MM-DD HH24:MI:SS'),100,'007')
;

-- 09/02/2011 11h49min2s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1120059 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 09/02/2011 11h50min4s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Updated=TO_DATE('2011-02-09 11:50:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1120058 AND AD_Language='pt_BR'
;

-- 09/02/2011 11h50min9s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Updated=TO_DATE('2011-02-09 11:50:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1120059 AND AD_Language='pt_BR'
;

-- 09/02/2011 11h50min13s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Updated=TO_DATE('2011-02-09 11:50:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1120057 AND AD_Language='pt_BR'
;

-- 09/02/2011 11h50min17s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Updated=TO_DATE('2011-02-09 11:50:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1120056 AND AD_Language='pt_BR'
;

-- 09/02/2011 11h50min48s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1120157,600,0,17,1120012,1120011,'Type',TO_DATE('2011-02-09 11:50:38','YYYY-MM-DD HH24:MI:SS'),100,'Type of Validation (SQL, Java Script, Java Language)','LBRA',2,'The Type indicates the type of validation that will occur.  This can be SQL, Java Script or Java Language.','Y','Y','N','N','N','N','N','Y','N','N','N','N','Y','Type',0,TO_DATE('2011-02-09 11:50:38','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 09/02/2011 11h50min48s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1120157 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 09/02/2011 11h50min49s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
ALTER TABLE LBR_ApuracaoICMSLine ADD Type NVARCHAR2(2) NOT NULL
;

-- 09/02/2011 11h52min2s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1120158,275,0,34,1120011,'Description',TO_DATE('2011-02-09 11:52:02','YYYY-MM-DD HH24:MI:SS'),100,'Optional short description of the record','LBRA',255,'A description is limited to 255 characters.','Y','Y','N','N','N','N','N','Y','N','N','N','N','Y','Description',0,TO_DATE('2011-02-09 11:52:02','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 09/02/2011 11h52min2s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1120158 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 09/02/2011 11h52min3s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
ALTER TABLE LBR_ApuracaoICMSLine ADD Description NVARCHAR2(255) NOT NULL
;

-- 09/02/2011 11h55min8s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET Callout='org.adempierelbr.callout.CalloutTaxConfiguration.fundamentosICMS', IsMandatory='Y',Updated=TO_DATE('2011-02-09 11:55:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1120156
;

-- 09/02/2011 11h55min39s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1120159,160,0,12,1120011,'Amt',TO_DATE('2011-02-09 11:55:38','YYYY-MM-DD HH24:MI:SS'),100,'Amount','LBRA',22,'Amount','Y','Y','N','N','N','N','N','Y','N','N','N','N','Y','Amount',0,TO_DATE('2011-02-09 11:55:38','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 09/02/2011 11h55min39s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1120159 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 09/02/2011 11h55min40s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
ALTER TABLE LBR_ApuracaoICMSLine ADD Amt NUMBER NOT NULL
;

-- 09/02/2011 11h57min19s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Tab (AD_Client_ID,AD_Org_ID,AD_Tab_ID,AD_Table_ID,AD_Window_ID,Created,CreatedBy,EntityType,HasTree,ImportFields,IsActive,IsAdvancedTab,IsInfoTab,IsInsertRecord,IsReadOnly,IsSingleRow,IsSortTab,IsTranslationTab,Name,Processing,SeqNo,TabLevel,Updated,UpdatedBy) VALUES (0,0,1120008,1120010,1120006,TO_DATE('2011-02-09 11:57:15','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','N','N','Y','N','N','Y','N','N','N','N','Header','N',10,0,TO_DATE('2011-02-09 11:57:15','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 09/02/2011 11h57min19s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Tab_Trl (AD_Language,AD_Tab_ID, CommitWarning,Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Tab_ID, t.CommitWarning,t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Tab t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Tab_ID=1120008 AND NOT EXISTS (SELECT * FROM AD_Tab_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Tab_ID=t.AD_Tab_ID)
;

-- 09/02/2011 11h57min27s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Tab_Trl SET IsTranslated='Y',Name='Cabeçalho',Updated=TO_DATE('2011-02-09 11:57:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=1120008 AND AD_Language='pt_BR'
;

-- 09/02/2011 11h57min33s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1120146,1120091,0,1120008,TO_DATE('2011-02-09 11:57:33','YYYY-MM-DD HH24:MI:SS'),100,'Total Amount',22,'LBRA','Sum of all amounts','Y','Y','Y','N','N','N','N','N','Accumulated Amt',TO_DATE('2011-02-09 11:57:33','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 09/02/2011 11h57min33s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1120091 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 09/02/2011 11h57min34s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1120132,1120092,0,1120008,TO_DATE('2011-02-09 11:57:34','YYYY-MM-DD HH24:MI:SS'),100,'The record is active in the system',1,'LBRA','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Y','Y','Y','N','N','N','N','N','Active',TO_DATE('2011-02-09 11:57:34','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 09/02/2011 11h57min34s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1120092 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 09/02/2011 11h57min36s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1120129,1120093,0,1120008,TO_DATE('2011-02-09 11:57:34','YYYY-MM-DD HH24:MI:SS'),100,22,'LBRA','Y','Y','N','N','N','N','N','N','Apuração do ICMS',TO_DATE('2011-02-09 11:57:34','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 09/02/2011 11h57min36s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1120093 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 09/02/2011 11h57min43s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1120130,1120094,0,1120008,TO_DATE('2011-02-09 11:57:36','YYYY-MM-DD HH24:MI:SS'),100,'Client/Tenant for this installation.',22,'LBRA','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Y','Y','Y','N','N','N','N','N','Client',TO_DATE('2011-02-09 11:57:36','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 09/02/2011 11h57min43s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1120094 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 09/02/2011 11h58min26s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1120137,1120095,0,1120008,TO_DATE('2011-02-09 11:58:25','YYYY-MM-DD HH24:MI:SS'),100,'Period of the Calendar',22,'LBRA','The Period indicates an exclusive range of dates for a calendar.','Y','Y','Y','N','N','N','N','N','Period',TO_DATE('2011-02-09 11:58:25','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 09/02/2011 11h58min26s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1120095 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 09/02/2011 11h58min30s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1120142,1120096,0,1120008,TO_DATE('2011-02-09 11:58:26','YYYY-MM-DD HH24:MI:SS'),100,1,'LBRA','Y','Y','Y','N','N','N','N','N','Process Now',TO_DATE('2011-02-09 11:58:26','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 09/02/2011 11h58min30s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1120096 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 09/02/2011 11h58min40s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1120141,1120097,0,1120008,TO_DATE('2011-02-09 11:58:30','YYYY-MM-DD HH24:MI:SS'),100,'The document has been processed',1,'LBRA','The Processed checkbox indicates that a document has been processed.','Y','Y','Y','N','N','N','N','N','Processed',TO_DATE('2011-02-09 11:58:30','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 09/02/2011 11h58min40s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1120097 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 09/02/2011 11h58min44s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1120145,1120098,0,1120008,TO_DATE('2011-02-09 11:58:40','YYYY-MM-DD HH24:MI:SS'),100,'Source Credit Amount',22,'LBRA','The Source Credit Amount indicates the credit amount for this line in the source currency.','Y','Y','Y','N','N','N','N','N','Source Credit',TO_DATE('2011-02-09 11:58:40','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 09/02/2011 11h58min44s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1120098 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 09/02/2011 11h58min47s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1120144,1120099,0,1120008,TO_DATE('2011-02-09 11:58:44','YYYY-MM-DD HH24:MI:SS'),100,'Source Debit Amount',22,'LBRA','The Source Debit Amount indicates the credit amount for this line in the source currency.','Y','Y','Y','N','N','N','N','N','Source Debit',TO_DATE('2011-02-09 11:58:44','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 09/02/2011 11h58min47s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1120099 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 09/02/2011 11h58min48s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1120140,1120100,0,1120008,TO_DATE('2011-02-09 11:58:47','YYYY-MM-DD HH24:MI:SS'),100,'Total Amount',22,'LBRA','The Total Amount indicates the total document amount.','Y','Y','Y','N','N','N','N','N','Total Amount',TO_DATE('2011-02-09 11:58:47','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 09/02/2011 11h58min48s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1120100 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 09/02/2011 11h58min58s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1120138,1120101,0,1120008,TO_DATE('2011-02-09 11:58:48','YYYY-MM-DD HH24:MI:SS'),100,'Total Credit in document currency',22,'LBRA','The Total Credit indicates the total credit amount for a journal or journal batch in the source currency','Y','Y','Y','N','N','N','N','N','Total Credit',TO_DATE('2011-02-09 11:58:48','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 09/02/2011 11h58min58s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1120101 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 09/02/2011 11h58min58s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1120139,1120102,0,1120008,TO_DATE('2011-02-09 11:58:58','YYYY-MM-DD HH24:MI:SS'),100,'Total debit in document currency',22,'LBRA','The Total Debit indicates the total debit amount for a journal or journal batch in the source currency','Y','Y','Y','N','N','N','N','N','Total Debit',TO_DATE('2011-02-09 11:58:58','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 09/02/2011 11h58min58s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1120102 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 09/02/2011 11h59min31s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Tab (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_Tab_ID,AD_Table_ID,AD_Window_ID,Created,CreatedBy,EntityType,HasTree,ImportFields,IsActive,IsAdvancedTab,IsInfoTab,IsInsertRecord,IsReadOnly,IsSingleRow,IsSortTab,IsTranslationTab,Name,Processing,SeqNo,TabLevel,Updated,UpdatedBy) VALUES (0,1120155,0,1120009,1120011,1120006,TO_DATE('2011-02-09 11:59:27','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','N','N','Y','N','N','Y','N','N','N','N','Lines','N',20,1,TO_DATE('2011-02-09 11:59:27','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 09/02/2011 11h59min31s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Tab_Trl (AD_Language,AD_Tab_ID, CommitWarning,Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Tab_ID, t.CommitWarning,t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Tab t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Tab_ID=1120009 AND NOT EXISTS (SELECT * FROM AD_Tab_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Tab_ID=t.AD_Tab_ID)
;

-- 09/02/2011 11h59min53s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Tab_Trl SET IsTranslated='Y',Name='Linhas',Updated=TO_DATE('2011-02-09 11:59:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=1120009 AND AD_Language='pt_BR'
;

-- 09/02/2011 12h0min0s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1120150,1120103,0,1120009,TO_DATE('2011-02-09 11:59:59','YYYY-MM-DD HH24:MI:SS'),100,'The record is active in the system',1,'LBRA','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Y','Y','Y','N','N','N','N','N','Active',TO_DATE('2011-02-09 11:59:59','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 09/02/2011 12h0min0s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1120103 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 09/02/2011 12h0min1s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1120159,1120104,0,1120009,TO_DATE('2011-02-09 12:00:00','YYYY-MM-DD HH24:MI:SS'),100,'Amount',22,'LBRA','Amount','Y','Y','Y','N','N','N','N','N','Amount',TO_DATE('2011-02-09 12:00:00','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 09/02/2011 12h0min1s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1120104 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 09/02/2011 12h0min4s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1120155,1120105,0,1120009,TO_DATE('2011-02-09 12:00:01','YYYY-MM-DD HH24:MI:SS'),100,22,'LBRA','Y','Y','Y','N','N','N','N','N','Apuração do ICMS',TO_DATE('2011-02-09 12:00:01','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 09/02/2011 12h0min4s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1120105 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 09/02/2011 12h0min8s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1120148,1120106,0,1120009,TO_DATE('2011-02-09 12:00:04','YYYY-MM-DD HH24:MI:SS'),100,'Client/Tenant for this installation.',22,'LBRA','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Y','Y','Y','N','N','N','N','N','Client',TO_DATE('2011-02-09 12:00:04','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 09/02/2011 12h0min8s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1120106 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 09/02/2011 12h0min8s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1120158,1120107,0,1120009,TO_DATE('2011-02-09 12:00:08','YYYY-MM-DD HH24:MI:SS'),100,'Optional short description of the record',255,'LBRA','A description is limited to 255 characters.','Y','Y','Y','N','N','N','N','N','Description',TO_DATE('2011-02-09 12:00:08','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 09/02/2011 12h0min8s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1120107 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 09/02/2011 12h0min12s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1120156,1120108,0,1120009,TO_DATE('2011-02-09 12:00:08','YYYY-MM-DD HH24:MI:SS'),100,'Describe ICMS Basis',22,'LBRA','Y','Y','Y','N','N','N','N','N','ICMS Basis',TO_DATE('2011-02-09 12:00:08','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 09/02/2011 12h0min12s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1120108 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 09/02/2011 12h0min16s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1120147,1120109,0,1120009,TO_DATE('2011-02-09 12:00:12','YYYY-MM-DD HH24:MI:SS'),100,22,'LBRA','Y','Y','N','N','N','N','N','N','Linha de Apuração do ICMS',TO_DATE('2011-02-09 12:00:12','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 09/02/2011 12h0min16s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1120109 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 09/02/2011 12h0min32s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1120149,1120110,0,1120009,TO_DATE('2011-02-09 12:00:16','YYYY-MM-DD HH24:MI:SS'),100,'Organizational entity within client',22,'LBRA','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Y','Y','Y','N','N','N','N','N','Organization',TO_DATE('2011-02-09 12:00:16','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 09/02/2011 12h0min32s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1120110 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 09/02/2011 12h0min35s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1120157,1120111,0,1120009,TO_DATE('2011-02-09 12:00:32','YYYY-MM-DD HH24:MI:SS'),100,'Type of Validation (SQL, Java Script, Java Language)',2,'LBRA','The Type indicates the type of validation that will occur.  This can be SQL, Java Script or Java Language.','Y','Y','Y','N','N','N','N','N','Type',TO_DATE('2011-02-09 12:00:32','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 09/02/2011 12h0min35s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1120111 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 09/02/2011 12h1min38s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1120103
;

-- 09/02/2011 12h1min38s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1120105
;

-- 09/02/2011 12h1min38s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=10,IsDisplayed='Y' WHERE AD_Field_ID=1120106
;

-- 09/02/2011 12h1min38s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=20,IsDisplayed='Y' WHERE AD_Field_ID=1120110
;

-- 09/02/2011 12h1min38s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=30,IsDisplayed='Y' WHERE AD_Field_ID=1120108
;

-- 09/02/2011 12h1min38s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=40,IsDisplayed='Y' WHERE AD_Field_ID=1120111
;

-- 09/02/2011 12h1min38s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=50,IsDisplayed='Y' WHERE AD_Field_ID=1120104
;

-- 09/02/2011 12h1min38s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=60,IsDisplayed='Y' WHERE AD_Field_ID=1120107
;

-- 09/02/2011 12h1min45s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2011-02-09 12:01:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1120110
;

-- 09/02/2011 12h1min48s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2011-02-09 12:01:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1120111
;

-- 09/02/2011 12h2min23s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=10,IsDisplayed='Y' WHERE AD_Field_ID=1120094
;

-- 09/02/2011 12h2min23s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=20,IsDisplayed='Y' WHERE AD_Field_ID=1120091
;

-- 09/02/2011 12h2min23s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=30,IsDisplayed='Y' WHERE AD_Field_ID=1120092
;

-- 09/02/2011 12h2min23s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=40,IsDisplayed='Y' WHERE AD_Field_ID=1120095
;

-- 09/02/2011 12h2min23s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=50,IsDisplayed='Y' WHERE AD_Field_ID=1120096
;

-- 09/02/2011 12h2min23s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=60,IsDisplayed='Y' WHERE AD_Field_ID=1120097
;

-- 09/02/2011 12h2min23s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y' WHERE AD_Field_ID=1120098
;

-- 09/02/2011 12h2min23s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=80,IsDisplayed='Y' WHERE AD_Field_ID=1120099
;

-- 09/02/2011 12h2min23s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=90,IsDisplayed='Y' WHERE AD_Field_ID=1120100
;

-- 09/02/2011 12h2min23s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=100,IsDisplayed='Y' WHERE AD_Field_ID=1120101
;

-- 09/02/2011 12h2min23s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=110,IsDisplayed='Y' WHERE AD_Field_ID=1120102
;

-- 09/02/2011 12h2min57s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1120131,1120112,0,1120008,TO_DATE('2011-02-09 12:02:57','YYYY-MM-DD HH24:MI:SS'),100,'Organizational entity within client',22,'LBRA','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Y','Y','Y','N','N','N','N','N','Organization',TO_DATE('2011-02-09 12:02:57','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 09/02/2011 12h2min57s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1120112 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 09/02/2011 12h4min10s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=20,IsDisplayed='Y' WHERE AD_Field_ID=1120112
;

-- 09/02/2011 12h4min10s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=30,IsDisplayed='Y' WHERE AD_Field_ID=1120095
;

-- 09/02/2011 12h4min10s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=40,IsDisplayed='Y' WHERE AD_Field_ID=1120092
;

-- 09/02/2011 12h4min10s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=50,IsDisplayed='Y' WHERE AD_Field_ID=1120102
;

-- 09/02/2011 12h4min10s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=60,IsDisplayed='Y' WHERE AD_Field_ID=1120099
;

-- 09/02/2011 12h4min10s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y' WHERE AD_Field_ID=1120101
;

-- 09/02/2011 12h4min10s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=80,IsDisplayed='Y' WHERE AD_Field_ID=1120098
;

-- 09/02/2011 12h4min10s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=100,IsDisplayed='Y' WHERE AD_Field_ID=1120091
;

-- 09/02/2011 12h4min10s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=110,IsDisplayed='Y' WHERE AD_Field_ID=1120096
;

-- 09/02/2011 12h4min10s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=120,IsDisplayed='Y' WHERE AD_Field_ID=1120097
;

-- 09/02/2011 12h4min37s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1120143,1120113,0,1120008,TO_DATE('2011-02-09 12:04:25','YYYY-MM-DD HH24:MI:SS'),100,1,'LBRA','Y','Y','Y','N','N','N','N','N','Jasper Process Now',TO_DATE('2011-02-09 12:04:25','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 09/02/2011 12h4min37s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1120113 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 09/02/2011 12h4min58s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=130,IsDisplayed='Y' WHERE AD_Field_ID=1120113
;

-- 09/02/2011 12h5min7s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2011-02-09 12:05:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1120112
;

-- 09/02/2011 12h5min9s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2011-02-09 12:05:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1120092
;

-- 09/02/2011 12h5min21s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET AD_FieldGroup_ID=103,Updated=TO_DATE('2011-02-09 12:05:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1120102
;

-- 09/02/2011 12h5min30s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET AD_FieldGroup_ID=103, IsSameLine='Y',Updated=TO_DATE('2011-02-09 12:05:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1120099
;

-- 09/02/2011 12h5min33s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET AD_FieldGroup_ID=103,Updated=TO_DATE('2011-02-09 12:05:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1120101
;

-- 09/02/2011 12h5min38s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET AD_FieldGroup_ID=103, IsSameLine='Y',Updated=TO_DATE('2011-02-09 12:05:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1120098
;

-- 09/02/2011 12h5min42s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET AD_FieldGroup_ID=103, IsSameLine='Y',Updated=TO_DATE('2011-02-09 12:05:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1120100
;

-- 09/02/2011 12h5min46s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET AD_FieldGroup_ID=103, IsSameLine='Y',Updated=TO_DATE('2011-02-09 12:05:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1120091
;

-- 09/02/2011 12h5min54s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET AD_FieldGroup_ID=103,Updated=TO_DATE('2011-02-09 12:05:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1120096
;

-- 09/02/2011 12h5min59s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET AD_FieldGroup_ID=103, IsSameLine='Y',Updated=TO_DATE('2011-02-09 12:05:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1120097
;

-- 09/02/2011 12h6min3s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET AD_FieldGroup_ID=103,Updated=TO_DATE('2011-02-09 12:06:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1120113
;

-- 09/02/2011 12h6min40s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET IsCentrallyMaintained='N',Updated=TO_DATE('2011-02-09 12:06:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1120091
;

-- 09/02/2011 12h7min0s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field_Trl SET IsTranslated='Y',Name='Valor Acumulado (Período Anterior)',Description=NULL,Help=NULL,Updated=TO_DATE('2011-02-09 12:07:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1120091 AND AD_Language='pt_BR'
;

-- 09/02/2011 12h7min26s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET IsCentrallyMaintained='N',Updated=TO_DATE('2011-02-09 12:07:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1120098
;

-- 09/02/2011 12h7min39s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field_Trl SET IsTranslated='Y',Name='Crédito Linhas',Description=NULL,Help=NULL,Updated=TO_DATE('2011-02-09 12:07:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1120098 AND AD_Language='pt_BR'
;

-- 09/02/2011 12h7min51s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET IsCentrallyMaintained='N',Updated=TO_DATE('2011-02-09 12:07:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1120101
;

-- 09/02/2011 12h8min2s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field_Trl SET IsTranslated='Y',Name='Crédito Período',Description=NULL,Help=NULL,Updated=TO_DATE('2011-02-09 12:08:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1120101 AND AD_Language='pt_BR'
;

-- 09/02/2011 12h8min7s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET IsCentrallyMaintained='N',Updated=TO_DATE('2011-02-09 12:08:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1120099
;

-- 09/02/2011 12h8min18s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field_Trl SET IsTranslated='Y',Name='Débito Linhas',Description=NULL,Help=NULL,Updated=TO_DATE('2011-02-09 12:08:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1120099 AND AD_Language='pt_BR'
;

-- 09/02/2011 12h8min39s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET IsCentrallyMaintained='N',Updated=TO_DATE('2011-02-09 12:08:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1120102
;

-- 09/02/2011 12h8min53s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field_Trl SET IsTranslated='Y',Name='Débito Período',Description=NULL,Help=NULL,Updated=TO_DATE('2011-02-09 12:08:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1120102 AND AD_Language='pt_BR'
;

-- 09/02/2011 12h9min39s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Menu (AD_Client_ID,AD_Menu_ID,AD_Org_ID,AD_Window_ID,Action,Created,CreatedBy,EntityType,IsActive,IsCentrallyMaintained,IsReadOnly,IsSOTrx,IsSummary,Name,Updated,UpdatedBy) VALUES (0,1120011,0,1120006,'W',TO_DATE('2011-02-09 12:09:39','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Y','N','N','N','Apuração ICMS',TO_DATE('2011-02-09 12:09:39','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 09/02/2011 12h9min40s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Menu_Trl (AD_Language,AD_Menu_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Menu_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Menu t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Menu_ID=1120011 AND NOT EXISTS (SELECT * FROM AD_Menu_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Menu_ID=t.AD_Menu_ID)
;

-- 09/02/2011 12h9min40s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo) SELECT t.AD_Client_ID, 0, 'Y', SysDate, 100, SysDate, 100,t.AD_Tree_ID, 1120011, 0, 999 FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=1120011)
;

-- 09/02/2011 12h10min18s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo) SELECT t.AD_Client_ID, 0, 'Y', SysDate, 100, SysDate, 100,t.AD_Tree_ID, 0, 0, 999 FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=0)
;

-- 09/02/2011 12h10min23s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Menu (AD_Client_ID,AD_Menu_ID,AD_Org_ID,AD_Window_ID,Action,Created,CreatedBy,EntityType,IsActive,IsCentrallyMaintained,IsReadOnly,IsSOTrx,IsSummary,Name,Updated,UpdatedBy) VALUES (0,1120012,0,1120005,'W',TO_DATE('2011-02-09 12:10:22','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Y','N','N','N','Fundamento Legal ICMS',TO_DATE('2011-02-09 12:10:22','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 09/02/2011 12h10min23s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Menu_Trl (AD_Language,AD_Menu_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Menu_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Menu t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Menu_ID=1120012 AND NOT EXISTS (SELECT * FROM AD_Menu_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Menu_ID=t.AD_Menu_ID)
;

-- 09/02/2011 12h10min23s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo) SELECT t.AD_Client_ID, 0, 'Y', SysDate, 100, SysDate, 100,t.AD_Tree_ID, 1120012, 0, 999 FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=1120012)
;

-- 09/02/2011 12h10min38s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000023
;

-- 09/02/2011 12h10min38s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000015
;

-- 09/02/2011 12h10min38s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000014
;

-- 09/02/2011 12h10min38s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000035
;

-- 09/02/2011 12h10min38s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000039
;

-- 09/02/2011 12h10min38s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120011
;

-- 09/02/2011 12h10min38s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000009
;

-- 09/02/2011 12h10min41s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000023
;

-- 09/02/2011 12h10min41s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000015
;

-- 09/02/2011 12h10min41s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000014
;

-- 09/02/2011 12h10min41s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000035
;

-- 09/02/2011 12h10min41s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000039
;

-- 09/02/2011 12h10min41s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120011
;

-- 09/02/2011 12h10min41s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120012
;

-- 09/02/2011 12h10min41s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000009
;

-- 09/02/2011 12h12min50s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET IsSameLine='N',Updated=TO_DATE('2011-02-09 12:12:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1120100
;

-- 09/02/2011 12h55min32s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET FieldLength=3,Updated=TO_DATE('2011-02-09 12:55:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1120157
;

-- 09/02/2011 12h55min33s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
ALTER TABLE LBR_ApuracaoICMSLine MODIFY Type NVARCHAR2(3)
;


-- MASSA DE DADOS para GardenWorld dos Fundamentos Legais do ICMS
INSERT INTO LBR_ICMSBasis VALUES ('1000000','11','0','Y',sysdate,'100',sysdate,'100','002.01','Crédito acumulado utilizável apropriado no período.','Artigo 72 do RICMS/00 e Portaria CAT-53/96','P');
INSERT INTO LBR_ICMSBasis VALUES ('1000001','11','0','Y',sysdate,'100',sysdate,'100','002.02','Diferença de imposto apurada por contribuinte.','Artigo 108 do RICMS/00','P');
INSERT INTO LBR_ICMSBasis VALUES ('1000002','11','0','Y',sysdate,'100',sysdate,'100','002.03','Reserva de Crédito Acumulado para liquidação de débito fiscal.','Artigo 588, § 1º do RICMS/00 e Artigo 15 da Portaria CAT-53/96','P');
INSERT INTO LBR_ICMSBasis VALUES ('1000003','11','0','Y',sysdate,'100',sysdate,'100','002.04','Devolução de Crédito Acumulado.','Artigo 77 do RICMS/00 e Portaria CAT-53/96','P');
INSERT INTO LBR_ICMSBasis VALUES ('1000004','11','0','Y',sysdate,'100',sysdate,'100','002.05','Transferência de Crédito Simples do ICMS.','Artigo 70 do RICMS/00','P');
INSERT INTO LBR_ICMSBasis VALUES ('1000005','11','0','Y',sysdate,'100',sysdate,'100','002.06','Entrada de mercadoria com imposto a pagar ou utilização de serviços com imposto a pagar.','Artigo 116, I do RICMS/00','P');
INSERT INTO LBR_ICMSBasis VALUES ('1000006','11','0','Y',sysdate,'100',sysdate,'100','002.07','Entrada de mercadoria, oriunda de outro Estado, destinada a uso, consumo ou integração no ativo imobilizado ou utilização de serviço iniciado fora do território paulista - Diferencial de alíquota.','Artigo 117, II do RICMS/00','P');
INSERT INTO LBR_ICMSBasis VALUES ('1000007','11','0','Y',sysdate,'100',sysdate,'100','002.08','Complemento do imposto por contribuinte substituído - Complemento de Substituição Tributária.','Artigo 265 do RICMS/00 e Artigo 7º, I, da Portaria CAT-17/99','P');
INSERT INTO LBR_ICMSBasis VALUES ('1000008','11','0','Y',sysdate,'100',sysdate,'100','002.09','Ressarcimento de substituição tributária por Pedido de Liquidação de Débito Fiscal.','Artigo 270, § 2º do RICMS/00 e Artigo 7º, § 1º da Portaria CAT-17/99','P');
INSERT INTO LBR_ICMSBasis VALUES ('1000009','11','0','Y',sysdate,'100',sysdate,'100','002.10','Ressarcimento de substituição tributária por Nota Fiscal de Ressarcimento.','Artigo 270, II do RICMS/00 e Artigo 7º, § 1º da Portaria CAT-17/99','P');
INSERT INTO LBR_ICMSBasis VALUES ('1000010','11','0','Y',sysdate,'100',sysdate,'100','002.11','Ressarcimento de substituição tributária por Pedido de Ressarcimento.','Artigo 270, III do RICMS/00 e Artigo 7º, § 1º da Portaria CAT-17/99','P');
INSERT INTO LBR_ICMSBasis VALUES ('1000011','11','0','Y',sysdate,'100',sysdate,'100','002.12','Estabelecimento que receber de outro Estado, mercadoria abrangida pela substituição tributária, quando a responsabilidade pelo pagamento do imposto seja a ele atribuída - valor do imposto incidente sobre sua própria operação.','Artigo 277, § 2º, itens 1, "a" e 2 do RICMS/00','P');
INSERT INTO LBR_ICMSBasis VALUES ('1000012','11','0','Y',sysdate,'100',sysdate,'100','002.13','Sujeito passivo por substituição que realizar operação fora do estabelecimento, sem destinatário certo, com mercadoria abrangida pela Substituição Tributária - ICMS próprio em remessa para venda fora do estabelecimento.','Artigo 284, II, "b" do RICMS/00','P');
INSERT INTO LBR_ICMSBasis VALUES ('1000013','11','0','Y',sysdate,'100',sysdate,'100','002.14','Entrada de resíduo de materiais em estabelecimento industrial.','Artigo 392, § 1º, 3 do RICMS/00','P');
INSERT INTO LBR_ICMSBasis VALUES ('1000014','11','0','Y',sysdate,'100',sysdate,'100','002.15','Entrada de metais não-ferrosos  em estabelecimentos industriais.','Artigo 379-A, , III do RICMS/91','P');
INSERT INTO LBR_ICMSBasis VALUES ('1000015','11','0','Y',sysdate,'100',sysdate,'100','002.16','Remessa para venda fora do estabelecimento.  ','Artigo 434, § 1º, 2 do RICMS/00','P');
INSERT INTO LBR_ICMSBasis VALUES ('1000016','11','0','Y',sysdate,'100',sysdate,'100','002.17','Diferença paga por empresa seguradora relativamente a peças adquiridas para emprego em conserto de veículo acidentado.','Artigo 7º, Anexo XIV do RICMS/00','P');
INSERT INTO LBR_ICMSBasis VALUES ('1000017','11','0','Y',sysdate,'100',sysdate,'100','002.18','Transferência de saldo credor  para estabelecimento centralizador','Artigo 98, III do RICMS/00','P');
INSERT INTO LBR_ICMSBasis VALUES ('1000018','11','0','Y',sysdate,'100',sysdate,'100','002.19','Recebimento de saldo devedor - estabelecimento centralizador','Artigo 99 do RICMS/00','P');
INSERT INTO LBR_ICMSBasis VALUES ('1000019','11','0','Y',sysdate,'100',sysdate,'100','002.20','Devolução de crédito acumulado mediante autorização eletrônica','Artigo 77 do RICMS/00','P');
INSERT INTO LBR_ICMSBasis VALUES ('1000020','11','0','Y',sysdate,'100',sysdate,'100','002.21','Apropriação de crédito acumulado mediante autorização eletrônica','Artigo 72, II do RICMS/00','P');
INSERT INTO LBR_ICMSBasis VALUES ('1000021','11','0','Y',sysdate,'100',sysdate,'100','002.99','OUTRAS HIPÓTESES - PREENCHIDA PELO CONTRIBUINTE','PREENCHIDA PELO CONTRIBUINTE','P');
INSERT INTO LBR_ICMSBasis VALUES ('1000022','11','0','Y',sysdate,'100',sysdate,'100','003.01','Estorno de imposto creditado quando a mercadoria entrada no estabelecimento vier a perecer, deteriorar-se ou for objeto de roubo, furto ou extravio.','Artigo 67, I do RICMS/00','P');
INSERT INTO LBR_ICMSBasis VALUES ('1000023','11','0','Y',sysdate,'100',sysdate,'100','003.02','Estorno de imposto creditado quando o serviço tomado ou a mercadoria adquirida for objeto de saída ou prestação de serviço não tributada.','Artigo 67, II do RICMS/00','P');
INSERT INTO LBR_ICMSBasis VALUES ('1000024','11','0','Y',sysdate,'100',sysdate,'100','003.03','Estorno de imposto creditado quando a mercadoria adquirida for integrada ou consumida em processo de industrialização ou produção rural, quando a saída não for tributada ou estiver isenta do imposto.','Artigo 67, III do RICMS/00','P');
INSERT INTO LBR_ICMSBasis VALUES ('1000025','11','0','Y',sysdate,'100',sysdate,'100','003.04','Estorno de imposto creditado quando a mercadoria adquirida for integrada ou consumida em processo de industrialização ou produção rural, quando a saída tiver base de cálculo reduzida. ','Artigo 64, IV do RICMS/91','P');
INSERT INTO LBR_ICMSBasis VALUES ('1000026','11','0','Y',sysdate,'100',sysdate,'100','003.05','Estorno do valor do crédito deduzido na guia de recolhimento nas saídas de café cru, em coco ou em grão.','Artigo 339, parágrafo único do RICMS/00','P');
INSERT INTO LBR_ICMSBasis VALUES ('1000027','11','0','Y',sysdate,'100',sysdate,'100','003.06','Estorno do valor do crédito deduzido na guia de recolhimento nas saídas de gado em pé bovino e suíno.','Artigo 371, parágrafo único do RICMS/00','P');
INSERT INTO LBR_ICMSBasis VALUES ('1000028','11','0','Y',sysdate,'100',sysdate,'100','003.07','Ativo Permanente - transferência de crédito  remanescente.','Artigo 4º DDTT, I, "b", do RICMS/00','P');
INSERT INTO LBR_ICMSBasis VALUES ('1000029','11','0','Y',sysdate,'100',sysdate,'100','003.08','Saídas de produtos agrícolas - ICMS recolhido pelo armazém geral, por guia de recolhimentos especiais.','Artigo 3º, § 2º, Anexo VIII do RICMS/00','P');
INSERT INTO LBR_ICMSBasis VALUES ('1000030','11','0','Y',sysdate,'100',sysdate,'100','003.09','Uso ou consumo da mercadoria ou serviço destinado à comercialização ou Industrialização.','Artigo 67, V do RICMS/00','P');
INSERT INTO LBR_ICMSBasis VALUES ('1000031','11','0','Y',sysdate,'100',sysdate,'100','003.10','Estorno do imposto creditado na ocorrência 007.08','Artigo 61, § 2º, Anexo VIII do RICMS/00','P');
INSERT INTO LBR_ICMSBasis VALUES ('1000032','11','0','Y',sysdate,'100',sysdate,'100','003.99','OUTRAS HIPÓTESES - PREENCHIDA PELO CONTRIBUINTE','PREENCHIDA PELO CONTRIBUINTE','P');
INSERT INTO LBR_ICMSBasis VALUES ('1000033','11','0','Y',sysdate,'100',sysdate,'100','007.01','Recebimento de crédito simples do imposto.','Artigo 70 do RICMS/00','P');
INSERT INTO LBR_ICMSBasis VALUES ('1000034','11','0','Y',sysdate,'100',sysdate,'100','007.02','Reincorporação de crédito acumulado.','Artigo 80, I do RICMS/00 e Artigo 12 da Portaria CAT-53/96','P');
INSERT INTO LBR_ICMSBasis VALUES ('1000035','11','0','Y',sysdate,'100',sysdate,'100','007.03','Reincorporação de crédito acumulado para reserva.','Artigo 80 do RICMS/00 e Artigo 15 da Portaria CAT-53/96','P');
INSERT INTO LBR_ICMSBasis VALUES ('1000036','11','0','Y',sysdate,'100',sysdate,'100','007.04','Recebimento de crédito acumulado por fornecimento de matéria-prima, material secundário e de embalagem. ','Artigo 76, II do RICMS/00 e Artigo 9º da Portaria CAT-53/96','P');
INSERT INTO LBR_ICMSBasis VALUES ('1000037','11','0','Y',sysdate,'100',sysdate,'100','007.05','Recebimento de crédito acumulado por fornecimento de máquina, aparelho ou equipamento industrial.  ','Artigo 76, II do RICMS/00 e Artigo 9º da Portaria CAT-53/96','P');
INSERT INTO LBR_ICMSBasis VALUES ('1000038','11','0','Y',sysdate,'100',sysdate,'100','007.06','Recebimento de crédito acumulado de estabelecimento da mesma empresa.','Artigo 76, II do RICMS/00 e Artigo 9º da Portaria CAT-53/96','P');
INSERT INTO LBR_ICMSBasis VALUES ('1000039','11','0','Y',sysdate,'100',sysdate,'100','007.07','Recebimento de crédito acumulado de estabelecimento de empresa interdependente.','Artigo 76, II do RICMS/00 e Artigo 9º da Portaria CAT-53/96','P');
INSERT INTO LBR_ICMSBasis VALUES ('1000040','11','0','Y',sysdate,'100',sysdate,'100','007.08','Importação de bem ou mercadoria com direito a crédito de ICMS.     ','Artigo 61, § 8º do RICMS/00','P');
INSERT INTO LBR_ICMSBasis VALUES ('1000041','11','0','Y',sysdate,'100',sysdate,'100','007.09','Crédito outorgado sobre o imposto devido na prestação de serviço de transporte, exceto aéreo. ','Artigo 62 e Artigo 11, Anexo III do RICMS/00','P');
INSERT INTO LBR_ICMSBasis VALUES ('1000042','11','0','Y',sysdate,'100',sysdate,'100','007.10','Imposto pago indevidamente, em virtude de erro de fato ocorrido na escrituração dos livros fiscais ou no preparo da guia de recolhimento.','Artigo 63, II do RICMS/00','P');
INSERT INTO LBR_ICMSBasis VALUES ('1000043','11','0','Y',sysdate,'100',sysdate,'100','007.11','Imposto correspondente à diferença verificada entre a importância recolhida e a apurada decorrente do desenquadramento do regime de estimativa','Artigo 63, III e Artigo 92, II, "a" do RICMS/00. ','P');
INSERT INTO LBR_ICMSBasis VALUES ('1000044','11','0','Y',sysdate,'100',sysdate,'100','007.12','Imposto pago indevidamente, objeto de pedido administrativo de restituição quando a decisão não tiver sido proferida no prazo de 45 dias, contados da data do respectivo pedido.  ','Artigo 63, V do RICMS/00','P');
INSERT INTO LBR_ICMSBasis VALUES ('1000045','11','0','Y',sysdate,'100',sysdate,'100','007.13','Imposto pago indevidamente em razão de destaque a maior em documento fiscal, até o limite estabelecido pela Secretaria da Fazenda.','Artigo 63, VII do RICMS/00 e Portaria CAT-83/91','P');
INSERT INTO LBR_ICMSBasis VALUES ('1000046','11','0','Y',sysdate,'100',sysdate,'100','007.14','Valor do imposto destacado na nota fiscal relativa à aquisição de bem, objeto de arrendamento mercantil  pela empresa arrendadora, por ocasião da entrada no estabelecimento. ','Artigo 63, VIII do RICMS/00','P');
INSERT INTO LBR_ICMSBasis VALUES ('1000047','11','0','Y',sysdate,'100',sysdate,'100','007.15','Recebimento de crédito transferido por produtor rural.','Artigo 70, I e Artigo 8º das DDTT do RICMS/00 e Portaria CAT-28/91','P');
INSERT INTO LBR_ICMSBasis VALUES ('1000048','11','0','Y',sysdate,'100',sysdate,'100','007.16','Imposto recolhido por guia de recolhimentos  especiais nas saídas de álcool carburante e  de produtos resultantes da industrialização do petróleo.','Artigo 115, § 6º do RICMS/00','P');
INSERT INTO LBR_ICMSBasis VALUES ('1000049','11','0','Y',sysdate,'100',sysdate,'100','007.17','Imposto recolhido pelo destinatário por guia de recolhimentos especiais, relativo a serviço tomado ou mercadoria entrada no estabelecimento. ','Artigo 116, parágrafo único, 2, "b" do RICMS/00','P');
INSERT INTO LBR_ICMSBasis VALUES ('1000050','11','0','Y',sysdate,'100',sysdate,'100','007.18','Entrada de mercadoria, oriunda de outro Estado, destinada a uso, consumo ou integração no ativo imobilizado, ou utilização de serviço iniciado noutro Estado - Diferencial de alíquota.','Artigo 117, I do RICMS/00','P');
INSERT INTO LBR_ICMSBasis VALUES ('1000051','11','0','Y',sysdate,'100',sysdate,'100','007.19','Ressarcimento de substituição tributária, por estabelecimento de contribuinte substituído. ','Artigos 269 e 270 do RICMS/00 e Artigo 7º, II da Portaria CAT-17/99','P');
INSERT INTO LBR_ICMSBasis VALUES ('1000052','11','0','Y',sysdate,'100',sysdate,'100','007.20','Compensação de imposto pago na operação própria do substituto, por estabelecimento de contribuinte substituído, relativamente a operações com veículos.','Artigos 269 e 270 do RICMS/00 e Artigo 7º, III da Portaria CAT-17/99','P');
INSERT INTO LBR_ICMSBasis VALUES ('1000053','11','0','Y',sysdate,'100',sysdate,'100','007.21','Crédito relativo à operação própria do Substituto  em operação interestadual promovida pelo  contribuinte substituído.  ','Artigo 271 do RICMS/00','P');
INSERT INTO LBR_ICMSBasis VALUES ('1000054','11','0','Y',sysdate,'100',sysdate,'100','007.22','Imposto recolhido mediante guia de recolhimentos especiais nas operações com café cru.  ','Artigo 344, II do RICMS/00','P');
INSERT INTO LBR_ICMSBasis VALUES ('1000055','11','0','Y',sysdate,'100',sysdate,'100','007.23','Imposto recolhido por guia de recolhimentos especiais pelo abate de gado. ','Artigo 367, § 2º e Artigo 381, I do RICMS/00','P');
INSERT INTO LBR_ICMSBasis VALUES ('1000056','11','0','Y',sysdate,'100',sysdate,'100','007.24','Crédito outorgado   abate de bovinos e suínos.','Artigo 372 do RICMS/00','P');
INSERT INTO LBR_ICMSBasis VALUES ('1000057','11','0','Y',sysdate,'100',sysdate,'100','007.25','Imposto recolhido mediante guia de recolhimentos especiais nas operações com gado em pé. ','Artigo 380, II do RICMS/00','P');
INSERT INTO LBR_ICMSBasis VALUES ('1000058','11','0','Y',sysdate,'100',sysdate,'100','007.26','Imposto relativo à entrada de gado em pé originário de outro Estado. ','Artigo 381, II do RICMS/00','P');
INSERT INTO LBR_ICMSBasis VALUES ('1000059','11','0','Y',sysdate,'100',sysdate,'100','007.27','Recolhimento em outros Estados nas operações de vendas fora do estabelecimento. ','Artigo 434, § 4º, 5, "b" do RICMS/00','P');
INSERT INTO LBR_ICMSBasis VALUES ('1000060','11','0','Y',sysdate,'100',sysdate,'100','007.28','Na desistência de ressarcimento por Nota Fiscal de Ressarcimento, Pedido de Ressarcimento ou Pedido de Liquidação de Débito Fiscal - Reincorporação do imposto.','Artigo 7º, § 2º da Portaria CAT-17/99','P');
INSERT INTO LBR_ICMSBasis VALUES ('1000061','11','0','Y',sysdate,'100',sysdate,'100','007.29','Transferência de saldo devedor para estabelecimento centralizador','Artigo 98, III do RICMS/00','P');
INSERT INTO LBR_ICMSBasis VALUES ('1000062','11','0','Y',sysdate,'100',sysdate,'100','007.30','Recebimento de saldo credor   estabelecimento centralizador','Artigo 99 do RICMS/00','P');
INSERT INTO LBR_ICMSBasis VALUES ('1000063','11','0','Y',sysdate,'100',sysdate,'100','007.31','Crédito outorgado   abate de aves','Artigo 363, § 2º do RICMS/00','P');
INSERT INTO LBR_ICMSBasis VALUES ('1000064','11','0','Y',sysdate,'100',sysdate,'100','007.32','Crédito outorgado   outros produtos alimentícios','Artigos 1º, 2º, 6º e 9º, exceto item  XXIX do Artigo 9º, anexo III do RICMS/00','P');
INSERT INTO LBR_ICMSBasis VALUES ('1000065','11','0','Y',sysdate,'100',sysdate,'100','007.33','Crédito outorgado   informática periférico','Artigo 7º, Anexo III,  itens I, II, V, VI, VII, XIV, XV, XVI, XVII e XVIII do RICMS/00','P');
INSERT INTO LBR_ICMSBasis VALUES ('1000066','11','0','Y',sysdate,'100',sysdate,'100','007.34','Crédito outorgado   telefone celular','Artigo 7º, Anexo III, itens III e IV do RICMS/00','P');
INSERT INTO LBR_ICMSBasis VALUES ('1000067','11','0','Y',sysdate,'100',sysdate,'100','007.35','Crédito outorgado   unidade de processamento','Artigo 7º, Anexo III, itens VIII, IX, XII e XIII do RICMS/00','P');
INSERT INTO LBR_ICMSBasis VALUES ('1000068','11','0','Y',sysdate,'100',sysdate,'100','007.36','Crédito outorgado    informática outros','Artigo 7º, Anexo III, itens X e XI do RICMS/00','P');
INSERT INTO LBR_ICMSBasis VALUES ('1000069','11','0','Y',sysdate,'100',sysdate,'100','007.37','Crédito outorgado - leite esterilizado UHT (longa vida)','Artigo 9º, Anexo III, item XXIX do RICMS/00','P');
INSERT INTO LBR_ICMSBasis VALUES ('1000070','11','0','Y',sysdate,'100',sysdate,'100','007.38','Crédito outorgado   adesivo hidroxilado - garrafas PET','Artigo 14, Anexo III do RICMS/00','P');
INSERT INTO LBR_ICMSBasis VALUES ('1000071','11','0','Y',sysdate,'100',sysdate,'100','007.39','Valor destinado ao Programa de Ação Cultural - PAC','Artigo 20, Anexo III do RICMS/00','P');
INSERT INTO LBR_ICMSBasis VALUES ('1000072','11','0','Y',sysdate,'100',sysdate,'100','007.40','Recebimento de crédito acumulado mediante autorização eletrônica','Artigo 76, II do RICMS/00','P');
INSERT INTO LBR_ICMSBasis VALUES ('1000073','11','0','Y',sysdate,'100',sysdate,'100','007.41','Reincorporação de crédito acumulado mediante autorização eletrônica','Artigo 80 do RICMS/00','P');
INSERT INTO LBR_ICMSBasis VALUES ('1000074','11','0','Y',sysdate,'100',sysdate,'100','007.99','OUTRAS HIPÓTESES - PREENCHIDA PELO CONTRIBUINTE ','PREENCHIDA PELO CONTRIBUINTE','P');
INSERT INTO LBR_ICMSBasis VALUES ('1000075','11','0','Y',sysdate,'100',sysdate,'100','008.01','Devolução de mercadoria oriunda de outro Estado, destinada a uso, consumo ou integração no ativo imobilizado, ou de utilização de serviço iniciado em outro Estado.','Artigo 117, § 3º do RICMS/00','P');
INSERT INTO LBR_ICMSBasis VALUES ('1000076','11','0','Y',sysdate,'100',sysdate,'100','008.02','Regularização de documentos fiscais em virtude de diferença no preço, em operação ou prestação, ou na quantidade de mercadoria, quando a regularização se efetuar após o período de apuração.','Artigo 182, III, § 2º, 3 do RICMS/00','P');
INSERT INTO LBR_ICMSBasis VALUES ('1000077','11','0','Y',sysdate,'100',sysdate,'100','008.03','Lançamento do imposto, não efetuado em época própria, em virtude de erro de cálculo ou de classificação fiscal, ou outro, quando a regularização se efetuar após o período de apuração.','Artigo 182, IV, § 2º, 3 do RICMS/00','P');
INSERT INTO LBR_ICMSBasis VALUES ('1000078','11','0','Y',sysdate,'100',sysdate,'100','008.04','Imposto relativo à operações realizadas pelo sujeito passivo por substituição fora do estabelecimento com mercadoria abrangida pela substituição tributária - Estorno do ICMS próprio no retorno - venda fora do estabelecimento.','Artigo 284, III, "c" do RICMS/00','P');
INSERT INTO LBR_ICMSBasis VALUES ('1000079','11','0','Y',sysdate,'100',sysdate,'100','008.05','Operações com café cru: imposto a ser recolhido em período posterior.','Artigo 344, III do RICMS/00','P');
INSERT INTO LBR_ICMSBasis VALUES ('1000080','11','0','Y',sysdate,'100',sysdate,'100','008.06','Imposto destacado em Nota Fiscal de remessa para venda fora do estabelecimento.','Artigo 434, § 4º, 5, "a" do RICMS/00','P');
INSERT INTO LBR_ICMSBasis VALUES ('1000081','11','0','Y',sysdate,'100',sysdate,'100','008.99','OUTRAS HIPÓTESES - PREENCHIDA PELO CONTRIBUINTE','PREENCHIDA PELO CONTRIBUINTE','P');
INSERT INTO LBR_ICMSBasis VALUES ('1000082','11','0','Y',sysdate,'100',sysdate,'100','014.99','Deduções   RPA   ST   RES ','PREENCHIDA PELO CONTRIBUINTE','P');
INSERT INTO LBR_ICMSBasis VALUES ('1000083','11','0','Y',sysdate,'100',sysdate,'100','002.01','Imposto retido em remessa para venda fora do estabelecimento.','Artigo 284, II, c do RICMS/00','S');
INSERT INTO LBR_ICMSBasis VALUES ('1000084','11','0','Y',sysdate,'100',sysdate,'100','002.02','ICMS retido nas vendas efetuadas a revendedores ambulantes para revenda no sistema porta-a-porta para consumidores finais.','Artigos 288 e 479 do RICMS/00','S');
INSERT INTO LBR_ICMSBasis VALUES ('1000085','11','0','Y',sysdate,'100',sysdate,'100','002.99','OUTRAS HIPÓTESES - PREENCHIDA PELO CONTRIBUINTE','PREENCHIDA PELO CONTRIBUINTE','S');
INSERT INTO LBR_ICMSBasis VALUES ('1000086','11','0','Y',sysdate,'100',sysdate,'100','003.99','OUTRAS HIPÓTESES - PREENCHIDA PELO CONTRIBUINTE','PREENCHIDA PELO CONTRIBUINTE','S');
INSERT INTO LBR_ICMSBasis VALUES ('1000087','11','0','Y',sysdate,'100',sysdate,'100','007.01','Ressarcimento de imposto retido por nota fiscal','Artigo 9°, § 5°, item 2, a, da Portaria CAT- 17/99.','S');
INSERT INTO LBR_ICMSBasis VALUES ('1000088','11','0','Y',sysdate,'100',sysdate,'100','007.02','Dedução de imposto retido   ressarcimento por depósito bancário.','Artigo 10, § 5°, item 3, d da Portaria CAT-17/99.','S');
INSERT INTO LBR_ICMSBasis VALUES ('1000089','11','0','Y',sysdate,'100',sysdate,'100','007.03','Ressarcimento relativo a operações interestaduais com combustíveis.','Artigo 414, § 2°, do RICMS/00.','S');
INSERT INTO LBR_ICMSBasis VALUES ('1000090','11','0','Y',sysdate,'100',sysdate,'100','007.04','Repasse a outras unidades federadas relativo a operações interestaduais com combustíveis.','Cláusula Décima Primeira, § 1°, do Convênio ICMS 03/99.','S');
INSERT INTO LBR_ICMSBasis VALUES ('1000091','11','0','Y',sysdate,'100',sysdate,'100','007.99','OUTRAS HIPÓTESES - PREENCHIDA PELO CONTRIBUINTE','PREENCHIDA PELO CONTRIBUINTE','S');
INSERT INTO LBR_ICMSBasis VALUES ('1000092','11','0','Y',sysdate,'100',sysdate,'100','008.01','Estorno de imposto retido no retorno   venda fora do estabelecimento.','Artigo 284, III, d do RICMS/00','S');
INSERT INTO LBR_ICMSBasis VALUES ('1000093','11','0','Y',sysdate,'100',sysdate,'100','008.99','OUTRAS HIPÓTESES - PREENCHIDA PELO CONTRIBUINTE','PREENCHIDA PELO CONTRIBUINTE','S');
INSERT INTO LBR_ICMSBasis VALUES ('1000094','11','0','Y',sysdate,'100',sysdate,'100','014.99','Deduções   RPA   ST   RES ','PREENCHIDA PELO CONTRIBUINTE','S');

UPDATE AD_SysConfig SET Value='360-trunk/035-FR_3176418.sql' WHERE AD_SysConfig_ID=1100006;

exit
