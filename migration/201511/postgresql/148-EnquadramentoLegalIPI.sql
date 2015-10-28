-- 23/10/2015 13h56min21s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,1121792,0,'LBR_CSTGroup',TO_TIMESTAMP('2015-10-23 13:56:18','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','CST Group','CST Group',TO_TIMESTAMP('2015-10-23 13:56:18','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 23/10/2015 13h56min21s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1121792 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 23/10/2015 14h0min38s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Element_Trl SET IsTranslated='Y',Name='Grupo CST',PrintName='Grupo CST',Updated=TO_TIMESTAMP('2015-10-23 14:00:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1121792 AND AD_Language='pt_BR'
;

-- 23/10/2015 14h4min32s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,1121793,0,'LBR_TaxLegalFW_ID',TO_TIMESTAMP('2015-10-23 14:04:30','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Tax Legal Framework','Tax Legal Framework',TO_TIMESTAMP('2015-10-23 14:04:30','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 23/10/2015 14h4min32s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1121793 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 23/10/2015 14h6min44s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Element_Trl SET IsTranslated='Y',Name='Enquadramento Legal Imposto',PrintName='Enquadramento Legal Imposto',Updated=TO_TIMESTAMP('2015-10-23 14:06:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1121793 AND AD_Language='pt_BR'
;

-- 23/10/2015 14h23min1s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Table (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Table_ID,CopyColumnsFromTable,Created,CreatedBy,EntityType,ImportTable,IsActive,IsCentrallyMaintained,IsChangeLog,IsDeleteable,IsHighVolume,IsSecurityEnabled,IsSystemLanguage,IsView,LoadSeq,Name,ReplicationType,TableName,Updated,UpdatedBy) VALUES ('3',0,0,1120462,'N',TO_TIMESTAMP('2015-10-23 14:22:59','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','N','Y','Y','N','Y','N','N','N','N',0,'Tax Legal Framework','L','LBR_TaxLegalFW',TO_TIMESTAMP('2015-10-23 14:22:59','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 23/10/2015 14h23min1s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Table_Trl (AD_Language,AD_Table_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Table_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Table t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Table_ID=1120462 AND NOT EXISTS (SELECT * FROM AD_Table_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Table_ID=t.AD_Table_ID)
;

-- 23/10/2015 14h23min3s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Sequence (AD_Client_ID,AD_Org_ID,AD_Sequence_ID,Created,CreatedBy,CurrentNext,CurrentNextSys,Description,IncrementNo,IsActive,IsAudited,IsAutoSequence,IsTableID,Name,StartNewYear,StartNo,Updated,UpdatedBy) VALUES (0,0,1153270,TO_TIMESTAMP('2015-10-23 14:23:01','YYYY-MM-DD HH24:MI:SS'),100,1000000,50000,'Table LBR_TaxLegalFW',1,'Y','N','Y','Y','LBR_TaxLegalFW','N',1000000,TO_TIMESTAMP('2015-10-23 14:23:01','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 23/10/2015 14h24min7s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Table_Trl SET Name='Enquadramento Legal do Imposto',IsTranslated='Y',Updated=TO_TIMESTAMP('2015-10-23 14:24:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=1120462 AND AD_Language='pt_BR'
;

-- 23/10/2015 14h35min53s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1126798,1121793,0,13,1120462,'LBR_TaxLegalFW_ID',TO_TIMESTAMP('2015-10-23 14:35:52','YYYY-MM-DD HH24:MI:SS'),100,'LBRA',10,'Y','Y','N','N','N','N','N','Y','N','N','N','N','Y','Tax Legal Framework',0,TO_TIMESTAMP('2015-10-23 14:35:52','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 23/10/2015 14h35min53s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1126798 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 23/10/2015 14h46min41s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1126799,469,0,14,1120462,'Name',TO_TIMESTAMP('2015-10-23 14:46:40','YYYY-MM-DD HH24:MI:SS'),100,'Alphanumeric identifier of the entity','LBRA',60,'The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.','Y','Y','N','N','N','N','N','Y','N','N','N','N','Y','Name',0,TO_TIMESTAMP('2015-10-23 14:46:40','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 23/10/2015 14h46min41s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1126799 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 23/10/2015 14h50min20s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1126800,620,0,10,1120462,'Value',TO_TIMESTAMP('2015-10-23 14:50:19','YYYY-MM-DD HH24:MI:SS'),100,'Search key for the record in the format required - must be unique','LBRA',40,'A search key allows you a fast method of finding a particular record.
If you leave the search key empty, the system automatically creates a numeric number.  The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).','Y','Y','N','N','N','N','N','Y','N','N','N','N','Y','Search Key',0,TO_TIMESTAMP('2015-10-23 14:50:19','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 23/10/2015 14h50min20s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1126800 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 23/10/2015 14h54min40s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1126801,102,0,19,1120462,'AD_Client_ID',TO_TIMESTAMP('2015-10-23 14:54:39','YYYY-MM-DD HH24:MI:SS'),100,'Client/Tenant for this installation.','LBRA',10,'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Y','Y','N','N','N','N','N','Y','N','N','N','N','Y','Client',0,TO_TIMESTAMP('2015-10-23 14:54:39','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 23/10/2015 14h54min40s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1126801 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 23/10/2015 14h57min59s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1126802,113,0,19,1120462,'AD_Org_ID',TO_TIMESTAMP('2015-10-23 14:57:58','YYYY-MM-DD HH24:MI:SS'),100,'Organizational entity within client','LBRA',10,'An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Y','Y','N','N','N','N','N','Y','N','N','N','N','Y','Organization',0,TO_TIMESTAMP('2015-10-23 14:57:58','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 23/10/2015 14h57min59s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1126802 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 23/10/2015 15h4min11s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1126803,348,0,20,1120462,'IsActive',TO_TIMESTAMP('2015-10-23 15:04:10','YYYY-MM-DD HH24:MI:SS'),100,'Y','The record is active in the system','LBRA',1,'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Y','Y','N','N','N','N','N','Y','N','N','N','N','Y','Active',0,TO_TIMESTAMP('2015-10-23 15:04:10','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 23/10/2015 15h4min11s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1126803 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 23/10/2015 15h5min23s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1126804,245,0,16,1120462,'Created',TO_TIMESTAMP('2015-10-23 15:05:23','YYYY-MM-DD HH24:MI:SS'),100,'Date this record was created','LBRA',7,'The Created field indicates the date that this record was created.','Y','Y','N','N','N','N','N','Y','N','N','N','N','Y','Created',0,TO_TIMESTAMP('2015-10-23 15:05:23','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 23/10/2015 15h5min23s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1126804 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 23/10/2015 15h10min22s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1126805,246,0,18,110,1120462,'CreatedBy',TO_TIMESTAMP('2015-10-23 15:10:21','YYYY-MM-DD HH24:MI:SS'),100,'User who created this records','LBRA',22,'The Created By field indicates the user who created this record.','Y','Y','N','N','N','N','N','Y','N','N','N','N','Y','Created By',0,TO_TIMESTAMP('2015-10-23 15:10:21','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 23/10/2015 15h10min22s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1126805 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;


-- 23/10/2015 15h22min38s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1126806,607,0,16,1120462,'Updated',TO_TIMESTAMP('2015-10-23 15:22:36','YYYY-MM-DD HH24:MI:SS'),100,'Date this record was updated','LBRA',7,'The Updated field indicates the date that this record was updated.','Y','Y','N','N','N','N','N','Y','N','N','N','N','N','Updated',0,TO_TIMESTAMP('2015-10-23 15:22:36','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 23/10/2015 15h22min38s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1126806 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 23/10/2015 15h24min42s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1126807,608,0,18,110,1120462,'UpdatedBy',TO_TIMESTAMP('2015-10-23 15:24:40','YYYY-MM-DD HH24:MI:SS'),100,'User who updated this records','LBRA',22,'The Updated By field indicates the user who updated this record.','Y','Y','N','N','N','N','N','Y','N','N','N','N','N','Updated By',0,TO_TIMESTAMP('2015-10-23 15:24:40','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 23/10/2015 15h24min42s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1126807 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 23/10/2015 15h35min5s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1126808,1000169,0,19,1120462,'LBR_TaxName_ID',TO_TIMESTAMP('2015-10-23 15:35:04','YYYY-MM-DD HH24:MI:SS'),100,'Primary key table LBR_TaxName','LBRA',10,'Primary key table LBR_TaxName','Y','Y','N','N','N','N','N','Y','N','N','N','N','N','Tax Name',0,TO_TIMESTAMP('2015-10-23 15:35:04','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 23/10/2015 15h35min5s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1126808 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 23/10/2015 16h27min20s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Reference (AD_Client_ID,AD_Org_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,IsOrderByValue,Name,Updated,UpdatedBy,ValidationType) VALUES (0,0,1120221,TO_TIMESTAMP('2015-10-23 16:27:19','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','N','CST Group',TO_TIMESTAMP('2015-10-23 16:27:19','YYYY-MM-DD HH24:MI:SS'),100,'L')
;

-- 23/10/2015 16h27min20s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Reference_Trl (AD_Language,AD_Reference_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Reference_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Reference t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Reference_ID=1120221 AND NOT EXISTS (SELECT * FROM AD_Reference_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Reference_ID=t.AD_Reference_ID)
;

-- 23/10/2015 16h27min45s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Reference_Trl SET IsTranslated='Y',Name='Grupo CST',Updated=TO_TIMESTAMP('2015-10-23 16:27:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=1120221 AND AD_Language='pt_BR'
;

-- 23/10/2015 16h30min38s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1120221,1121607,TO_TIMESTAMP('2015-10-23 16:30:37','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Imunidade',TO_TIMESTAMP('2015-10-23 16:30:37','YYYY-MM-DD HH24:MI:SS'),100,'M')
;

-- 23/10/2015 16h30min38s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121607 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 23/10/2015 16h31min2s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1120221,1121608,TO_TIMESTAMP('2015-10-23 16:31:01','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Suspensão',TO_TIMESTAMP('2015-10-23 16:31:01','YYYY-MM-DD HH24:MI:SS'),100,'S')
;

-- 23/10/2015 16h31min2s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121608 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 23/10/2015 16h31min26s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1120221,1121609,TO_TIMESTAMP('2015-10-23 16:31:25','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Isenção',TO_TIMESTAMP('2015-10-23 16:31:25','YYYY-MM-DD HH24:MI:SS'),100,'I')
;

-- 23/10/2015 16h31min26s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121609 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 23/10/2015 16h31min50s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1120221,1121610,TO_TIMESTAMP('2015-10-23 16:31:50','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Redução',TO_TIMESTAMP('2015-10-23 16:31:50','YYYY-MM-DD HH24:MI:SS'),100,'R')
;

-- 23/10/2015 16h31min50s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121610 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 23/10/2015 16h32min11s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1120221,1121611,TO_TIMESTAMP('2015-10-23 16:32:10','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Outros',TO_TIMESTAMP('2015-10-23 16:32:10','YYYY-MM-DD HH24:MI:SS'),100,'O')
;

-- 23/10/2015 16h32min11s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121611 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 23/10/2015 16h34min49s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1126809,1121792,0,17,1120221,1120462,'LBR_CSTGroup',TO_TIMESTAMP('2015-10-23 16:34:46','YYYY-MM-DD HH24:MI:SS'),100,'LBRA',1,'Y','Y','N','N','N','N','N','Y','N','N','N','N','N','CST Group',0,TO_TIMESTAMP('2015-10-23 16:34:46','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 23/10/2015 16h34min49s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1126809 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 23/10/2015 17h14min37s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Tab (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_Tab_ID,AD_Table_ID,AD_Window_ID,Created,CreatedBy,EntityType,HasTree,ImportFields,IsActive,IsAdvancedTab,IsInfoTab,IsInsertRecord,IsReadOnly,IsSingleRow,IsSortTab,IsTranslationTab,Name,Processing,SeqNo,TabLevel,Updated,UpdatedBy) VALUES (0,1126808,0,1120199,1120462,1000014,TO_TIMESTAMP('2015-10-23 17:14:34','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','N','N','Y','N','N','Y','N','N','N','N','Tax Legal Framework','N',50,1,TO_TIMESTAMP('2015-10-23 17:14:34','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 23/10/2015 17h14min37s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Tab_Trl (AD_Language,AD_Tab_ID, CommitWarning,Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Tab_ID, t.CommitWarning,t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Tab t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Tab_ID=1120199 AND NOT EXISTS (SELECT * FROM AD_Tab_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Tab_ID=t.AD_Tab_ID)
;

-- 23/10/2015 17h15min19s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Tab_Trl SET Name='Enquadramento Legal Imposto',Updated=TO_TIMESTAMP('2015-10-23 17:15:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=1120199 AND AD_Language='pt_BR'
;

-- 23/10/2015 17h26min54s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
CREATE TABLE LBR_TaxLegalFW (AD_Client_ID NUMERIC(10) NOT NULL, AD_Org_ID NUMERIC(10) NOT NULL, Created TIMESTAMP NOT NULL, CreatedBy NUMERIC(10) NOT NULL, IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, LBR_CSTGroup CHAR(1) NOT NULL, LBR_TaxLegalFW_ID NUMERIC(10) NOT NULL, LBR_TaxName_ID NUMERIC(10) NOT NULL, Name VARCHAR(60) NOT NULL, Updated TIMESTAMP NOT NULL, UpdatedBy NUMERIC(10) NOT NULL, Value VARCHAR(40) NOT NULL)
;

-- 26/10/2015 11h9min36s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1126803,1125545,0,1120199,TO_TIMESTAMP('2015-10-26 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'The record is active in the system',1,'LBRA','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Y','Y','Y','N','N','N','N','N','Active',TO_TIMESTAMP('2015-10-26 11:09:33','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 26/10/2015 11h9min36s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1125545 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 26/10/2015 11h9min37s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1126801,1125546,0,1120199,TO_TIMESTAMP('2015-10-26 11:09:36','YYYY-MM-DD HH24:MI:SS'),100,'Client/Tenant for this installation.',10,'LBRA','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Y','Y','Y','N','N','N','N','N','Client',TO_TIMESTAMP('2015-10-26 11:09:36','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 26/10/2015 11h9min37s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1125546 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 26/10/2015 11h9min38s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1126809,1125547,0,1120199,TO_TIMESTAMP('2015-10-26 11:09:37','YYYY-MM-DD HH24:MI:SS'),100,1,'LBRA','Y','Y','Y','N','N','N','N','N','CST Group',TO_TIMESTAMP('2015-10-26 11:09:37','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 26/10/2015 11h9min38s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1125547 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 26/10/2015 11h9min39s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1126799,1125548,0,1120199,TO_TIMESTAMP('2015-10-26 11:09:38','YYYY-MM-DD HH24:MI:SS'),100,'Alphanumeric identifier of the entity',60,'LBRA','The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.','Y','Y','Y','N','N','N','N','N','Name',TO_TIMESTAMP('2015-10-26 11:09:38','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 26/10/2015 11h9min39s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1125548 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 26/10/2015 11h9min39s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1126802,1125549,0,1120199,TO_TIMESTAMP('2015-10-26 11:09:39','YYYY-MM-DD HH24:MI:SS'),100,'Organizational entity within client',10,'LBRA','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Y','Y','Y','N','N','N','N','N','Organization',TO_TIMESTAMP('2015-10-26 11:09:39','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 26/10/2015 11h9min39s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1125549 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 26/10/2015 11h9min39s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1126800,1125550,0,1120199,TO_TIMESTAMP('2015-10-26 11:09:39','YYYY-MM-DD HH24:MI:SS'),100,'Search key for the record in the format required - must be unique',22,'LBRA','A search key allows you a fast method of finding a particular record.
If you leave the search key empty, the system automatically creates a numeric number.  The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).','Y','Y','Y','N','N','N','N','N','Search Key',TO_TIMESTAMP('2015-10-26 11:09:39','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 26/10/2015 11h9min39s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1125550 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 26/10/2015 11h9min40s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1126798,1125551,0,1120199,TO_TIMESTAMP('2015-10-26 11:09:39','YYYY-MM-DD HH24:MI:SS'),100,10,'LBRA','Y','Y','N','N','N','N','N','N','Tax Legal Framework',TO_TIMESTAMP('2015-10-26 11:09:39','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 26/10/2015 11h9min40s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1125551 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 26/10/2015 11h9min40s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1126808,1125552,0,1120199,TO_TIMESTAMP('2015-10-26 11:09:40','YYYY-MM-DD HH24:MI:SS'),100,'Primary key table LBR_TaxName',10,'LBRA','Primary key table LBR_TaxName','Y','Y','N','N','N','N','N','N','Tax Name',TO_TIMESTAMP('2015-10-26 11:09:40','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 26/10/2015 11h9min40s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1125552 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 26/10/2015 13h24min35s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET DisplayLength=22, SeqNo=10,Updated=TO_TIMESTAMP('2015-10-26 13:24:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125546
;

-- 26/10/2015 13h25min8s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET DisplayLength=22, IsSameLine='Y', SeqNo=20,Updated=TO_TIMESTAMP('2015-10-26 13:25:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125549
;

-- 26/10/2015 13h26min5s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=30,Updated=TO_TIMESTAMP('2015-10-26 13:26:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125550
;

-- 26/10/2015 13h26min30s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET IsSameLine='Y', SeqNo=40,Updated=TO_TIMESTAMP('2015-10-26 13:26:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125545
;

-- 26/10/2015 13h27min4s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=50,Updated=TO_TIMESTAMP('2015-10-26 13:27:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125548
;

-- 26/10/2015 13h27min32s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET DisplayLength=22, SeqNo=60,Updated=TO_TIMESTAMP('2015-10-26 13:27:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125547
;

-- 26/10/2015 15h42min15s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO t_alter_column values('lbr_taxlegalfw','LBR_CSTGroup','CHAR(1)',null,null)
;

-- 26/10/2015 15h45min24s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO t_alter_column values('lbr_taxlegalfw','AD_Client_ID','NUMERIC(10)',null,null)
;

-- 26/10/2015 15h45min36s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO t_alter_column values('lbr_taxlegalfw','AD_Org_ID','NUMERIC(10)',null,null)
;

-- 26/10/2015 15h45min43s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO t_alter_column values('lbr_taxlegalfw','Created','TIMESTAMP',null,null)
;

-- 26/10/2015 15h45min53s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO t_alter_column values('lbr_taxlegalfw','CreatedBy','NUMERIC(10)',null,null)
;

-- 26/10/2015 15h46min1s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO t_alter_column values('lbr_taxlegalfw','IsActive','CHAR(1)',null,'Y')
;

-- 26/10/2015 15h46min2s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE LBR_TaxLegalFW SET IsActive='Y' WHERE IsActive IS NULL
;

-- 26/10/2015 15h46min8s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO t_alter_column values('lbr_taxlegalfw','LBR_CSTGroup','CHAR(1)',null,null)
;

-- 26/10/2015 15h46min16s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO t_alter_column values('lbr_taxlegalfw','LBR_TaxLegalFW_ID','NUMERIC(10)',null,null)
;

-- 26/10/2015 15h46min22s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO t_alter_column values('lbr_taxlegalfw','LBR_TaxName_ID','NUMERIC(10)',null,null)
;

-- 26/10/2015 15h46min28s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO t_alter_column values('lbr_taxlegalfw','Name','VARCHAR(512)',null,null)
;

-- 26/10/2015 15h46min33s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO t_alter_column values('lbr_taxlegalfw','Updated','TIMESTAMP',null,null)
;

-- 26/10/2015 15h46min38s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO t_alter_column values('lbr_taxlegalfw','UpdatedBy','NUMERIC(10)',null,null)
;

-- 26/10/2015 15h46min44s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO t_alter_column values('lbr_taxlegalfw','Value','VARCHAR(40)',null,null)
;
INSERT INTO LBR_TaxLegalFW (AD_Client_ID,AD_Org_ID,LBR_TaxLegalFW_ID,Value,LBR_CSTGroup,Name,LBR_TaxName_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1120000,'001','M','Livros, jornais, periódicos e o papel destinado à sua impressão - Art. 18 Inciso I do Decreto 7.212/2010',1106003,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_TaxLegalFW (AD_Client_ID,AD_Org_ID,LBR_TaxLegalFW_ID,Value,LBR_CSTGroup,Name,LBR_TaxName_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1120001,'002','M','Produtos industrializados destinados ao exterior - Art. 18 Inciso II do Decreto 7.212/2010',1106003,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_TaxLegalFW (AD_Client_ID,AD_Org_ID,LBR_TaxLegalFW_ID,Value,LBR_CSTGroup,Name,LBR_TaxName_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1120002,'003','M','Ouro, definido em lei como ativo financeiro ou instrumento cambial - Art. 18 Inciso III do Decreto 7.212/2010',1106003,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_TaxLegalFW (AD_Client_ID,AD_Org_ID,LBR_TaxLegalFW_ID,Value,LBR_CSTGroup,Name,LBR_TaxName_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1120003,'004','M','Energia elétrica, derivados de petróleo, combustíveis e minerais do País - Art. 18 Inciso IV do Decreto 7.212/2010',1106003,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_TaxLegalFW (AD_Client_ID,AD_Org_ID,LBR_TaxLegalFW_ID,Value,LBR_CSTGroup,Name,LBR_TaxName_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1120004,'005','M','Exportação de produtos nacionais - sem saída do território brasileiro - venda para empresa sediada no exterior - atividades de pesquisa ou lavra de jazidas de petróleo e de gás natural - Art. 19 Inciso I do Decreto 7.212/2010',1106003,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_TaxLegalFW (AD_Client_ID,AD_Org_ID,LBR_TaxLegalFW_ID,Value,LBR_CSTGroup,Name,LBR_TaxName_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1120005,'006','M','Exportação de produtos nacionais - sem saída do território brasileiro - venda para empresa sediada no exterior - incorporados a produto final exportado para o Brasil - Art. 19 Inciso II do Decreto 7.212/2010',1106003,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_TaxLegalFW (AD_Client_ID,AD_Org_ID,LBR_TaxLegalFW_ID,Value,LBR_CSTGroup,Name,LBR_TaxName_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1120006,'007','M','Exportação de produtos nacionais - sem saída do território brasileiro - venda para órgão ou entidade de governo estrangeiro ou organismo internacional de que o Brasil seja membro, para ser entregue, no País, à ordem do comprador - Art. 19 Inciso III do Decreto 7.212/2010',1106003,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_TaxLegalFW (AD_Client_ID,AD_Org_ID,LBR_TaxLegalFW_ID,Value,LBR_CSTGroup,Name,LBR_TaxName_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1120007,'101','S','Óleo de menta em bruto, produzido por lavradores - Art. 43 Inciso I do Decreto 7.212/201',1106003,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_TaxLegalFW (AD_Client_ID,AD_Org_ID,LBR_TaxLegalFW_ID,Value,LBR_CSTGroup,Name,LBR_TaxName_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1120008,'102','S','Produtos remetidos à exposição em feiras de amostras e promoções semelhantes - Art. 43 Inciso II do Decreto 7.212/2010',1106003,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_TaxLegalFW (AD_Client_ID,AD_Org_ID,LBR_TaxLegalFW_ID,Value,LBR_CSTGroup,Name,LBR_TaxName_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1120009,'103','S','Produtos remetidos a depósitos fechados ou armazéns-gerais, bem assim aqueles devolvidos ao remetente - Art. 43 Inciso III do Decreto 7.212/2010',1106003,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_TaxLegalFW (AD_Client_ID,AD_Org_ID,LBR_TaxLegalFW_ID,Value,LBR_CSTGroup,Name,LBR_TaxName_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1120010,'104','S','Produtos industrializados, que com matérias-primas (MP), produtos intermediários (PI) e material de embalagem (ME) importados submetidos a regime aduaneiro especial (drawback - suspensão/isenção), remetidos diretamente a empresas industriais exportadoras - Art. 43 Inciso IV do Decreto 7.212/2010',1106003,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_TaxLegalFW (AD_Client_ID,AD_Org_ID,LBR_TaxLegalFW_ID,Value,LBR_CSTGroup,Name,LBR_TaxName_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1120011,'105','S','Produtos, destinados à exportação, que saiam do estabelecimento industrial para empresas comerciais exportadoras, com o fim específico de exportação - Art. 43, Inciso V, alínea "a" do Decreto 7.212/2010',1106003,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_TaxLegalFW (AD_Client_ID,AD_Org_ID,LBR_TaxLegalFW_ID,Value,LBR_CSTGroup,Name,LBR_TaxName_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1120012,'106','S','Produtos, destinados à exportação, que saiam do estabelecimento industrial para recintos alfandegados onde se processe o despacho aduaneiro de exportação - Art. 43, Inciso V, alíneas "b" do Decreto 7.212/2010',1106003,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_TaxLegalFW (AD_Client_ID,AD_Org_ID,LBR_TaxLegalFW_ID,Value,LBR_CSTGroup,Name,LBR_TaxName_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1120013,'107','S','Produtos, destinados à exportação, que saiam do estabelecimento industrial para outros locais onde se processe o despacho aduaneiro de exportação - Art. 43, Inciso V, alíneas "c" do Decreto 7.212/2010',1106003,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_TaxLegalFW (AD_Client_ID,AD_Org_ID,LBR_TaxLegalFW_ID,Value,LBR_CSTGroup,Name,LBR_TaxName_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1120014,'108','S','Matérias-primas (MP), produtos intermediários (PI) e material de embalagem (ME) destinados ao executor de industrialização por encomenda - Art. 43 Inciso VI do Decreto 7.212/2010',1106003,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_TaxLegalFW (AD_Client_ID,AD_Org_ID,LBR_TaxLegalFW_ID,Value,LBR_CSTGroup,Name,LBR_TaxName_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1120015,'109','S','Produtos industrializados por encomenda remetidos ao estabelecimento de origem - Art. 43 Inciso VII do Decreto 7.212/2010',1106003,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_TaxLegalFW (AD_Client_ID,AD_Org_ID,LBR_TaxLegalFW_ID,Value,LBR_CSTGroup,Name,LBR_TaxName_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1120016,'110','S','Matérias-primas ou produtos intermediários remetidos para emprego em operação industrial realizada pelo remetente fora do estabelecimento - Art. 43 Inciso VIII do Decreto 7.212/2010',1106003,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_TaxLegalFW (AD_Client_ID,AD_Org_ID,LBR_TaxLegalFW_ID,Value,LBR_CSTGroup,Name,LBR_TaxName_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1120017,'111','S','Veículo, aeronave ou embarcação destinados a emprego em provas de engenharia pelo fabricante - Art. 43 Inciso IX do Decreto 7.212/2010',1106003,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_TaxLegalFW (AD_Client_ID,AD_Org_ID,LBR_TaxLegalFW_ID,Value,LBR_CSTGroup,Name,LBR_TaxName_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1120018,'112','S','Produtos remetidos, para industrialização ou comércio, de um para outro estabelecimento da mesma firma - Art. 43 Inciso X do Decreto 7.212/2010',1106003,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_TaxLegalFW (AD_Client_ID,AD_Org_ID,LBR_TaxLegalFW_ID,Value,LBR_CSTGroup,Name,LBR_TaxName_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1120019,'113','S','Bens do ativo permanente remetidos a outro estabelecimento da mesma firma, para serem utilizados no processo industrial do recebedor - Art. 43 Inciso XI do Decreto 7.212/2010',1106003,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_TaxLegalFW (AD_Client_ID,AD_Org_ID,LBR_TaxLegalFW_ID,Value,LBR_CSTGroup,Name,LBR_TaxName_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1120020,'114','S','Bens do ativo permanente remetidos a outro estabelecimento, para serem utilizados no processo industrial de produtos encomendados pelo remetente - Art. 43 Inciso XII do Decreto 7.212/2010',1106003,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_TaxLegalFW (AD_Client_ID,AD_Org_ID,LBR_TaxLegalFW_ID,Value,LBR_CSTGroup,Name,LBR_TaxName_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1120021,'115','S','Partes e peças destinadas ao reparo de produtos com defeito de fabricação, quando a operação for executada gratuitamente, em virtude de garantia - Art. 43 Inciso XIII do Decreto 7.212/2010',1106003,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_TaxLegalFW (AD_Client_ID,AD_Org_ID,LBR_TaxLegalFW_ID,Value,LBR_CSTGroup,Name,LBR_TaxName_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1120022,'116','S','Matérias-primas (MP), produtos intermediários (PI) e material de embalagem (ME) de fabricação nacional, vendidos a estabelecimento industrial, para industrialização de produtos destinados à exportação ou a estabelecimento comercial, para industrialização em outro estabelecimento da mesma firma ou de terceiro, de produto destinado à exportação - Art. 43 Inciso XIV do Decreto 7.212/2010',1106003,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_TaxLegalFW (AD_Client_ID,AD_Org_ID,LBR_TaxLegalFW_ID,Value,LBR_CSTGroup,Name,LBR_TaxName_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1120023,'117','S','Produtos para emprego ou consumo na industrialização ou elaboração de produto a ser exportado, adquiridos no mercado interno ou importados - Art. 43 Inciso XV do Decreto 7.212/2010',1106003,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_TaxLegalFW (AD_Client_ID,AD_Org_ID,LBR_TaxLegalFW_ID,Value,LBR_CSTGroup,Name,LBR_TaxName_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1120024,'118','S','Bebidas alcóolicas e demais produtos de produção nacional acondicionados em recipientes de capacidade superior ao limite máximo permitido para venda a varejo - Art. 44 do Decreto 7.212/2010',1106003,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_TaxLegalFW (AD_Client_ID,AD_Org_ID,LBR_TaxLegalFW_ID,Value,LBR_CSTGroup,Name,LBR_TaxName_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1120025,'119','S','Produtos classificados NCM 21.06.90.10 Ex 02, 22.01, 22.02, exceto os Ex 01 e Ex 02 do Código 22.02.90.00 e 22.03 saídos de estabelecimento industrial destinado a comercial equiparado a industrial - Art. 45 Inciso I do Decreto7.212/2010',1106003,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_TaxLegalFW (AD_Client_ID,AD_Org_ID,LBR_TaxLegalFW_ID,Value,LBR_CSTGroup,Name,LBR_TaxName_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1120026,'120','S','Produtos classificados NCM 21.06.90.10 Ex 02, 22.01, 22.02, exceto os Ex 01 e Ex 02 do Código 22.02.90.00 e 22.03 saídos de estabelecimento comercial equiparado a industrial destinado a equiparado a industrial - Art. 45 Inciso II do Decreto7.212/2010',1106003,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_TaxLegalFW (AD_Client_ID,AD_Org_ID,LBR_TaxLegalFW_ID,Value,LBR_CSTGroup,Name,LBR_TaxName_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1120027,'121','S','Produtos classificados NCM 21.06.90.10 Ex 02, 22.01, 22.02, exceto os Ex 01 e Ex 02 do Código 22.02.90.00 e 22.03 saídos de importador destinado a equiparado a industrial – Art. 45 Inciso III do Decreto7.212/2010',1106003,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_TaxLegalFW (AD_Client_ID,AD_Org_ID,LBR_TaxLegalFW_ID,Value,LBR_CSTGroup,Name,LBR_TaxName_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1120028,'122','S','Matérias-primas (MP), produtos intermediários (PI) e material de embalagem (ME) destinados a estabelecimento que se dedique à elaboração de produtos classificados nos códigos previstos no art. 25 da Lei 10.684/2003 - Art. 46 Inciso I do Decreto 7.212/2010',1106003,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_TaxLegalFW (AD_Client_ID,AD_Org_ID,LBR_TaxLegalFW_ID,Value,LBR_CSTGroup,Name,LBR_TaxName_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1120029,'123','S','Matérias-primas (MP), produtos intermediários (PI) e material de embalagem (ME) adquiridos por estabelecimentos industriais fabricantes de partes e peças destinadas a estabelecimento industrial fabricante de produto classificado no Capítulo 88 da Tipi - Art. 46 Inciso II do Decreto 7.212/2010',1106003,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_TaxLegalFW (AD_Client_ID,AD_Org_ID,LBR_TaxLegalFW_ID,Value,LBR_CSTGroup,Name,LBR_TaxName_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1120030,'124','S','Matérias-primas (MP), produtos intermediários (PI) e material de embalagem (ME) adquiridos por pessoas jurídicas preponderantemente exportadoras - Art. 46 Inciso III do Decreto 7.212/2010',1106003,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_TaxLegalFW (AD_Client_ID,AD_Org_ID,LBR_TaxLegalFW_ID,Value,LBR_CSTGroup,Name,LBR_TaxName_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1120031,'125','S','Materiais e equipamentos destinados a embarcações pré-registradas ou registradas no Registro Especial Brasileira - REB quando adquiridos por estaleiros navais brasileiros – Art. 46 Inciso IV do Decreto 7.212/2010',1106003,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_TaxLegalFW (AD_Client_ID,AD_Org_ID,LBR_TaxLegalFW_ID,Value,LBR_CSTGroup,Name,LBR_TaxName_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1120032,'126','S','Aquisição por beneficiário de regime aduaneiro suspensivo do imposto, destinado a industrialização para exportação - Art. 47 do Decreto 7.212/2010',1106003,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_TaxLegalFW (AD_Client_ID,AD_Org_ID,LBR_TaxLegalFW_ID,Value,LBR_CSTGroup,Name,LBR_TaxName_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1120033,'127','S','Desembaraço de produtos de procedência estrangeira importados por lojas francas - Art. 48 Inciso I do Decreto 7.212/2010',1106003,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_TaxLegalFW (AD_Client_ID,AD_Org_ID,LBR_TaxLegalFW_ID,Value,LBR_CSTGroup,Name,LBR_TaxName_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1120034,'128','S','Desembaraço de maquinas, equipamentos, veículos, aparelhos e instrumentos sem similar nacional importados por empresas nacionais de engenharia, destinados à execução de obras no exterior - Art. 48 Inciso II do Decreto 7.212/2010',1106003,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_TaxLegalFW (AD_Client_ID,AD_Org_ID,LBR_TaxLegalFW_ID,Value,LBR_CSTGroup,Name,LBR_TaxName_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1120035,'129','S','Desembaraço de produtos de procedência estrangeira com saída de repartições aduaneiras com suspensão do Imposto de Importação - Art. 48 Inciso III do Decreto 7.212/2010',1106003,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_TaxLegalFW (AD_Client_ID,AD_Org_ID,LBR_TaxLegalFW_ID,Value,LBR_CSTGroup,Name,LBR_TaxName_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1120036,'130','S','Desembaraço de matérias-primas, produtos intermediários e materiais de embalagem, importados diretamente por estabelecimento de que tratam os incisos I a III do caput do Decreto 7.212/2010 - Art. 48 Inciso IV do Decreto 7.212/2010',1106003,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_TaxLegalFW (AD_Client_ID,AD_Org_ID,LBR_TaxLegalFW_ID,Value,LBR_CSTGroup,Name,LBR_TaxName_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1120037,'131','S','Remessa de produtos para a ZFM destinados ao seu consumo interno, utilização ou industrialização - Art. 84 do Decreto 7.212/2010',1106003,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_TaxLegalFW (AD_Client_ID,AD_Org_ID,LBR_TaxLegalFW_ID,Value,LBR_CSTGroup,Name,LBR_TaxName_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1120038,'132','S','Remessa de produtos para a ZFM destinados à exportação - Art. 85 Inciso I do Decreto 7.212/2010',1106003,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_TaxLegalFW (AD_Client_ID,AD_Org_ID,LBR_TaxLegalFW_ID,Value,LBR_CSTGroup,Name,LBR_TaxName_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1120039,'133','S','Produtos que, antes de sua remessa à ZFM, forem enviados pelo seu fabricante a outro estabelecimento, para industrialização adicional, por conta e ordem do destinatário - Art. 85 Inciso II do Decreto 7.212/2010',1106003,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_TaxLegalFW (AD_Client_ID,AD_Org_ID,LBR_TaxLegalFW_ID,Value,LBR_CSTGroup,Name,LBR_TaxName_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1120040,'134','S','Desembaraço de produtos de procedência estrangeira importados pela ZFM quando ali consumidos ou utilizados, exceto armas, munições, fumo, bebidas alcoólicas e automóveis de passageiros. - Art. 86 do Decreto 7.212/2010',1106003,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_TaxLegalFW (AD_Client_ID,AD_Org_ID,LBR_TaxLegalFW_ID,Value,LBR_CSTGroup,Name,LBR_TaxName_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1120041,'135','S','Remessa de produtos para a Amazônia Ocidental destinados ao seu consumo interno ou utilização - Art. 96 do Decreto 7.212/2010',1106003,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_TaxLegalFW (AD_Client_ID,AD_Org_ID,LBR_TaxLegalFW_ID,Value,LBR_CSTGroup,Name,LBR_TaxName_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1120042,'136','S','Entrada de produtos estrangeiros na Área de Livre Comércio de Tabatinga – ALCT destinados ao seu consumo interno ou utilização - Art. 106 do Decreto 7.212/2010',1106003,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_TaxLegalFW (AD_Client_ID,AD_Org_ID,LBR_TaxLegalFW_ID,Value,LBR_CSTGroup,Name,LBR_TaxName_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1120043,'137','S','Entrada de produtos estrangeiros na Área de Livre Comércio de Guajará-Mirim – ALCGM destinados ao seu consumo interno ou utilização - Art. 109 do Decreto 7.212/2010',1106003,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_TaxLegalFW (AD_Client_ID,AD_Org_ID,LBR_TaxLegalFW_ID,Value,LBR_CSTGroup,Name,LBR_TaxName_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1120044,'138','S','Entrada de produtos estrangeiros nas Áreas de Livre Comércio de Boa Vista - ALCBV e Bomfim - ALCB destinados a seu consumo interno ou utilização - Art. 112 do Decreto 7.212/2010',1106003,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_TaxLegalFW (AD_Client_ID,AD_Org_ID,LBR_TaxLegalFW_ID,Value,LBR_CSTGroup,Name,LBR_TaxName_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1120045,'139','S','Entrada de produtos estrangeiros na Área de Livre Comércio de Macapá e Santana – ALCMS destinados a seu consumo interno ou utilização - Art. 116 do Decreto 7.212/2010',1106003,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_TaxLegalFW (AD_Client_ID,AD_Org_ID,LBR_TaxLegalFW_ID,Value,LBR_CSTGroup,Name,LBR_TaxName_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1120046,'140','S','Entrada de produtos estrangeiros nas Áreas de Livre Comércio de Brasiléia - ALCB e de Cruzeiro do Sul - ALCCS destinados a seu consumo interno ou utilização - Art. 119 do Decreto 7.212/2010',1106003,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_TaxLegalFW (AD_Client_ID,AD_Org_ID,LBR_TaxLegalFW_ID,Value,LBR_CSTGroup,Name,LBR_TaxName_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1120047,'141','S','Remessa para Zona de Processamento de Exportação - ZPE - Art. 121 do Decreto 7.212/2010',1106003,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_TaxLegalFW (AD_Client_ID,AD_Org_ID,LBR_TaxLegalFW_ID,Value,LBR_CSTGroup,Name,LBR_TaxName_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1120048,'142','S','Setor Automotivo - Desembaraço aduaneiro, chassis e outros - regime aduaneiro especial – industrialização 87.01 a 87.05 - Art. 136, I do Decreto 7.212/2010',1106003,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_TaxLegalFW (AD_Client_ID,AD_Org_ID,LBR_TaxLegalFW_ID,Value,LBR_CSTGroup,Name,LBR_TaxName_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1120049,'143','S','Setor Automotivo - Do estabelecimento industrial produtos 87.01 a 87.05 da TIPI – mercado interno - empresa comercial atacadista controlada por PJ encomendante do exterior. - Art. 136, II do Decreto 7.212/2010',1106003,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_TaxLegalFW (AD_Client_ID,AD_Org_ID,LBR_TaxLegalFW_ID,Value,LBR_CSTGroup,Name,LBR_TaxName_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1120050,'144','S','Setor Automotivo - Do estabelecimento industrial - chassis e outros classificados nas posições 84.29, 84.32, 84.33, 87.01 a 87.06 e 87.11 da TIPI. - Art. 136, III do Decreto 7.212/2010',1106003,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_TaxLegalFW (AD_Client_ID,AD_Org_ID,LBR_TaxLegalFW_ID,Value,LBR_CSTGroup,Name,LBR_TaxName_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1120051,'145','S','Setor Automotivo - Desembaraço aduaneiro, chassis e outros classificados nas posições 84.29, 84.32, 84.33, 87.01 a 87.06 e 87.11 da TIPI quando importados diretamente por estabelecimento industrial - Art. 136, IV do Decreto 7.212/2010',1106003,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_TaxLegalFW (AD_Client_ID,AD_Org_ID,LBR_TaxLegalFW_ID,Value,LBR_CSTGroup,Name,LBR_TaxName_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1120052,'146','S','Setor Automotivo - do estabelecimento industrial matérias-primas, os produtos intermediários e os materiais de embalagem, adquiridos por fabricantes, preponderantemente, de componentes, chassis e outros classificados nos Códigos 84.29, 8432.40.00, 8432.80.00, 8433.20, 8433.30.00, 8433.40.00, 8433.5 e 87.01 a 87.06 da TIPI – Art. 136, V do Decreto 7.212/2010',1106003,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_TaxLegalFW (AD_Client_ID,AD_Org_ID,LBR_TaxLegalFW_ID,Value,LBR_CSTGroup,Name,LBR_TaxName_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1120053,'147','S','Setor Automotivo - Desembaraço aduaneiro, as matérias-primas, os produtos intermediários e os materiais de embalagem, importados diretamente por fabricantes, preponderantemente, de componentes, chassis e outros classificados nos Códigos 84.29, 8432.40.00, 8432.80.00, 8433.20, 8433.30.00, 8433.40.00, 8433.5 e 87.01 a 87.06 da TIPI – Art. 136, VI do Decreto 7.212/2010',1106003,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_TaxLegalFW (AD_Client_ID,AD_Org_ID,LBR_TaxLegalFW_ID,Value,LBR_CSTGroup,Name,LBR_TaxName_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1120054,'148','S','Bens de Informática e Automação - matérias-primas, os produtos intermediários e os materiais de embalagem, quando adquiridos por estabelecimentos industriais fabricantes dos referidos bens. - Art. 148 do Decreto 7.212/2010',1106003,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_TaxLegalFW (AD_Client_ID,AD_Org_ID,LBR_TaxLegalFW_ID,Value,LBR_CSTGroup,Name,LBR_TaxName_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1120055,'149','S','Reporto - Saída de Estabelecimento de máquinas e outros quando adquiridos por beneficiários do REPORTO - Art. 166, I do Decreto 7.212/2010',1106003,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_TaxLegalFW (AD_Client_ID,AD_Org_ID,LBR_TaxLegalFW_ID,Value,LBR_CSTGroup,Name,LBR_TaxName_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1120056,'150','S','Reporto - Desembaraço aduaneiro de máquinas e outros quando adquiridos por beneficiários do REPORTO - Art. 166, II do Decreto 7.212/2010',1106003,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_TaxLegalFW (AD_Client_ID,AD_Org_ID,LBR_TaxLegalFW_ID,Value,LBR_CSTGroup,Name,LBR_TaxName_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1120057,'151','S','Repes - Desembaraço aduaneiro - bens sem similar nacional importados por beneficiários do REPES - Art. 171 do Decreto 7.212/2010',1106003,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_TaxLegalFW (AD_Client_ID,AD_Org_ID,LBR_TaxLegalFW_ID,Value,LBR_CSTGroup,Name,LBR_TaxName_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1120058,'152','S','Recine - Saída para beneficiário do regime - Art. 14, III da Lei 12.599/2012',1106003,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_TaxLegalFW (AD_Client_ID,AD_Org_ID,LBR_TaxLegalFW_ID,Value,LBR_CSTGroup,Name,LBR_TaxName_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1120059,'153','S','Recine - Desembaraço aduaneiro por beneficiário do regime - Art. 14, IV da Lei 12.599/2012',1106003,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_TaxLegalFW (AD_Client_ID,AD_Org_ID,LBR_TaxLegalFW_ID,Value,LBR_CSTGroup,Name,LBR_TaxName_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1120060,'154','S','Reif - Saída para beneficiário do regime - Lei 12.794/1013, art. 8, III',1106003,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y');
INSERT INTO LBR_TaxLegalFW (AD_Client_ID,AD_Org_ID,LBR_TaxLegalFW_ID,Value,LBR_CSTGroup,Name,LBR_TaxName_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1120061,'155','S','Reif - Desembaraço aduaneiro por beneficiário do regime - Lei 12.794/1013, art. 8, IV',1106003,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_TaxLegalFW (AD_Client_ID,AD_Org_ID,LBR_TaxLegalFW_ID,Value,LBR_CSTGroup,Name,LBR_TaxName_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1120062,'156','S','Repnbl-Redes - Saída para beneficiário do regime - Lei no 12.715/2012, art. 30, II',1106003,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_TaxLegalFW (AD_Client_ID,AD_Org_ID,LBR_TaxLegalFW_ID,Value,LBR_CSTGroup,Name,LBR_TaxName_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1120063,'157','S','Recompe - Saída de matérias-primas e produtos intermediários para beneficiários do regime - Decreto no 7.243/2010, art. 5o, I',1106003,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_TaxLegalFW (AD_Client_ID,AD_Org_ID,LBR_TaxLegalFW_ID,Value,LBR_CSTGroup,Name,LBR_TaxName_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1120064,'158','S','Recompe - Saída de matérias-primas e produtos intermediários destinados a industrialização de equipamentos - Programa Estímulo Universidade-Empresa - Apoio à Inovação - Decreto no 7.243/2010, art. 5o, III',1106003,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_TaxLegalFW (AD_Client_ID,AD_Org_ID,LBR_TaxLegalFW_ID,Value,LBR_CSTGroup,Name,LBR_TaxName_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1120065,'159','S','Rio 2016 - Produtos nacionais, duráveis, uso e consumo dos eventos, adquiridos pelas pessoas jurídicas mencionadas no § 2o do art. 4o da Lei no 12.780/2013 - Lei no 12.780/2013, Art. 13',1106003,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_TaxLegalFW (AD_Client_ID,AD_Org_ID,LBR_TaxLegalFW_ID,Value,LBR_CSTGroup,Name,LBR_TaxName_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1120066,'301','I','Produtos industrializados por instituições de educação ou de assistência social, destinados a uso próprio ou a distribuição gratuita a seus educandos ou assistidos - Art. 54 Inciso I do Decreto 7.212/2010',1106003,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_TaxLegalFW (AD_Client_ID,AD_Org_ID,LBR_TaxLegalFW_ID,Value,LBR_CSTGroup,Name,LBR_TaxName_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1120067,'302','I','Produtos industrializados por estabelecimentos públicos e autárquicos da União, dos Estados, do Distrito Federal e dos Municípios, não destinados a comércio - Art. 54 Inciso II do Decreto 7.212/2010',1106003,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_TaxLegalFW (AD_Client_ID,AD_Org_ID,LBR_TaxLegalFW_ID,Value,LBR_CSTGroup,Name,LBR_TaxName_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1120068,'303','I','Amostras de produtos para distribuição gratuita, de diminuto ou nenhum valor comercial – Art. 54 Inciso III do Decreto 7.212/2010',1106003,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_TaxLegalFW (AD_Client_ID,AD_Org_ID,LBR_TaxLegalFW_ID,Value,LBR_CSTGroup,Name,LBR_TaxName_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1120069,'304','I','Amostras de tecidos sem valor comercial - Art. 54 Inciso IV do Decreto 7.212/2010',1106003,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_TaxLegalFW (AD_Client_ID,AD_Org_ID,LBR_TaxLegalFW_ID,Value,LBR_CSTGroup,Name,LBR_TaxName_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1120070,'305','I','Pés isolados de calçados - Art. 54 Inciso V do Decreto 7.212/2010',1106003,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_TaxLegalFW (AD_Client_ID,AD_Org_ID,LBR_TaxLegalFW_ID,Value,LBR_CSTGroup,Name,LBR_TaxName_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1120071,'306','I','Aeronaves de uso militar e suas partes e peças, vendidas à União - Art. 54 Inciso VI do Decreto 7.212/2010',1106003,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_TaxLegalFW (AD_Client_ID,AD_Org_ID,LBR_TaxLegalFW_ID,Value,LBR_CSTGroup,Name,LBR_TaxName_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1120072,'307','I','Caixões funerários - Art. 54 Inciso VII do Decreto 7.212/2010',1106003,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_TaxLegalFW (AD_Client_ID,AD_Org_ID,LBR_TaxLegalFW_ID,Value,LBR_CSTGroup,Name,LBR_TaxName_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1120073,'308','I','Papel destinado à impressão de músicas - Art. 54 Inciso VIII do Decreto 7.212/2010',1106003,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_TaxLegalFW (AD_Client_ID,AD_Org_ID,LBR_TaxLegalFW_ID,Value,LBR_CSTGroup,Name,LBR_TaxName_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1120074,'309','I','Panelas e outros artefatos semelhantes, de uso doméstico, de fabricação rústica, de pedra ou barro bruto - Art. 54 Inciso IX do Decreto 7.212/2010',1106003,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_TaxLegalFW (AD_Client_ID,AD_Org_ID,LBR_TaxLegalFW_ID,Value,LBR_CSTGroup,Name,LBR_TaxName_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1120075,'310','I','Chapéus, roupas e proteção, de couro, próprios para tropeiros - Art. 54 Inciso X do Decreto 7.212/2010',1106003,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_TaxLegalFW (AD_Client_ID,AD_Org_ID,LBR_TaxLegalFW_ID,Value,LBR_CSTGroup,Name,LBR_TaxName_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1120076,'311','I','Material bélico, de uso privativo das Forças Armadas, vendido à União - Art. 54 Inciso XI do Decreto 7.212/2010',1106003,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_TaxLegalFW (AD_Client_ID,AD_Org_ID,LBR_TaxLegalFW_ID,Value,LBR_CSTGroup,Name,LBR_TaxName_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1120077,'312','I','Automóvel adquirido diretamente a fabricante nacional, pelas missões diplomáticas e repartições consulares de caráter permanente, ou seus integrantes, bem assim pelas representações internacionais ou regionais de que o Brasil seja membro, e seus funcionários, peritos, técnicos e consultores, de nacionalidade estrangeira, que exerçam funções de caráter permanente - Art. 54 Inciso XII do Decreto 7.212/2010',1106003,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_TaxLegalFW (AD_Client_ID,AD_Org_ID,LBR_TaxLegalFW_ID,Value,LBR_CSTGroup,Name,LBR_TaxName_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1120078,'313','I','Veículo de fabricação nacional adquirido por funcionário das missões diplomáticas acreditadas junto ao Governo Brasileiro - Art. 54 Inciso XIII do Decreto 7.212/2010',1106003,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_TaxLegalFW (AD_Client_ID,AD_Org_ID,LBR_TaxLegalFW_ID,Value,LBR_CSTGroup,Name,LBR_TaxName_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1120079,'314','I','Produtos nacionais saídos diretamente para Lojas Francas - Art. 54 Inciso XIV do Decreto 7.212/2010',1106003,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_TaxLegalFW (AD_Client_ID,AD_Org_ID,LBR_TaxLegalFW_ID,Value,LBR_CSTGroup,Name,LBR_TaxName_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1120080,'315','I','Materiais e equipamentos destinados a Itaipu Binacional - Art. 54 Inciso XV do Decreto 7.212/2010',1106003,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_TaxLegalFW (AD_Client_ID,AD_Org_ID,LBR_TaxLegalFW_ID,Value,LBR_CSTGroup,Name,LBR_TaxName_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1120081,'316','I','Produtos Importados por missões diplomáticas, consulados ou organismo internacional – Art. 54 Inciso XVI do Decreto 7.212/2010',1106003,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_TaxLegalFW (AD_Client_ID,AD_Org_ID,LBR_TaxLegalFW_ID,Value,LBR_CSTGroup,Name,LBR_TaxName_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1120082,'317','I','Bagagem de passageiros desembaraçada com isenção do II. - Art. 54 Inciso XVII do Decreto 7.212/2010',1106003,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_TaxLegalFW (AD_Client_ID,AD_Org_ID,LBR_TaxLegalFW_ID,Value,LBR_CSTGroup,Name,LBR_TaxName_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1120083,'318','I','Bagagem de passageiros desembaraçada com pagamento do II. - Art. 54 Inciso XVIII do Decreto 7.212/2010',1106003,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_TaxLegalFW (AD_Client_ID,AD_Org_ID,LBR_TaxLegalFW_ID,Value,LBR_CSTGroup,Name,LBR_TaxName_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1120084,'319','I','Remessas postais internacionais sujeitas a tributação simplificada. - Art. 54 Inciso XIX do Decreto 7.212/2010',1106003,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_TaxLegalFW (AD_Client_ID,AD_Org_ID,LBR_TaxLegalFW_ID,Value,LBR_CSTGroup,Name,LBR_TaxName_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1120085,'320','I','Máquinas e outros destinados à pesquisa científica e tecnológica - Art. 54 Inciso XX do Decreto 7.212/2010',1106003,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_TaxLegalFW (AD_Client_ID,AD_Org_ID,LBR_TaxLegalFW_ID,Value,LBR_CSTGroup,Name,LBR_TaxName_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1120086,'321','I','Produtos de procedência estrangeira, isentos do II conforme Lei no 8032/1990. - Art. 54 Inciso XXI do Decreto 7.212/2010',1106003,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_TaxLegalFW (AD_Client_ID,AD_Org_ID,LBR_TaxLegalFW_ID,Value,LBR_CSTGroup,Name,LBR_TaxName_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1120087,'322','I','Produtos de procedência estrangeira utilizados em eventos esportivos - Art. 54 Inciso XXII do Decreto 7.212/2010',1106003,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_TaxLegalFW (AD_Client_ID,AD_Org_ID,LBR_TaxLegalFW_ID,Value,LBR_CSTGroup,Name,LBR_TaxName_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1120088,'323','I','Veículos automotores, máquinas, equipamentos, bem assim suas partes e peças separadas, destinadas à utilização nas atividades dos Corpos de Bombeiros - Art. 54 Inciso XXIII do Decreto 7.212/2010',1106003,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_TaxLegalFW (AD_Client_ID,AD_Org_ID,LBR_TaxLegalFW_ID,Value,LBR_CSTGroup,Name,LBR_TaxName_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1120089,'324','I','Produtos importados para consumo em congressos, feiras e exposições - Art. 54 Inciso XXIV do Decreto 7.212/2010',1106003,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_TaxLegalFW (AD_Client_ID,AD_Org_ID,LBR_TaxLegalFW_ID,Value,LBR_CSTGroup,Name,LBR_TaxName_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1120090,'325','I','Bens de informática, Matéria Prima, produtos intermediários e embalagem destinados a Urnas eletrônicas - TSE - Art. 54 Inciso XXV do Decreto 7.212/2010',1106003,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_TaxLegalFW (AD_Client_ID,AD_Org_ID,LBR_TaxLegalFW_ID,Value,LBR_CSTGroup,Name,LBR_TaxName_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1120091,'326','I','Materiais, equipamentos, máquinas, aparelhos e instrumentos, bem assim os respectivos acessórios, sobressalentes e ferramentas, que os acompanhem, destinados à construção do Gasoduto Brasil - Bolívia - Art. 54 Inciso XXVI do Decreto 7.212/2010',1106003,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_TaxLegalFW (AD_Client_ID,AD_Org_ID,LBR_TaxLegalFW_ID,Value,LBR_CSTGroup,Name,LBR_TaxName_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1120092,'327','I','Partes, peças e componentes, adquiridos por estaleiros navais brasileiros, destinados ao emprego na conservação, modernização, conversão ou reparo de embarcações registradas no Registro Especial Brasileiro - REB - Art. 54 Inciso XXVII do Decreto 7.212/2010',1106003,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_TaxLegalFW (AD_Client_ID,AD_Org_ID,LBR_TaxLegalFW_ID,Value,LBR_CSTGroup,Name,LBR_TaxName_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1120093,'328','I','Aparelhos transmissores e receptores de radiotelefonia e radiotelegrafia; veículos para patrulhamento policial; armas e munições, destinados a órgãos de segurança pública da União, dos Estados e do Distrito Federal - Art. 54 Inciso XXVIII do Decreto 7.212/2010',1106003,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_TaxLegalFW (AD_Client_ID,AD_Org_ID,LBR_TaxLegalFW_ID,Value,LBR_CSTGroup,Name,LBR_TaxName_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1120094,'329','I','Automóveis de passageiros de fabricação nacional destinados à utilização como táxi adquiridos por motoristas profissionais - Art. 55 Inciso I do Decreto 7.212/2010',1106003,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_TaxLegalFW (AD_Client_ID,AD_Org_ID,LBR_TaxLegalFW_ID,Value,LBR_CSTGroup,Name,LBR_TaxName_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1120095,'330','I','Automóveis de passageiros de fabricação nacional destinados à utilização como táxi por impedidos de exercer atividade por destruição, furto ou roubo do veículo adquiridos por motoristas profissionais. - Art. 55 Inciso II do Decreto 7.212/2010',1106003,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_TaxLegalFW (AD_Client_ID,AD_Org_ID,LBR_TaxLegalFW_ID,Value,LBR_CSTGroup,Name,LBR_TaxName_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1120096,'331','I','Automóveis de passageiros de fabricação nacional destinados à utilização como táxi adquiridos por cooperativas de trabalho. - Art. 55 Inciso II do Decreto 7.212/2010',1106003,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_TaxLegalFW (AD_Client_ID,AD_Org_ID,LBR_TaxLegalFW_ID,Value,LBR_CSTGroup,Name,LBR_TaxName_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1120097,'332','I','Automóveis de passageiros de fabricação nacional, destinados a pessoas portadoras de deficiência física, visual, mental severa ou profunda, ou autistas - Art. 55 Inciso IV do Decreto 7.212/2010',1106003,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_TaxLegalFW (AD_Client_ID,AD_Org_ID,LBR_TaxLegalFW_ID,Value,LBR_CSTGroup,Name,LBR_TaxName_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1120098,'333','I','Produtos estrangeiros, recebidos em doação de representações diplomáticas estrangeiras sediadas no País, vendidos em feiras, bazares e eventos semelhantes por entidades beneficentes - Art. 67 do Decreto 7.212/2010',1106003,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_TaxLegalFW (AD_Client_ID,AD_Org_ID,LBR_TaxLegalFW_ID,Value,LBR_CSTGroup,Name,LBR_TaxName_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1120099,'334','I','Produtos industrializados na Zona Franca de Manaus - ZFM, destinados ao seu consumo interno - Art. 81 Inciso I do Decreto 7.212/2010',1106003,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_TaxLegalFW (AD_Client_ID,AD_Org_ID,LBR_TaxLegalFW_ID,Value,LBR_CSTGroup,Name,LBR_TaxName_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1120100,'335','I','Produtos industrializados na ZFM, por estabelecimentos com projetos aprovados pela SUFRAMA, destinados a comercialização em qualquer outro ponto do Território Nacional – Art. 81 Inciso II do Decreto 7.212/2010',1106003,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_TaxLegalFW (AD_Client_ID,AD_Org_ID,LBR_TaxLegalFW_ID,Value,LBR_CSTGroup,Name,LBR_TaxName_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1120101,'336','I','Produtos nacionais destinados à entrada na ZFM, para seu consumo interno, utilização ou industrialização, ou ainda, para serem remetidos, por intermédio de seus entrepostos, à Amazônia Ocidental - Art. 81 Inciso III do Decreto 7.212/2010',1106003,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_TaxLegalFW (AD_Client_ID,AD_Org_ID,LBR_TaxLegalFW_ID,Value,LBR_CSTGroup,Name,LBR_TaxName_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1120102,'337','I','Produtos industrializados por estabelecimentos com projetos aprovados pela SUFRAMA, consumidos ou utilizados na Amazônia Ocidental, ou adquiridos através da ZFM ou de seus entrepostos na referida região - Art. 95 Inciso I do Decreto 7.212/2010',1106003,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_TaxLegalFW (AD_Client_ID,AD_Org_ID,LBR_TaxLegalFW_ID,Value,LBR_CSTGroup,Name,LBR_TaxName_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1120103,'338','I','Produtos de procedência estrangeira, relacionados na legislação, oriundos da ZFM e que derem entrada na Amazônia Ocidental para ali serem consumidos ou utilizados: - Art. 95 Inciso II do Decreto 7.212/2010',1106003,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_TaxLegalFW (AD_Client_ID,AD_Org_ID,LBR_TaxLegalFW_ID,Value,LBR_CSTGroup,Name,LBR_TaxName_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1120104,'339','I','Produtos elaborados com matérias-primas agrícolas e extrativas vegetais de produção regional, por estabelecimentos industriais localizados na Amazônia Ocidental, com projetos aprovados pela SUFRAMA - Art. 95 Inciso III do Decreto 7.212/2010',1106003,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_TaxLegalFW (AD_Client_ID,AD_Org_ID,LBR_TaxLegalFW_ID,Value,LBR_CSTGroup,Name,LBR_TaxName_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1120105,'340','I','Produtos industrializados em Área de Livre Comércio - Art. 105 do Decreto 7.212/2010',1106003,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_TaxLegalFW (AD_Client_ID,AD_Org_ID,LBR_TaxLegalFW_ID,Value,LBR_CSTGroup,Name,LBR_TaxName_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1120106,'341','I','Produtos nacionais ou nacionalizados, destinados à entrada na Área de Livre Comércio de Tabatinga - ALCT - Art. 107 do Decreto 7.212/2010',1106003,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_TaxLegalFW (AD_Client_ID,AD_Org_ID,LBR_TaxLegalFW_ID,Value,LBR_CSTGroup,Name,LBR_TaxName_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1120107,'342','I','Produtos nacionais ou nacionalizados, destinados à entrada na Área de Livre Comércio de Guajará-Mirim - ALCGM - Art. 110 do Decreto 7.212/2010',1106003,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_TaxLegalFW (AD_Client_ID,AD_Org_ID,LBR_TaxLegalFW_ID,Value,LBR_CSTGroup,Name,LBR_TaxName_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1120108,'343','I','Produtos nacionais ou nacionalizados, destinados à entrada nas Áreas de Livre Comércio de Boa Vista - ALCBV e Bonfim - ALCB - Art. 113 do Decreto 7.212/2010',1106003,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_TaxLegalFW (AD_Client_ID,AD_Org_ID,LBR_TaxLegalFW_ID,Value,LBR_CSTGroup,Name,LBR_TaxName_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1120109,'344','I','Produtos nacionais ou nacionalizados, destinados à entrada na Área de Livre Comércio de Macapá e Santana - ALCMS - Art. 117 do Decreto 7.212/2010',1106003,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_TaxLegalFW (AD_Client_ID,AD_Org_ID,LBR_TaxLegalFW_ID,Value,LBR_CSTGroup,Name,LBR_TaxName_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1120110,'345','I','Produtos nacionais ou nacionalizados, destinados à entrada nas Áreas de Livre Comércio de Brasiléia - ALCB e de Cruzeiro do Sul - ALCCS - Art. 120 do Decreto 7.212/2010',1106003,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_TaxLegalFW (AD_Client_ID,AD_Org_ID,LBR_TaxLegalFW_ID,Value,LBR_CSTGroup,Name,LBR_TaxName_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1120111,'346','I','Recompe - equipamentos de informática - de beneficiário do regime para escolas das redes públicas de ensino federal, estadual, distrital, municipal ou nas escolas sem fins lucrativos de atendimento a pessoas com deficiência - Decreto no 7.243/2010, art. 7o',1106003,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_TaxLegalFW (AD_Client_ID,AD_Org_ID,LBR_TaxLegalFW_ID,Value,LBR_CSTGroup,Name,LBR_TaxName_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1120112,'347','I','Rio 2016 - Importação de materiais para os jogos (medalhas, troféus, impressos, bens não duráveis, etc.) - Lei no 12.780/2013, Art. 4o, §1o, I',1106003,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_TaxLegalFW (AD_Client_ID,AD_Org_ID,LBR_TaxLegalFW_ID,Value,LBR_CSTGroup,Name,LBR_TaxName_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1120113,'348','I','Rio 2016 - Suspensão convertida em Isenção - Lei no 12.780/2013, Art. 6o, I',1106003,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_TaxLegalFW (AD_Client_ID,AD_Org_ID,LBR_TaxLegalFW_ID,Value,LBR_CSTGroup,Name,LBR_TaxName_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1120114,'349','I','Rio 2016 - Empresas vinculadas ao CIO - Lei no 12.780/2013, Art. 9o, I, d',1106003,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_TaxLegalFW (AD_Client_ID,AD_Org_ID,LBR_TaxLegalFW_ID,Value,LBR_CSTGroup,Name,LBR_TaxName_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1120115,'350','I','Rio 2016 - Saída de produtos importados pelo RIO 2016 - Lei no 12.780/2013, Art. 10, I, d',1106003,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_TaxLegalFW (AD_Client_ID,AD_Org_ID,LBR_TaxLegalFW_ID,Value,LBR_CSTGroup,Name,LBR_TaxName_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1120116,'351','I','Rio 2016 - Produtos nacionais, não duráveis, uso e consumo dos eventos, adquiridos pelas pessoas jurídicas mencionadas no § 2o do art. 4o da Lei no 12.780/2013 - Lei no 12.780/2013, Art. 12',1106003,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_TaxLegalFW (AD_Client_ID,AD_Org_ID,LBR_TaxLegalFW_ID,Value,LBR_CSTGroup,Name,LBR_TaxName_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1120117,'601','R','Equipamentos e outros destinados à pesquisa e ao desenvolvimento tecnológico - Art. 72 do Decreto 7.212/2010',1106003,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_TaxLegalFW (AD_Client_ID,AD_Org_ID,LBR_TaxLegalFW_ID,Value,LBR_CSTGroup,Name,LBR_TaxName_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1120118,'602','R','Equipamentos e outros destinados à empresas habilitadas no PDTI e PDTA utilizados em pesquisa e ao desenvolvimento tecnológico - Art. 73 do Decreto 7.212/2010',1106003,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_TaxLegalFW (AD_Client_ID,AD_Org_ID,LBR_TaxLegalFW_ID,Value,LBR_CSTGroup,Name,LBR_TaxName_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1120119,'603','R','Microcomputadores e outros de até R$11.000,00, unidades de disco, circuitos, etc, destinados a bens de informática ou automação. Centro-Oeste SUDAM SUDENE - Art. 142, I do Decreto 7.212/2010',1106003,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_TaxLegalFW (AD_Client_ID,AD_Org_ID,LBR_TaxLegalFW_ID,Value,LBR_CSTGroup,Name,LBR_TaxName_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1120120,'604','R','Microcomputadores e outros de até R$11.000,00, unidades de disco, circuitos, etc, destinados a bens de informática ou automação. - Art. 142, I do Decreto 7.212/2010',1106003,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_TaxLegalFW (AD_Client_ID,AD_Org_ID,LBR_TaxLegalFW_ID,Value,LBR_CSTGroup,Name,LBR_TaxName_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1120121,'605','R','Bens de informática não incluídos no art. 142 do Decreto 7.212/2010 - Produzidos no Centro-Oeste, SUDAM, SUDENE - Art. 143, I do Decreto 7.212/2010',1106003,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_TaxLegalFW (AD_Client_ID,AD_Org_ID,LBR_TaxLegalFW_ID,Value,LBR_CSTGroup,Name,LBR_TaxName_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1120122,'606','R','Bens de informática não incluídos no art. 142 do Decreto 7.212/2010 - Art. 143, II do Decreto 7.212/2010',1106003,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_TaxLegalFW (AD_Client_ID,AD_Org_ID,LBR_TaxLegalFW_ID,Value,LBR_CSTGroup,Name,LBR_TaxName_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1120123,'607','R','Padis - Art. 150 do Decreto 7.212/2010',1106003,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_TaxLegalFW (AD_Client_ID,AD_Org_ID,LBR_TaxLegalFW_ID,Value,LBR_CSTGroup,Name,LBR_TaxName_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1120124,'608','R','Patvd - Art. 158 do Decreto 7.212/2010',1106003,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_TaxLegalFW (AD_Client_ID,AD_Org_ID,LBR_TaxLegalFW_ID,Value,LBR_CSTGroup,Name,LBR_TaxName_ID,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1120125,'999','O','Tributação normal IPI; Outros;',1106003,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-10-27 10:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
SELECT Register_Migration_Script ('148-EnquadramentoLegalIPI.sql') FROM DUAL
;
