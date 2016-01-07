-- 14/12/2015 10h12min55s BRST
INSERT INTO AD_Table (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Table_ID,CopyColumnsFromTable,Created,CreatedBy,EntityType,ImportTable,IsActive,IsCentrallyMaintained,IsChangeLog,IsDeleteable,IsHighVolume,IsSecurityEnabled,IsSystemLanguage,IsView,LoadSeq,Name,ReplicationType,TableName,Updated,UpdatedBy) VALUES ('3',0,0,1120531,'N',TO_DATE('2015-12-14 10:12:54','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','N','Y','Y','N','Y','N','N','N','N',0,'LBR_CEST','L','LBR_CEST',TO_DATE('2015-12-14 10:12:54','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/12/2015 10h12min55s BRST
INSERT INTO AD_Table_Trl (AD_Language,AD_Table_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Table_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Table t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Table_ID=1120531 AND NOT EXISTS (SELECT * FROM AD_Table_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Table_ID=t.AD_Table_ID)
;

-- 14/12/2015 10h12min56s BRST
INSERT INTO AD_Sequence (AD_Client_ID,AD_Org_ID,AD_Sequence_ID,Created,CreatedBy,CurrentNext,CurrentNextSys,Description,IncrementNo,IsActive,IsAudited,IsAutoSequence,IsTableID,Name,StartNewYear,StartNo,Updated,UpdatedBy) VALUES (0,0,1153330,TO_DATE('2015-12-14 10:12:55','YYYY-MM-DD HH24:MI:SS'),100,2000000,50000,'Table LBR_CEST',1,'Y','N','Y','Y','LBR_CEST','N',1000000,TO_DATE('2015-12-14 10:12:55','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/12/2015 10h15min16s BRST
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,1122214,0,'LBR_CEST_ID',TO_DATE('2015-12-14 10:15:15','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','LBR_CEST','LBR_CEST',TO_DATE('2015-12-14 10:15:15','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 14/12/2015 10h15min16s BRST
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1122214 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 14/12/2015 10h15min16s BRST
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1128613,1122214,0,13,1120531,'LBR_CEST_ID',TO_DATE('2015-12-14 10:15:15','YYYY-MM-DD HH24:MI:SS'),100,'LBRA',10,'Y','N','N','N','Y','Y','N','N','N','N','LBR_CEST',TO_DATE('2015-12-14 10:15:15','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 14/12/2015 10h15min16s BRST
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1128613 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 14/12/2015 10h15min17s BRST
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1128614,102,0,19,1120531,'AD_Client_ID',TO_DATE('2015-12-14 10:15:16','YYYY-MM-DD HH24:MI:SS'),100,'Client/Tenant for this installation.','LBRA',10,'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Y','N','N','N','N','Y','N','N','N','N','Client',TO_DATE('2015-12-14 10:15:16','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 14/12/2015 10h15min17s BRST
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1128614 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 14/12/2015 10h15min17s BRST
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1128615,113,0,19,1120531,'AD_Org_ID',TO_DATE('2015-12-14 10:15:17','YYYY-MM-DD HH24:MI:SS'),100,'Organizational entity within client','LBRA',10,'An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Y','N','N','N','N','Y','N','N','N','N','Organization',TO_DATE('2015-12-14 10:15:17','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 14/12/2015 10h15min17s BRST
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1128615 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 14/12/2015 10h15min17s BRST
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1128616,348,0,20,1120531,'IsActive',TO_DATE('2015-12-14 10:15:17','YYYY-MM-DD HH24:MI:SS'),100,'The record is active in the system','LBRA',1,'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Y','N','N','N','N','Y','N','N','N','Y','Active',TO_DATE('2015-12-14 10:15:17','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 14/12/2015 10h15min17s BRST
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1128616 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 14/12/2015 10h15min18s BRST
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1128617,245,0,16,1120531,'Created',TO_DATE('2015-12-14 10:15:17','YYYY-MM-DD HH24:MI:SS'),100,'Date this record was created','LBRA',29,'The Created field indicates the date that this record was created.','Y','N','N','N','N','Y','N','N','N','N','Created',TO_DATE('2015-12-14 10:15:17','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 14/12/2015 10h15min18s BRST
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1128617 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 14/12/2015 10h15min18s BRST
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1128618,246,0,18,110,1120531,'CreatedBy',TO_DATE('2015-12-14 10:15:18','YYYY-MM-DD HH24:MI:SS'),100,'User who created this records','LBRA',10,'The Created By field indicates the user who created this record.','Y','N','N','N','N','Y','N','N','N','N','Created By',TO_DATE('2015-12-14 10:15:18','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 14/12/2015 10h15min18s BRST
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1128618 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 14/12/2015 10h15min19s BRST
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1128619,607,0,16,1120531,'Updated',TO_DATE('2015-12-14 10:15:18','YYYY-MM-DD HH24:MI:SS'),100,'Date this record was updated','LBRA',29,'The Updated field indicates the date that this record was updated.','Y','N','N','N','N','Y','N','N','N','N','Updated',TO_DATE('2015-12-14 10:15:18','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 14/12/2015 10h15min19s BRST
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1128619 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 14/12/2015 10h15min19s BRST
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1128620,608,0,18,110,1120531,'UpdatedBy',TO_DATE('2015-12-14 10:15:19','YYYY-MM-DD HH24:MI:SS'),100,'User who updated this records','LBRA',10,'The Updated By field indicates the user who updated this record.','Y','N','N','N','N','Y','N','N','N','N','Updated By',TO_DATE('2015-12-14 10:15:19','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 14/12/2015 10h15min19s BRST
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1128620 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 14/12/2015 10h41min52s BRST
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1128621,620,0,10,1120531,'Value',TO_DATE('2015-12-14 10:41:50','YYYY-MM-DD HH24:MI:SS'),100,'Search key for the record in the format required - must be unique','LBRA',9,'A search key allows you a fast method of finding a particular record.
If you leave the search key empty, the system automatically creates a numeric number.  The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).','Y','Y','N','N','N','N','N','Y','N','N','N','N','Y','Search Key',0,TO_DATE('2015-12-14 10:41:50','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 14/12/2015 10h41min52s BRST
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1128621 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 14/12/2015 10h44min50s BRST
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1128622,275,0,14,1120531,'Description',TO_DATE('2015-12-14 10:44:49','YYYY-MM-DD HH24:MI:SS'),100,'Optional short description of the record','LBRA',255,'A description is limited to 255 characters.','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Description',0,TO_DATE('2015-12-14 10:44:49','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 14/12/2015 10h44min50s BRST
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1128622 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 14/12/2015 10h46min53s BRST
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1128623,469,0,14,1120531,'Name',TO_DATE('2015-12-14 10:46:52','YYYY-MM-DD HH24:MI:SS'),100,'Alphanumeric identifier of the entity','LBRA',610,'The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.','Y','Y','N','N','N','N','N','Y','N','N','N','N','Y','Name',0,TO_DATE('2015-12-14 10:46:52','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 14/12/2015 10h46min53s BRST
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1128623 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 14/12/2015 13h31min24s BRST
CREATE TABLE LBR_CEST (AD_Client_ID NUMBER(10) NOT NULL, AD_Org_ID NUMBER(10) NOT NULL, Created DATE NOT NULL, CreatedBy NUMBER(10) NOT NULL, Description NVARCHAR2(255) DEFAULT NULL , IsActive CHAR(1) CHECK (IsActive IN ('Y','N')) NOT NULL, LBR_CEST_ID NUMBER(10) NOT NULL, Name NVARCHAR2(610) NOT NULL, Updated DATE NOT NULL, UpdatedBy NUMBER(10) NOT NULL, Value NVARCHAR2(9) NOT NULL, CONSTRAINT LBR_CEST_Key PRIMARY KEY (LBR_CEST_ID))
;

INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1120000,'01.001.00',NULL,'Catalisadores em colmeia cerâmica ou metálica para conversão catalítica de gases de escape de veículos e outros catalizadores',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200001,'01.002.00',NULL,'Tubos e seus acessórios (por exemplo, juntas, cotovelos, flanges, uniões), de plásticos',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200002,'01.003.00',NULL,'Protetores de caçamba',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200003,'01.004.00',NULL,'Reservatórios de óleo',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200004,'01.005.00',NULL,'Frisos, decalques, molduras e acabamentos',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200005,'01.006.00',NULL,'Correias de transmissão de borracha vulcanizada, de matérias têxteis, mesmo impregnadas, revestidas ou recobertas, de plástico, ou estratificadas com plástico ou reforçadas com metal ou com outras matérias',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200006,'01.007.00',NULL,'Juntas, gaxetas e outros elementos com função semelhante de vedação',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200007,'01.008.00',NULL,'Partes de veículos automóveis, tratores e máquinas autopropulsadas',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200008,'01.009.00',NULL,'Tapetes, revestimentos, mesmo confeccionados, batentes, buchas e coxins',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200009,'01.010.00',NULL,'Tecidos impregnados, revestidos, recobertos ou estratificados, com plástico',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200010,'01.011.00',NULL,'Mangueiras e tubos semelhantes, de matérias têxteis, mesmo com reforço ou acessórios de outras matérias',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200011,'01.012.00',NULL,'Encerados e toldos',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200012,'01.013.00',NULL,'Capacetes e artefatos de uso semelhante, de proteção, para uso em motocicletas, incluídos ciclomotores',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200013,'01.014.00',NULL,'Guarnições de fricção (por exemplo, placas, rolos, tiras, segmentos, discos, anéis, pastilhas), não montadas, para freios, embreagens ou qualquer outro mecanismo de fricção, à base de amianto, de outras substâncias minerais ou de celulose, mesmo combinadas com têxteis ou outras matérias',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200014,'01.015.00',NULL,'Vidros de dimensões e formatos que permitam aplicação automotiva',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200015,'01.016.00',NULL,'Espelhos retrovisores',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200016,'01.017.00',NULL,'Lentes de faróis, lanternas e outros utensílios',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200017,'01.018.00',NULL,'Cilindro de aço para GNV (gás natural veicular)',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200018,'01.019.00',NULL,'Recipientes para gases comprimidos ou liquefeitos, de ferro fundido, ferro ou aço, exceto o descrito no item 18.0',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200019,'01.020.00',NULL,'Molas e folhas de molas, de ferro ou aço',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200020,'01.021.00',NULL,'Obras moldadas, de ferro fundido, ferro ou aço, exceto as do código 7325.91.00',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200021,'01.022.00',NULL,'Peso de chumbo para balanceamento de roda',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200022,'01.023.00',NULL,'Peso para balanceamento de roda e outros utensílios de estanho',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200023,'01.024.00',NULL,'Fechaduras e partes de fechaduras',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200024,'01.025.00',NULL,'Chaves apresentadas isoladamente',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200025,'01.026.00',NULL,'Dobradiças, guarnições, ferragens e artigos semelhantes de metais comuns',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200026,'01.027.00',NULL,'Triângulo de segurança',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200027,'01.028.00',NULL,'Motores de pistão alternativo dos tipos utilizados para propulsão de veículos do Capítulo 87',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200028,'01.029.00',NULL,'Motores dos tipos utilizados para propulsão de veículos automotores',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200029,'01.030.00',NULL,'Partes reconhecíveis como exclusiva ou principalmente destinadas aos motores das posições 8407 ou 8408',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200030,'01.031.00',NULL,'Motores hidráulicos',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200031,'01.032.00',NULL,'Bombas para combustíveis, lubrificantes ou líquidos de arrefecimento, próprias para motores de ignição por centelha ou por compressão',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200032,'01.033.00',NULL,'Bombas de vácuo',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200033,'01.034.00',NULL,'Compressores e turbocompressores de ar',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200034,'01.035.00',NULL,'Partes das bombas, compressores e turbocompressores dos itens 32.0, 33.0 e 34.0',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200035,'01.036.00',NULL,'Máquinas e aparelhos de ar condicionado',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200036,'01.037.00',NULL,'Aparelhos para filtrar óleos minerais nos motores de ignição por centelha ou por compressão',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200037,'01.038.00',NULL,'Filtros a vácuo',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200038,'01.039.00',NULL,'Partes dos aparelhos para filtrar ou depurar líquidos ou gases',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200039,'01.040.00',NULL,'Extintores, mesmo carregados',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200040,'01.041.00',NULL,'Filtros de entrada de ar para motores de ignição por centelha ou por compressão',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200041,'01.042.00',NULL,'Depuradores por conversão catalítica de gases de escape',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200042,'01.043.00',NULL,'Macacos',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200043,'01.044.00',NULL,'Partes para macacos do item 43.0',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200044,'01.045.00',NULL,'Partes reconhecíveis como exclusiva ou principalmente destinadas às máquinas agrícolas ou rodoviárias',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200045,'01.046.00',NULL,'Válvulas redutoras de pressão',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200046,'01.047.00',NULL,'Válvulas para transmissão óleo-hidráulicas ou pneumáticas',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200047,'01.048.00',NULL,'Válvulas solenóides',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200048,'01.049.00',NULL,'Rolamentos',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200049,'01.050.00',NULL,'Árvores de transmissão (incluídas as árvores de "cames" e virabrequins) e manivelas; mancais e "bronzes"; engrenagens e rodas de fricção; eixos de esferas ou de roletes; redutores, multiplicadores, caixas de transmissão e variadores de velocidade, incluídos os conversores de torque; volantes e polias, incluídas as polias para cadernais; embreagens e dispositivos de acoplamento, incluídas as juntas de articulação',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200050,'01.051.00',NULL,'Juntas metaloplásticas; jogos ou sortidos de juntas de composições diferentes, apresentados em bolsas, envelopes ou embalagens semelhantes; juntas de vedação mecânicas (selos mecânicos)',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200051,'01.052.00',NULL,'Acoplamentos, embreagens, variadores de velocidade e freios, eletromagnéticos',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200052,'01.053.00',NULL,'Acumuladores elétricos de chumbo, do tipo utilizado para o arranque dos motores de pistão',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200053,'01.054.00',NULL,'Aparelhos e dispositivos elétricos de ignição ou de arranque para motores de ignição por centelha ou por compressão (por exemplo, magnetos, dínamos-magnetos, bobinas de ignição, velas de ignição ou de aquecimento, motores de arranque); geradores (dínamos e alternadores, por exemplo) e conjuntores-disjuntores utilizados com estes motores',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200054,'01.055.00',NULL,'Aparelhos elétricos de iluminação ou de sinalização (exceto os da posição 8539), limpadores de para-brisas, degeladores e desembaçadores (desembaciadores) elétricos',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200055,'01.056.00',NULL,'Telefones móveis',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200056,'01.057.00',NULL,'Alto-falantes, amplificadores elétricos de audiofrequência e partes',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200057,'01.058.00',NULL,'Aparelhos elétricos de amplificação de som para veículos automotores',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200058,'01.059.00',NULL,'Aparelhos de reprodução de som',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200059,'01.060.00',NULL,'Aparelhos transmissores (emissores) de radiotelefonia ou radiotelegrafia (rádio receptor/transmissor)',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200060,'01.061.00',NULL,'Aparelhos receptores de radiodifusão que só funcionam com fonte externa de energia, exceto os classificados na posição 8527.21.90',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200061,'01.062.00',NULL,'Outros aparelhos receptores de radiodifusão que funcionem com fonte externa de energia; outros aparelhos videofônicos de gravação ou de reprodução, mesmo incorporando um receptor de sinais videofônicos, dos tipos utilizados exclusivamente em veículos automotores',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200062,'01.063.00',NULL,'Antenas',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200063,'01.064.00',NULL,'Circuitos impressos',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200064,'01.065.00',NULL,'Interruptores e seccionadores e comutadores',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200065,'01.066.00',NULL,'Fusíveis e corta-circuitos de fusíveis',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200066,'01.067.00',NULL,'Disjuntores',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200067,'01.068.00',NULL,'Relés',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200068,'01.069.00',NULL,'Partes reconhecíveis como exclusivas ou principalmente destinados aos aparelhos dos itens 65.0, 66.0, 67.0 e 68.0',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200069,'01.070.00',NULL,'Interruptores, seccionadores e comutadores',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200070,'01.071.00',NULL,'Faróis e projetores, em unidades seladas',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200071,'01.072.00',NULL,'Lâmpadas e tubos de incandescência, exceto de raios ultravioleta ou infravermelhos',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200072,'01.073.00',NULL,'Cabos coaxiais e outros condutores elétricos coaxiais',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200073,'01.074.00',NULL,'Jogos de fios para velas de ignição e outros jogos de fios',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200074,'01.075.00',NULL,'Carroçarias para os veículos automóveis das posições 8701 a 8705, incluídas as cabinas',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200075,'01.076.00',NULL,'Partes e acessórios dos veículos automóveis das posições 8701 a 8705',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200076,'01.077.00',NULL,'Parte e acessórios de motocicletas (incluídos os ciclomotores)',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200077,'01.078.00',NULL,'Engates para reboques e semi-reboques',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200078,'01.079.00',NULL,'Medidores de nível; Medidores de vazão',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200079,'01.080.00',NULL,'Aparelhos para medida ou controle da pressão',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200080,'01.081.00',NULL,'Contadores, indicadores de velocidade e tacômetros, suas partes e acessórios',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200081,'01.082.00',NULL,'Amperímetros',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200082,'01.083.00',NULL,'Aparelhos digitais, de uso em veículos automóveis, para medida e indicação de múltiplas grandezas tais como: velocidade média, consumos instantâneo e médio e autonomia (computador de bordo)',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200083,'01.084.00',NULL,'Controladores eletrônicos',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200084,'01.085.00',NULL,'Relógios para painéis de instrumentos e relógios semelhantes',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200085,'01.086.00',NULL,'Assentos e partes de assentos',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200086,'01.087.00',NULL,'Acendedores',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200087,'01.088.00',NULL,'Tubos de borracha vulcanizada não endurecida, mesmo providos de seus acessórios',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200088,'01.089.00',NULL,'Juntas de vedação de cortiça natural e de amianto',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200089,'01.090.00',NULL,'Papel-diagrama para tacógrafo, em disco',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200090,'01.091.00',NULL,'Fitas, tiras, adesivos, auto-colantes, de plástico, refletores, mesmo em rolos; placas metálicas com película de plástico refletora, próprias para colocação em carrocerias, para-choques de veículos de carga, motocicletas, ciclomotores, capacetes, bonés de agentes de trânsito e de condutores de veículos, atuando como dispositivos refletivos de segurança rodoviários',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200091,'01.092.00',NULL,'Cilindros pneumáticos',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200092,'01.093.00',NULL,'Bomba elétrica de lavador de para-brisa',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200093,'01.094.00',NULL,'Bomba de assistência de direção hidráulica',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200094,'01.095.00',NULL,'Motoventiladores',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200095,'01.096.00',NULL,'Filtros de pólen do ar-condicionado',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200096,'01.097.00',NULL,'"Máquina" de vidro elétrico de porta',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200097,'01.098.00',NULL,'Motor de limpador de para-brisa',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200098,'01.099.00',NULL,'Bobinas de reatância e de auto-indução',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200099,'01.100.00',NULL,'Baterias de chumbo e de níquel-cádmio',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200100,'01.101.00',NULL,'Aparelhos de sinalização acústica (buzina)',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200101,'01.102.00',NULL,'Instrumentos para regulação de grandezas não elétricas',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200102,'01.103.00',NULL,'Analisadores de gases ou de fumaça (sonda lambda)',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200103,'01.104.00',NULL,'Perfilados de borracha vulcanizada não endurecida',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200104,'01.105.00',NULL,'Artefatos de pasta de fibra de uso automotivo',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200105,'01.106.00',NULL,'Tapetes/carpetes - nailón',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200106,'01.107.00',NULL,'Tapetes de matérias têxteis sintéticas',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200107,'01.108.00',NULL,'Forração interior capacete',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200108,'01.109.00',NULL,'Outros para-brisas',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200109,'01.110.00',NULL,'Moldura com espelho',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200110,'01.111.00',NULL,'Corrente de transmissão',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200111,'01.112.00',NULL,'Corrente transmissão',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200112,'01.113.00',NULL,'Outras correntes de transmissão',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200113,'01.114.00',NULL,'Condensador tubular metálico',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200114,'01.115.00',NULL,'Trocadores de calor',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200115,'01.116.00',NULL,'Partes de aparelhos mecânicos de pulverizar ou dispersar',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200116,'01.117.00',NULL,'Macacos manuais para veículos',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200117,'01.118.00',NULL,'Caçambas, pás, ganchos e tenazes para máquinas rodoviárias',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200118,'01.119.00',NULL,'Geradores de corrente alternada de potência não superior a 75 kva',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200119,'01.120.00',NULL,'Aparelhos elétricos para alarme de uso automotivo',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200120,'01.121.00',NULL,'Bússolas',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200121,'01.122.00',NULL,'Indicadores de temperatura',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200122,'01.123.00',NULL,'Partes de indicadores de temperatura',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200123,'01.124.00',NULL,'Partes de aparelhos de medida ou controle',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200124,'01.125.00',NULL,'Termostatos',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200125,'01.126.00',NULL,'Instrumentos e aparelhos para regulação',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200126,'01.127.00',NULL,'Pressostatos',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200127,'01.128.00',NULL,'Peças para reboques e semi-reboques',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200128,'01.129.00',NULL,'Outras peças, partes e acessórios para veículos automotores não relacionados nos demais itens deste anexo',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200129,'02.001.00',NULL,'Aperitivos, amargos, bitter e similares',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200130,'02.002.00',NULL,'Batida e similares',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200131,'02.003.00',NULL,'Bebida ice',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200132,'02.004.00',NULL,'Cachaça e aguardentes',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200133,'02.005.00',NULL,'Catuaba e similares',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200134,'02.006.00',NULL,'Conhaque, brandy e similares',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200135,'02.007.00',NULL,'Cooler',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200136,'02.008.00',NULL,'Gim (gin) e genebra',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200137,'02.009.00',NULL,'Jurubeba e similares',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200138,'02.010.00',NULL,'Licores e similares',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200139,'02.011.00',NULL,'Pisco',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200140,'02.012.00',NULL,'Rum',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200141,'02.013.00',NULL,'Saque',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200142,'02.014.00',NULL,'Steinhaeger',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200143,'02.015.00',NULL,'Tequila',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200144,'02.016.00',NULL,'Uísque',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200145,'02.017.00',NULL,'Vermute e similares',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200146,'02.018.00',NULL,'Vodka',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200147,'02.019.00',NULL,'Derivados de vodka',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200148,'02.020.00',NULL,'Arak',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200149,'02.021.00',NULL,'Aguardente vínica / grappa',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200150,'02.022.00',NULL,'Sidra e similares',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200151,'02.023.00',NULL,'Sangrias e coquetéis',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200152,'02.024.00',NULL,'Vinhos e similares',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200153,'02.025.00',NULL,'Outras bebidas alcoólicas não especificadas nos itens anteriores',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200154,'03.001.00',NULL,'Água mineral, gasosa ou não, ou potável, naturais, em garrafa de vidro, retornável ou não, com capacidade de até 500 ml',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200155,'03.002.00',NULL,'Água mineral, gasosa ou não, ou potável, naturais, em embalagem com capacidade igual ou superior a 5.000 ml',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200156,'03.003.00',NULL,'Água mineral, gasosa ou não, ou potável, naturais, em embalagem de vidro, não retornável, com capacidade de até 300 ml',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200157,'03.004.00',NULL,'Água mineral, gasosa ou não, ou potável, naturais, em garrafa plástica de 1.500 ml',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200158,'03.005.00',NULL,'Água mineral, gasosa ou não, ou potável, naturais, em copos plásticos e embalagem plástica com capacidade de até 500 ml',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200159,'03.006.00',NULL,'Outras águas minerais, gasosa ou não, ou potável, naturais, inclusive gaseificada ou aromatizada artificialmente',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200160,'03.007.00',NULL,'Refrigerante em garrafa com capacidade igual ou superior a 600 ml',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200161,'03.008.00',NULL,'Demais refrigerantes',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200162,'03.009.00',NULL,'Xarope ou extrato concentrado destinados ao preparo de refrigerante em máquina "pré-mix"ou "post-mix"',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200163,'03.010.00',NULL,'Bebidas energéticas',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200164,'03.011.00',NULL,'Bebidas hidroeletrolíticas (isotônicas)',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200165,'03.012.00',NULL,'Cerveja',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200166,'03.013.00',NULL,'Cerveja sem álcool',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200167,'03.014.00',NULL,'Chope',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200168,'04.001.00',NULL,'Charutos, cigarrilhas e cigarros, de tabaco ou dos seus sucedâneos',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200169,'04.002.00',NULL,'Tabaco para fumar, mesmo contendo sucedâneos de tabaco em qualquer proporção',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200170,'05.001.00',NULL,'Cimento',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200171,'06.001.00',NULL,'Álcool etílico não desnaturado, com um teor alcoólico em volume igual ou superior a 80% vol (álcool etílico anidro combustível e álcool etílico hidratado combustível)',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200172,'06.002.00',NULL,'Gasolinas',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200173,'06.003.00',NULL,'Querosenes',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200174,'06.004.00',NULL,'Óleos combustíveis',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200175,'06.005.00',NULL,'Óleos lubrificantes',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200176,'06.006.00',NULL,'Outros óleos de petróleo ou de minerais betuminosos (exceto óleos brutos) e preparações não especificadas nem compreendidas noutras posições, que contenham, como constituintes básicos, 70% ou mais, em peso, de óleos de petróleo ou de inerais betuminosos, exceto os que contenham biodiesel e exceto os resíduos de óleos',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200177,'06.007.00',NULL,'Resíduos de óleos',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200178,'06.008.00',NULL,'Gás de petróleo e outros hidrocarbonetos gasosos',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200179,'06.009.00',NULL,'Coque de petróleo e outros resíduos de óleo de petróleo ou de minerais betuminosos',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200180,'06.010.00',NULL,'Biodiesel e suas misturas, que não contenham ou que contenham menos de 70%, em peso, de óleos de petróleo ou de óleos minerais betuminosos',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200181,'06.011.00',NULL,'Preparações lubrificantes, exceto as contendo, como constituintes de base, 70% ou mais, em peso, de óleos de petróleo ou de minerais betuminosos',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200182,'06.012.00',NULL,'Óleos de petróleo ou de minerais betuminosos (exceto óleos brutos) e preparações não especificadas nem compreendidas noutras posições, que contenham, como constituintes básicos, 70% ou mais, em peso, de óleos de petróleo ou de minerais betuminosos, que contenham biodiesel, exceto os resíduos de óleos',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200183,'07.001.00',NULL,'Energia elétrica',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200184,'08.001.00',NULL,'Ferramentas de borracha vulcanizada não endurecida',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200185,'08.002.00',NULL,'Ferramentas, armações e cabos de ferramentas, de madeira',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200186,'08.003.00',NULL,'Mós e artefatos semelhantes, sem armação, para moer, desfibrar, triturar, amolar, polir, retificar ou cortar; pedras para amolar ou para polir, manualmente, e suas partes, de pedras naturais, de abrasivos naturais ou artificiais aglomerados ou de cerâmica, mesmo com partes de outras matérias',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200187,'08.004.00',NULL,'Pás, alviões, picaretas, enxadas, sachos, forcados e forquilhas, ancinhos e raspadeiras; machados, podões e ferramentas semelhantes com gume; tesouras de podarde todos os tipos; foices e foicinhas, facas para feno ou para palha, tesouras para sebes, cunhas e outras ferramentas manuais para agricultura, horticultura ou silvicultura',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200188,'08.005.00',NULL,'Folhas de serras de fita',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200189,'08.006.00',NULL,'Lâminas de serras máquinas',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200190,'08.007.00',NULL,'Serras manuais e outras folhas de serras (incluídas as fresas-serras e as folhas não dentadas para serrar), exceto as classificadas nas posições 8202.20.00 e 8202.91.00',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200191,'08.008.00',NULL,'Limas, grosas, alicates (mesmo cortantes), tenazes, pinças, cisalhas para metais, corta-tubos, corta-pinos, saca-bocados e ferramentas semelhantes, manuais, exceto as pinças para sobrancelhas classificadas na posição 8203.20.90',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200192,'08.009.00',NULL,'Chaves de porcas, manuais (incluídas as chaves dinamométricas); chaves de caixa intercambiáveis, mesmo com cabos',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200193,'08.010.00',NULL,'Ferramentas manuais (incluídos os diamantes de vidraceiro) não especificadas nem compreendidas em outras posições, lamparinas ou lâmpadas de soldar (maçaricos) e semelhantes; tornos de apertar, sargentos e semelhantes, exceto os acessórios ou partes de máquinas- ferramentas; bigornas; forjas-portáteis; mós com armação, manuais ou de pedal',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200194,'08.011.00',NULL,'Ferramentas de pelo menos duas das posições 8202 a 8205, acondicionadas em sortidos para venda a retalho',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200195,'08.012.00',NULL,'Ferramentas de roscar interior ou exteriormente; de mandrilar ou de brochar; e de fresar',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200196,'08.013.00',NULL,'Outras ferramentas intercambiáveis para ferramentas manuais, mesmo mecânicas, ou para máquinas-ferramentas (por exemplo, de embutir, estampar, puncionar, furar, tornear, aparafusar), incluídas as fieiras de estiragem ou de extrusão, para metais, e as ferramentas de perfuração ou de sondagem, exceto forma ou gabarito de produtos em epoxy, exceto as classificadas nas posições 8207.40, 8207.60 e 8207.70',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200197,'08.014.00',NULL,'Facas e lâminas cortantes, para máquinas ou para aparelhos mecânicos',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200198,'08.015.00',NULL,'Plaquetas ou pastilhas intercambiáveis',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200199,'08.016.00',NULL,'Outras plaquetas, varetas, pontas e objetos semelhantes para ferramentas, não montados, de ceramais ("cermets"), exceto as classificadas na posição 8209.00.11',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200200,'08.017.00',NULL,'Facas (exceto as da posição 8208) de lâmina cortante ou serrilhada, incluídas as podadeiras de lâmina móvel, e suas lâminas, exceto as de uso doméstico',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200201,'08.018.00',NULL,'Tesouras e suas lâminas',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200202,'08.019.00',NULL,'Ferramentas pneumáticas, hidráulicas ou com motor (elétrico ou não elétrico) incorporado, de uso manual',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200203,'08.020.00',NULL,'Instrumentos e aparelhos de geodésia, topografia, agrimensura, nivelamento, fotogrametria, hidrografia, oceanografia, hidrologia, meteorologia ou de geofísica, exceto bussolas; telêmetros',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200204,'08.021.00',NULL,'Instrumentos de desenho, de traçado ou de cálculo; metros, micrômetros, paquímetros, calibres e semelhantes; partes e acessórios',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200205,'08.022.00',NULL,'Termômetros, suas partes e acessórios',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200206,'08.023.00',NULL,'Pirômetros, suas partes e acessórios',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200207,'09.001.00',NULL,'Lâmpadas elétricas',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200208,'09.002.00',NULL,'Lâmpadas eletrônicas',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200209,'09.003.00',NULL,'Reatores para lâmpadas ou tubos de descargas',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200210,'09.004.00',NULL,'“Starter”',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200211,'09.005.00',NULL,'Lâmpadas de LED (Diodos Emissores de Luz)',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200212,'10.001.00',NULL,'Cal',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200213,'10.002.00',NULL,'Argamassas',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200214,'10.003.00',NULL,'Outras argamassas',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200215,'10.004.00',NULL,'Silicones em formas primárias, para uso na construção',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200216,'10.005.00',NULL,'Revestimentos de PVC e outros plásticos; forro, sancas e afins de PVC, para uso na construção',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200217,'10.006.00',NULL,'Tubos, e seus acessórios (por exemplo, juntas, cotovelos, flanges, uniões), de plásticos, para uso na construção',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200218,'10.007.00',NULL,'Revestimento de pavimento de PVC e outros plásticos',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200219,'10.008.00',NULL,'Chapas, folhas, tiras, fitas, películas e outras formas planas, auto-adesivas, de plásticos, mesmo em rolos, para uso na construção',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200220,'10.009.00',NULL,'Veda rosca, lona plástica para uso na construção, fitas isolantes e afins',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200221,'10.010.00',NULL,'Telha de plástico, mesmo reforçada com fibra de vidro',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200222,'10.011.00',NULL,'Cumeeira de plástico, mesmo reforçada com fibra de vidro',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200223,'10.012.00',NULL,'Chapas, laminados plásticos em bobina, para uso na construção, exceto os descritos nos itens 10.0 e 11.0',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200224,'10.013.00',NULL,'Banheiras, boxes para chuveiros, pias, lavatórios, bidês, sanitários e seus assentos e tampas, caixas de descarga e artigos semelhantes para usos sanitários ou higiênicos, de plásticos',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200225,'10.014.00',NULL,'Artefatos de higiene/toucador de plástico, para uso na construção',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200226,'10.015.00',NULL,'Caixa d’água, inclusive sua tampa, de plástico, mesmo reforçadas com fibra de vidro',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200227,'10.016.00',NULL,'Outras telhas, cumeeira e caixa d’água, inclusive sua tampa, de plástico, mesmo reforçadas com fibra de vidro',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200228,'10.017.00',NULL,'Artefatos para apetrechamento de construções, de plásticos, não especificados nem compreendidos em outras posições, incluindo persianas, sancas, molduras, apliques e rosetas, caixilhos de polietileno e outros plásticos, exceto os descritos nos itens 15.0 e 16.0',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200229,'10.018.00',NULL,'Portas, janelas e seus caixilhos, alizares e soleiras',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200230,'10.019.00',NULL,'Postigos, estores (incluídas as venezianas) e artefatos semelhantes e suas partes',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200231,'10.020.00',NULL,'Outras obras de plástico, para uso na construção',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200232,'10.021.00',NULL,'Papel de parede e revestimentos de parede semelhantes; papel para vitrais',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200233,'10.022.00',NULL,'Telhas de concreto',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200234,'10.023.00',NULL,'Telha, cumeeira e caixa d’água, inclusive sua tampa, de fibrocimento, cimento-celulose',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200235,'10.024.00',NULL,'Caixas de água, tanques e reservatórios e suas tampas, telhas, calhas, cumeeiras e afins, de fibrocimento, cimento-celulose ou semelhantes, contendo ou não amianto, exceto os descritos no item 23.0',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200236,'10.025.00',NULL,'Tijolos, placas (lajes), ladrilhos e outras peças cerâmicas de farinhas siliciosas fósseis ("kieselghur", tripolita, diatomita, por exemplo) ou de terras siliciosas semelhantes',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200237,'10.026.00',NULL,'Tijolos, placas (lajes), ladrilhos e peças cerâmicas semelhantes, para uso na construção, refratários, que não sejam de farinhas siliciosas fósseis nem de terras siliciosas semelhantes',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200238,'10.027.00',NULL,'Tijolos para construção, tijoleiras, tapa-vigas e produtos semelhantes, de cerâmica',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200239,'10.028.00',NULL,'Telhas, elementos de chaminés, condutores de fumaça, ornamentos arquitetônicos, de cerâmica, e outros produtos cerâmicos para uso na construção',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200240,'10.029.00',NULL,'Tubos, calhas ou algerozes e acessórios para canalizações, de cerâmica',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200241,'10.030.00',NULL,'Ladrilhos e placas de cerâmica, exclusivamente para pavimentação ou revestimento',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200242,'10.030.01',NULL,'Cubos, pastilhas e artigos semelhantes de cerâmica, mesmo com suporte.',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200243,'10.031.00',NULL,'Pias, lavatórios, colunas para lavatórios, banheiras, bidês, sanitários, caixas de descarga, mictórios e aparelhos fixos semelhantes para usos sanitários, de cerâmica',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200244,'10.032.00',NULL,'Artefatos de higiene/toucador de cerâmica',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200245,'10.033.00',NULL,'Vidro vazado ou laminado, em chapas, folhas ou perfis, mesmo com camada absorvente, refletora ou não, mas sem qualquer outro trabalho',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200246,'10.034.00',NULL,'Vidro estirado ou soprado, em folhas, mesmo com camada absorvente, refletora ou não, mas sem qualquer outro trabalho',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200247,'10.035.00',NULL,'Vidro flotado e vidro desbastado ou polido em uma ou em ambas as faces, em chapas ou em folhas, mesmo com camada absorvente, refletora ou não, mas sem qualquer outro trabalho',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200248,'10.036.00',NULL,'Vidros temperados',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200249,'10.037.00',NULL,'Vidros laminados',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200250,'10.038.00',NULL,'Vidros isolantes de paredes múltiplas',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200251,'10.039.00',NULL,'Blocos, placas, tijolos, ladrilhos, telhas e outros artefatos, de vidro prensado ou moldado, mesmo armado, para uso na construção; cubos, pastilhas e outros artigos semelhantes',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200252,'10.040.00',NULL,'Barras próprias para construções, exceto vergalhões',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200253,'10.041.00',NULL,'Outras barras próprias para construções, exceto vergalhões',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200254,'10.042.00',NULL,'Vergalhões',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200255,'10.043.00',NULL,'Outros vergalhões',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200256,'10.044.00',NULL,'Fios de ferro ou aço não ligados, não revestidos, mesmo polidos; cordas, cabos, tranças (entrançados), lingas e artefatos semelhantes, de ferro ou aço, não isolados para usos elétricos',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200257,'10.045.00',NULL,'Outros fios de ferro ou aço, não ligados, galvanizados',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200258,'10.046.00',NULL,'Acessórios para tubos (inclusive uniões, cotovelos, luvas ou mangas), de ferro fundido, ferro ou aço',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200259,'10.047.00',NULL,'Portas e janelas, e seus caixilhos, alizares e soleiras de ferro fundido, ferro ou aço',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200260,'10.048.00',NULL,'Material para andaimes, para armações (cofragens) e para escoramentos, (inclusive armações prontas, para estruturas de concreto armado ou argamassa armada), eletrocalhas e perfilados de ferro fundido, ferro ou aço, próprios para construção, exceto treliças de aço',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200261,'10.049.00',NULL,'Treliças de aço',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200262,'10.050.00',NULL,'Telhas metálicas',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200263,'10.051.00',NULL,'Caixas diversas (tais como caixa de correio, de entrada de água, de energia, de instalação) de ferro, ferro fundido ou aço; próprias para a construção',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200264,'10.052.00',NULL,'Arame farpado, de ferro ou aço arames ou tiras, retorcidos, mesmo farpados, de ferro ou aço, dos tipos utilizados em cercas',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200265,'10.053.00',NULL,'Telas metálicas, grades e redes, de fios de ferro ou aço',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200266,'10.054.00',NULL,'Correntes de rolos, de ferro fundido, ferro ou aço',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200267,'10.055.00',NULL,'Outras correntes de elos articulados, de ferro fundido, ferro ou aço',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200268,'10.056.00',NULL,'Correntes de elos soldados, de ferro fundido, de ferro ou aço',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200269,'10.057.00',NULL,'Tachas, pregos, percevejos, escápulas, grampos ondulados ou biselados e artefatos semelhantes, de ferro fundido, ferro ou aço, mesmo com a cabeça de outra matéria, exceto cobre',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200270,'10.058.00',NULL,'Parafusos, pinos ou pernos, roscados, porcas, tira-fundos, ganchos roscados, rebites, chavetas, cavilhas, contrapinos, arruelas (incluídas as de pressão) e artefatos semelhantes, de ferro fundido, ferro ou aço',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200271,'10.059.00',NULL,'Palha de ferro ou aço; esponjas, esfregões, luvas e artefatos semelhantes para limpeza, polimento e usos semelhantes, de ferro ou aço, exceto os classificados na posição 7323.10.00 de uso doméstico',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200272,'10.060.00',NULL,'Artefatos de higiene ou de toucador, e suas partes, de ferro fundido, ferro ou aço, incluídas as pias, banheiras, lavatórios, cubas, mictórios, tanques e afins de ferro fundido, ferro ou aço, para uso na construção',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200273,'10.061.00',NULL,'Outras obras moldadas, de ferro fundido, ferro ou aço, para uso na construção',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200274,'10.062.00',NULL,'Abraçadeiras',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200275,'10.063.00',NULL,'Barras de cobre',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200276,'10.064.00',NULL,'Tubos de cobre e suas ligas, para instalações de água quente e gás, para uso na construção',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200277,'10.065.00',NULL,'Acessórios para tubos (por exemplo, uniões, cotovelos, luvas ou mangas) de cobre e suas ligas, para uso na construção',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200278,'10.066.00',NULL,'Tachas, pregos, percevejos, escápulas e artefatos semelhantes, de cobre, ou de ferro ou aço com cabeça de cobre, parafusos, pinos ou pernos, roscados, porcas, ganchos roscados, rebites, chavetas, cavilhas, contrapinos, arruelas (incluídas as de pressão), e artefatos semelhantes, de cobre',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200279,'10.067.00',NULL,'Artefatos de higiene/toucador de cobre, para uso na construção',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200280,'10.068.00',NULL,'Manta de subcobertura aluminizada',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200281,'10.069.00',NULL,'Tubos de alumínio e suas ligas, para refrigeração e ar condicionado, para uso na construção',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200282,'10.070.00',NULL,'Acessórios para tubos (por exemplo, uniões, cotovelos, luvas ou mangas), de alumínio, para uso na construção',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200283,'10.071.00',NULL,'Construções e suas partes (por exemplo, pontes e elementos de pontes, torres, pórticos ou pilones, pilares, colunas, armações, estruturas para telhados, portas e janelas, e seus caixilhos, alizares e soleiras, balaustradas), de alumínio, exceto as construções pré-fabricadas da posição 9406; chapas, barras, perfis, tubos e semelhantes, de alumínio, próprios para construções',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200284,'10.072.00',NULL,'Artefatos de higiene/toucador de alumínio, para uso na construção ',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200285,'10.073.00',NULL,'Outras obras de alumínio, próprias para construções, incluídas as persianas',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200286,'10.074.00',NULL,'Outras guarnições, ferragens e artigos semelhantes de metais comuns, para construções, inclusive puxadores.',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200287,'10.075.00',NULL,'Fechaduras e ferrolhos (de chave, de segredo ou elétricos), de metais comuns, incluídas as suas partes fechos e armações com fecho, com fechadura, de metais comuns chaves para estes artigos, de metais comuns, exceto os de uso automotivo',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200288,'10.076.00',NULL,'Dobradiças de metais comuns, de qualquer tipo',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200289,'10.077.00',NULL,'Tubos flexíveis de metais comuns, mesmo com acessórios, para uso na construção',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200290,'10.078.00',NULL,'Fios, varetas, tubos, chapas, eletrodos e artefatos semelhantes, de metais comuns ou de carbonetos metálicos, revestidos exterior ou interiormente de decapantes ou de fundentes, para soldagem (soldadura) ou depósito de metal ou de carbonetos metálicos fios e varetas de pós de metais comuns aglomerados, para metalização por projeção',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200291,'10.079.00',NULL,'Torneiras, válvulas (incluídas as redutoras de pressão e as termostáticas) e dispositivos semelhantes, para canalizações, caldeiras, reservatórios, cubas e outros recipientes',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200292,'11.001.00',NULL,'Água sanitária, branqueador e outros alvejantes',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200293,'11.002.00',NULL,'Sabões em pó, flocos, palhetas, grânulos ou outras formas semelhantes, para lavar roupas',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200294,'11.003.00',NULL,'Sabões líquidos para lavar roupas',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200295,'11.004.00',NULL,'Detergentes em pó, flocos, palhetas, grânulos ou outras formas semelhantes',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200296,'11.005.00',NULL,'Detergentes líquidos, exceto para lavar roupa',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200297,'11.006.00',NULL,'Detergente líquido para lavar roupa',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200298,'11.007.00',NULL,'Outros agentes orgânicos de superfície (exceto sabões); preparações tensoativas, preparações para lavagem (incluídas as preparações auxiliares para lavagem) e preparações para limpeza (inclusive multiuso e limpadores), mesmo contendo sabão, exceto as da posição 3401 e os produtos descritos nos itens 3 a 5; em embalagem de conteúdo inferior ou igual a 50 litros ou 50 kg',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200299,'11.008.00',NULL,'Amaciante/suavizante',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200300,'11.009.00',NULL,'Esponjas para limpeza',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200301,'11.010.00',NULL,'Álcool etílico para limpeza',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200302,'11.011.00',NULL,'Palhas de ferro ou aço; esponjas, esfregões, luvas e artefatos semelhantes para limpeza, polimento ou uso semelhantes; todos de uso doméstico',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200303,'12.001.00',NULL,'Transformadores, bobinas de reatância e de auto indução, inclusive os transformadores de potência superior a 16 KVA, classificados nas posições 8504.33.00 e 8504.34.00; exceto os demais transformadores da subposição 8504.3, os reatores para lâmpadas elétricas de descarga classificados no código 8504.10.00, os carregadores de acumuladores do código 8504.40.10, os equipamentos de alimentação ininterrupta de energia (UPS ou “no break”), no código 8504.40.40 e os de uso automotivo',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200304,'12.002.00',NULL,'Aquecedores elétricos de água, incluídos os de imersão, chuveiros ou duchas elétricos, torneiras elétricas, resistências de aquecimento, inclusive as de duchas e chuveiros elétricos e suas partes; exceto outros fornos, fogareiros (incluídas as chapas de cocção), grelhas e assadeiras, classificados na posição 8516.60.00',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200305,'12.003.00',NULL,'Aparelhos para interrupção, seccionamento, proteção, derivação, ligação ou conexão de circuitos elétricos (por exemplo, interruptores, comutadores, corta-circuitos, para-raios, limitadores de tensão, eliminadores de onda, tomadas de corrente e outros conectores, caixas de junção), para tensão superior a 1.000V, exceto os de uso automotivo',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200306,'12.004.00',NULL,'Aparelhos para interrupção, seccionamento, proteção, derivação, ligação ou conexão de circuitos elétricos (por exemplo, interruptores, comutadores, relés, corta-circuitos, eliminadores de onda, plugues e tomadas de corrente, suportes para lâmpadas e outros conectores, caixas de junção), para uma tensão não superior a 1.000V; conectores para fibras ópticas, feixes ou cabos de fibras ópticas; exceto "starter" classificado na subposição 8536.50 e os de uso automotivo',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200307,'12.005.00',NULL,'Partes reconhecíveis como exclusiva ou principalmente destinadas aos aparelhos das posições 8535 e 8536',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200308,'12.006.00',NULL,'Cabos, tranças e semelhantes, de cobre, não isolados para usos elétricos, exceto os de uso automotivo',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200309,'12.007.00',NULL,'Fios, cabos (incluídos os cabos coaxiais) e outros condutores, isolados ou não, para usos elétricos (incluídos os de cobre ou alumínio, envernizados ou oxidados anodicamente), mesmo com peças de conexão, inclusive fios e cabos elétricos, para tensão não superior a 1000V, para uso na construção; fios e cabos telefônicos e para transmissão de dados; cabos de fibras ópticas, constituídos de fibras embainhadas individualmente, mesmo com condutores elétricos ou munidos de peças de conexão; cordas, cabos, tranças e semelhantes, de alumínio, não isolados para uso elétricos; exceto os de uso automotivo',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200310,'12.008.00',NULL,'Isoladores de qualquer matéria, para usos elétricos',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200311,'12.009.00',NULL,'Peças isolantes inteiramente de matérias isolantes, ou com simples peças metálicas de montagem (suportes roscados, por exemplo) incorporadas na massa, para máquinas, aparelhos e instalações elétricas; tubos isoladores e suas peças de ligação, de metais comuns, isolados interiormente',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200312,'13.001.00',NULL,'Medicamentos de referência – positiva',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200313,'13.001.01',NULL,'Medicamentos de referência – negativa',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200314,'13.001.02',NULL,'Medicamentos de referência – neutra',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200315,'13.002.00',NULL,'Medicamentos genérico – positiva',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200316,'13.002.01',NULL,'Medicamentos genérico – negativa',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200317,'13.002.02',NULL,'Medicamentos genérico – neutra',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200318,'13.003.00',NULL,'Medicamentos similar – positiva',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200319,'13.003.01',NULL,'Medicamentos similar – negativa',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200320,'13.003.02',NULL,'Medicamentos similar – neutra',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200321,'13.004.00',NULL,'Outros tipos de medicamentos – positiva',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200322,'13.004.01',NULL,'Outros tipos de medicamentos - negativa',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200323,'13.004.02',NULL,'Outros tipos de medicamentos – neutra',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200324,'13.005.00',NULL,'Preparações químicas contraceptivas à base de hormônios, de outros produtos da posição 29.37 ou de espermicidas',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200325,'13.006.00',NULL,'Provitaminas e vitaminas, naturais ou reproduzidas por síntese (incluídos os concentrados naturais), bem como os seus derivados utilizados principalmente como vitaminas, misturados ou não entre si, mesmo em quaisquer soluções',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200326,'13.007.00',NULL,'Preparações opacificantes (contrastantes) para exames radiográficos e reagentes de diagnóstico concebidos para serem administrados ao paciente',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200327,'13.008.00',NULL,'Antissoro, outras frações do sangue, produtos imunológicos modificados, mesmo obtidos por via biotecnológica; vacinas para medicina humana; e produtos semelhantes',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200328,'13.009.00',NULL,'Algodão, atadura, esparadrapo, haste flexível ou não, com uma ou ambas extremidades de algodão, gazes, pensos, sinapismos, e outros, impregnados ou recobertos de substâncias farmacêuticas ou acondicionados para venda a retalho para usos medicinais, cirúrgicos ou dentários',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200329,'13.010.00',NULL,'Luvas cirúrgicas e luvas de procedimento',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200330,'13.011.00',NULL,'Preservativo',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200331,'13.012.00',NULL,'Seringas, mesmo com agulhas',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200332,'13.013.00',NULL,'Agulhas para seringas',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200333,'13.014.00',NULL,'Contraceptivos (dispositivos intra-uterinos - DIU)',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200334,'14.001.00',NULL,'Filtros descartáveis para coar café ou chá',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200335,'14.002.00',NULL,'Bandejas, travessas, pratos, xícaras ou chávenas, taças, copos e artigos semelhantes, de papel ou cartão',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200336,'14.003.00',NULL,'Papel para cigarro',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200337,'15.001.00',NULL,'Lonas plásticas, exceto as para uso na construção',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200338,'15.002.00',NULL,'Artefatos de higiene/toucador de plástico, exceto os para uso na construção',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200339,'15.003.00',NULL,'Serviços de mesa e outros utensílios de mesa ou de cozinha, de plástico, inclusive os descartáveis',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200340,'16.001.00',NULL,'Pneus novos, dos tipos utilizados em automóveis de passageiros (incluídos os veículos de uso misto - camionetas e os automóveis de corrida)',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200341,'16.002.00',NULL,'Pneus novos, dos tipos utilizados em caminhões (inclusive para os fora-de-estrada), ônibus, aviões, máquinas de terraplenagem, de construção e conservação de estradas, máquinas e tratores agrícolas, pá-carregadeira',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200342,'16.003.00',NULL,'Pneus novos para motocicletas',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200343,'16.004.00',NULL,'Outros tipos de pneus novos, exceto para bicicletas',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200344,'16.005.00',NULL,'Pneus novos de borracha dos tipos utilizados em bicicletas',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200345,'16.006.00',NULL,'Pneus recauchutados',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200346,'16.007.00',NULL,'Protetores de borracha, exceto para bicicletas',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200347,'16.007.01',NULL,'Protetores de borracha para bicicletas',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200348,'16.008.00',NULL,'Câmaras de ar de borracha, exceto para bicicletas',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200349,'16.009.00',NULL,'Câmaras de ar de borracha dos tipos utilizados em bicicletas',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200350,'17.001.00',NULL,'Chocolate branco, em embalagens de conteúdo inferior ou igual a 1 kg',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200351,'17.002.00',NULL,'Chocolates contendo cacau, em embalagens de conteúdo inferior ou igual a 1 kg',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200352,'17.003.00',NULL,'Chocolate em barras, tabletes ou blocos ou no estado líquido, em pasta, em pó, grânulos ou formas semelhantes, em recipientes ou embalagens imediatas de conteúdo inferior ou igual a 2 kg',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200353,'17.004.00',NULL,'Chocolates e outras preparações alimentícias contendo cacau, em embalagens de conteúdo inferior ou igual a 1 kg, excluídos os achocolatados em pó',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200354,'17.005.00',NULL,'Achocolatados em pó, em embalagens de conteúdo inferior ou igual a 1 kg',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200355,'17.006.00',NULL,'Caixas de bombons contendo cacau, em embalagens de conteúdo inferior ou igual a 1 kg',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200356,'17.007.00',NULL,'Bombons, inclusive à base de chocolate branco sem cacau',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200357,'17.008.00',NULL,'Bombons, balas, caramelos, confeitos, pastilhas e outros produtos de confeitaria, contendo cacau',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200358,'17.009.00',NULL,'Bebidas prontas à base de mate ou chá',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200359,'17.010.00',NULL,'Refrescos e outras bebidas não alcoólicas, exceto os refrigerantes e as demais bebidas de que trata o Anexo IV',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200360,'17.011.00',NULL,'Bebidas prontas à base de café',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200361,'17.012.00',NULL,'Sucos de frutas ou de produtos hortícolas; mistura de sucos',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200362,'17.013.00',NULL,'Água de coco',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200363,'17.014.00',NULL,'Néctares de frutas e outras bebidas não alcoólicas prontas para beber, exceto isotônicos e energéticos',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200364,'17.015.00',NULL,'Bebidas alimentares prontas à base de soja, leite ou cacau, inclusive os produtos denominados bebidas lácteas',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200365,'17.016.00',NULL,'Refrescos e outras bebidas prontas para beber à base de chá e mate',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200366,'17.017.00',NULL,'Leite em pó, blocos ou grânulos, exceto creme de leite',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200367,'17.018.00',NULL,'Farinha láctea',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200368,'17.019.00',NULL,'Leite modificado para alimentação de crianças.',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200369,'17.020.00',NULL,'Preparações para alimentação infantil à base de farinhas, grumos, sêmolas ou amidos e outros',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200370,'17.021.00',NULL,'Leite “longa vida” (UHT - “Ultra High Temperature”), em recipiente de conteúdo inferior ou igual a 2 litros',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200371,'17.021.01',NULL,'Leite “longa vida” (UHT - “Ultra High Temperature”), em recipiente de conteúdo superior a 2 litros',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200372,'17.022.00',NULL,'Leite em recipiente de conteúdo inferior ou igual a 1 litro',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200373,'17.022.01',NULL,'Leite em recipiente de conteúdo superior a 1 litro',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200374,'17.023.00',NULL,'Leite do tipo pasteurizado em recipiente de conteúdo inferior ou igual a 1 litro',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200375,'17.023.01',NULL,'Leite do tipo pasteurizado em recipiente de conteúdo superior a 1 litro',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200376,'17.024.00',NULL,'Creme de leite, em recipiente de conteúdo inferior ou igual a 1 kg',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200377,'17.024.01',NULL,'Creme de leite, em recipiente de conteúdo superior a 1 kg',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200378,'17.024.02',NULL,'Outros cremes de leite, em recipiente de conteúdo inferior ou igual a 1kg',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200379,'17.025.00',NULL,'Leite condensado, em recipiente de conteúdo inferior ou igual a 1 kg',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200380,'17.025.01',NULL,'Leite condensado, em recipiente de conteúdo superior a 1 kg',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200381,'17.026.00',NULL,'Iogurte e leite fermentado em recipiente de conteúdo inferior ou igual a 2 litros',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200382,'17.026.01',NULL,'Iogurte e leite fermentado em recipiente de conteúdo superior a 2 litros',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200383,'17.027.00',NULL,'Coalhada',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200384,'17.028.00',NULL,'Requeijão e similares, em recipiente de conteúdo inferior ou igual a 1 kg, exceto as embalagens individuais de conteúdo inferior ou igual a 10 g',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200385,'17.028.01',NULL,'Requeijão e similares, em recipiente de conteúdo superior a 1 kg',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200386,'17.029.00',NULL,'Queijos',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200387,'17.030.00',NULL,'Manteiga, em embalagem de conteúdo inferior ou igual a 1 kg, exceto as embalagens individuais de conteúdo inferior ou igual a 10 g',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200388,'17.030.01',NULL,'Manteiga, em embalagem de conteúdo superior a 1 kg',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200389,'17.031.00',NULL,'Margarina em recipiente de conteúdo inferior ou igual a 500 g, exceto as embalagens individuais de conteúdo inferior ou igual a 10 g',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200390,'17.032.00',NULL,'Margarina, em recipiente de conteúdo superior a 500 g e inferior a 1 kg, creme vegetal em recipiente de conteúdo inferior a 1 kg, exceto as embalagens individuais de conteúdo inferior ou igual a 10 g',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200391,'17.032.01',NULL,'Margarina e creme vegetal, em recipiente de conteúdo de 1 kg.',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200392,'17.032.02',NULL,'Outras margarinas e cremes vegetais em recipiente de conteúdo inferior a 1 kg, exceto as embalagens individuais de conteúdo inferior ou igual a 10 g',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200393,'17.033.00',NULL,'Gorduras e óleos vegetais e respectivas frações, parcial ou totalmente hidrogenados, interesterificados, reesterificados ou elaidinizados, mesmo refinados, mas não preparados de outro modo, em recipiente de conteúdo inferior ou igual a 1 kg, exceto as embalagens individuais de conteúdo inferior ou igual a 10 g',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200394,'17.033.01',NULL,'Gorduras e óleos vegetais e respectivas frações, parcial ou totalmente hidrogenados, interesterificados, reesterificados ou elaidinizados, mesmo refinados, mas não preparados de outro modo, em recipiente de conteúdo superior a 1 kg, exceto as embalagens individuais de conteúdo inferior ou igual a 10 g',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200395,'17.034.00',NULL,'Doces de leite',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200396,'17.035.00',NULL,'Produtos à base de cereais, obtidos por expansão ou torrefação',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200397,'17.036.00',NULL,'Salgadinhos diversos',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200398,'17.037.00',NULL,'Batata frita, inhame e mandioca fritos',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200399,'17.038.00',NULL,'Amendoim e castanhas tipo aperitivo, em embalagem de conteúdo inferior ou igual a 1 kg',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200400,'17.038.01',NULL,'Amendoim e castanhas tipo aperitivo, em embalagem de conteúdo superior a 1 kg',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200401,'17.039.00',NULL,'Catchup em embalagens imediatas de conteúdo inferior ou igual a 650 g, exceto as embalagens contendo envelopes individualizados (sachês) de conteúdo inferior ou igual a 10 g',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200402,'17.040.00',NULL,'Condimentos e temperos compostos, incluindo molho de pimenta e outros molhos, em embalagens imediatas de conteúdo inferior ou igual a 1 kg, exceto as embalagens contendo envelopes individualizados (sachês) de conteúdo inferior ou igual a 3 g',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200403,'17.041.00',NULL,'Molhos de soja preparados em embalagens imediatas de conteúdo inferior ou igual a 650 g, exceto as embalagens contendo envelopes individualizados (saches) de conteúdo inferior ou igual a 10 g',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200404,'17.042.00',NULL,'Farinha de mostarda em embalagens de conteúdo inferior ou igual a 1 kg',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200405,'17.043.00',NULL,'Mostarda preparada em embalagens imediatas de conteúdo inferior ou igual a 650 g, exceto as embalagens contendo envelopes individualizados (sachês) de conteúdo inferior ou igual a 10 g',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200406,'17.044.00',NULL,'Maionese em embalagens imediatas de conteúdo inferior ou igual a 650 g, exceto as embalagens contendo envelopes individualizados (sachês) de conteúdo inferior ou igual a 10 g',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200407,'17.045.00',NULL,'Tomates preparados ou conservados, exceto em vinagre ou em ácido acético, em embalagens de conteúdo inferior ou igual a 1 kg',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200408,'17.046.00',NULL,'Molhos de tomate em embalagens imediatas de conteúdo inferior ou igual a 1 kg',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200409,'17.047.00',NULL,'Barra de cereais',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200410,'17.048.00',NULL,'Barra de cereais contendo cacau',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200411,'17.049.00',NULL,'Farinha de trigo, em embalagem inferior ou igual a 5 kg',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200412,'17.049.01',NULL,'Farinha de trigo, em embalagem superior a 5 kg',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200413,'17.050.00',NULL,'Mistura de farinha de trigo',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200414,'17.051.00',NULL,'Misturas e preparações para bolos',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200415,'17.052.00',NULL,'Massas alimentícias tipo instantânea',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200416,'17.053.00',NULL,'Massas alimentícias, cozidas ou recheadas (de carne ou de outras substâncias) ou preparadas de outro modo, exceto as massas alimentícias tipo instantânea',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200417,'17.053.01',NULL,'Cuscuz',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200418,'17.054.00',NULL,'Massas alimentícias não cozidas, nem recheadas, nem preparadas de outro modo:',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200419,'17.055.00',NULL,'Pães industrializados, inclusive de especiarias, exceto panetones e bolo de forma',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200420,'17.056.00',NULL,'Bolo de forma, inclusive de especiarias',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200421,'17.057.00',NULL,'Panetones',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200422,'17.058.00',NULL,'Biscoitos e bolachas derivados de farinha de trigo; exceto dos tipos "cream cracker", "água e sal", "maisena", "maria" e outros de consumo popular, não adicionados de cacau, nem recheados, cobertos ou amanteigados, independentemente de sua denominação comercial',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200423,'17.059.00',NULL,'Biscoitos e bolachas não derivados de farinha de trigo; exceto dos tipos "cream cracker", "água e sal", "maisena" e "maria" e outros de consumo popular, não adicionados de cacau, nem recheados, cobertos ou amanteigados, independentemente de sua denominação comercial',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200424,'17.060.00',NULL,'Biscoitos e bolachas dos tipos "cream cracker", "água e sal", "maisena" e "maria" e outros de consumo popular, adicionados de edulcorantes e não adicionados de cacau, nem recheados, cobertos ou amanteigados, independentemente de sua denominação comercial',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200425,'17.061.00',NULL,'Biscoitos e bolachas dos tipos "cream cracker", "água e sal", "maisena" e "maria" e outros de consumo popular, não adicionados de cacau, nem recheados, cobertos ou amanteigados, independentemente de sua denominação comercial',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200426,'17.062.00',NULL,'“Waffles” e “wafers” - sem cobertura',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200427,'17.063.00',NULL,'“Waffles” e “wafers”- com cobertura',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200428,'17.064.00',NULL,'Torradas, pão torrado e produtos semelhantes torrados',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200429,'17.065.00',NULL,'Outros pães de forma',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200430,'17.066.00',NULL,'Outras bolachas, exceto casquinhas para sorvete',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200431,'17.067.00',NULL,'Outros pães e bolos industrializados e produtos de panificação não especificados anteriormente; exceto casquinhas para sorvete e pão francês de até 200 g',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200432,'17.068.00',NULL,'Pão denominado knackebrot',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200433,'17.069.00',NULL,'Pão francês de até 200 g',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200434,'17.070.00',NULL,'Demais pães industrializados',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200435,'17.071.00',NULL,'Óleo de soja refinado, em recipientes com capacidade inferior ou igual a 5 litros, exceto as embalagens individuais de conteúdo inferior ou igual a 15 mililitros',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200436,'17.072.00',NULL,'Óleo de amendoim refinado, em recipientes com capacidade inferior ou igual a 5 litros, exceto as embalagens individuais de conteúdo inferior ou igual a 15 mililitros',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200437,'17.073.00',NULL,'Azeites de oliva, em recipientes com capacidade inferior ou igual a 2 litros, exceto as embalagens individuais de conteúdo inferior ou igual a 15 mililitros',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200438,'17.073.01',NULL,'Azeites de oliva, em recipientes com capacidade superior a 2 litros e inferior ou igual a 5 litros',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200439,'17.073.02',NULL,'Azeites de oliva, em recipientes com capacidade superior a 5 litros',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200440,'17.074.00',NULL,'Outros óleos e respectivas frações, obtidos exclusivamente a partir de azeitonas, mesmo refinados, mas não quimicamente modificados, e misturas desses óleos ou frações com óleos ou frações da posição 15.09, em recipientes com capacidade inferior ou igual a 5 litros, exceto as embalagens individuais de conteúdo inferior ou igual a 15 mililitros',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200441,'17.075.00',NULL,'Óleo de girassol ou de algodão refinado, em recipientes com capacidade inferior ou igual a 5 litros, exceto as embalagens individuais de conteúdo inferior ou igual a 15 mililitros',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200442,'17.076.00',NULL,'Óleo de canola, em recipientes com capacidade inferior ou igual a 5 litros, exceto as embalagens individuais de conteúdo inferior ou igual a 15 mililitros',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200443,'17.077.00',NULL,'Óleo de linhaça refinado, em recipientes com capacidade inferior ou igual a 5 litros, exceto as embalagens individuais de conteúdo inferior ou igual a 15 mililitros',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200444,'17.078.00',NULL,'Óleo de milho refinado, em recipientes com capacidade inferior ou igual a 5 litros, exceto as embalagens individuais de conteúdo inferior ou igual a 15 mililitros',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200445,'17.079.00',NULL,'Outros óleos refinados, em recipientes com capacidade inferior ou igual a 5 litros, exceto as embalagens individuais de conteúdo inferior ou igual a 15 mililitros',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200446,'17.080.00',NULL,'Misturas de óleos refinados, para consumo humano, em recipientes com capacidade inferior ou igual a 5 litros, exceto as embalagens individuais de conteúdo inferior ou igual a 15 mililitros',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200447,'17.081.00',NULL,'Outros óleos vegetais comestíveis não especificados anteriormente',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200448,'17.082.00',NULL,'Enchidos (embutidos) e produtos semelhantes, de carne, miudezas ou sangue; exceto salsicha, linguiça e mortadela',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200449,'17.083.00',NULL,'Salsicha e linguiça',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200450,'17.084.00',NULL,'Mortadela',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200451,'17.085.00',NULL,'Outras preparações e conservas de carne, miudezas ou de sangue',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200452,'17.086.00',NULL,'Preparações e conservas de peixes; caviar e seus sucedâneos preparados a partir de ovas de peixe; exceto sardinha em conserva',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200453,'17.087.00',NULL,'Sardinha em conserva',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200454,'17.088.00',NULL,'Crustáceos, moluscos e outros invertebrados aquáticos, preparados ou em conservas',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200455,'17.089.00',NULL,'Carne de gado bovino, ovino e bufalino e produtos comestíveis resultantes da matança desse gado submetidos à salga, secagem ou desidratação',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200456,'17.090.00',NULL,'Carnes de animais das espécies caprina, frescas, refrigeradas ou congeladas',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200457,'17.091.00',NULL,'Carnes e demais produtos comestíveis frescos, resfriados, congelados, salgados, em salmoura, simplesmente temperados, secos ou defumados, resultantes do abate de aves e de suínos',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200458,'17.092.00',NULL,'Produtos hortícolas, cozidos em água ou vapor, congelados, em embalagens de conteúdo inferior ou igual a 1 kg',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200459,'17.092.01',NULL,'Produtos hortícolas, cozidos em água ou vapor, congelados, em embalagens de conteúdo superior a 1 kg',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200460,'17.093.00',NULL,'Frutas, não cozidas ou cozidas em água ou vapor, congeladas, mesmo adicionadas de açúcar ou de outros edulcorantes, em embalagens de conteúdo inferior ou igual a 1 kg',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200461,'17.093.01',NULL,'Frutas, não cozidas ou cozidas em água ou vapor, congeladas, mesmo adicionadas de açúcar ou de outros edulcorantes, em embalagens de conteúdo superior a 1 kg',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200462,'17.094.00',NULL,'Produtos hortícolas, frutas e outras partes comestíveis de plantas, preparados ou conservados em vinagre ou em ácido acético, em embalagens de conteúdo inferior ou igual a 1 kg',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200463,'17.094.01',NULL,'Produtos hortícolas, frutas e outras partes comestíveis de plantas, preparados ou conservados em vinagre ou em ácido acético, em embalagens de conteúdo superior a 1 kg',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200464,'17.095.00',NULL,'Outros produtos hortícolas preparados ou conservados, exceto em vinagre ou em ácido acético, congelados, com exceção dos produtos da posição 20.06, em embalagens de conteúdo inferior ou igual a 1 kg',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200465,'17.095.01',NULL,'Outros produtos hortícolas preparados ou conservados, exceto em vinagre ou em ácido acético, congelados, com exceção dos produtos da posição 20.06, em embalagens de conteúdo superior a 1 kg',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200466,'17.096.00',NULL,'Outros produtos hortícolas preparados ou conservados, exceto em vinagre ou em ácido acético, não congelados, com exceção dos produtos da posição 20.06, excluídos batata, inhame e mandioca fritos, em embalagens de conteúdo inferior ou igual a 1 kg',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200467,'17.096.01',NULL,'Outros produtos hortícolas preparados ou conservados, exceto em vinagre ou em ácido acético, não congelados, com exceção dos produtos da posição 20.06, excluídos batata, inhame e mandioca fritos, em embalagens de conteúdo superior a 1 kg',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200468,'17.097.00',NULL,'Produtos hortícolas, frutas, cascas de frutas e outras partes de plantas, conservados com açúcar (passados por calda, glaceados ou cristalizados), em embalagens de conteúdo inferior ou igual a 1 kg',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200469,'17.097.01',NULL,'Produtos hortícolas, frutas, cascas de frutas e outras partes de plantas, conservados com açúcar (passados por calda, glaceados ou cristalizados), em embalagens de conteúdo superior a 1 kg',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200470,'17.098.00',NULL,'Doces, geléias, “marmelades”, purês e pastas de frutas, obtidos por cozimento, com ou sem adição de açúcar ou de outros edulcorantes, em embalagens de conteúdo inferior ou igual a 1 kg, exceto as embalagens individuais de conteúdo inferior ou igual a 10 g',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200471,'17.098.01',NULL,'Doces, geléias, “marmelades”, purês e pastas de frutas, obtidos por cozimento, com ou sem adição de açúcar ou de outros edulcorantes, em embalagens de conteúdo superior a 1 kg',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200472,'17.099.00',NULL,'Frutas e outras partes comestíveis de plantas, preparadas ou conservadas de outro modo, com ou sem adição de açúcar ou de outros edulcorantes ou de álcool, não especificadas nem compreendidas em outras posições, excluídos os amendoins e castanhas tipo aperitivo, da posição 2008.1, em embalagens de conteúdo inferior ou igual a 1 kg',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200473,'17.099.01',NULL,'Frutas e outras partes comestíveis de plantas, preparadas ou conservadas de outro modo, com ou sem adição de açúcar ou de outros edulcorantes ou de álcool, não especificadas nem compreendidas em outras posições, excluídos os amendoins e castanhas tipo aperitivo, da posição 2008.1, em embalagens superior a 1 kg',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200474,'17.100.00',NULL,'Café torrado e moído, em embalagens de conteúdo inferior ou igual a 2 kg',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200475,'17.100.01',NULL,'Café torrado e moído, em embalagens de conteúdo superior a 2 kg',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200476,'17.101.00',NULL,'Chá, mesmo aromatizado',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200477,'17.102.00',NULL,'Mate',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200478,'17.103.00',NULL,'Açúcar refinado, em embalagens de conteúdo inferior ou igual a 2 kg, exceto as embalagens contendo envelopes individualizados (sachês) de conteúdo inferior ou igual a 10 g',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200479,'17.103.01',NULL,'Açúcar refinado, em embalagens de conteúdo superior a 2 kg e inferior ou igual a 5 kg',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200480,'17.103.02',NULL,'Açúcar refinado, em embalagens de conteúdo superior a 5 kg',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200481,'17.104.00',NULL,'Açúcar refinado adicionado de aromatizante ou de corante em embalagens de conteúdo inferior ou igual a 2 kg, exceto as embalagens contendo envelopes individualizados (sachês) de conteúdo inferior ou igual a 10 g',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200482,'17.104.01',NULL,'Açúcar refinado adicionado de aromatizante ou de corante em embalagens de conteúdo superior a 2 kg e inferior ou igual a 5 kg',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200483,'17.104.02',NULL,'Açúcar refinado adicionado de aromatizante ou de corante em embalagens de conteúdo superior a 5 kg',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200484,'17.105.00',NULL,'Açúcar cristal, em embalagens de conteúdo inferior ou igual a 2 kg, exceto as embalagens contendo envelopes individualizados (sachês) de conteúdo inferior ou igual a 10 g',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200485,'17.105.01',NULL,'Açúcar cristal, em embalagens de conteúdo superior a 2 kg e inferior ou igual a 5 kg',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200486,'17.105.02',NULL,'Açúcar cristal, em embalagens de conteúdo superior a 5 kg',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200487,'17.106.00',NULL,'Açúcar cristal adicionado de aromatizante ou de corante, em embalagens de conteúdo inferior ou igual a 2 kg, exceto as embalagens contendo envelopes individualizados (sachês) de conteúdo inferior ou igual a 10 g',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200488,'17.106.01',NULL,'Açúcar cristal adicionado de aromatizante ou de corante, em embalagens de conteúdo superior a 2 kg e inferior ou igual a 5 kg',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200489,'17.106.02',NULL,'Açúcar cristal adicionado de aromatizante ou de corante, em embalagens de conteúdo superior a 5 kg',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200490,'17.107.00',NULL,'Outros tipos de açúcar, em embalagens de conteúdo inferior ou igual a 2 kg, exceto as embalagens contendo envelopes individualizados (sachês) de conteúdo inferior ou igual a 10 g',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200491,'17.107.01',NULL,'Outros tipos de açúcar, em embalagens de conteúdo superior a 2 kg e inferior ou igual a 5 kg',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200492,'17.107.02',NULL,'Outros tipos de açúcar, em embalagens de conteúdo superior a 5 kg',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200493,'17.108.00',NULL,'Outros tipos de açúcar adicionado de aromatizante ou de corante, em embalagens de conteúdo inferior ou igual a 2 kg, exceto as embalagens contendo envelopes individualizados (sachês) de conteúdo inferior ou igual a 10 g',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200494,'17.108.01',NULL,'Outros tipos de açúcar adicionado de aromatizante ou de corante, em embalagens de conteúdo superior a 2 kg e inferior ou igual a 5 kg',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200495,'17.108.02',NULL,'Outros tipos de açúcar adicionado de aromatizante ou de corante, em embalagens de conteúdo superior a 5 kg',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200496,'17.109.00',NULL,'Outros açúcares em embalagens de conteúdo inferior ou igual a 2 kg, exceto as embalagens contendo envelopes individualizados (sachês) de conteúdo inferior ou igual a 10 g',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200497,'17.109.01',NULL,'Outros açúcares, em embalagens de conteúdo superior a 2 kg e inferior ou igual a 5 kg',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200498,'17.109.02',NULL,'Outros açúcares, em embalagens de conteúdo superior a 5 kg',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200499,'17.110.00',NULL,'Milho para pipoca (micro-ondas)',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200500,'17.111.00',NULL,'Extratos, essências e concentrados de café e preparações à base destes extratos, essências ou concentrados ou à base de café, em embalagens de conteúdo inferior ou igual a 500 g, exceto as preparações indicadas no item 112.0',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200501,'17.112.00',NULL,'Extratos, essências e concentrados de chá ou de mate e preparações à base destes extratos, essências ou concentrados ou à base de chá ou de mate, em embalagens de conteúdo inferior ou igual a 500 g, exceto as bebidas prontas à base de mate ou chá',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200502,'17.113.00',NULL,'Preparações em pó para cappuccino e similares, em embalagens de conteúdo inferior ou igual a 500 g',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200503,'18.001.00',NULL,'Artigos para serviço de mesa ou de cozinha, de porcelana, inclusive os descartáveis – estojos',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200504,'18.002.00',NULL,'Artigos para serviço de mesa ou de cozinha, de porcelana, inclusive os descartáveis – avulsos',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200505,'18.003.00',NULL,'Artigos para serviço de mesa ou de cozinha, de cerâmica',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200506,'18.004.00',NULL,'Velas para filtros',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200507,'19.001.00',NULL,'Tinta guache',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200508,'19.002.00',NULL,'Espiral - perfil para encadernação, de plástico e outros materiais classificados nas posições 3901 a 3914',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200509,'19.003.00',NULL,'Artigos de escritório e artigos escolares de plástico e outros materiais classificados nas posições 3901 a 3914, exceto estojos',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200510,'19.004.00',NULL,'Maletas e pastas para documentos e de estudante, e artefatos semelhantes',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200511,'19.005.00',NULL,'Prancheta de plástico',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200512,'19.006.00',NULL,'Bobina para fax',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200513,'19.007.00',NULL,'Papel seda',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200514,'19.008.00',NULL,'Bobina branca para máquina de calcular ou PDV',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200515,'19.009.00',NULL,'Cartolina escolar e papel cartão, brancos e coloridos; recados auto adesivos (LP note); papéis de presente, todos cortados em tamanho pronto para uso escolar e doméstico',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200516,'19.010.00',NULL,'Papel fotográfico, exceto: (i) os papéis fotográficos emulsionados com haleto de prata tipo brilhante, matte ou lustre, em rolo e, com largura igual ou superior a 102 mm e comprimento inferior ou igual a 350 m, (ii) os papéis fotográficos emulsionados com haleto de prata tipo brilhante ou fosco, em folha e com largura igual ou superior a 152 mm e comprimento inferior ou igual a 307 mm, (iii) papel de qualidade fotográfica com tecnologia “Thermo-autochrome”, que submetido a um processo de aquecimento seja capaz de formar imagens por reação química e combinação das camadas cyan, magenta e amarela',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200517,'19.011.00',NULL,'Papel almaço',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200518,'19.012.00',NULL,'Papel hectográfico',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200519,'19.013.00',NULL,'Papel celofane e tipo celofane',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200520,'19.014.00',NULL,'Papel impermeável',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200521,'19.015.00',NULL,'Papel crepon',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200522,'19.016.00',NULL,'Papel fantasia',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200523,'19.017.00',NULL,'Papel-carbono, papel autocopiativo (exceto os vendidos em rolos de diâmetro igual ou superior a 60 cm e os vendidos em folhas de formato igual ou superior a 60 cm de altura e igual ou superior a 90 cm de largura) e outros papéis para cópia ou duplicação (incluídos os papéis para estênceis ou para chapas ofsete), estênceis completos e chapas ofsete, de papel, em folhas, mesmo acondicionados em caixas',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200524,'19.018.00',NULL,'Envelopes, aerogramas, bilhetes-postais não ilustrados e cartões para correspondência, de papel ou cartão, caixas, sacos e semelhantes, de papel ou cartão, contendo um sortido de artigos para correspondência',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200525,'19.019.00',NULL,'Livros de registro e de contabilidade, blocos de notas,de encomendas, de recibos, de apontamentos, de papel para cartas, agendas e artigos semelhantes',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200526,'19.020.00',NULL,'Cadernos',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200527,'19.021.00',NULL,'Classificadores, capas para encadernação (exceto as capas para livros) e capas de processos',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200528,'19.022.00',NULL,'Formulários em blocos tipo "manifold", mesmo com folhas intercaladas de papel-carbono',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200529,'19.023.00',NULL,'Álbuns para amostras ou para coleções',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200530,'19.024.00',NULL,'Pastas para documentos, outros artigos escolares, de escritório ou de papelaria, de papel ou cartão e capas para livros, de papel ou cartão',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200531,'19.025.00',NULL,'Cartões postais impressos ou ilustrados, cartões impressos com votos ou mensagens pessoais, mesmo ilustrados, com ou sem envelopes, guarnições ou aplicações (conhecidos como cartões de expressão social - de época/sentimento)',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200532,'19.026.00',NULL,'Canetas esferográficas',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200533,'19.027.00',NULL,'Canetas e marcadores, com ponta de feltro ou com outras pontas porosas',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200534,'19.028.00',NULL,'Canetas tinteiro',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200535,'19.029.00',NULL,'Outras canetas; sortidos de canetas',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200536,'19.030.00',NULL,'Papel cortado "cutsize" (tipo A3, A4, ofício I e II, carta e outros)',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200537,'20.001.00',NULL,'Henna (embalagens de conteúdo inferior ou igual a 200 g)',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200538,'20.001.01',NULL,'Henna (embalagens de conteúdo superior a 200 g)',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200539,'20.002.00',NULL,'Vaselina',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200540,'20.003.00',NULL,'Amoníaco em solução aquosa (amônia)',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200541,'20.004.00',NULL,'Peróxido de hidrogênio, em embalagens de conteúdo inferior ou igual a 500 ml',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200542,'20.005.00',NULL,'Lubrificação íntima',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200543,'20.006.00',NULL,'Óleos essenciais (desterpenados ou não), incluídos os chamados "concretos" ou "absolutos"; resinóides; oleorresinas de extração; soluções concentradas de óleos essenciais em gorduras, em óleos fixos, em ceras ou em matérias análogas, obtidas portratamento de flores através de substâncias gordas ou por maceração; subprodutos terpênicos residuais da desterpenação dos óleos essenciais; águas destiladas aromáticas e soluções aquosas de óleos essenciais, em embalagens de conteúdo inferior ou igual a 500 ml',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200544,'20.007.00',NULL,'Perfumes (extratos)',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200545,'20.008.00',NULL,'Águas-de-colônia',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200546,'20.009.00',NULL,'Produtos de maquilagem para os lábios',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200547,'20.010.00',NULL,'Sombra, delineador, lápis para sobrancelhas e rímel',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200548,'20.011.00',NULL,'Outros produtos de maquilagem para os olhos',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200549,'20.012.00',NULL,'Preparações para manicuros e pedicuros, incluindo removedores de esmalte à base de acetona',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200550,'20.013.00',NULL,'Pós, incluídos os compactos, para maquilagem',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200551,'20.014.00',NULL,'Cremes de beleza, cremes nutritivos e loções tônicas',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200552,'20.015.00',NULL,'Outros produtos de beleza ou de maquilagem preparados e preparações para conservação ou cuidados da pele, exceto as preparações solares e antisolares.',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200553,'20.016.00',NULL,'Preparações solares e antisolares',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200554,'20.017.00',NULL,'Xampus para o cabelo',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200555,'20.018.00',NULL,'Preparações para ondulação ou alisamento, permanentes, dos cabelos',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200556,'20.019.00',NULL,'Laquês para o cabelo',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200557,'20.020.00',NULL,'Outras preparações capilares, incluindo máscaras e finalizadores',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200558,'20.021.00',NULL,'Condicionadores',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200559,'20.022.00',NULL,'Tintura para o cabelo',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200560,'20.023.00',NULL,'Dentifrícios',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200561,'20.024.00',NULL,'Fios utilizados para limpar os espaços interdentais (fios dentais)',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200562,'20.025.00',NULL,'Outras preparações para higiene bucal ou dentária',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200563,'20.026.00',NULL,'Preparações para barbear (antes, durante ou após)',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200564,'20.027.00',NULL,'Desodorantes (desodorizantes) corporais líquidos',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200565,'20.028.00',NULL,'Antiperspirantes líquidos',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200566,'20.029.00',NULL,'Outros desodorantes (desodorizantes) corporais',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200567,'20.030.00',NULL,'Outros antiperspirantes',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200568,'20.031.00',NULL,'Sais perfumados e outras preparações para banhos',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200569,'20.032.00',NULL,'Outros produtos de perfumaria ou de toucador preparados',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200570,'20.033.00',NULL,'Soluções para lentes de contato ou para olhos artificiais',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200571,'20.034.00',NULL,'Sabões de toucador em barras, pedaços ou figuras moldados',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200572,'20.035.00',NULL,'Outros sabões, produtos e preparações, em barras, pedaços ou figuras moldados, inclusive lenços umedecidos',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200573,'20.036.00',NULL,'Sabões de toucador sob outras formas',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200574,'20.037.00',NULL,'Produtos e preparações orgânicos tensoativos para lavagem da pele, na forma de líquido ou de creme, acondicionados para venda a retalho, mesmo contendo sabão',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200575,'20.038.00',NULL,'Bolsa para gelo ou para água quente',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200576,'20.039.00',NULL,'Chupetas e bicos para mamadeiras e para chupetas, de borracha',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200577,'20.039.01',NULL,'Chupetas e bicos para mamadeiras e para chupetas, de silicone',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200578,'20.040.00',NULL,'Malas e maletas de toucador',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200579,'20.041.00',NULL,'Papel higiênico - folha simples',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200580,'20.042.00',NULL,'Papel higiênico - folha dupla e tripla',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200581,'20.043.00',NULL,'Lenços (incluídos os de maquilagem) e toalhas de mão',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200582,'20.044.00',NULL,'Papel toalha de uso institucional do tipo comercializado em rolos igual ou superior a 80 metros e do tipo comercializado em folhas intercaladas',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200583,'20.045.00',NULL,'Toalhas e guardanapos de mesa',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200584,'20.046.00',NULL,'Toalhas de cozinha (papel toalha de uso doméstico)',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200585,'20.047.00',NULL,'Fraldas',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200586,'20.048.00',NULL,'Tampões higiênicos',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200587,'20.049.00',NULL,'Absorventes higiênicos externos',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200588,'20.050.00',NULL,'Hastes flexíveis (uso não medicinal)',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200589,'20.051.00',NULL,'Sutiã descartável, assemelhados e papel para depilação',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200590,'20.052.00',NULL,'Pinças para sobrancelhas',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200591,'20.053.00',NULL,'Espátulas (artigos de cutelaria)',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200592,'20.054.00',NULL,'Utensílios e sortidos de utensílios de manicuros ou de pedicuros (incluídas as limas para unhas)',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200593,'20.055.00',NULL,'Termômetros, inclusive o digital',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200594,'20.056.00',NULL,'Escovas e pincéis de barba, escovas para cabelos, para cílios ou para unhas e outras escovas de toucador de pessoas, incluídas as que sejam partes de aparelhos, exceto escovas de dentes',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200595,'20.057.00',NULL,'Escovas de dentes, incluídas as escovas para dentaduras',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200596,'20.058.00',NULL,'Pincéis para aplicação de produtos cosméticos',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200597,'20.059.00',NULL,'Sortidos de viagem, para toucador de pessoas para costura ou para limpeza de calçado ou de roupas',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200598,'20.060.00',NULL,'Pentes, travessas para cabelo e artigos semelhantes; grampos (alfinetes) para cabelo; pinças (pinceguiches), onduladores, bobes (rolos) e artefatos semelhantes para penteados, e suas partes, exceto os classificados na posição 8516 e suas partes',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200599,'20.061.00',NULL,'Borlas ou esponjas para pós ou para aplicação de outros cosméticos ou de produtos de toucador',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200600,'20.062.00',NULL,'Mamadeiras',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200601,'20.063.00',NULL,'Aparelhos e lâminas de barbear',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200602,'21.001.00',NULL,'Fogões de cozinha de uso doméstico e suas partes',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200603,'21.002.00',NULL,'Combinações de refrigeradores e congeladores ("freezers"), munidos de portas exteriores separadas',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200604,'21.003.00',NULL,'Refrigeradores do tipo doméstico, de compressão',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200605,'21.004.00',NULL,'Outros refrigeradores do tipo doméstico',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200606,'21.005.00',NULL,'Congeladores ("freezers") horizontais tipo arca, de capacidade não superior a 800 litros',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200607,'21.006.00',NULL,'Congeladores ("freezers") verticais tipo armário, de capacidade não superior a 900 litros',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200608,'21.007.00',NULL,'Outros móveis (arcas, armários, vitrines, balcões e móveis semelhantes) para a conservação e exposição de produtos, que incorporem um equipamento para a produção de frio',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200609,'21.008.00',NULL,'Mini adega e similares',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200610,'21.009.00',NULL,'Máquinas para produção de gelo',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200611,'21.010.00',NULL,'Partes dos refrigeradores, congeladores, mini adegas e similares, máquinas para produção de gelo e bebedouros descritos nos itens 2.0, 3.0, 4.0, 5.0, 6.0, 7.0, 8.0, 9.0 e 13.0.',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200612,'21.011.00',NULL,'Secadoras de roupa de uso doméstico',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200613,'21.012.00',NULL,'Outras secadoras de roupas e centrífugas de uso doméstico',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200614,'21.013.00',NULL,'Bebedouros refrigerados para água',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200615,'21.014.00',NULL,'Partes das secadoras de roupas e centrífugas de uso doméstico e dos aparelhos para filtrar ou depurar água, descritos nos itens 11.0 e 12.0',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200616,'21.015.00',NULL,'Máquinas de lavar louça do tipo doméstico e suas partes',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200617,'21.016.00',NULL,'Máquinas que executem pelo menos duas das seguintes funções: impressão, cópia ou transmissão de telecópia (fax), capazes de ser conectadas a uma máquina',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200618,'21.017.00',NULL,'Outras impressoras, máquinas copiadoras e telecopiadores (fax), mesmo combinados entre si, capazes de ser conectados a uma máquina automática para processamento de dados ou a uma rede',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200619,'21.018.00',NULL,'Partes e acessórios de máquinas e aparelhos de impressão por meio de blocos, cilindros e outros elementos de impressão da posição 8442; e de outras impressoras, máquinas copiadoras e telecopiadores (fax), mesmo combinados entre si',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200620,'21.019.00',NULL,'Máquinas de lavar roupa, mesmo com dispositivos de secagem, de uso doméstico, de capacidade não superior a 10 kg, em peso de roupa seca, inteiramente automáticas',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200621,'21.020.00',NULL,'Outras máquinas de lavar roupa, mesmo com dispositivos de secagem, de uso doméstico, com secador centrífugo incorporado',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200622,'21.021.00',NULL,'Outras máquinas de lavar roupa, mesmo com dispositivos de secagem, de uso doméstico',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200623,'21.022.00',NULL,'Máquinas de lavar roupa, mesmo com dispositivos de secagem, de uso doméstico, de capacidade superior a 10 kg, em peso de roupa seca',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200624,'21.023.00',NULL,'Partes de máquinas de lavar roupa, mesmo com dispositivos de secagem, de uso doméstico',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200625,'21.024.00',NULL,'Máquinas de secar de uso doméstico de capacidade não superior a 10 kg, em peso de roupa seca',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200626,'21.025.00',NULL,'Outras máquinas de secar de uso doméstico',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200627,'21.026.00',NULL,'Partes de máquinas de secar de uso doméstico',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200628,'21.027.00',NULL,'Máquinas de costura de uso doméstico',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200629,'21.028.00',NULL,'Máquinas automáticas para processamento de dados, portáteis, de peso não superior a 10 kg, contendo pelo menos uma unidade central de processamento, um teclado e uma tela',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200630,'21.029.00',NULL,'Outras máquinas automáticas para processamento de dados',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200631,'21.030.00',NULL,'Unidades de processamento, de pequena capacidade, exceto as das subposições 8471.41 ou 8471.49, podendo conter, no mesmo corpo, um ou dois dos seguintes tipos de unidades: unidade de memória, unidade de entrada e unidade de saída;baseadas em microprocessadores, com capacidade de instalação, dentro do mesmo gabinete, de unidades de memória da subposição 8471.70, podendo conter múltiplos conectores de expansão ("slots"), e valor FOB inferior ou igual a US$ 12.500,00, por unidade',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200632,'21.031.00',NULL,'Unidades de entrada, exceto as classificadas na posição 8471.60.54',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200633,'21.032.00',NULL,'Outras unidades de entrada ou de saída, podendo conter, no mesmo corpo, unidades de memória',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200634,'21.033.00',NULL,'Unidades de memória',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200635,'21.034.00',NULL,'Outras máquinas automáticas para processamento de dados e suas unidades; leitores magnéticos ou ópticos, máquinas para registrar dados em suporte sob forma codificada, e máquinas para processamento desses dados, não especificadas nem compreendidas em outras posições',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200636,'21.035.00',NULL,'Partes e acessórios das máquinas da posição 84.71',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200637,'21.036.00',NULL,'Outros transformadores, exceto os classificados nas posições 8504.33.00 e 8504.34.00',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200638,'21.037.00',NULL,'Carregadores de acumuladores',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200639,'21.038.00',NULL,'Equipamentos de alimentação ininterrupta de energia (UPS ou "no break")',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200640,'21.039.00',NULL,'Outros acumuladores',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200641,'21.040.00',NULL,'Aspiradores',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200642,'21.041.00',NULL,'Aparelhos eletromecânicos de motor elétrico incorporado, de uso doméstico e suas partes',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200643,'21.042.00',NULL,'Enceradeiras',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200644,'21.043.00',NULL,'Chaleiras elétricas',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200645,'21.044.00',NULL,'Ferros elétricos de passar',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200646,'21.045.00',NULL,'Fornos de microondas',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200647,'21.046.00',NULL,'Outros fornos; fogareiros (incluídas as chapas de cocção), grelhas e assadeiras, exceto os portáteis',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200648,'21.047.00',NULL,'Outros fornos; fogareiros (incluídas as chapas de cocção), grelhas e assadeiras, portáteis',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200649,'21.048.00',NULL,'Outros aparelhos eletrotérmicos de uso doméstico – Cafeteiras',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200650,'21.049.00',NULL,'Outros aparelhos eletrotérmicos de uso doméstico - Torradeiras',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200651,'21.050.00',NULL,'Outros aparelhos eletrotérmicos de uso doméstico',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200652,'21.051.00',NULL,'Partes das chaleiras, ferros, fornos e outros aparelhos eletrotérmicos da posição 85.16, descritos nos itens 43.0, 44.0, 45.0, 46.0, 47.0, 48.0, 49.0 e 50.0',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200653,'21.052.00',NULL,'Aparelhos telefônicos por fio com unidade auscultador- microfone sem fio',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200654,'21.053.00',NULL,'Telefones para redes celulares e para outras redes sem fio, exceto os de uso automotivo',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200655,'21.054.00',NULL,'Outros aparelhos telefônicos',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200656,'21.055.00',NULL,'Aparelhos para transmissão ou recepção de voz, imagem ou outros dados em rede com fio, exceto os classificados nas posições 8517.62.51, 8517.62.52 e 8517.62.53',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200657,'21.056.00',NULL,'Microfones e seus suportes; altofalantes, mesmo montados nos seus receptáculos, fones de ouvido (auscultadores), mesmo combinados com microfone e conj untos ou sortidos constituídos por um microfone e um ou mais alto-falantes, amplificadores elétricos de audiofreqüência, aparelhos elétricos de amplificação de som; suas partes e acessórios; exceto os de uso automotivo',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200658,'21.057.00',NULL,'Aparelhos de radiodifusão suscetíveis de funcionarem sem fonte externa de energia. Aparelhos de gravação de som; aparelhos de reprodução de som; aparelhos de gravação e de reprodução de som; partes e acessórios; exceto os de uso automotivo',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200659,'21.058.00',NULL,'Outros aparelhos de gravação de som; aparelhos de reprodução de som; aparelhos de gravação e de reprodução de som; partes e acessórios; exceto os de uso automotivo',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200660,'21.059.00',NULL,'Gravador-reprodutor e editor de imagem e som, em discos, por meio magnético, óptico ou optomagnético, exceto de uso automotivo',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200661,'21.060.00',NULL,'Outros aparelhos videofônicos de gravação ou reprodução, mesmo incorporando um receptor de sinais videofônicos, exceto os de uso automotivo',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200662,'21.061.00',NULL,'Cartões de memória ("memory cards")',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200663,'21.062.00',NULL,'Cartões inteligentes ("smart cards")',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200664,'21.063.00',NULL,'Câmeras fotográficas digitais e câmeras de vídeo e suas partes',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200665,'21.064.00',NULL,'Outros aparelhos receptores para radiodifusão, mesmo combinados num invólucro, com um aparelho de gravação ou de reprodução de som, ou com um relógio, inclusive caixa acústica para Home Theaters classificados na posição 8518',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200666,'21.065.00',NULL,'Monitores e projetores que não incorporem aparelhos receptores de televisão, policromáticos',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200667,'21.066.00',NULL,'Outros monitores dos tipos utilizados exclusiva ou principalmente com uma máquina automática para processamento de dados da posição 84.71, policromáticos',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200668,'21.067.00',NULL,'Aparelhos receptores de televisão, mesmo que incorporem um aparelho receptor de radiodifusão ou um aparelho de gravação ou reprodução de som ou de imagens - Televisores de CRT (tubo de raios catódicos).',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200669,'21.068.00',NULL,'Aparelhos receptores de televisão, mesmo que incorporem um aparelho receptor de radiodifusão ou um aparelho de gravação ou reprodução de som ou de imagens - Televisores de LCD (Display de Cristal Líquido)',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200670,'21.069.00',NULL,'Aparelhos receptores de televisão, mesmo que incorporem um aparelho receptor de radiodifusão ou um aparelho de gravação ou reprodução de som ou de imagens - Televisores de Plasma',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200671,'21.070.00',NULL,'Outros aparelhos receptores de televisão não dotados de monitores ou display de vídeo',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200672,'21.071.00',NULL,'Outros aparelhos receptores de televisão não relacionados em outros itens deste anexo',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200673,'21.072.00',NULL,'Câmeras fotográficas dos tipos utilizadas para preparação de clichês ou cilindros de impressão',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200674,'21.073.00',NULL,'Câmeras fotográficas para filmes de revelação e copiagem instantâneas',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200675,'21.074.00',NULL,'Aparelhos de diatermia',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200676,'21.075.00',NULL,'Aparelhos de massagem',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200677,'21.076.00',NULL,'Reguladores de voltagem eletrônicos',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200678,'21.077.00',NULL,'Consoles e máquinas de jogos de vídeo, exceto os classificados na subposição 9504.30',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200679,'21.078.00',NULL,'Multiplexadores e concentradores',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200680,'21.079.00',NULL,'Centrais automáticas privadas, de capacidade inferior ou igual a 25 ramais',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200681,'21.080.00',NULL,'Outros aparelhos para comutação',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200682,'21.081.00',NULL,'Roteadores digitais, em redes com ou sem fio',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200683,'21.082.00',NULL,'Aparelhos emissores com receptor incorporado de sistema troncalizado ("trunking"), de tecnologia celular',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200684,'21.083.00',NULL,'Outros aparelhos de recepção, conversão e transmissão ou regeneração de voz, imagens ou outros dados, incluindo os aparelhos de comutação e roteamento',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200685,'21.084.00',NULL,'Antenas próprias para telefones celulares portáteis, exceto as telescópicas',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200686,'21.085.00',NULL,'Aparelhos ou máquinas de barbear, máquinas de cortar o cabelo ou de tosquiar e aparelhos de depilar, e suas partes',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200687,'21.086.00',NULL,'Ventiladores, exceto os de uso agrícola',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200688,'21.087.00',NULL,'Ventiladores de uso agrícola',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200689,'21.088.00',NULL,'Coifas com dimensão horizontal máxima não superior a 120 cm',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200690,'21.089.00',NULL,'Partes de ventiladores ou coifas aspirantes',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200691,'21.090.00',NULL,'Máquinas e aparelhos de ar condicionado contendo um ventilador motorizado e dispositivos próprios para modificar a temperatura e a umidade, incluídos as máquinas e aparelhos em que a umidade não seja regulável separadamente e suas partes e peças',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200692,'21.091.00',NULL,'Aparelhos de ar-condicionado tipo Split System (sistema com elementos separados) com unidade externa e interna',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200693,'21.092.00',NULL,'Aparelhos de ar-condicionado com capacidade inferior ou igual a 30.000 frigorias/hora',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200694,'21.093.00',NULL,'Aparelhos de ar-condicionado com capacidade acima de 30.000 frigorias/hora',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200695,'21.094.00',NULL,'Unidades evaporadoras (internas) de aparelho de ar-condicionado do tipo Split System (sistema com elementos separados), com capacidade inferior ou igual a 30.000 frigorias/hora',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200696,'21.095.00',NULL,'Unidades condensadoras (externas) de aparelho de ar-condicionado do tipo Split System (sistema com elementos separados), com capacidade inferior ou igual a 30.000 frigorias/hora',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200697,'21.096.00',NULL,'Aparelhos elétricos para filtrar ou depurar água (purificadores de água refrigerados)',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200698,'21.097.00',NULL,'Lavadora de alta pressão e suas partes',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200699,'21.098.00',NULL,'Furadeiras elétricas',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200700,'21.099.00',NULL,'Aparelhos elétricos para aquecimento de ambientes',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200701,'21.100.00',NULL,'Secadores de cabelo',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200702,'21.101.00',NULL,'Outros aparelhos para arranjos do cabelo',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200703,'21.102.00',NULL,'Microfones e seus suportes; alto-falantes, mesmo montados nos seus receptáculos, fones de ouvido (auscultadores), mesmo combinados com microfone e conjuntos ou sortidos constituídos por um microfone e um ou mais alto-falantes, amplificadores elétricos de audiofreqüência, aparelhos elétricos de amplificação de som; suas partes e acessórios; exceto os de uso automotivo',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200704,'21.103.00',NULL,'Aparelhos receptores para radiodifusão, mesmo combinados num mesmo invólucro, com um aparelho de gravação ou de reprodução de som, ou com um relógio, exceto os classificados na posição 8527.2 que sejam de uso automotivo',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200705,'21.104.00',NULL,'Outros aparelhos videofônicos de gravação ou de reprodução, mesmo incorporando um receptor de sinais videofônicos',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200706,'21.105.00',NULL,'Climatizadores de ar',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200707,'21.106.00',NULL,'Outras partes para máquinas e aparelhos de arcondicionado que contenham um ventilador motorizado e dispositivos próprios para modificar a temperatura e a umidade, incluindo as máquinas e aparelhos em que a umidade não seja regulável separadamente',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200708,'21.107.00',NULL,'Câmeras de televisão e suas partes',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200709,'21.108.00',NULL,'Balanças de uso doméstico',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200710,'21.109.00',NULL,'Tubos e válvulas, eletrônicos, de cátodo quente, cátodo frio ou fotocátodo (por exemplo, tubos e válvulas, de vácuo, de vapor ou de gás, ampolas retificadoras de vapor de mercúrio, tubos catódicos, tubos e válvulas para câmeras de televisão)',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200711,'21.110.00',NULL,'Aparelhos elétricos para telefonia; outros aparelhos para transmissão ou recepção de voz, imagens ou outros dados, incluídos os aparelhos para comunicação em redes por fio ou redes sem fio (tal como uma rede local (LAN) ou uma rede de área estendida (WAN)), incluídas suas partes, exceto os de uso automotivo e os classificados nas posições 8517.62.51, 8517.62.52 e 8517.62.53',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200712,'21.111.00',NULL,'Interfones, seus acessórios, tomadas e "plugs"',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200713,'21.112.00',NULL,'Partes reconhecíveis como exclusiva ou principalmente destinadas aos aparelhos das posições 8525 a 8528; exceto as de uso automotivo',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200714,'21.113.00',NULL,'Aparelhos elétricos de sinalização acústica ou visual (por exemplo, campainhas, sirenes, quadros indicadores, aparelhos de alarme para proteção contra roubo ou incêndio); exceto os de uso automotivo e os classificados nas posições 8531.10 e 8531.80.00.',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200715,'21.114.00',NULL,'Aparelhos elétricos de alarme, para proteção contra roubo ou incêndio e aparelhos semelhantes, exceto os de uso automotivo',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200716,'21.115.00',NULL,'Outros aparelhos de sinalização acústica ou visual, exceto os de uso automotivo',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200717,'21.116.00',NULL,'Circuitos impressos, exceto os de uso automotivo',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200718,'21.117.00',NULL,'Diodos emissores de luz (LED), exceto diodos "laser"',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200719,'21.118.00',NULL,'Eletrificadores de cercas eletrônicos',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200720,'21.119.00',NULL,'Aparelhos e instrumentos para medida ou controle da tensão, intensidade, resistência ou da potência, sem dispositivo registrador; exceto os de uso automotivo',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200721,'21.120.00',NULL,'Analisadores lógicos de circuitos digitais, de espectro de frequência, frequencímetros, fasímetros, e outros instrumentos e aparelhos de controle de grandezas elétricas e detecção',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200722,'21.121.00',NULL,'Interruptores horários e outros aparelhos que permitam acionar um mecanismo em tempo determinado, munidos de maquinismo de aparelhos de relojoaria ou de motor síncrono',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200723,'21.122.00',NULL,'Aparelhos de iluminação (incluídos os projetores) e suas partes, não especificados nem compreendidos em outras posições; anúncios, cartazes ou tabuletas e placas indicadoras luminosos, e artigos semelhantes, contendo uma fonte luminosa fixa permanente, e suas partes não especificadas nem compreendidas em outras posições',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200724,'22.001.00',NULL,'Ração tipo “pet” para animais domésticos',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200725,'23.001.00',NULL,'Sorvetes de qualquer espécie',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200726,'23.002.00',NULL,'Preparados para fabricação de sorvete em máquina',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200727,'24.001.00',NULL,'Tintas, vernizes',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200728,'24.002.00',NULL,'Xadrez e pós assemelhados, exceto pigmentos à base de dióxido de titânio classificados na posição 3206.11.19',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200729,'25.001.00',NULL,'Veículos automóveis para transporte de 10 pessoas ou mais, incluindo o motorista, com motor de pistão, de ignição por compressão (diesel ou semidiesel), com volume interno de habitáculo, destinado a passageiros e motorista, superior a 6 m³, mas inferior a 9 m³',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200730,'25.002.00',NULL,'Outros veículos automóveis para transporte de 10 pessoas ou mais, incluindo o motorista, com volume interno de habitáculo, destinado a passageiros e motorista, superior a 6 m³, mas inferior a 9 m',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200731,'25.003.00',NULL,'Automóveis com motor explosão, de cilindrada não superior a 1000 cm³',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200732,'25.004.00',NULL,'Automóveis com motor explosão, de cilindrada superior a 1000 cm³, mas não superior a 1500 cm³, com capacidade de transporte de pessoas sentadas inferior ou igual a 6, incluído o condutor, exceto carro celular',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200733,'25.005.00',NULL,'Outros automóveis com motor explosão, de cilindrada superior a 1000 cm³, mas não superior a 1500 cm³, exceto carro celular',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200734,'25.006.00',NULL,'Automóveis com motor explosão, de cilindrada superior a 1500 cm³, mas não superior a 3000 cm³, com capacidade de transporte de pessoas sentadas inferior ou igual a 6, incluído o condutor, exceto carro celular, carro funerário e automóveis de corrida',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200735,'25.007.00',NULL,'Outros automóveis com motor explosão, de cilindrada superior a 1500 cm³, mas não superior a 3000 cm³, exceto carro celular, carro funerário e automóveis de corrida',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200736,'25.008.00',NULL,'Automóveis com motor explosão, de cilindrada superior a 3000 cm³, com capacidade de transporte de pessoas sentadas inferior ou igual a 6, incluído o condutor, exceto carro celular, carro funerário e automóveis de corrida',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200737,'25.009.00',NULL,'Outros automóveis com motor explosão, de cilindrada superior a 3000 cm³, exceto carro celular, carro funerário e automóveis de corrida',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200738,'25.010.00',NULL,'Automóveis com motor diesel ou semidiesel, de cilindrada superior a 1500 cm³, mas não superior a 2500 cm³, com capacidade de transporte de pessoas sentadas inferior ou igual a 6, incluído o condutor, exceto ambulância, carro celular e carro funerário',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200739,'25.011.00',NULL,'Outros automóveis com motor diesel ou semidiesel, de cilindrada superior a 1500 cm³, mas não superior a 2500 cm³, exceto ambulância, carro celular e carro funerário',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200740,'25.012.00',NULL,'Automóveis com motor diesel ou semidiesel, de cilindrada superior a 2500 cm³, com capacidade de transporte de pessoas sentadas inferior ou igual a 6, incluído o condutor, exceto carro celular e carro funerário',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200741,'25.013.00',NULL,'Outros automóveis com motor diesel ou semidiesel, de cilindrada superior a 2500 cm³, exceto carro celular e carro funerário',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200742,'25.014.00',NULL,'Veículos automóveis para transporte de mercadorias, de peso em carga máxima não superior a 5 toneladas, chassis com motor diesel ou semidiesel e cabina, exceto caminhão de peso em carga máxima superior a 3,9 toneladas',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200743,'25.015.00',NULL,'Veículos automóveis para transporte de mercadorias, de peso em carga máxima não superior a 5 toneladas, com motor diesel ou semidiesel, com caixa basculante, exceto caminhão de peso em carga máxima superior a 3,9 toneladas',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200744,'25.016.00',NULL,'Veículos automóveis para transporte de mercadorias, de peso em carga máxima não superior a 5 toneladas, frigoríficos ou isotérmicos, com motor diesel ou semidiesel, exceto caminhão de peso em carga máxima superior a 3,9 toneladas',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200745,'25.017.00',NULL,'Outros veículos automóveis para transporte de mercadorias, de peso em carga máxima não superior a 5 toneladas, com motor diesel ou semidiesel, exceto carro-forte para transporte de valores e caminhão de peso em carga máxima superior a 3,9 toneladas',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200746,'25.018.00',NULL,'Veículos automóveis para transporte de mercadorias, de peso em carga máxima não superior a 5 toneladas, com motor a explosão, chassis e cabina, exceto caminhão de peso em carga máxima superior a 3,9 toneladas',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200747,'25.019.00',NULL,'Veículos automóveis para transporte de mercadorias, de peso em carga máxima não superior a 5, exceto caminhão de peso em carga toneladas, com motor explosão, caixa basculante',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200748,'25.020.00',NULL,'Veículos automóveis para transporte de mercadorias, de peso em carga máxima não superior a 5 toneladas, frigoríficos ou isotérmicos com motor explosão, exceto caminhão de peso em carga máxima superior a 3,9 toneladas',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200749,'25.021.00',NULL,'Outros veículos automóveis para transporte de mercadorias, de peso em carga máxima não superior a 5 toneladas, com motor a explosão, exceto carro-forte para transporte de valores e caminhão de peso em carga máxima superior a 3,9 toneladas',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200750,'26.001.00',NULL,'Motocicletas (incluídos os ciclomotores) e outros ciclos equipados com motor auxiliar, mesmo com carro lateral; carros laterais',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200751,'27.001.00',NULL,'Espelhos de vidro, mesmo emoldurados, exceto os de uso automotivo',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200752,'27.002.00',NULL,'Objetos de vidro para serviço de mesa ou de cozinha',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200753,'27.003.00',NULL,'Outros copos, exceto de vitrocerâmica',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200754,'27.004.00',NULL,'Objetos para serviço de mesa (exceto copos) ou de cozinha, exceto de vitrocerâmica',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200755,'28.001.00',NULL,'Perfumes (extratos)',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200756,'28.002.00',NULL,'Águas-de-colônia',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200757,'28.003.00',NULL,'Produtos de maquiagem para os lábios',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200758,'28.004.00',NULL,'Sombra, delineador, lápis para sobrancelhas e rímel',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200759,'28.005.00',NULL,'Outros produtos de maquiagem para os olhos',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200760,'28.006.00',NULL,'Preparações para manicuros e pedicuros',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200761,'28.007.00',NULL,'Pós para maquiagem, incluindo os compactos',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200762,'28.008.00',NULL,'Cremes de beleza, cremes nutritivos e loções tônicas',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200763,'28.009.00',NULL,'Outros produtos de beleza ou de maquiagem preparados e preparações para conservação ou cuidados da pele, exceto as preparações antisolares e os bronzeadores',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200764,'28.010.00',NULL,'Preparações antisolares e os bronzeadores',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200765,'28.011.00',NULL,'Xampus para o cabelo',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200766,'28.012.00',NULL,'Preparações para ondulação ou alisamento, permanentes, dos cabelos',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200767,'28.013.00',NULL,'Outras preparações capilares',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200768,'28.014.00',NULL,'Tintura para o cabelo',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200769,'28.015.00',NULL,'Preparações para barbear (antes, durante ou após)',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200770,'28.016.00',NULL,'Desodorantes corporais e antiperspirantes, líquidos',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200771,'28.017.00',NULL,'Outros desodorantes corporais e antiperspirantes',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200772,'28.018.00',NULL,'Outros produtos de perfumaria ou de toucador preparados',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200773,'28.019.00',NULL,'Outras preparações cosméticas',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200774,'28.020.00',NULL,'Sabões de toucador, em barras, pedaços ou figuras moldadas',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200775,'28.021.00',NULL,'Outros sabões, produtos e preparações orgânicos tensoativos, inclusive papel, pastas (ouates), feltros e falsos tecidos, impregnados, revestidos ou recobertos de sabão ou de detergentes',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200776,'28.022.00',NULL,'Sabões de toucador sob outras formas',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200777,'28.023.00',NULL,'Produtos e preparações orgânicos tensoativos para lavagem da pele, em forma de líquido ou de creme, acondicionados para venda a retalho, mesmo contendo sabão',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200778,'28.024.00',NULL,'Lenços de papel, incluindo os de desmaquiar',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200779,'28.025.00',NULL,'Apontadores de lápis para maquiagem',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200780,'28.026.00',NULL,'Utensílios e sortidos de utensílios de manicuros ou de pedicuros (incluindo as limas para unhas)',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200781,'28.027.00',NULL,'Escovas e pincéis de barba, escovas para cabelos, para cílios ou para unhas e outras escovas de toucador de pessoas',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200782,'28.028.00',NULL,'Pincéis para aplicação de produtos cosméticos',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200783,'28.029.00',NULL,'Vaporizadores de toucador, suas armações e cabeças de armações',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200784,'28.030.00',NULL,'Borlas ou esponjas para pós ou para aplicação de outros cosméticos ou de produtos de toucador',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200785,'28.031.00',NULL,'Malas e maletas de toucador',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200786,'28.032.00',NULL,'Pentes, travessas para cabelo e artigos semelhantes; grampos (alfinetes) para cabelo; pinças (“pinceguiches”), onduladores, bobs (rolos) e artefatos semelhantes para penteados, e suas partes',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200787,'28.033.00',NULL,'Mamadeiras',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200788,'28.034.00',NULL,'Chupetas e bicos para mamadeiras e para chupetas',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200789,'28.035.00',NULL,'Outros produtos cosméticos e de higiene pessoal não relacionados em outros itens deste anexo',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200790,'28.036.00',NULL,'Outros artigos destinados a cuidados pessoais não relacionados em outros itens deste anexo',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200791,'28.037.00',NULL,'Acessórios (por exemplo, bijuterias, relógios, óculos de sol, bolsas, mochilas, frasqueiras, carteiras, porta-cartões, porta-documentos, porta-celulares e embalagens presenteáveis (por exemplo, caixinhas de papel), entre outros itens assemelhados)',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200792,'28.038.00',NULL,'Vestuário e seus acessórios; calçados, polainas e artefatos semelhantes, e suas partes',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200793,'28.039.00',NULL,'Outros artigos de vestuário em geral, exceto os relacionados no item anterior',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200794,'28.040.00',NULL,'Artigos de casa',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200795,'28.041.00',NULL,'Produtos das indústrias alimentares e bebidas',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200796,'28.042.00',NULL,'Produtos destinados à higiene bucal',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200797,'28.043.00',NULL,'Produtos de limpeza e conservação doméstica',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;
INSERT INTO LBR_CEST (AD_Client_ID,AD_Org_ID,LBR_CEST_ID,Value,Description,Name,Created,CreatedBy,Updated,UpdatedBy,IsActive) VALUES (0,0,1200798,'28.044.00',NULL,'Outros produtos comercializados pelo sistema de marketing direto porta-a-porta a consumidor final não relacionados em outros itens deste anexo',TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2015-12-14 11:09:33','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;

-- 15/12/2015 11h31min29s BRST
INSERT INTO AD_Window (AD_Client_ID,AD_Org_ID,AD_Window_ID,Created,CreatedBy,EntityType,IsActive,IsBetaFunctionality,IsDefault,IsSOTrx,Name,Processing,Updated,UpdatedBy,WindowType,WinHeight,WinWidth) VALUES (0,0,1120110,TO_DATE('2015-12-15 11:31:21','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','N','N','Y','CEST','N',TO_DATE('2015-12-15 11:31:21','YYYY-MM-DD HH24:MI:SS'),100,'M',0,0)
;

-- 15/12/2015 11h31min29s BRST
INSERT INTO AD_Window_Trl (AD_Language,AD_Window_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Window_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Window t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Window_ID=1120110 AND NOT EXISTS (SELECT * FROM AD_Window_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Window_ID=t.AD_Window_ID)
;

-- 15/12/2015 11h32min56s BRST
INSERT INTO AD_Tab (AD_Client_ID,AD_Org_ID,AD_Tab_ID,AD_Table_ID,AD_Window_ID,Created,CreatedBy,Description,EntityType,HasTree,ImportFields,IsActive,IsAdvancedTab,IsInfoTab,IsInsertRecord,IsReadOnly,IsSingleRow,IsSortTab,IsTranslationTab,Name,Processing,SeqNo,TabLevel,Updated,UpdatedBy) VALUES (0,0,1120202,1120531,1120110,TO_DATE('2015-12-15 11:32:53','YYYY-MM-DD HH24:MI:SS'),100,'CEST','LBRA','N','N','Y','N','N','Y','N','N','N','N','CEST','N',10,0,TO_DATE('2015-12-15 11:32:53','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 15/12/2015 11h32min56s BRST
INSERT INTO AD_Tab_Trl (AD_Language,AD_Tab_ID, CommitWarning,Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Tab_ID, t.CommitWarning,t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Tab t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Tab_ID=1120202 AND NOT EXISTS (SELECT * FROM AD_Tab_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Tab_ID=t.AD_Tab_ID)
;

-- 15/12/2015 11h33min19s BRST
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1128616,1125620,0,1120202,TO_DATE('2015-12-15 11:33:14','YYYY-MM-DD HH24:MI:SS'),100,'The record is active in the system',1,'LBRA','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Y','Y','Y','N','N','N','N','N','Active',TO_DATE('2015-12-15 11:33:14','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 15/12/2015 11h33min19s BRST
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1125620 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 15/12/2015 11h33min25s BRST
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1128614,1125621,0,1120202,TO_DATE('2015-12-15 11:33:20','YYYY-MM-DD HH24:MI:SS'),100,'Client/Tenant for this installation.',10,'LBRA','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Y','Y','Y','N','N','N','N','N','Client',TO_DATE('2015-12-15 11:33:20','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 15/12/2015 11h33min25s BRST
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1125621 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 15/12/2015 11h33min29s BRST
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1128622,1125622,0,1120202,TO_DATE('2015-12-15 11:33:25','YYYY-MM-DD HH24:MI:SS'),100,'Optional short description of the record',255,'LBRA','A description is limited to 255 characters.','Y','Y','Y','N','N','N','N','N','Description',TO_DATE('2015-12-15 11:33:25','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 15/12/2015 11h33min29s BRST
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1125622 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 15/12/2015 11h33min34s BRST
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1128613,1125623,0,1120202,TO_DATE('2015-12-15 11:33:29','YYYY-MM-DD HH24:MI:SS'),100,10,'LBRA','Y','Y','N','N','N','N','N','N','LBR_CEST',TO_DATE('2015-12-15 11:33:29','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 15/12/2015 11h33min34s BRST
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1125623 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 15/12/2015 11h33min38s BRST
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1128623,1125624,0,1120202,TO_DATE('2015-12-15 11:33:34','YYYY-MM-DD HH24:MI:SS'),100,'Alphanumeric identifier of the entity',610,'LBRA','The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.','Y','Y','Y','N','N','N','N','N','Name',TO_DATE('2015-12-15 11:33:34','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 15/12/2015 11h33min38s BRST
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1125624 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 15/12/2015 11h33min42s BRST
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1128615,1125625,0,1120202,TO_DATE('2015-12-15 11:33:38','YYYY-MM-DD HH24:MI:SS'),100,'Organizational entity within client',10,'LBRA','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Y','Y','Y','N','N','N','N','N','Organization',TO_DATE('2015-12-15 11:33:38','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 15/12/2015 11h33min42s BRST
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1125625 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 15/12/2015 11h33min44s BRST
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1128621,1125626,0,1120202,TO_DATE('2015-12-15 11:33:42','YYYY-MM-DD HH24:MI:SS'),100,'Search key for the record in the format required - must be unique',9,'LBRA','A search key allows you a fast method of finding a particular record.
If you leave the search key empty, the system automatically creates a numeric number.  The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).','Y','Y','Y','N','N','N','N','N','Search Key',TO_DATE('2015-12-15 11:33:42','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 15/12/2015 11h33min44s BRST
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1125626 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 15/12/2015 11h34min44s BRST
UPDATE AD_Field SET DisplayLength=22, SeqNo=10,Updated=TO_DATE('2015-12-15 11:34:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125621
;

-- 15/12/2015 11h35min4s BRST
UPDATE AD_Field SET DisplayLength=22, IsSameLine='Y', SeqNo=20,Updated=TO_DATE('2015-12-15 11:35:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125625
;

-- 15/12/2015 11h35min30s BRST
UPDATE AD_Field SET SeqNo=45, IsSameLine='Y', Updated=TO_DATE('2015-12-15 11:35:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125620
;

-- 15/12/2015 11h35min59s BRST
UPDATE AD_Field SET DisplayLength=22, SeqNo=40,Updated=TO_DATE('2015-12-15 11:35:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125626
;

-- 15/12/2015 11h36min28s BRST
UPDATE AD_Field SET DisplayLength=60, SeqNo=65,Updated=TO_DATE('2015-12-15 11:36:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125622
;

-- 15/12/2015 11h36min40s BRST
UPDATE AD_Field SET DisplayLength=60, SeqNo=60,Updated=TO_DATE('2015-12-15 11:36:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125624
;

-- 15/12/2015 11h38min56s BRST
INSERT INTO AD_Menu (Action,AD_Client_ID,AD_Menu_ID,AD_Org_ID,AD_Window_ID,Created,CreatedBy,EntityType,IsActive,IsCentrallyMaintained,IsReadOnly,IsSOTrx,IsSummary,Name,Updated,UpdatedBy) VALUES ('W',0,1120243,0,1120110,TO_DATE('2015-12-15 11:38:54','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Y','N','N','N','CEST',TO_DATE('2015-12-15 11:38:54','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 15/12/2015 11h38min56s BRST
INSERT INTO AD_Menu_Trl (AD_Language,AD_Menu_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Menu_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Menu t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Menu_ID=1120243 AND NOT EXISTS (SELECT * FROM AD_Menu_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Menu_ID=t.AD_Menu_ID)
;

-- 15/12/2015 11h38min56s BRST
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo) SELECT t.AD_Client_ID, 0, 'Y', SysDate, 100, SysDate, 100,t.AD_Tree_ID, 1120243, 0, 999 FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=1120243)
;

-- 15/12/2015 11h39min20s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000014
;

-- 15/12/2015 11h39min20s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000039
;

-- 15/12/2015 11h39min20s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120196
;

-- 15/12/2015 11h39min20s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000015
;

-- 15/12/2015 11h39min20s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000035
;

-- 15/12/2015 11h39min20s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000023
;

-- 15/12/2015 11h39min20s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120179
;

-- 15/12/2015 11h39min20s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120019
;

-- 15/12/2015 11h39min20s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=8, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120014
;

-- 15/12/2015 11h39min20s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=9, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120243
;

-- 15/12/2015 11h39min20s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=10, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000009
;

CREATE TABLE LBR_NCM_CEST
( 
	LBR_NCM_ID         NUMBER (10) NOT NULL,
	LBR_CEST_ID        NUMBER (10) NOT NULL,
	AD_Client_ID       NUMBER (10) NOT NULL,
	AD_Org_ID          NUMBER (10) NOT NULL,
	IsActive           CHAR(1) CHECK (IsActive IN ('Y','N')) NOT NULL,
	Created            DATE NOT NULL,
	CreatedBy          NUMBER (10) NOT NULL,
	Updated            DATE NOT NULL,
	UpdatedBy          NUMBER (10) NOT NULL,
	PRIMARY KEY( LBR_NCM_ID, LBR_CEST_ID)
);

-- 18/12/2015 9h51min33s BRST
UPDATE AD_Element SET Description='Primary key table LBR_CEST Brazilian Specifier code Tax', Help='Primary key table LBR_CEST Brazilian Specifier code Tax', Name='CEST', PrintName='CEST',Updated=TO_DATE('2015-12-18 09:51:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1122214
;

-- 18/12/2015 9h51min33s BRST
UPDATE AD_Element_Trl SET IsTranslated='N' WHERE AD_Element_ID=1122214
;

-- 18/12/2015 9h51min33s BRST
UPDATE AD_Element_Trl SET Description='Primary key table LBR_CEST Brazilian Specifier code Tax',Help='Primary key table LBR_CEST Brazilian Specifier code Tax',Name='CEST',PO_Description=NULL,PO_Help=NULL,PO_Name=NULL,PO_PrintName=NULL,PrintName='CEST',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Element_ID=1122214
;

-- 18/12/2015 9h51min33s BRST
UPDATE AD_Column SET ColumnName='LBR_CEST_ID', Name='CEST', Description='Primary key table LBR_CEST Brazilian Specifier code Tax', Help='Primary key table LBR_CEST Brazilian Specifier code Tax' WHERE AD_Element_ID=1122214
;

-- 18/12/2015 9h51min33s BRST
UPDATE AD_Process_Para SET ColumnName='LBR_CEST_ID', Name='CEST', Description='Primary key table LBR_CEST Brazilian Specifier code Tax', Help='Primary key table LBR_CEST Brazilian Specifier code Tax', AD_Element_ID=1122214 WHERE UPPER(ColumnName)='LBR_CEST_ID' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 18/12/2015 9h51min33s BRST
UPDATE AD_Process_Para SET ColumnName='LBR_CEST_ID', Name='CEST', Description='Primary key table LBR_CEST Brazilian Specifier code Tax', Help='Primary key table LBR_CEST Brazilian Specifier code Tax' WHERE AD_Element_ID=1122214 AND IsCentrallyMaintained='Y'
;

-- 18/12/2015 9h51min33s BRST
UPDATE AD_Field SET Name='CEST', Description='Primary key table LBR_CEST Brazilian Specifier code Tax', Help='Primary key table LBR_CEST Brazilian Specifier code Tax' WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=1122214) AND IsCentrallyMaintained='Y'
;

-- 18/12/2015 9h51min33s BRST
UPDATE AD_PrintFormatItem pi SET PrintName='CEST', Name='CEST' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=pi.AD_Column_ID AND c.AD_Element_ID=1122214)
;

-- 18/12/2015 9h52min16s BRST
UPDATE AD_Element_Trl SET Name='CEST',PrintName='CEST',Description='Código Especificador da Substituição Tributária',Help='Primary key table LBR_CEST Código Especificador da Substituição Tributária',Updated=TO_DATE('2015-12-18 09:52:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1122214 AND AD_Language='pt_BR'
;

-- 18/12/2015 9h53min53s BRST
UPDATE AD_Table SET Description='Brazilian Specifier Code Tax', Help='Brazilian Specifier Code Tax', Name='CEST',Updated=TO_DATE('2015-12-18 09:53:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=1120531
;

-- 18/12/2015 9h53min53s BRST
UPDATE AD_Table_Trl SET IsTranslated='N' WHERE AD_Table_ID=1120531
;

-- 18/12/2015 9h53min53s BRST
UPDATE AD_Table_Trl SET Name='CEST',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Table_ID=1120531
;

-- 18/12/2015 9h54min4s BRST
UPDATE AD_Table_Trl SET Name='CEST',Updated=TO_DATE('2015-12-18 09:54:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=1120531 AND AD_Language='pt_BR'
;

-- 18/12/2015 9h54min28s BRST
UPDATE AD_Column_Trl SET Name='CEST',Updated=TO_DATE('2015-12-18 09:54:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1128613 AND AD_Language='pt_BR'
;

-- 18/12/2015 10h0min58s BRST
INSERT INTO AD_Table (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Table_ID,CopyColumnsFromTable,Created,CreatedBy,Description,EntityType,Help,ImportTable,IsActive,IsCentrallyMaintained,IsChangeLog,IsDeleteable,IsHighVolume,IsSecurityEnabled,IsSystemLanguage,IsView,LoadSeq,Name,ReplicationType,TableName,Updated,UpdatedBy) VALUES ('3',0,0,1120542,'N',TO_DATE('2015-12-18 10:00:57','YYYY-MM-DD HH24:MI:SS'),100,'Brazilian Specifier Code Tax','LBRA','Brazilian Specifier Code Tax','N','Y','Y','N','Y','N','N','N','N',0,'CEST','L','LBR_NCM_CEST',TO_DATE('2015-12-18 10:00:57','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 18/12/2015 10h0min58s BRST
INSERT INTO AD_Table_Trl (AD_Language,AD_Table_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Table_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Table t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Table_ID=1120542 AND NOT EXISTS (SELECT * FROM AD_Table_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Table_ID=t.AD_Table_ID)
;

-- 18/12/2015 10h0min59s BRST
INSERT INTO AD_Sequence (AD_Client_ID,AD_Org_ID,AD_Sequence_ID,Created,CreatedBy,CurrentNext,CurrentNextSys,Description,IncrementNo,IsActive,IsAudited,IsAutoSequence,IsTableID,Name,StartNewYear,StartNo,Updated,UpdatedBy) VALUES (0,0,1153340,TO_DATE('2015-12-18 10:00:58','YYYY-MM-DD HH24:MI:SS'),100,2000000,50000,'Table LBR_NCM_CEST',1,'Y','N','Y','Y','LBR_NCM_CEST','N',1000000,TO_DATE('2015-12-18 10:00:58','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 18/12/2015 10h1min12s BRST
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1128683,1000134,0,19,1120542,'LBR_NCM_ID',TO_DATE('2015-12-18 10:01:11','YYYY-MM-DD HH24:MI:SS'),100,'Primary key table LBR_NCM','LBRA',10,'Primary key table LBR_NCM','Y','N','N','N','N','Y','N','N','N','Y','NCM',TO_DATE('2015-12-18 10:01:11','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 18/12/2015 10h1min12s BRST
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1128683 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 18/12/2015 10h1min12s BRST
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1128684,1122214,0,19,1120542,'LBR_CEST_ID',TO_DATE('2015-12-18 10:01:12','YYYY-MM-DD HH24:MI:SS'),100,'Primary key table LBR_CEST Brazilian Specifier code Tax','LBRA',10,'Primary key table LBR_CEST Brazilian Specifier code Tax','Y','N','N','N','N','Y','N','N','N','Y','CEST',TO_DATE('2015-12-18 10:01:12','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 18/12/2015 10h1min12s BRST
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1128684 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 18/12/2015 10h1min13s BRST
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1128685,102,0,19,1120542,'AD_Client_ID',TO_DATE('2015-12-18 10:01:12','YYYY-MM-DD HH24:MI:SS'),100,'Client/Tenant for this installation.','LBRA',10,'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Y','N','N','N','N','Y','N','N','N','N','Client',TO_DATE('2015-12-18 10:01:12','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 18/12/2015 10h1min13s BRST
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1128685 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 18/12/2015 10h1min13s BRST
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1128686,113,0,19,1120542,'AD_Org_ID',TO_DATE('2015-12-18 10:01:13','YYYY-MM-DD HH24:MI:SS'),100,'Organizational entity within client','LBRA',10,'An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Y','N','N','N','N','Y','N','N','N','N','Organization',TO_DATE('2015-12-18 10:01:13','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 18/12/2015 10h1min13s BRST
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1128686 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 18/12/2015 10h1min14s BRST
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1128687,348,0,20,1120542,'IsActive',TO_DATE('2015-12-18 10:01:13','YYYY-MM-DD HH24:MI:SS'),100,'The record is active in the system','LBRA',1,'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Y','N','N','N','N','Y','N','N','N','Y','Active',TO_DATE('2015-12-18 10:01:13','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 18/12/2015 10h1min14s BRST
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1128687 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 18/12/2015 10h1min14s BRST
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1128688,245,0,16,1120542,'Created',TO_DATE('2015-12-18 10:01:14','YYYY-MM-DD HH24:MI:SS'),100,'Date this record was created','LBRA',29,'The Created field indicates the date that this record was created.','Y','N','N','N','N','Y','N','N','N','N','Created',TO_DATE('2015-12-18 10:01:14','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 18/12/2015 10h1min14s BRST
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1128688 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 18/12/2015 10h1min15s BRST
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1128689,246,0,18,110,1120542,'CreatedBy',TO_DATE('2015-12-18 10:01:14','YYYY-MM-DD HH24:MI:SS'),100,'User who created this records','LBRA',10,'The Created By field indicates the user who created this record.','Y','N','N','N','N','Y','N','N','N','N','Created By',TO_DATE('2015-12-18 10:01:14','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 18/12/2015 10h1min15s BRST
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1128689 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 18/12/2015 10h1min16s BRST
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1128690,607,0,16,1120542,'Updated',TO_DATE('2015-12-18 10:01:15','YYYY-MM-DD HH24:MI:SS'),100,'Date this record was updated','LBRA',29,'The Updated field indicates the date that this record was updated.','Y','N','N','N','N','Y','N','N','N','N','Updated',TO_DATE('2015-12-18 10:01:15','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 18/12/2015 10h1min16s BRST
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1128690 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 18/12/2015 10h1min17s BRST
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1128691,608,0,18,110,1120542,'UpdatedBy',TO_DATE('2015-12-18 10:01:16','YYYY-MM-DD HH24:MI:SS'),100,'User who updated this records','LBRA',10,'The Updated By field indicates the user who updated this record.','Y','N','N','N','N','Y','N','N','N','N','Updated By',TO_DATE('2015-12-18 10:01:16','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 18/12/2015 10h1min17s BRST
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1128691 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 18/12/2015 10h3min46s BRST
UPDATE AD_Column SET IsIdentifier='Y',Updated=TO_DATE('2015-12-18 10:03:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1128621
;

-- 18/12/2015 10h4min30s BRST
UPDATE AD_Column SET IsParent='Y', IsUpdateable='N',Updated=TO_DATE('2015-12-18 10:04:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1128685
;

-- 18/12/2015 10h4min38s BRST
UPDATE AD_Column SET IsParent='N',Updated=TO_DATE('2015-12-18 10:04:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1128685
;

-- 18/12/2015 10h4min48s BRST
UPDATE AD_Column SET IsParent='Y', IsUpdateable='N',Updated=TO_DATE('2015-12-18 10:04:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1128684
;

-- 18/12/2015 10h4min56s BRST
UPDATE AD_Column SET IsParent='Y', IsUpdateable='N',Updated=TO_DATE('2015-12-18 10:04:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1128683
;

-- 18/12/2015 10h7min39s BRST
INSERT INTO AD_Tab (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_Tab_ID,AD_Table_ID,AD_Window_ID,Created,CreatedBy,Description,EntityType,HasTree,Help,ImportFields,IsActive,IsAdvancedTab,IsInfoTab,IsInsertRecord,IsReadOnly,IsSingleRow,IsSortTab,IsTranslationTab,Name,Processing,SeqNo,TabLevel,Updated,UpdatedBy) VALUES (0,1128683,0,1120210,1120542,1000002,TO_DATE('2015-12-18 10:07:39','YYYY-MM-DD HH24:MI:SS'),100,'Brazilian Specifier Code Tax','LBRA','N','Brazilian Specifier Code Tax','N','Y','N','N','Y','N','N','N','N','CEST','N',30,0,TO_DATE('2015-12-18 10:07:39','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 18/12/2015 10h7min39s BRST
INSERT INTO AD_Tab_Trl (AD_Language,AD_Tab_ID, CommitWarning,Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Tab_ID, t.CommitWarning,t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Tab t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Tab_ID=1120210 AND NOT EXISTS (SELECT * FROM AD_Tab_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Tab_ID=t.AD_Tab_ID)
;

-- 18/12/2015 10h8min3s BRST
UPDATE AD_Tab_Trl SET Description='Código Especificador da Substituição Tributária',Help='Código Especificador da Substituição Tributária',Updated=TO_DATE('2015-12-18 10:08:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=1120210 AND AD_Language='pt_BR'
;

-- 18/12/2015 10h8min15s BRST
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1128687,1125670,0,1120210,TO_DATE('2015-12-18 10:08:14','YYYY-MM-DD HH24:MI:SS'),100,'The record is active in the system',1,'LBRA','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Y','Y','Y','N','N','N','N','N','Active',TO_DATE('2015-12-18 10:08:14','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 18/12/2015 10h8min15s BRST
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1125670 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/12/2015 10h8min15s BRST
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1128684,1125671,0,1120210,TO_DATE('2015-12-18 10:08:15','YYYY-MM-DD HH24:MI:SS'),100,'Primary key table LBR_CEST Brazilian Specifier code Tax',10,'LBRA','Primary key table LBR_CEST Brazilian Specifier code Tax','Y','Y','Y','N','N','N','N','N','CEST',TO_DATE('2015-12-18 10:08:15','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 18/12/2015 10h8min15s BRST
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1125671 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/12/2015 10h8min16s BRST
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1128685,1125672,0,1120210,TO_DATE('2015-12-18 10:08:15','YYYY-MM-DD HH24:MI:SS'),100,'Client/Tenant for this installation.',10,'LBRA','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Y','Y','Y','N','N','N','N','N','Client',TO_DATE('2015-12-18 10:08:15','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 18/12/2015 10h8min16s BRST
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1125672 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/12/2015 10h8min16s BRST
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1128683,1125673,0,1120210,TO_DATE('2015-12-18 10:08:16','YYYY-MM-DD HH24:MI:SS'),100,'Primary key table LBR_NCM',10,'LBRA','Primary key table LBR_NCM','Y','Y','Y','N','N','N','N','N','NCM',TO_DATE('2015-12-18 10:08:16','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 18/12/2015 10h8min16s BRST
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1125673 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/12/2015 10h8min17s BRST
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1128686,1125674,0,1120210,TO_DATE('2015-12-18 10:08:16','YYYY-MM-DD HH24:MI:SS'),100,'Organizational entity within client',10,'LBRA','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Y','Y','Y','N','N','N','N','N','Organization',TO_DATE('2015-12-18 10:08:16','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 18/12/2015 10h8min17s BRST
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1125674 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/12/2015 10h8min45s BRST
UPDATE AD_Field SET DisplayLength=22, SeqNo=10,Updated=TO_DATE('2015-12-18 10:08:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125672
;

-- 18/12/2015 10h8min54s BRST
UPDATE AD_Field SET DisplayLength=22, IsSameLine='Y', SeqNo=20,Updated=TO_DATE('2015-12-18 10:08:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125674
;

-- 18/12/2015 10h9min24s BRST
UPDATE AD_Field SET DisplayLength=22, SeqNo=30,Updated=TO_DATE('2015-12-18 10:09:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125673
;

-- 18/12/2015 10h9min38s BRST
UPDATE AD_Field SET IsSameLine='Y', SeqNo=40,Updated=TO_DATE('2015-12-18 10:09:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125670
;

-- 18/12/2015 10h9min52s BRST
UPDATE AD_Field SET DisplayLength=22, SeqNo=50,Updated=TO_DATE('2015-12-18 10:09:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125671
;

-- 18/12/2015 10h10min57s BRST
UPDATE AD_Tab SET TabLevel=1,Updated=TO_DATE('2015-12-18 10:10:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=1120210
;

-- 18/12/2015 10h11min25s BRST
UPDATE AD_Window SET Description='Brazilian Specifier Code Tax', Help='Brazilian Specifier Code Tax',Updated=TO_DATE('2015-12-18 10:11:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Window_ID=1120110
;

-- 18/12/2015 10h11min25s BRST
UPDATE AD_Window_Trl SET IsTranslated='N' WHERE AD_Window_ID=1120110
;

-- 18/12/2015 10h11min25s BRST
UPDATE AD_Window_Trl SET Description='Brazilian Specifier Code Tax',Help='Brazilian Specifier Code Tax',Name='CEST',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Window_ID=1120110
;

-- 18/12/2015 10h11min25s BRST
UPDATE AD_Menu SET Description='Brazilian Specifier Code Tax', IsActive='Y', Name='CEST',Updated=TO_DATE('2015-12-18 10:11:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=1120243
;

-- 18/12/2015 10h11min25s BRST
UPDATE AD_Menu_Trl SET IsTranslated='N' WHERE AD_Menu_ID=1120243
;

-- 18/12/2015 10h11min25s BRST
UPDATE AD_Menu_Trl SET Description='Brazilian Specifier Code Tax',Name='CEST',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Menu_ID=1120243
;

-- 18/12/2015 10h11min39s BRST
UPDATE AD_Window_Trl SET Description='Código Especificador da Substituição Tributária',Help='Código Especificador da Substituição Tributária',Updated=TO_DATE('2015-12-18 10:11:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Window_ID=1120110 AND AD_Language='pt_BR'
;

-- 18/12/2015 10h14min52s BRST
INSERT INTO AD_Tab (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_Tab_ID,AD_Table_ID,AD_Window_ID,Created,CreatedBy,Description,EntityType,HasTree,Help,ImportFields,IsActive,IsAdvancedTab,IsInfoTab,IsInsertRecord,IsReadOnly,IsSingleRow,IsSortTab,IsTranslationTab,Name,Processing,SeqNo,TabLevel,Updated,UpdatedBy) VALUES (0,1128684,0,1120211,1120542,1120110,TO_DATE('2015-12-18 10:14:51','YYYY-MM-DD HH24:MI:SS'),100,'Mercosur Common Nomenclature','LBRA','N','Mercosur Common Nomenclature','N','Y','N','N','Y','N','N','N','N','NCM','N',20,0,TO_DATE('2015-12-18 10:14:51','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 18/12/2015 10h14min52s BRST
INSERT INTO AD_Tab_Trl (AD_Language,AD_Tab_ID, CommitWarning,Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Tab_ID, t.CommitWarning,t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Tab t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Tab_ID=1120211 AND NOT EXISTS (SELECT * FROM AD_Tab_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Tab_ID=t.AD_Tab_ID)
;

-- 18/12/2015 10h15min0s BRST
UPDATE AD_Tab SET TabLevel=1,Updated=TO_DATE('2015-12-18 10:15:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=1120211
;

-- 18/12/2015 10h15min16s BRST
UPDATE AD_Tab_Trl SET Description='Nomenclatura Comum do Mercosul',Help='Nomenclatura Comum do Mercosul',Updated=TO_DATE('2015-12-18 10:15:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=1120211 AND AD_Language='pt_BR'
;

-- 18/12/2015 10h15min37s BRST
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1128687,1125675,0,1120211,TO_DATE('2015-12-18 10:15:36','YYYY-MM-DD HH24:MI:SS'),100,'The record is active in the system',1,'LBRA','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Y','Y','Y','N','N','N','N','N','Active',TO_DATE('2015-12-18 10:15:36','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 18/12/2015 10h15min37s BRST
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1125675 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/12/2015 10h15min37s BRST
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1128684,1125676,0,1120211,TO_DATE('2015-12-18 10:15:37','YYYY-MM-DD HH24:MI:SS'),100,'Primary key table LBR_CEST Brazilian Specifier code Tax',10,'LBRA','Primary key table LBR_CEST Brazilian Specifier code Tax','Y','Y','Y','N','N','N','N','N','CEST',TO_DATE('2015-12-18 10:15:37','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 18/12/2015 10h15min37s BRST
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1125676 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/12/2015 10h15min38s BRST
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1128685,1125677,0,1120211,TO_DATE('2015-12-18 10:15:37','YYYY-MM-DD HH24:MI:SS'),100,'Client/Tenant for this installation.',10,'LBRA','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Y','Y','Y','N','N','N','N','N','Client',TO_DATE('2015-12-18 10:15:37','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 18/12/2015 10h15min38s BRST
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1125677 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/12/2015 10h15min38s BRST
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1128683,1125678,0,1120211,TO_DATE('2015-12-18 10:15:38','YYYY-MM-DD HH24:MI:SS'),100,'Primary key table LBR_NCM',10,'LBRA','Primary key table LBR_NCM','Y','Y','Y','N','N','N','N','N','NCM',TO_DATE('2015-12-18 10:15:38','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 18/12/2015 10h15min38s BRST
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1125678 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/12/2015 10h15min38s BRST
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1128686,1125679,0,1120211,TO_DATE('2015-12-18 10:15:38','YYYY-MM-DD HH24:MI:SS'),100,'Organizational entity within client',10,'LBRA','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Y','Y','Y','N','N','N','N','N','Organization',TO_DATE('2015-12-18 10:15:38','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 18/12/2015 10h15min39s BRST
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1125679 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/12/2015 10h16min10s BRST
UPDATE AD_Field SET DisplayLength=22, SeqNo=10,Updated=TO_DATE('2015-12-18 10:16:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125677
;

-- 18/12/2015 10h16min20s BRST
UPDATE AD_Field SET DisplayLength=22, IsSameLine='Y', SeqNo=20,Updated=TO_DATE('2015-12-18 10:16:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125679
;

-- 18/12/2015 10h16min34s BRST
UPDATE AD_Field SET DisplayLength=22, SeqNo=30,Updated=TO_DATE('2015-12-18 10:16:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125676
;

-- 18/12/2015 10h16min43s BRST
UPDATE AD_Field SET IsSameLine='Y', SeqNo=40,Updated=TO_DATE('2015-12-18 10:16:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125675
;

-- 18/12/2015 10h16min57s BRST
UPDATE AD_Field SET DisplayLength=22, SeqNo=50,Updated=TO_DATE('2015-12-18 10:16:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125678
;

-- 18/12/2015 13h55min2s BRST
DELETE  FROM  AD_Column_Trl WHERE AD_Column_ID=2000000
;

-- 18/12/2015 13h55min2s BRST
DELETE FROM AD_Column WHERE AD_Column_ID=2000000
;

-- 18/12/2015 13h56min0s BRST
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,ReadOnlyLogic,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1128692,1122214,0,30,1000028,'LBR_CEST_ID',TO_DATE('2015-12-18 13:55:59','YYYY-MM-DD HH24:MI:SS'),100,'Primary key table LBR_CEST Brazilian Specifier code Tax','LBRA',10,'Primary key table LBR_CEST Brazilian Specifier code Tax','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','CEST',NULL,0,TO_DATE('2015-12-18 13:55:59','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 18/12/2015 13h56min0s BRST
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1128692 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 18/12/2015 13h56min2s BRST
ALTER TABLE LBR_NotaFiscalLine ADD LBR_CEST_ID NUMBER(10) DEFAULT NULL 
;

-- 18/12/2015 13h56min30s BRST
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_FieldGroup_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1128692,106,1125680,0,1000021,TO_DATE('2015-12-18 13:56:29','YYYY-MM-DD HH24:MI:SS'),100,'Primary key table LBR_CEST Brazilian Specifier code Tax',22,'LBRA','Primary key table LBR_CEST Brazilian Specifier code Tax','Y','Y','Y','N','N','N','N','Y','CEST',165,TO_DATE('2015-12-18 13:56:29','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 18/12/2015 13h56min30s BRST
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1125680 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/12/2015 13h57min8s BRST
UPDATE AD_Element SET Description='Brazilian Specifier code Tax', Help='Brazilian Specifier code Tax',Updated=TO_DATE('2015-12-18 13:57:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1122214
;

-- 18/12/2015 13h57min8s BRST
UPDATE AD_Element_Trl SET IsTranslated='N' WHERE AD_Element_ID=1122214
;

-- 18/12/2015 13h57min8s BRST
UPDATE AD_Element_Trl SET Description='Brazilian Specifier code Tax',Help='Brazilian Specifier code Tax',Name='CEST',PO_Description=NULL,PO_Help=NULL,PO_Name=NULL,PO_PrintName=NULL,PrintName='CEST',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Element_ID=1122214
;

-- 18/12/2015 13h57min8s BRST
UPDATE AD_Column SET ColumnName='LBR_CEST_ID', Name='CEST', Description='Brazilian Specifier code Tax', Help='Brazilian Specifier code Tax' WHERE AD_Element_ID=1122214
;

-- 18/12/2015 13h57min8s BRST
UPDATE AD_Process_Para SET ColumnName='LBR_CEST_ID', Name='CEST', Description='Brazilian Specifier code Tax', Help='Brazilian Specifier code Tax', AD_Element_ID=1122214 WHERE UPPER(ColumnName)='LBR_CEST_ID' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 18/12/2015 13h57min8s BRST
UPDATE AD_Process_Para SET ColumnName='LBR_CEST_ID', Name='CEST', Description='Brazilian Specifier code Tax', Help='Brazilian Specifier code Tax' WHERE AD_Element_ID=1122214 AND IsCentrallyMaintained='Y'
;

-- 18/12/2015 13h57min8s BRST
UPDATE AD_Field SET Name='CEST', Description='Brazilian Specifier code Tax', Help='Brazilian Specifier code Tax' WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=1122214) AND IsCentrallyMaintained='Y'
;

-- 18/12/2015 13h57min17s BRST
UPDATE AD_Element_Trl SET Help='Código Especificador da Substituição Tributária',Updated=TO_DATE('2015-12-18 13:57:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1122214 AND AD_Language='pt_BR'
;

-- 18/12/2015 13h58min17s BRST
UPDATE AD_Element_Trl SET IsTranslated='Y',Updated=TO_DATE('2015-12-18 13:58:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1122214 AND AD_Language='pt_BR'
;

-- 18/12/2015 14h15min43s BRST
UPDATE AD_Column SET IsActive='N',Updated=TO_DATE('2015-12-18 14:15:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000628
;

-- 18/12/2015 14h16min21s BRST
UPDATE AD_Column SET IsActive='N',Updated=TO_DATE('2015-12-18 14:16:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000627
;

-- 18/12/2015 14h19min39s BRST
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_FieldGroup_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1126811,1000000,1125681,0,180,TO_DATE('2015-12-18 14:19:38','YYYY-MM-DD HH24:MI:SS'),100,1,'LBRA','Y','Y','Y','N','N','N','N','Y','Item Type (SPED)',525,TO_DATE('2015-12-18 14:19:38','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 18/12/2015 14h19min39s BRST
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1125681 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/12/2015 14h21min44s BRST
UPDATE AD_Field SET IsSameLine='N',Updated=TO_DATE('2015-12-18 14:21:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1100089
;

-- 18/12/2015 14h23min9s BRST
INSERT INTO AD_Val_Rule (AD_Client_ID,AD_Org_ID,AD_Val_Rule_ID,Code,Created,CreatedBy,EntityType,IsActive,Name,Type,Updated,UpdatedBy) VALUES (0,0,1120119,'LBR_CEST.LBR_NCM_ID=@LBR_NCM_ID@',TO_DATE('2015-12-18 14:23:07','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','LBR_CEST of NCM','S',TO_DATE('2015-12-18 14:23:07','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 18/12/2015 14h23min25s BRST
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1128693,1122214,0,17,208,1120119,'LBR_CEST_ID',TO_DATE('2015-12-18 14:23:24','YYYY-MM-DD HH24:MI:SS'),100,'Brazilian Specifier code Tax','LBRA',10,'Brazilian Specifier code Tax','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','CEST',0,TO_DATE('2015-12-18 14:23:24','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 18/12/2015 14h23min25s BRST
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1128693 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 18/12/2015 14h23min27s BRST
ALTER TABLE M_Product ADD LBR_CEST_ID NVARCHAR2(10) DEFAULT NULL 
;

-- 18/12/2015 14h23min55s BRST
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_FieldGroup_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1128693,1000000,1125682,0,180,TO_DATE('2015-12-18 14:23:54','YYYY-MM-DD HH24:MI:SS'),100,'Brazilian Specifier code Tax',22,'LBRA','Brazilian Specifier code Tax','Y','Y','Y','N','N','N','N','Y','CEST',535,TO_DATE('2015-12-18 14:23:54','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 18/12/2015 14h23min55s BRST
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1125682 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/12/2015 14h24min44s BRST
UPDATE AD_Field SET SeqNo=555,Updated=TO_DATE('2015-12-18 14:24:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000188
;

-- 18/12/2015 14h24min55s BRST
UPDATE AD_Field SET IsSameLine='N',Updated=TO_DATE('2015-12-18 14:24:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000112
;

-- 18/12/2015 14h25min1s BRST
DELETE  FROM  AD_Field_Trl WHERE AD_Field_ID=1000428
;

-- 18/12/2015 14h25min1s BRST
DELETE FROM AD_Field WHERE AD_Field_ID=1000428
;

-- 18/12/2015 14h25min4s BRST
DELETE  FROM  AD_Field_Trl WHERE AD_Field_ID=1000429
;

-- 18/12/2015 14h25min4s BRST
DELETE FROM AD_Field WHERE AD_Field_ID=1000429
;

-- 18/12/2015 14h25min20s BRST
UPDATE AD_Field SET SeqNo=656,Updated=TO_DATE('2015-12-18 14:25:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1100089
;

-- 18/12/2015 14h25min33s BRST
UPDATE AD_Field SET DisplayLogic='@ProductType@!S',Updated=TO_DATE('2015-12-18 14:25:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000112
;

-- 18/12/2015 14h27min11s BRST
UPDATE AD_Column SET AD_Reference_ID=18,Updated=TO_DATE('2015-12-18 14:27:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1128693
;

-- 18/12/2015 14h29min44s BRST
UPDATE AD_Val_Rule SET Code='EXISTS (SELECT ''1'' FROM LBR_NCM_CEST WHERE LBR_NCM_CEST.LBR_NCM_ID=@LBR_NCM_ID@)',Updated=TO_DATE('2015-12-18 14:29:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=1120119
;

-- 18/12/2015 14h31min10s BRST
UPDATE AD_Val_Rule SET Code='EXISTS (SELECT ''1'' FROM LBR_NCM_CEST WHERE LBR_NCM_CEST.LBR_NCM_ID=@LBR_NCM_ID@ AND LBR_NCM_CEST.LBR_CEST_ID=LBR_CEST.LBR_CEST_ID)',Updated=TO_DATE('2015-12-18 14:31:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=1120119
;

-- 18/12/2015 14h35min40s BRST
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,1122217,0,'LBR_CESTName',TO_DATE('2015-12-18 14:35:39','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','CEST Name','CEST Name',TO_DATE('2015-12-18 14:35:39','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 18/12/2015 14h35min40s BRST
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1122217 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 18/12/2015 14h35min53s BRST
UPDATE AD_Element_Trl SET IsTranslated='Y',Name='CEST',PrintName='CEST',Updated=TO_DATE('2015-12-18 14:35:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1122217 AND AD_Language='pt_BR'
;

-- 18/12/2015 14h36min19s BRST
UPDATE AD_Element_Trl SET Description='Código de Especificação da Substituição Tributária',Help='Código de Especificação da Substituição Tributária',Updated=TO_DATE('2015-12-18 14:36:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1122217 AND AD_Language='pt_BR'
;

-- 18/12/2015 14h37min0s BRST
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1128694,1122217,0,10,1000028,'LBR_CESTName',TO_DATE('2015-12-18 14:36:59','YYYY-MM-DD HH24:MI:SS'),100,'LBRA',9,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','CEST Name',0,TO_DATE('2015-12-18 14:36:59','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 18/12/2015 14h37min0s BRST
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1128694 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 18/12/2015 14h37min2s BRST
ALTER TABLE LBR_NotaFiscalLine ADD LBR_CESTName NVARCHAR2(9) DEFAULT NULL 
;

-- 18/12/2015 14h37min55s BRST
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_FieldGroup_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,SortNo,Updated,UpdatedBy) VALUES (0,1128694,NULL,1125683,0,1000021,TO_DATE('2015-12-18 14:37:55','YYYY-MM-DD HH24:MI:SS'),100,22,'LBRA','Y','Y','N','N','N','N','N','Y','CEST Name',999,0,TO_DATE('2015-12-18 14:37:55','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 18/12/2015 14h37min55s BRST
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1125683 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/12/2015 14h40min7s BRST
UPDATE AD_Field SET IsDisplayed='N',Updated=TO_DATE('2015-12-18 14:40:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000599
;

-- 18/12/2015 14h40min12s BRST
UPDATE AD_Field SET IsDisplayed='N',Updated=TO_DATE('2015-12-18 14:40:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000601
;

-- 18/12/2015 14h40min38s BRST
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_FieldGroup_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1128692,106,1125684,0,1000030,TO_DATE('2015-12-18 14:40:37','YYYY-MM-DD HH24:MI:SS'),100,'Brazilian Specifier code Tax',22,'LBRA','Brazilian Specifier code Tax','Y','Y','Y','N','N','N','N','Y','CEST',165,TO_DATE('2015-12-18 14:40:37','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 18/12/2015 14h40min38s BRST
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1125684 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/12/2015 14h42min30s BRST
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1000601
;

-- 18/12/2015 14h42min30s BRST
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1000599
;

-- 18/12/2015 14h42min30s BRST
UPDATE AD_Field SET SeqNo=110,IsDisplayed='Y' WHERE AD_Field_ID=1122916
;

-- 18/12/2015 14h42min30s BRST
UPDATE AD_Field SET SeqNo=120,IsDisplayed='Y' WHERE AD_Field_ID=1000595
;

-- 18/12/2015 14h42min30s BRST
UPDATE AD_Field SET SeqNo=130,IsDisplayed='Y' WHERE AD_Field_ID=1000596
;

-- 18/12/2015 14h42min30s BRST
UPDATE AD_Field SET SeqNo=140,IsDisplayed='Y' WHERE AD_Field_ID=1000597
;

-- 18/12/2015 14h42min30s BRST
UPDATE AD_Field SET SeqNo=150,IsDisplayed='Y' WHERE AD_Field_ID=1000598
;

-- 18/12/2015 14h42min30s BRST
UPDATE AD_Field SET SeqNo=170,IsDisplayed='Y' WHERE AD_Field_ID=1125684
;

-- 18/12/2015 14h42min30s BRST
UPDATE AD_Field SET SeqNo=220,IsDisplayed='Y' WHERE AD_Field_ID=1122782
;

-- 18/12/2015 14h42min30s BRST
UPDATE AD_Field SET SeqNo=230,IsDisplayed='Y' WHERE AD_Field_ID=1124871
;

-- 18/12/2015 14h42min30s BRST
UPDATE AD_Field SET SeqNo=240,IsDisplayed='Y' WHERE AD_Field_ID=1100072
;

-- 18/12/2015 14h42min30s BRST
UPDATE AD_Field SET SeqNo=250,IsDisplayed='Y' WHERE AD_Field_ID=1100073
;

-- 18/12/2015 14h42min30s BRST
UPDATE AD_Field SET SeqNo=260,IsDisplayed='Y' WHERE AD_Field_ID=1100074
;

-- 18/12/2015 14h42min30s BRST
UPDATE AD_Field SET SeqNo=270,IsDisplayed='Y' WHERE AD_Field_ID=1100075
;

-- 18/12/2015 14h42min30s BRST
UPDATE AD_Field SET SeqNo=280,IsDisplayed='Y' WHERE AD_Field_ID=1000632
;

-- 18/12/2015 14h42min56s BRST
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2015-12-18 14:42:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1122916
;

-- 18/12/2015 14h44min2s BRST
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1126588,1125685,0,1000030,TO_DATE('2015-12-18 14:44:01','YYYY-MM-DD HH24:MI:SS'),100,'Freight Amount ',13,'LBRA','The Freight Amount indicates the amount charged for Freight in the document currency.','Y','Y','Y','N','N','N','N','Y','Freight Amount',221,TO_DATE('2015-12-18 14:44:01','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 18/12/2015 14h44min2s BRST
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1125685 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/12/2015 14h44min18s BRST
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1126589,1125686,0,1000030,TO_DATE('2015-12-18 14:44:17','YYYY-MM-DD HH24:MI:SS'),100,'Defines the Insurance Amt',13,'LBRA','Defines the Insurance Amt','Y','Y','Y','N','N','N','N','N','Insurance Amt',222,TO_DATE('2015-12-18 14:44:17','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 18/12/2015 14h44min18s BRST
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1125686 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/12/2015 14h46min6s BRST
UPDATE AD_Field SET SeqNo=210,IsDisplayed='Y' WHERE AD_Field_ID=1124871
;

-- 18/12/2015 14h46min6s BRST
UPDATE AD_Field SET SeqNo=220,IsDisplayed='Y' WHERE AD_Field_ID=1125685
;

-- 18/12/2015 14h46min6s BRST
UPDATE AD_Field SET SeqNo=230,IsDisplayed='Y' WHERE AD_Field_ID=1125686
;

-- 18/12/2015 14h46min6s BRST
UPDATE AD_Field SET SeqNo=240,IsDisplayed='Y' WHERE AD_Field_ID=1122782
;

-- 18/12/2015 14h46min6s BRST
UPDATE AD_Field SET SeqNo=250,IsDisplayed='Y' WHERE AD_Field_ID=1000605
;

-- 18/12/2015 14h46min6s BRST
UPDATE AD_Field SET SeqNo=260,IsDisplayed='Y' WHERE AD_Field_ID=1100072
;

-- 18/12/2015 14h46min6s BRST
UPDATE AD_Field SET SeqNo=270,IsDisplayed='Y' WHERE AD_Field_ID=1100073
;

-- 18/12/2015 14h46min6s BRST
UPDATE AD_Field SET SeqNo=280,IsDisplayed='Y' WHERE AD_Field_ID=1100074
;

-- 18/12/2015 14h46min6s BRST
UPDATE AD_Field SET SeqNo=290,IsDisplayed='Y' WHERE AD_Field_ID=1100075
;

-- 18/12/2015 14h46min6s BRST
UPDATE AD_Field SET SeqNo=300,IsDisplayed='Y' WHERE AD_Field_ID=1000632
;

-- 18/12/2015 14h46min20s BRST
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2015-12-18 14:46:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1124871
;

-- 18/12/2015 14h46min22s BRST
UPDATE AD_Field SET IsSameLine='N',Updated=TO_DATE('2015-12-18 14:46:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125685
;

-- 18/12/2015 14h46min25s BRST
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2015-12-18 14:46:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125686
;

-- 18/12/2015 14h49min7s BRST
UPDATE AD_Column SET IsSelectionColumn='Y',Updated=TO_DATE('2015-12-18 14:49:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1128621
;

-- 18/12/2015 14h49min11s BRST
UPDATE AD_Column SET IsSelectionColumn='Y',Updated=TO_DATE('2015-12-18 14:49:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1128623
;

-- 18/12/2015 14h49min34s BRST
UPDATE AD_Table SET AD_Window_ID=1120110,Updated=TO_DATE('2015-12-18 14:49:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=1120531
;

INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8703.22.10,%' AND c.Value = '25.004.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8704.31.30,%' AND c.Value = '25.020.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8704.31.90,%' AND c.Value = '25.021.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '3815.12.10%' AND c.Value = '01.001.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '3815.12.90%' AND c.Value = '01.001.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '3918.10.00%' AND c.Value = '01.003.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '3923.30.00%' AND c.Value = '01.004.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '3926.30.00%' AND c.Value = '01.005.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '5910.00.00%' AND c.Value = '01.006.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '4016.93.00%' AND c.Value = '01.007.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '4016.10.10%' AND c.Value = '01.008.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '4016.99.90%' AND c.Value = '01.009.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '5705.00.00%' AND c.Value = '01.009.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '5903.90.00%' AND c.Value = '01.010.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '5909.00.00%' AND c.Value = '01.011.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '6506.10.00%' AND c.Value = '01.013.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '7007.11.00%' AND c.Value = '01.015.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '7007.21.00%' AND c.Value = '01.015.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '7009.10.00%' AND c.Value = '01.016.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '7014.00.00%' AND c.Value = '01.017.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '7311.00.00%' AND c.Value = '01.018.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '7311.00.00%' AND c.Value = '01.019.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8007.00.90%' AND c.Value = '01.023.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8302.10.00%' AND c.Value = '01.026.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8302.30.00%' AND c.Value = '01.026.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8414.10.00%' AND c.Value = '01.033.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8413.91.90%' AND c.Value = '01.035.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8414.90.10%' AND c.Value = '01.035.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8414.90.39%' AND c.Value = '01.035.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8421.23.00%' AND c.Value = '01.037.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8421.29.90%' AND c.Value = '01.038.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8424.10.00%' AND c.Value = '01.040.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8421.31.00%' AND c.Value = '01.041.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8421.39.20%' AND c.Value = '01.042.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8425.42.00%' AND c.Value = '01.043.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8431.10.10%' AND c.Value = '01.044.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8433.90.90%' AND c.Value = '01.045.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8481.10.00%' AND c.Value = '01.046.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8481.80.92%' AND c.Value = '01.048.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8507.10.00%' AND c.Value = '01.053.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8512.90.00%' AND c.Value = '01.055.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8517.12.13%' AND c.Value = '01.056.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8518.50.00%' AND c.Value = '01.058.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8525.60.10%' AND c.Value = '01.060.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8527.21.90%' AND c.Value = '01.062.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8521.90.90%' AND c.Value = '01.062.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8529.10.90%' AND c.Value = '01.063.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8534.00.00%' AND c.Value = '01.064.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8536.10.00%' AND c.Value = '01.066.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8536.20.00%' AND c.Value = '01.067.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8536.50.90%' AND c.Value = '01.070.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8544.20.00%' AND c.Value = '01.073.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8544.30.00%' AND c.Value = '01.074.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8716.90.90%' AND c.Value = '01.078.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '9030.33.21%' AND c.Value = '01.082.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '9031.80.40%' AND c.Value = '01.083.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '9104.00.00%' AND c.Value = '01.085.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '9401.20.00%' AND c.Value = '01.086.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '9401.90.90%' AND c.Value = '01.086.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '9613.80.00%' AND c.Value = '01.087.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '4504.90.00%' AND c.Value = '01.089.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '6812.99.10%' AND c.Value = '01.089.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '4823.40.00%' AND c.Value = '01.090.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '3919.10.00%' AND c.Value = '01.091.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '3919.90.00%' AND c.Value = '01.091.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8708.29.99%' AND c.Value = '01.091.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8412.31.10%' AND c.Value = '01.092.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8413.19.00%' AND c.Value = '01.093.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8413.50.90%' AND c.Value = '01.093.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8413.81.00%' AND c.Value = '01.093.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8413.70.10%' AND c.Value = '01.094.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8413.60.19%' AND c.Value = '01.094.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8414.59.10%' AND c.Value = '01.095.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8414.59.90%' AND c.Value = '01.095.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8421.39.90%' AND c.Value = '01.096.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8501.10.19%' AND c.Value = '01.097.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8501.31.10%' AND c.Value = '01.098.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8504.50.00%' AND c.Value = '01.099.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8512.30.00%' AND c.Value = '01.101.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '9027.10.00%' AND c.Value = '01.103.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '4008.11.00%' AND c.Value = '01.104.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '5601.22.19%' AND c.Value = '01.105.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '5703.20.00%' AND c.Value = '01.106.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '5703.30.00%' AND c.Value = '01.107.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '5911.90.00%' AND c.Value = '01.108.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '6903.90.99%' AND c.Value = '01.109.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '7007.29.00%' AND c.Value = '01.110.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '7314.50.00%' AND c.Value = '01.111.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '7315.11.00%' AND c.Value = '01.112.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '7315.12.10%' AND c.Value = '01.113.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8418.99.00%' AND c.Value = '01.114.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8424.90.90%' AND c.Value = '01.116.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8425.49.10%' AND c.Value = '01.117.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8431.41.00%' AND c.Value = '01.118.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8501.61.00%' AND c.Value = '01.119.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8531.10.90%' AND c.Value = '01.120.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '9014.10.00%' AND c.Value = '01.121.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '9025.19.90%' AND c.Value = '01.122.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '9025.90.10%' AND c.Value = '01.123.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '9032.10.10%' AND c.Value = '01.125.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '9032.10.90%' AND c.Value = '01.126.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '9032.20.00%' AND c.Value = '01.127.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '2208.90.00%' AND c.Value = '02.001.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '2208.90.00%' AND c.Value = '02.002.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '2208.90.00%' AND c.Value = '02.003.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '2208.40.00%' AND c.Value = '02.004.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '2206.00.90%' AND c.Value = '02.005.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '2208.90.00%' AND c.Value = '02.005.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '2208.20.00%' AND c.Value = '02.006.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '2206.00.90%' AND c.Value = '02.007.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '2208.90.00%' AND c.Value = '02.007.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '2208.50.00%' AND c.Value = '02.008.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '2206.00.90%' AND c.Value = '02.009.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '2208.90.00%' AND c.Value = '02.009.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '2208.70.00%' AND c.Value = '02.010.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '2208.20.00%' AND c.Value = '02.011.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '2208.40.00%' AND c.Value = '02.012.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '2206.00.90%' AND c.Value = '02.013.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '2208.90.00%' AND c.Value = '02.014.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '2208.90.00%' AND c.Value = '02.015.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '2208.60.00%' AND c.Value = '02.018.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '2208.90.00%' AND c.Value = '02.019.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '2208.90.00%' AND c.Value = '02.020.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '2208.20.00%' AND c.Value = '02.021.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '2206.00.10%' AND c.Value = '02.022.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '2206.00.90%' AND c.Value = '02.023.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '2208.90.00%' AND c.Value = '02.023.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '2106.90.10%' AND c.Value = '03.009.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '2202.90.00%' AND c.Value = '03.010.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '2203.00.00%' AND c.Value = '03.012.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '2202.90.00%' AND c.Value = '03.013.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '2203.00.00%' AND c.Value = '03.014.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '3826.00.00%' AND c.Value = '06.010.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '2710.20.00%' AND c.Value = '06.012.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '2716.00.00%' AND c.Value = '07.001.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '4016.99.90%' AND c.Value = '08.001.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '4417.00.10%' AND c.Value = '08.002.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '4417.00.90%' AND c.Value = '08.002.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8202.20.00%' AND c.Value = '08.005.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8202.91.00%' AND c.Value = '08.006.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8209.00.11%' AND c.Value = '08.015.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '9017.20.00%' AND c.Value = '08.021.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '9017.90.90%' AND c.Value = '08.021.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '9025.11.90%' AND c.Value = '08.022.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '9025.90.10%' AND c.Value = '08.022.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '9025.90.90%' AND c.Value = '08.023.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8504.10.00%' AND c.Value = '09.003.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8543.70.99%' AND c.Value = '09.005.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '3824.50.00%' AND c.Value = '10.002.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '3214.90.00%' AND c.Value = '10.003.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '3925.10.00%' AND c.Value = '10.015.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '3925.10.00%' AND c.Value = '10.017.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '3925.20.00%' AND c.Value = '10.018.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '3925.30.00%' AND c.Value = '10.019.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '6810.19.00%' AND c.Value = '10.022.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '6901.00.00%' AND c.Value = '10.025.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '6906.00.00%' AND c.Value = '10.029.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '6912.00.00%' AND c.Value = '10.032.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '7007.19.00%' AND c.Value = '10.036.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '7007.29.00%' AND c.Value = '10.037.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '7214.20.00%' AND c.Value = '10.040.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '7308.90.10%' AND c.Value = '10.041.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '7214.20.00%' AND c.Value = '10.042.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '7308.90.10%' AND c.Value = '10.043.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '7217.10.90%' AND c.Value = '10.044.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '7308.30.00%' AND c.Value = '10.047.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '7308.40.00%' AND c.Value = '10.048.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '7308.40.00%' AND c.Value = '10.049.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '7308.90.90%' AND c.Value = '10.050.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '7313.00.00%' AND c.Value = '10.052.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '7315.11.00%' AND c.Value = '10.054.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '7315.12.90%' AND c.Value = '10.055.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '7315.82.00%' AND c.Value = '10.056.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '7411.10.10%' AND c.Value = '10.064.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '7418.20.00%' AND c.Value = '10.067.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '7607.19.90%' AND c.Value = '10.068.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '7609.00.00%' AND c.Value = '10.070.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '7615.20.00%' AND c.Value = '10.072.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8302.41.00%' AND c.Value = '10.074.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8302.10.00%' AND c.Value = '10.076.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '2828.90.11%' AND c.Value = '11.001.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '2828.90.19%' AND c.Value = '11.001.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '3206.41.00%' AND c.Value = '11.001.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '3808.94.19%' AND c.Value = '11.001.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '3401.20.90%' AND c.Value = '11.002.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '3401.20.90%' AND c.Value = '11.003.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '3402.20.00%' AND c.Value = '11.004.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '3402.20.00%' AND c.Value = '11.005.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '3402.20.00%' AND c.Value = '11.006.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '3809.91.90%' AND c.Value = '11.008.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '3924.10.00%' AND c.Value = '11.009.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '3924.90.00%' AND c.Value = '11.009.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '6805.30.10%' AND c.Value = '11.009.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '6805.30.90%' AND c.Value = '11.009.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '7323.10.00%' AND c.Value = '11.011.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '7413.00.00%' AND c.Value = '12.006.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '4015.11.00%' AND c.Value = '13.010.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '4015.19.00%' AND c.Value = '13.010.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '4014.10.00%' AND c.Value = '13.011.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '3926.90.90%' AND c.Value = '13.014.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '9018.90.99%' AND c.Value = '13.014.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '4813.10.00%' AND c.Value = '14.003.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '3924.10.00%' AND c.Value = '15.003.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '4011.50.00%' AND c.Value = '16.005.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '4013.20.00%' AND c.Value = '16.009.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '1704.90.10%' AND c.Value = '17.001.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '1806.31.10%' AND c.Value = '17.002.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '1806.31.20%' AND c.Value = '17.002.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '1806.32.10%' AND c.Value = '17.003.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '1806.32.20%' AND c.Value = '17.003.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '1806.90.00%' AND c.Value = '17.004.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '1806.90.00%' AND c.Value = '17.005.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '1806.90.00%' AND c.Value = '17.006.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '1704.90.90%' AND c.Value = '17.007.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '1806.90.00%' AND c.Value = '17.008.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '2202.90.00%' AND c.Value = '17.009.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '2202.10.00%' AND c.Value = '17.010.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '2202.90.00%' AND c.Value = '17.011.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '2202.90.00%' AND c.Value = '17.014.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '2202.90.00%' AND c.Value = '17.015.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '2202.10.00%' AND c.Value = '17.016.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '1901.10.20%' AND c.Value = '17.018.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '1901.10.10%' AND c.Value = '17.019.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '1901.10.90%' AND c.Value = '17.020.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '1901.10.30%' AND c.Value = '17.020.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '0401.10.10%' AND c.Value = '17.021.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '0401.20.10%' AND c.Value = '17.021.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '0401.10.10%' AND c.Value = '17.021.01' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '0401.20.10%' AND c.Value = '17.021.01' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '0401.40.10%' AND c.Value = '17.022.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '0401.50.10%' AND c.Value = '17.022.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '0401.40.10%' AND c.Value = '17.022.01' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '0401.50.10%' AND c.Value = '17.022.01' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '0401.10.90%' AND c.Value = '17.023.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '0401.20.90%' AND c.Value = '17.023.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '0401.10.90%' AND c.Value = '17.023.01' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '0401.20.90%' AND c.Value = '17.023.01' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '0402.21.30%' AND c.Value = '17.024.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '0402.29.30%' AND c.Value = '17.024.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '0402.21.30%' AND c.Value = '17.024.01' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '0402.29.30%' AND c.Value = '17.024.01' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '0402.29.20%' AND c.Value = '17.024.02' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '0403.90.00%' AND c.Value = '17.027.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '0405.10.00%' AND c.Value = '17.030.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '0405.10.00%' AND c.Value = '17.030.01' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '1517.10.00%' AND c.Value = '17.031.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '1517.10.00%' AND c.Value = '17.032.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '1517.10.00%' AND c.Value = '17.032.01' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '1516.20.00%' AND c.Value = '17.033.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '1516.20.00%' AND c.Value = '17.033.01' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '1901.90.20%' AND c.Value = '17.034.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '1904.10.00%' AND c.Value = '17.035.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '1904.90.00%' AND c.Value = '17.035.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '1905.90.90%' AND c.Value = '17.036.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '2005.20.00%' AND c.Value = '17.037.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '2103.20.10%' AND c.Value = '17.039.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '2103.90.21%' AND c.Value = '17.040.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '2103.90.91%' AND c.Value = '17.040.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '2103.10.10%' AND c.Value = '17.041.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '2103.30.10%' AND c.Value = '17.042.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '2103.30.21%' AND c.Value = '17.043.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '2103.90.11%' AND c.Value = '17.044.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '2103.20.10%' AND c.Value = '17.046.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '1704.90.90%' AND c.Value = '17.047.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '1904.20.00%' AND c.Value = '17.047.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '1904.90.00%' AND c.Value = '17.047.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '1806.31.20%' AND c.Value = '17.048.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '1806.32.20%' AND c.Value = '17.048.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '1806.90.00%' AND c.Value = '17.048.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '1101.00.10%' AND c.Value = '17.049.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '1101.00.10%' AND c.Value = '17.049.01' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '1101.00.20%' AND c.Value = '17.050.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '1901.20.00%' AND c.Value = '17.051.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '1901.90.90%' AND c.Value = '17.051.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '1902.30.00%' AND c.Value = '17.052.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '1902.40.00%' AND c.Value = '17.053.01' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '1905.20.90%' AND c.Value = '17.056.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '1905.20.10%' AND c.Value = '17.057.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '1905.90.20%' AND c.Value = '17.061.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '1905.90.10%' AND c.Value = '17.065.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '1905.90.20%' AND c.Value = '17.066.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '1905.90.90%' AND c.Value = '17.067.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '1905.10.00%' AND c.Value = '17.068.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '1905.90.90%' AND c.Value = '17.069.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '1507.90.11%' AND c.Value = '17.071.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '1510.00.00%' AND c.Value = '17.074.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '1512.19.11%' AND c.Value = '17.075.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '1512.29.10%' AND c.Value = '17.075.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '1515.19.00%' AND c.Value = '17.077.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '1515.29.10%' AND c.Value = '17.078.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '1512.29.90%' AND c.Value = '17.079.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '1517.90.10%' AND c.Value = '17.080.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '1601.00.00%' AND c.Value = '17.082.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '1601.00.00%' AND c.Value = '17.083.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '1601.00.00%' AND c.Value = '17.084.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '0210.20.00%' AND c.Value = '17.089.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '0210.99.00%' AND c.Value = '17.089.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '0210.99.00%' AND c.Value = '17.091.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '2006.00.00%' AND c.Value = '17.097.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '2006.00.00%' AND c.Value = '17.097.01' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '1211.90.90%' AND c.Value = '17.101.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '2106.90.90%' AND c.Value = '17.101.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '1701.99.00%' AND c.Value = '17.103.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '1701.99.00%' AND c.Value = '17.103.01' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '1701.99.00%' AND c.Value = '17.103.02' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '1701.91.00%' AND c.Value = '17.104.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '1701.91.00%' AND c.Value = '17.104.01' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '1701.91.00%' AND c.Value = '17.104.02' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '1701.99.00%' AND c.Value = '17.105.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '1701.99.00%' AND c.Value = '17.105.01' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '1701.99.00%' AND c.Value = '17.105.02' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '1701.91.00%' AND c.Value = '17.106.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '1701.91.00%' AND c.Value = '17.106.01' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '1701.99.00%' AND c.Value = '17.107.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '1701.99.00%' AND c.Value = '17.107.01' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '1701.99.00%' AND c.Value = '17.107.02' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '1701.91.00%' AND c.Value = '17.108.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '1701.91.00%' AND c.Value = '17.108.01' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '1701.91.00%' AND c.Value = '17.108.02' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '2008.19.00%' AND c.Value = '17.110.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '1901.90.90%' AND c.Value = '17.113.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '2101.11.90%' AND c.Value = '17.113.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '2101.12.00%' AND c.Value = '17.113.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '6911.10.10%' AND c.Value = '18.001.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '6911.10.90%' AND c.Value = '18.002.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '6912.00.00%' AND c.Value = '18.003.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '6912.00.00%' AND c.Value = '18.004.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '3213.10.00%' AND c.Value = '19.001.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '3916.20.00%' AND c.Value = '19.002.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '3926.10.00%' AND c.Value = '19.003.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '3926.90.90%' AND c.Value = '19.005.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '4802.20.90%' AND c.Value = '19.006.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '4811.90.90%' AND c.Value = '19.006.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '4802.54.99%' AND c.Value = '19.008.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '4802.57.99%' AND c.Value = '19.008.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '4816.20.00%' AND c.Value = '19.008.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '3703.10.10%' AND c.Value = '19.010.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '3703.10.29%' AND c.Value = '19.010.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '3703.20.00%' AND c.Value = '19.010.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '3703.90.10%' AND c.Value = '19.010.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '3704.00.00%' AND c.Value = '19.010.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '4802.20.00%' AND c.Value = '19.010.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '4810.13.90%' AND c.Value = '19.011.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '4816.10.00%' AND c.Value = '19.012.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '3920.20.19%' AND c.Value = '19.013.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '4806.20.00%' AND c.Value = '19.014.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '4808.10.00%' AND c.Value = '19.015.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '4810.22.90%' AND c.Value = '19.016.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '4820.10.00%' AND c.Value = '19.019.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '4820.20.00%' AND c.Value = '19.020.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '4820.30.00%' AND c.Value = '19.021.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '4820.40.00%' AND c.Value = '19.022.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '4820.50.00%' AND c.Value = '19.023.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '4820.90.00%' AND c.Value = '19.024.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '4909.00.00%' AND c.Value = '19.025.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '9608.10.00%' AND c.Value = '19.026.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '9608.20.00%' AND c.Value = '19.027.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '9608.30.00%' AND c.Value = '19.028.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '1211.90.90%' AND c.Value = '20.001.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '1211.90.90%' AND c.Value = '20.001.01' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '2712.10.00%' AND c.Value = '20.002.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '2814.20.00%' AND c.Value = '20.003.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '2847.00.00%' AND c.Value = '20.004.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '3006.70.00%' AND c.Value = '20.005.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '3303.00.10%' AND c.Value = '20.007.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '3303.00.20%' AND c.Value = '20.008.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '3304.10.00%' AND c.Value = '20.009.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '3304.20.10%' AND c.Value = '20.010.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '3304.20.90%' AND c.Value = '20.011.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '3304.30.00%' AND c.Value = '20.012.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '3304.91.00%' AND c.Value = '20.013.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '3304.99.10%' AND c.Value = '20.014.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '3304.99.90%' AND c.Value = '20.015.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '3304.99.90%' AND c.Value = '20.016.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '3305.10.00%' AND c.Value = '20.017.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '3305.20.00%' AND c.Value = '20.018.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '3305.30.00%' AND c.Value = '20.019.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '3305.90.00%' AND c.Value = '20.020.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '3305.90.00%' AND c.Value = '20.021.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '3305.90.00%' AND c.Value = '20.022.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '3306.10.00%' AND c.Value = '20.023.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '3306.20.00%' AND c.Value = '20.024.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '3306.90.00%' AND c.Value = '20.025.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '3307.10.00%' AND c.Value = '20.026.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '3307.20.10%' AND c.Value = '20.027.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '3307.20.10%' AND c.Value = '20.028.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '3307.20.90%' AND c.Value = '20.029.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '3307.20.90%' AND c.Value = '20.030.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '3307.30.00%' AND c.Value = '20.031.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '3307.90.00%' AND c.Value = '20.032.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '3307.90.00%' AND c.Value = '20.033.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '3401.11.90%' AND c.Value = '20.034.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '3401.19.00%' AND c.Value = '20.035.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '3401.20.10%' AND c.Value = '20.036.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '3401.30.00%' AND c.Value = '20.037.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '4014.90.10%' AND c.Value = '20.038.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '4014.90.90%' AND c.Value = '20.039.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '3926.90.40%' AND c.Value = '20.039.01' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '4818.10.00%' AND c.Value = '20.041.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '4818.10.00%' AND c.Value = '20.042.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '4818.20.00%' AND c.Value = '20.043.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '4818.20.00%' AND c.Value = '20.044.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '4818.30.00%' AND c.Value = '20.045.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '4818.90.90%' AND c.Value = '20.046.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '9619.00.00%' AND c.Value = '20.047.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '9619.00.00%' AND c.Value = '20.048.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '9619.00.00%' AND c.Value = '20.049.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '5601.21.90%' AND c.Value = '20.050.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '5603.92.90%' AND c.Value = '20.051.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8203.20.90%' AND c.Value = '20.052.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8214.10.00%' AND c.Value = '20.053.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8214.20.00%' AND c.Value = '20.054.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '9025.11.10%' AND c.Value = '20.055.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '9025.19.90%' AND c.Value = '20.055.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '9603.21.00%' AND c.Value = '20.057.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '9603.30.00%' AND c.Value = '20.058.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '9605.00.00%' AND c.Value = '20.059.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '9616.20.00%' AND c.Value = '20.061.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '3923.30.00%' AND c.Value = '20.062.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '3924.90.00%' AND c.Value = '20.062.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '3924.10.00%' AND c.Value = '20.062.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '4014.90.90%' AND c.Value = '20.062.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '7010.20.00%' AND c.Value = '20.062.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8212.10.20%' AND c.Value = '20.063.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8212.20.10%' AND c.Value = '20.063.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '7321.11.00%' AND c.Value = '21.001.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '7321.81.00%' AND c.Value = '21.001.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '7321.90.00%' AND c.Value = '21.001.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8418.10.00%' AND c.Value = '21.002.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8418.21.00%' AND c.Value = '21.003.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8418.29.00%' AND c.Value = '21.004.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8418.30.00%' AND c.Value = '21.005.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8418.40.00%' AND c.Value = '21.006.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8418.69.99%' AND c.Value = '21.009.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8418.99.00%' AND c.Value = '21.010.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8421.19.90%' AND c.Value = '21.012.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8418.69.31%' AND c.Value = '21.013.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8422.11.00%' AND c.Value = '21.015.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8422.90.10%' AND c.Value = '21.015.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8450.11.00%' AND c.Value = '21.019.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8450.12.00%' AND c.Value = '21.020.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8450.19.00%' AND c.Value = '21.021.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8451.21.00%' AND c.Value = '21.024.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8451.29.90%' AND c.Value = '21.025.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8452.10.00%' AND c.Value = '21.027.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8471.50.10%' AND c.Value = '21.030.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8471.60.90%' AND c.Value = '21.032.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8504.40.10%' AND c.Value = '21.037.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8504.40.40%' AND c.Value = '21.038.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8507.80.00%' AND c.Value = '21.039.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8509.80.10%' AND c.Value = '21.042.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8516.10.00%' AND c.Value = '21.043.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8516.40.00%' AND c.Value = '21.044.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8516.50.00%' AND c.Value = '21.045.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8516.60.00%' AND c.Value = '21.046.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8516.60.00%' AND c.Value = '21.047.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8516.71.00%' AND c.Value = '21.048.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8516.72.00%' AND c.Value = '21.049.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8516.90.00%' AND c.Value = '21.051.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8517.11.00%' AND c.Value = '21.052.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8519.81.90%' AND c.Value = '21.058.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8521.90.10%' AND c.Value = '21.059.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8521.90.90%' AND c.Value = '21.060.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8523.51.10%' AND c.Value = '21.061.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8523.52.00%' AND c.Value = '21.062.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8528.49.29%' AND c.Value = '21.065.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8528.59.20%' AND c.Value = '21.065.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8528.51.20%' AND c.Value = '21.066.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '9006.40.00%' AND c.Value = '21.073.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '9018.90.50%' AND c.Value = '21.074.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '9019.10.00%' AND c.Value = '21.075.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '9032.89.11%' AND c.Value = '21.076.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '9504.50.00%' AND c.Value = '21.077.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8517.62.22%' AND c.Value = '21.079.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8517.62.39%' AND c.Value = '21.080.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8517.62.62%' AND c.Value = '21.082.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;

INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8414.59.90%' AND c.Value = '21.087.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8414.60.00%' AND c.Value = '21.088.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8414.90.20%' AND c.Value = '21.089.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8415.10.11%' AND c.Value = '21.091.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8415.10.19%' AND c.Value = '21.092.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8415.10.90%' AND c.Value = '21.093.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8415.90.10%' AND c.Value = '21.094.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8415.90.20%' AND c.Value = '21.095.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8421.21.00%' AND c.Value = '21.096.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8424.30.10%' AND c.Value = '21.097.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8424.30.90%' AND c.Value = '21.097.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8424.90.90%' AND c.Value = '21.097.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8467.21.00%' AND c.Value = '21.098.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8516.31.00%' AND c.Value = '21.100.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8516.32.00%' AND c.Value = '21.101.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8521.90.90%' AND c.Value = '21.104.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8479.60.00%' AND c.Value = '21.105.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8415.90.90%' AND c.Value = '21.106.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8525.80.19%' AND c.Value = '21.107.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8423.10.00%' AND c.Value = '21.108.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8531.80.00%' AND c.Value = '21.115.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8541.40.11%' AND c.Value = '21.117.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8541.40.21%' AND c.Value = '21.117.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8541.40.22%' AND c.Value = '21.117.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8543.70.92%' AND c.Value = '21.118.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '3204.17.00%' AND c.Value = '24.002.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8702.10.00%' AND c.Value = '25.001.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8702.90.90%' AND c.Value = '25.002.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8703.21.00%' AND c.Value = '25.003.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8703.22.90%' AND c.Value = '25.005.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8703.23.10%' AND c.Value = '25.006.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8703.23.90%' AND c.Value = '25.007.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8703.24.10%' AND c.Value = '25.008.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8703.24.90%' AND c.Value = '25.009.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8703.32.10%' AND c.Value = '25.010.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8703.32.90%' AND c.Value = '25.011.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8703.33.10%' AND c.Value = '25.012.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8703.33.90%' AND c.Value = '25.013.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8704.21.10%' AND c.Value = '25.014.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8704.21.20%' AND c.Value = '25.015.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8704.21.30%' AND c.Value = '25.016.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8704.21.90%' AND c.Value = '25.017.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8704.31.10%' AND c.Value = '25.018.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8704.31.20%' AND c.Value = '25.019.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '7013.37.00%' AND c.Value = '27.003.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '7013.42.90%' AND c.Value = '27.004.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '3303.00.10%' AND c.Value = '28.001.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '3303.00.20%' AND c.Value = '28.002.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '3304.10.00%' AND c.Value = '28.003.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '3304.20.10%' AND c.Value = '28.004.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '3304.20.90%' AND c.Value = '28.005.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '3304.30.00%' AND c.Value = '28.006.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '3304.91.00%' AND c.Value = '28.007.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '3304.99.10%' AND c.Value = '28.008.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '3304.99.90%' AND c.Value = '28.009.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '3304.99.90%' AND c.Value = '28.010.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '3305.10.00%' AND c.Value = '28.011.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '3305.20.00%' AND c.Value = '28.012.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '3305.90.00%' AND c.Value = '28.013.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '3305.90.00%' AND c.Value = '28.014.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '3307.10.00%' AND c.Value = '28.015.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '3307.20.10%' AND c.Value = '28.016.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '3307.20.90%' AND c.Value = '28.017.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '3307.90.00%' AND c.Value = '28.018.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '3307.90.00%' AND c.Value = '28.019.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '3401.11.90%' AND c.Value = '28.020.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '3401.19.00%' AND c.Value = '28.021.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '3401.20.10%' AND c.Value = '28.022.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '3401.30.00%' AND c.Value = '28.023.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '4818.20.00%' AND c.Value = '28.024.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8214.10.00%' AND c.Value = '28.025.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8214.20.00%' AND c.Value = '28.026.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '9603.29.00%' AND c.Value = '28.027.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '9603.30.00%' AND c.Value = '28.028.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '9616.10.00%' AND c.Value = '28.029.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '9616.20.00%' AND c.Value = '28.030.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '3924.10.00%' AND c.Value = '28.033.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '3924.90.00%' AND c.Value = '28.033.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '4014.90.90%' AND c.Value = '28.033.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '4014.90.90%' AND c.Value = '28.034.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '4823.90.9%' AND c.Value = '01.007.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8414.80.1%' AND c.Value = '01.034.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8414.80.2%' AND c.Value = '01.034.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8414.90.3%' AND c.Value = '01.035.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8431.49.2%' AND c.Value = '01.045.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8525.50.1%' AND c.Value = '01.060.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '9032.89.2%' AND c.Value = '01.084.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '9032.89.8%' AND c.Value = '01.102.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '9032.89.9%' AND c.Value = '01.102.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '2710.12.5%' AND c.Value = '06.002.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '2710.19.1%' AND c.Value = '06.003.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '2710.19.2%' AND c.Value = '06.004.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '2710.19.3%' AND c.Value = '06.005.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '2710.19.9%' AND c.Value = '06.006.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '3816.00.1%' AND c.Value = '10.002.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '9018.32.1%' AND c.Value = '13.013.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '4823.20.9%' AND c.Value = '14.001.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '0401.40.2%' AND c.Value = '17.024.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '0401.40.2%' AND c.Value = '17.024.01' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '4802.54.9%' AND c.Value = '19.007.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '4802.56.9%' AND c.Value = '19.009.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '4802.57.9%' AND c.Value = '19.009.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '4802.58.9%' AND c.Value = '19.009.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8418.69.9%' AND c.Value = '21.008.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8471.60.5%' AND c.Value = '21.031.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8517.18.9%' AND c.Value = '21.054.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8517.62.5%' AND c.Value = '21.055.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8525.80.2%' AND c.Value = '21.063.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8517.62.1%' AND c.Value = '21.078.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8517.62.4%' AND c.Value = '21.081.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8517.62.9%' AND c.Value = '21.083.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8301.20%' AND c.Value = '01.024.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8301.60%' AND c.Value = '01.024.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8301.70%' AND c.Value = '01.025.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8408.20%' AND c.Value = '01.029.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8413.30%' AND c.Value = '01.032.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8415.20%' AND c.Value = '01.036.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8505.20%' AND c.Value = '01.052.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8512.20%' AND c.Value = '01.055.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8512.40%' AND c.Value = '01.055.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8519.81%' AND c.Value = '01.059.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8535.30%' AND c.Value = '01.065.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8536.50%' AND c.Value = '01.065.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8539.10%' AND c.Value = '01.071.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '9026.10%' AND c.Value = '01.079.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '9026.20%' AND c.Value = '01.080.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8507.20%' AND c.Value = '01.100.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8507.30%' AND c.Value = '01.100.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8419.50%' AND c.Value = '01.115.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '9026.90%' AND c.Value = '01.124.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8716.90%' AND c.Value = '01.128.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '2207.20%' AND c.Value = '02.004.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '2208.30%' AND c.Value = '02.016.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '2106.90%' AND c.Value = '03.011.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '2207.10%' AND c.Value = '06.001.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8207.40%' AND c.Value = '08.012.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8207.60%' AND c.Value = '08.012.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8207.70%' AND c.Value = '08.012.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '9017.30%' AND c.Value = '08.021.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '9017.80%' AND c.Value = '08.021.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '9025.19%' AND c.Value = '08.023.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8536.50%' AND c.Value = '09.004.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '3925.90%' AND c.Value = '10.016.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '3925.90%' AND c.Value = '10.017.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '7217.20%' AND c.Value = '10.045.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '7308.90%' AND c.Value = '10.048.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '7317.00%' AND c.Value = '10.057.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '3006.60%' AND c.Value = '13.005.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '3006.30%' AND c.Value = '13.007.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '9018.31%' AND c.Value = '13.012.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '4012.90%' AND c.Value = '16.007.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '4012.90%' AND c.Value = '16.007.01' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '2101.20%' AND c.Value = '17.009.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '0401.10%' AND c.Value = '17.024.02' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '0401.20%' AND c.Value = '17.024.02' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '0401.50%' AND c.Value = '17.024.02' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '0402.10%' AND c.Value = '17.024.02' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '1905.20%' AND c.Value = '17.055.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '1905.31%' AND c.Value = '17.058.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '1905.31%' AND c.Value = '17.059.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '1905.31%' AND c.Value = '17.060.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '1905.32%' AND c.Value = '17.062.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '1905.32%' AND c.Value = '17.063.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '1905.40%' AND c.Value = '17.064.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '1905.90%' AND c.Value = '17.070.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '0903.00%' AND c.Value = '17.102.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '1701.91%' AND c.Value = '17.106.02' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '2101.20%' AND c.Value = '17.112.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '4802.56%' AND c.Value = '19.030.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8418.50%' AND c.Value = '21.007.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8421.12%' AND c.Value = '21.011.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8443.31%' AND c.Value = '21.016.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8443.32%' AND c.Value = '21.017.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8443.99%' AND c.Value = '21.018.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8450.20%' AND c.Value = '21.022.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8450.90%' AND c.Value = '21.023.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8451.90%' AND c.Value = '21.026.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8471.30%' AND c.Value = '21.028.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8471.90%' AND c.Value = '21.034.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8473.30%' AND c.Value = '21.035.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8516.79%' AND c.Value = '21.050.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8517.12%' AND c.Value = '21.053.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8528.69%' AND c.Value = '21.065.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '9006.10%' AND c.Value = '21.072.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8214.90%' AND c.Value = '21.085.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8415.10%' AND c.Value = '21.090.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8531.10%' AND c.Value = '21.114.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '9030.89%' AND c.Value = '21.120.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '9107.00%' AND c.Value = '21.121.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '4010.3%' AND c.Value = '01.006.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '6306.1%' AND c.Value = '01.012.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8407.3%' AND c.Value = '01.028.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8409.9%' AND c.Value = '01.030.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8412.2%' AND c.Value = '01.031.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8421.9%' AND c.Value = '01.039.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8481.2%' AND c.Value = '01.047.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8527.2%' AND c.Value = '01.061.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8536.4%' AND c.Value = '01.068.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8539.2%' AND c.Value = '01.072.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8714.1%' AND c.Value = '01.077.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '2403.1%' AND c.Value = '04.002.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '2710.9%' AND c.Value = '06.007.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '3926.9%' AND c.Value = '10.020.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '4823.6%' AND c.Value = '14.002.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '4012.1%' AND c.Value = '16.006.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '2009.8%' AND c.Value = '17.013.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '0402.1%' AND c.Value = '17.017.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '0402.2%' AND c.Value = '17.017.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '0402.9%' AND c.Value = '17.017.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '0402.9%' AND c.Value = '17.024.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '0402.9%' AND c.Value = '17.024.01' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '1517.9%' AND c.Value = '17.032.02' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '2005.9%' AND c.Value = '17.037.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '2008.1%' AND c.Value = '17.038.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '2008.1%' AND c.Value = '17.038.01' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '1902.1%' AND c.Value = '17.054.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '1514.1%' AND c.Value = '17.076.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '0210.1%' AND c.Value = '17.091.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '1701.1%' AND c.Value = '17.103.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '1701.1%' AND c.Value = '17.103.01' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '1701.1%' AND c.Value = '17.103.02' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '1701.1%' AND c.Value = '17.105.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '1701.1%' AND c.Value = '17.105.01' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '1701.1%' AND c.Value = '17.105.02' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '1701.1%' AND c.Value = '17.107.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '1701.1%' AND c.Value = '17.107.01' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '1701.1%' AND c.Value = '17.107.02' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '2101.1%' AND c.Value = '17.111.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '4202.1%' AND c.Value = '19.004.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '4202.9%' AND c.Value = '19.004.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '4202.1%' AND c.Value = '20.040.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '9603.2%' AND c.Value = '20.056.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8421.9%' AND c.Value = '21.014.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8471.4%' AND c.Value = '21.029.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8471.7%' AND c.Value = '21.033.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8504.3%' AND c.Value = '21.036.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8527.1%' AND c.Value = '21.057.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8527.9%' AND c.Value = '21.064.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8528.7%' AND c.Value = '21.067.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8528.7%' AND c.Value = '21.068.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8528.7%' AND c.Value = '21.069.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8528.7%' AND c.Value = '21.070.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8528.7%' AND c.Value = '21.071.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8414.5%' AND c.Value = '21.086.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8415.8%' AND c.Value = '21.090.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8516.2%' AND c.Value = '21.099.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '9030.3%' AND c.Value = '21.119.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '4202.1%' AND c.Value = '28.031.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '402.9%' AND c.Value = '17.025.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '402.9%' AND c.Value = '17.025.01' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '3917%' AND c.Value = '01.002.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '6813%' AND c.Value = '01.014.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '7320%' AND c.Value = '01.020.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '7325%' AND c.Value = '01.021.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '7806%' AND c.Value = '01.022.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8310%' AND c.Value = '01.027.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8482%' AND c.Value = '01.049.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8483%' AND c.Value = '01.050.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8484%' AND c.Value = '01.051.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8511%' AND c.Value = '01.054.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8518%' AND c.Value = '01.057.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8538%' AND c.Value = '01.069.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8707%' AND c.Value = '01.075.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8708%' AND c.Value = '01.076.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '9029%' AND c.Value = '01.081.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '4009%' AND c.Value = '01.088.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '2205%' AND c.Value = '02.001.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '2205%' AND c.Value = '02.005.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '2205%' AND c.Value = '02.009.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '2205%' AND c.Value = '02.017.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '2205%' AND c.Value = '02.023.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '2204%' AND c.Value = '02.024.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '2204%' AND c.Value = '02.025.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '2205%' AND c.Value = '02.025.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '2206%' AND c.Value = '02.025.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '2207%' AND c.Value = '02.025.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '2208%' AND c.Value = '02.025.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '2201%' AND c.Value = '03.001.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '2201%' AND c.Value = '03.002.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '2201%' AND c.Value = '03.003.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '2201%' AND c.Value = '03.004.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '2201%' AND c.Value = '03.005.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '2201%' AND c.Value = '03.006.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '2202%' AND c.Value = '03.006.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '2202%' AND c.Value = '03.007.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '2202%' AND c.Value = '03.008.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '2402%' AND c.Value = '04.001.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '2523%' AND c.Value = '05.001.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '2711%' AND c.Value = '06.008.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '2713%' AND c.Value = '06.009.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '3403%' AND c.Value = '06.011.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '6804%' AND c.Value = '08.003.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8201%' AND c.Value = '08.004.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8202%' AND c.Value = '08.007.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8203%' AND c.Value = '08.008.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8204%' AND c.Value = '08.009.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8205%' AND c.Value = '08.010.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8206%' AND c.Value = '08.011.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8207%' AND c.Value = '08.013.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8208%' AND c.Value = '08.014.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8209%' AND c.Value = '08.016.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8211%' AND c.Value = '08.017.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8213%' AND c.Value = '08.018.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8467%' AND c.Value = '08.019.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '9015%' AND c.Value = '08.020.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8539%' AND c.Value = '09.001.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8540%' AND c.Value = '09.002.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '2522%' AND c.Value = '10.001.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '3910%' AND c.Value = '10.004.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '3916%' AND c.Value = '10.005.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '3917%' AND c.Value = '10.006.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '3918%' AND c.Value = '10.007.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '3919%' AND c.Value = '10.008.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '3919%' AND c.Value = '10.009.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '3920%' AND c.Value = '10.009.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '3921%' AND c.Value = '10.009.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '3921%' AND c.Value = '10.010.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '3921%' AND c.Value = '10.011.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '3921%' AND c.Value = '10.012.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '3922%' AND c.Value = '10.013.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '3924%' AND c.Value = '10.014.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '4814%' AND c.Value = '10.021.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '6811%' AND c.Value = '10.023.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '6811%' AND c.Value = '10.024.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '6902%' AND c.Value = '10.026.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '6904%' AND c.Value = '10.027.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '6905%' AND c.Value = '10.028.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '6907%' AND c.Value = '10.030.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '6908%' AND c.Value = '10.030.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '6907%' AND c.Value = '10.030.01' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '6908%' AND c.Value = '10.030.01' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '6910%' AND c.Value = '10.031.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '7003%' AND c.Value = '10.033.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '7004%' AND c.Value = '10.034.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '7005%' AND c.Value = '10.035.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '7008%' AND c.Value = '10.038.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '7016%' AND c.Value = '10.039.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '7213%' AND c.Value = '10.043.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '7312%' AND c.Value = '10.044.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '7307%' AND c.Value = '10.046.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '7310%' AND c.Value = '10.051.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '7314%' AND c.Value = '10.053.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '7318%' AND c.Value = '10.058.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '7323%' AND c.Value = '10.059.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '7324%' AND c.Value = '10.060.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '7325%' AND c.Value = '10.061.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '7326%' AND c.Value = '10.062.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '7407%' AND c.Value = '10.063.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '7412%' AND c.Value = '10.065.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '7415%' AND c.Value = '10.066.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '7608%' AND c.Value = '10.069.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '7610%' AND c.Value = '10.071.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '7616%' AND c.Value = '10.073.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8301%' AND c.Value = '10.075.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8307%' AND c.Value = '10.077.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8311%' AND c.Value = '10.078.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8481%' AND c.Value = '10.079.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '3402%' AND c.Value = '11.007.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '2207%' AND c.Value = '11.010.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8504%' AND c.Value = '12.001.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8516%' AND c.Value = '12.002.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8535%' AND c.Value = '12.003.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8536%' AND c.Value = '12.004.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8538%' AND c.Value = '12.005.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8544%' AND c.Value = '12.007.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '7605%' AND c.Value = '12.007.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '7614%' AND c.Value = '12.007.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8546%' AND c.Value = '12.008.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8547%' AND c.Value = '12.009.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '3003%' AND c.Value = '13.001.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '3004%' AND c.Value = '13.001.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '3003%' AND c.Value = '13.001.01' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '3004%' AND c.Value = '13.001.01' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '3003%' AND c.Value = '13.001.02' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '3004%' AND c.Value = '13.001.02' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '3003%' AND c.Value = '13.002.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '3004%' AND c.Value = '13.002.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '3003%' AND c.Value = '13.002.01' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '3004%' AND c.Value = '13.002.01' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '3003%' AND c.Value = '13.002.02' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '3004%' AND c.Value = '13.002.02' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '3003%' AND c.Value = '13.003.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '3004%' AND c.Value = '13.003.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '3003%' AND c.Value = '13.003.01' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '3004%' AND c.Value = '13.003.01' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '3003%' AND c.Value = '13.003.02' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '3004%' AND c.Value = '13.003.02' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '3003%' AND c.Value = '13.004.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '3004%' AND c.Value = '13.004.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '3003%' AND c.Value = '13.004.01' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '3004%' AND c.Value = '13.004.01' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '3003%' AND c.Value = '13.004.02' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '3004%' AND c.Value = '13.004.02' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '2936%' AND c.Value = '13.006.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '3002%' AND c.Value = '13.008.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '3005%' AND c.Value = '13.009.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '3919%' AND c.Value = '15.001.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '3920%' AND c.Value = '15.001.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '3921%' AND c.Value = '15.001.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '3924%' AND c.Value = '15.002.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '4011%' AND c.Value = '16.001.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '4011%' AND c.Value = '16.002.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '4011%' AND c.Value = '16.003.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '4011%' AND c.Value = '16.004.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '4013%' AND c.Value = '16.008.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '2009%' AND c.Value = '17.012.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '0403%' AND c.Value = '17.026.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '0406%' AND c.Value = '17.028.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '2002%' AND c.Value = '17.045.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '1902%' AND c.Value = '17.053.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '1508%' AND c.Value = '17.072.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '1509%' AND c.Value = '17.073.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '1509%' AND c.Value = '17.073.01' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '1509%' AND c.Value = '17.073.02' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '1511%' AND c.Value = '17.081.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '1513%' AND c.Value = '17.081.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '1514%' AND c.Value = '17.081.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '1515%' AND c.Value = '17.081.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '1516%' AND c.Value = '17.081.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '1518%' AND c.Value = '17.081.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '1602%' AND c.Value = '17.085.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '1604%' AND c.Value = '17.086.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '1604%' AND c.Value = '17.087.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '1605%' AND c.Value = '17.088.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '1502%' AND c.Value = '17.089.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '0204%' AND c.Value = '17.090.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '1501%' AND c.Value = '17.091.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '0710%' AND c.Value = '17.092.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '0710%' AND c.Value = '17.092.01' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '0811%' AND c.Value = '17.093.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '0811%' AND c.Value = '17.093.01' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '2001%' AND c.Value = '17.094.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '2001%' AND c.Value = '17.094.01' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '2004%' AND c.Value = '17.095.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '2004%' AND c.Value = '17.095.01' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '2005%' AND c.Value = '17.096.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '2005%' AND c.Value = '17.096.01' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '2007%' AND c.Value = '17.098.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '2007%' AND c.Value = '17.098.01' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '2008%' AND c.Value = '17.099.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '2008%' AND c.Value = '17.099.01' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '0901%' AND c.Value = '17.100.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '0901%' AND c.Value = '17.100.01' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '1702%' AND c.Value = '17.109.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '1702%' AND c.Value = '17.109.01' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '1702%' AND c.Value = '17.109.02' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '4809%' AND c.Value = '19.017.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '4816%' AND c.Value = '19.017.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '4817%' AND c.Value = '19.018.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '9608%' AND c.Value = '19.029.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '3301%' AND c.Value = '20.006.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '9615%' AND c.Value = '20.060.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8508%' AND c.Value = '21.040.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8509%' AND c.Value = '21.041.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8518%' AND c.Value = '21.056.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8519%' AND c.Value = '21.057.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8522%' AND c.Value = '21.057.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8510%' AND c.Value = '21.085.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8518%' AND c.Value = '21.102.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8527%' AND c.Value = '21.103.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8540%' AND c.Value = '21.109.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8517%' AND c.Value = '21.110.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8517%' AND c.Value = '21.111.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8529%' AND c.Value = '21.112.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8531%' AND c.Value = '21.113.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8534%' AND c.Value = '21.116.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '9405%' AND c.Value = '21.122.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '2309%' AND c.Value = '22.001.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '2105%' AND c.Value = '23.001.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '1806%' AND c.Value = '23.002.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '1901%' AND c.Value = '23.002.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '2106%' AND c.Value = '23.002.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '3208%' AND c.Value = '24.001.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '3209%' AND c.Value = '24.001.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '3210%' AND c.Value = '24.001.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '2821%' AND c.Value = '24.002.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '3206%' AND c.Value = '24.002.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '8711%' AND c.Value = '26.001.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '7009%' AND c.Value = '27.001.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '7013%' AND c.Value = '27.002.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '9615%' AND c.Value = '28.032.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '403%' AND c.Value = '17.026.01' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '406%' AND c.Value = '17.028.01' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '406%' AND c.Value = '17.029.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '201%' AND c.Value = '17.089.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '202%' AND c.Value = '17.089.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '204%' AND c.Value = '17.089.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '206%' AND c.Value = '17.089.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '203%' AND c.Value = '17.091.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '206%' AND c.Value = '17.091.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '207%' AND c.Value = '17.091.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '209%' AND c.Value = '17.091.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '902%' AND c.Value = '17.101.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '33%' AND c.Value = '28.035.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '34%' AND c.Value = '28.035.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '44%' AND c.Value = '28.036.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '64%' AND c.Value = '28.036.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '65%' AND c.Value = '28.036.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '82%' AND c.Value = '28.036.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '90%' AND c.Value = '28.036.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '96%' AND c.Value = '28.036.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '39%' AND c.Value = '28.037.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '42%' AND c.Value = '28.037.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '48%' AND c.Value = '28.037.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '71%' AND c.Value = '28.037.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '83%' AND c.Value = '28.037.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '90%' AND c.Value = '28.037.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '91%' AND c.Value = '28.037.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '61%' AND c.Value = '28.038.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '62%' AND c.Value = '28.038.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '64%' AND c.Value = '28.038.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '42%' AND c.Value = '28.039.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '52%' AND c.Value = '28.039.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '55%' AND c.Value = '28.039.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '58%' AND c.Value = '28.039.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '63%' AND c.Value = '28.039.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '65%' AND c.Value = '28.039.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '39%' AND c.Value = '28.040.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '40%' AND c.Value = '28.040.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '56%' AND c.Value = '28.040.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '63%' AND c.Value = '28.040.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '66%' AND c.Value = '28.040.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '69%' AND c.Value = '28.040.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '70%' AND c.Value = '28.040.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '73%' AND c.Value = '28.040.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '82%' AND c.Value = '28.040.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '83%' AND c.Value = '28.040.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '84%' AND c.Value = '28.040.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '91%' AND c.Value = '28.040.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '94%' AND c.Value = '28.040.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '96%' AND c.Value = '28.040.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '13%' AND c.Value = '28.041.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '15%' AND c.Value = '28.041.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '23%' AND c.Value = '28.041.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '33%' AND c.Value = '28.042.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '22%' AND c.Value = '28.043.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '27%' AND c.Value = '28.043.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '28%' AND c.Value = '28.043.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '29%' AND c.Value = '28.043.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '33%' AND c.Value = '28.043.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '34%' AND c.Value = '28.043.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '35%' AND c.Value = '28.043.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '38%' AND c.Value = '28.043.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '39%' AND c.Value = '28.043.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '63%' AND c.Value = '28.043.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '68%' AND c.Value = '28.043.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '73%' AND c.Value = '28.043.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '84%' AND c.Value = '28.043.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '85%' AND c.Value = '28.043.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;
INSERT INTO LBR_NCM_CEST SELECT n.LBR_NCM_ID, c.LBR_CEST_ID, 0, 0, 'Y', SYSDATE, 0, SYSDATE, 0 FROM LBR_NCM n, LBR_CEST c WHERE n.Value LIKE '96%' AND c.Value = '28.043.00' AND NOT EXISTS (SELECT '1' FROM LBR_NCM_CEST nc WHERE nc.LBR_NCM_ID=n.LBR_NCM_ID AND nc.LBR_CEST_ID=c.LBR_CEST_ID)
;

SELECT Register_Migration_Script ('162-CEST.sql') FROM DUAL
;

EXIT