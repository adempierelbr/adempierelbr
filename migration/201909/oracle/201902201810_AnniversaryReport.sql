CREATE OR REPLACE VIEW RV_LBR_Anniversary AS
SELECT e.AD_Client_ID, e.AD_Org_ID, e.Created, e.CreatedBy, e.Updated, e.UpdatedBy, e.IsActive, 
e.Name, e.LBR_AdmissionDate, e.LBR_JobRole_ID, e.LBR_JobTitle_ID, e.LBR_Gender, 
(CASE WHEN EXTRACT(MONTH FROM e.LBR_AdmissionDate)=EXTRACT(MONTH FROM CURRENT_TIMESTAMP) THEN 'Y' ELSE 'N' END) AS LBR_IsThisMonth,
(CASE WHEN EXTRACT(MONTH FROM e.LBR_AdmissionDate)=EXTRACT(MONTH FROM CURRENT_TIMESTAMP) AND
EXTRACT(DAY FROM e.LBR_AdmissionDate) BETWEEN
EXTRACT(DAY FROM TRUNC(CURRENT_TIMESTAMP, 'WEEK')) AND
EXTRACT(DAY FROM TRUNC(CURRENT_TIMESTAMP+'1 WEEK', 'WEEK')-'1 DAY') THEN 'Y' ELSE 'N' END) AS LBR_IsThisWeek
FROM HR_Employee e
;

CREATE OR REPLACE VIEW RV_LBR_Birthday AS
SELECT e.AD_Client_ID, e.AD_Org_ID, e.Created, e.CreatedBy, e.Updated, e.UpdatedBy, e.IsActive, 
e.Name, e.Birthday, e.LBR_JobRole_ID, e.LBR_JobTitle_ID, e.LBR_Gender, 
(CASE WHEN EXTRACT(MONTH FROM e.Birthday)=EXTRACT(MONTH FROM CURRENT_TIMESTAMP) THEN 'Y' ELSE 'N' END) AS LBR_IsThisMonth,
(CASE WHEN EXTRACT(MONTH FROM e.Birthday)=EXTRACT(MONTH FROM CURRENT_TIMESTAMP) AND
EXTRACT(DAY FROM e.Birthday) BETWEEN
EXTRACT(DAY FROM TRUNC(CURRENT_TIMESTAMP, 'WEEK')) AND
EXTRACT(DAY FROM TRUNC(CURRENT_TIMESTAMP+'1 WEEK', 'WEEK')-'1 DAY') THEN 'Y' ELSE 'N' END) AS LBR_IsThisWeek
FROM HR_Employee e
;

-- 20/02/2019 17h18min50s BRT
INSERT INTO AD_Table (AD_Client_ID,AD_Org_ID,AD_Table_ID,AccessLevel,CopyColumnsFromTable,Created,CreatedBy,EntityType,ImportTable,IsActive,IsCentrallyMaintained,IsChangeLog,IsDeleteable,IsHighVolume,IsSecurityEnabled,IsSystemLanguage,IsView,LoadSeq,Name,ReplicationType,TableName,Updated,UpdatedBy) VALUES (0,0,1120650,'3','N',TO_DATE('2019-02-20 17:18:49','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','N','Y','Y','N','N','N','N','N','Y',0,'Birthday','L','RV_LBR_Birthday',TO_DATE('2019-02-20 17:18:49','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 20/02/2019 17h18min50s BRT
INSERT INTO AD_Table_Trl (AD_Language,AD_Table_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Table_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Table t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Table_ID=1120650 AND NOT EXISTS (SELECT * FROM AD_Table_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Table_ID=t.AD_Table_ID)
;

-- 20/02/2019 17h18min50s BRT
INSERT INTO AD_Sequence (AD_Client_ID,AD_Org_ID,AD_Sequence_ID,Created,CreatedBy,CurrentNext,CurrentNextSys,Description,IncrementNo,IsActive,IsAudited,IsAutoSequence,IsTableID,Name,StartNewYear,StartNo,Updated,UpdatedBy) VALUES (0,0,1153697,TO_DATE('2019-02-20 17:18:50','YYYY-MM-DD HH24:MI:SS'),100,1000000,50000,'Table RV_LBR_Birthday',1,'Y','N','Y','Y','RV_LBR_Birthday','N',1000000,TO_DATE('2019-02-20 17:18:50','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 20/02/2019 17h55min57s BRT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1131415,102,0,19,1120650,'AD_Client_ID',TO_DATE('2019-02-20 17:55:57','YYYY-MM-DD HH24:MI:SS'),100,'Client/Tenant for this installation.','LBRA',10,'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Y','N','N','N','N','N','N','N','N','N','Client',TO_DATE('2019-02-20 17:55:57','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 20/02/2019 17h55min57s BRT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1131415 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 20/02/2019 17h55min58s BRT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1131416,113,0,19,1120650,'AD_Org_ID',TO_DATE('2019-02-20 17:55:57','YYYY-MM-DD HH24:MI:SS'),100,'Organizational entity within client','LBRA',10,'An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Y','N','N','N','N','N','N','N','N','N','Organization',TO_DATE('2019-02-20 17:55:57','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 20/02/2019 17h55min58s BRT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1131416 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 20/02/2019 17h55min58s BRT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1131417,245,0,16,1120650,'Created',TO_DATE('2019-02-20 17:55:58','YYYY-MM-DD HH24:MI:SS'),100,'Date this record was created','LBRA',29,'The Created field indicates the date that this record was created.','Y','N','N','N','N','N','N','N','N','N','Created',TO_DATE('2019-02-20 17:55:58','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 20/02/2019 17h55min58s BRT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1131417 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 20/02/2019 17h55min58s BRT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1131418,246,0,18,110,1120650,'CreatedBy',TO_DATE('2019-02-20 17:55:58','YYYY-MM-DD HH24:MI:SS'),100,'User who created this records','LBRA',10,'The Created By field indicates the user who created this record.','Y','N','N','N','N','N','N','N','N','N','Created By',TO_DATE('2019-02-20 17:55:58','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 20/02/2019 17h55min58s BRT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1131418 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 20/02/2019 17h55min59s BRT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1131419,607,0,16,1120650,'Updated',TO_DATE('2019-02-20 17:55:58','YYYY-MM-DD HH24:MI:SS'),100,'Date this record was updated','LBRA',29,'The Updated field indicates the date that this record was updated.','Y','N','N','N','N','N','N','N','N','N','Updated',TO_DATE('2019-02-20 17:55:58','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 20/02/2019 17h55min59s BRT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1131419 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 20/02/2019 17h55min59s BRT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1131420,608,0,18,110,1120650,'UpdatedBy',TO_DATE('2019-02-20 17:55:59','YYYY-MM-DD HH24:MI:SS'),100,'User who updated this records','LBRA',10,'The Updated By field indicates the user who updated this record.','Y','N','N','N','N','N','N','N','N','N','Updated By',TO_DATE('2019-02-20 17:55:59','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 20/02/2019 17h55min59s BRT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1131420 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 20/02/2019 17h55min59s BRT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1131421,348,0,20,1120650,'IsActive',TO_DATE('2019-02-20 17:55:59','YYYY-MM-DD HH24:MI:SS'),100,'The record is active in the system','LBRA',1,'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Y','N','N','N','N','N','N','N','N','N','Active',TO_DATE('2019-02-20 17:55:59','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 20/02/2019 17h55min59s BRT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1131421 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 20/02/2019 17h56min0s BRT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1131422,469,0,10,1120650,'Name',TO_DATE('2019-02-20 17:55:59','YYYY-MM-DD HH24:MI:SS'),100,'Alphanumeric identifier of the entity','LBRA',30,'The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.','Y','N','N','Y','N','N','N','N','N','N','Name',1,TO_DATE('2019-02-20 17:55:59','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 20/02/2019 17h56min0s BRT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1131422 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 20/02/2019 17h56min0s BRT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1131423,1891,0,16,1120650,'Birthday',TO_DATE('2019-02-20 17:56:00','YYYY-MM-DD HH24:MI:SS'),100,'Birthday or Anniversary day','LBRA',29,'Birthday or Anniversary day','Y','N','N','N','N','N','N','N','N','N','Birthday',TO_DATE('2019-02-20 17:56:00','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 20/02/2019 17h56min0s BRT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1131423 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 20/02/2019 17h56min0s BRT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1131424,1122816,0,19,1120650,'LBR_JobRole_ID',TO_DATE('2019-02-20 17:56:00','YYYY-MM-DD HH24:MI:SS'),100,'LBRA',10,'Y','N','N','N','N','N','N','N','N','N','Job Role',TO_DATE('2019-02-20 17:56:00','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 20/02/2019 17h56min0s BRT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1131424 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 20/02/2019 17h56min0s BRT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1131425,1122818,0,19,1120650,'LBR_JobTitle_ID',TO_DATE('2019-02-20 17:56:00','YYYY-MM-DD HH24:MI:SS'),100,'LBRA',10,'Y','N','N','N','N','N','N','N','N','N','Job Title',TO_DATE('2019-02-20 17:56:00','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 20/02/2019 17h56min0s BRT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1131425 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 20/02/2019 17h56min1s BRT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1131426,1122825,0,20,1120650,'LBR_Gender',TO_DATE('2019-02-20 17:56:00','YYYY-MM-DD HH24:MI:SS'),100,'LBRA',1,'Y','N','N','N','N','N','N','N','N','N','Gender',TO_DATE('2019-02-20 17:56:00','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 20/02/2019 17h56min1s BRT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1131426 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 20/02/2019 17h56min1s BRT
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,1122860,0,'lbr_isthismonth',TO_DATE('2019-02-20 17:56:01','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','lbr_isthismonth','lbr_isthismonth',TO_DATE('2019-02-20 17:56:01','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 20/02/2019 17h56min1s BRT
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1122860 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 20/02/2019 17h56min1s BRT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1131427,1122860,0,14,1120650,'lbr_isthismonth',TO_DATE('2019-02-20 17:56:01','YYYY-MM-DD HH24:MI:SS'),100,'LBRA',2147483647,'Y','N','N','N','N','N','N','N','N','N','lbr_isthismonth',TO_DATE('2019-02-20 17:56:01','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 20/02/2019 17h56min1s BRT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1131427 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 20/02/2019 17h56min2s BRT
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,1122861,0,'lbr_isthisweek',TO_DATE('2019-02-20 17:56:01','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','lbr_isthisweek','lbr_isthisweek',TO_DATE('2019-02-20 17:56:01','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 20/02/2019 17h56min2s BRT
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1122861 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 20/02/2019 17h56min2s BRT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1131428,1122861,0,14,1120650,'lbr_isthisweek',TO_DATE('2019-02-20 17:56:01','YYYY-MM-DD HH24:MI:SS'),100,'LBRA',2147483647,'Y','N','N','N','N','N','N','N','N','N','lbr_isthisweek',TO_DATE('2019-02-20 17:56:01','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 20/02/2019 17h56min2s BRT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1131428 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 20/02/2019 17h56min18s BRT
UPDATE AD_Column SET AD_Reference_ID=15, FieldLength=7,Updated=TO_DATE('2019-02-20 17:56:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1131423
;

-- 20/02/2019 17h56min48s BRT
UPDATE AD_Column SET AD_Reference_ID=20, FieldLength=1,Updated=TO_DATE('2019-02-20 17:56:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1131427
;

-- 20/02/2019 17h56min54s BRT
UPDATE AD_Column SET AD_Reference_ID=20, FieldLength=1,Updated=TO_DATE('2019-02-20 17:56:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1131428
;

-- 20/02/2019 17h57min14s BRT
UPDATE AD_Element SET ColumnName='LBR_IsThisWeek', Name='This Week', PrintName='This Week',Updated=TO_DATE('2019-02-20 17:57:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1122861
;

-- 20/02/2019 17h57min14s BRT
UPDATE AD_Element_Trl SET IsTranslated='N' WHERE AD_Element_ID=1122861
;

-- 20/02/2019 17h57min14s BRT
UPDATE AD_Element_Trl SET Description=NULL,Help=NULL,Name='This Week',PO_Description=NULL,PO_Help=NULL,PO_Name=NULL,PO_PrintName=NULL,PrintName='This Week',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Element_ID=1122861
;

-- 20/02/2019 17h57min14s BRT
UPDATE AD_Column SET ColumnName='LBR_IsThisWeek', Name='This Week', Description=NULL, Help=NULL WHERE AD_Element_ID=1122861
;

-- 20/02/2019 17h57min14s BRT
UPDATE AD_Process_Para SET ColumnName='LBR_IsThisWeek', Name='This Week', Description=NULL, Help=NULL, AD_Element_ID=1122861 WHERE UPPER(ColumnName)='LBR_ISTHISWEEK' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 20/02/2019 17h57min14s BRT
UPDATE AD_Process_Para SET ColumnName='LBR_IsThisWeek', Name='This Week', Description=NULL, Help=NULL WHERE AD_Element_ID=1122861 AND IsCentrallyMaintained='Y'
;

-- 20/02/2019 17h57min14s BRT
UPDATE AD_Field SET Name='This Week', Description=NULL, Help=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=1122861) AND IsCentrallyMaintained='Y'
;

-- 20/02/2019 17h57min14s BRT
UPDATE AD_PrintFormatItem pi SET PrintName='This Week', Name='This Week' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=pi.AD_Column_ID AND c.AD_Element_ID=1122861)
;

-- 20/02/2019 17h57min53s BRT
UPDATE AD_Element_Trl SET IsTranslated='Y',Name='Nesta Semana',PrintName='Nesta Semana',Description='Verifica se a data é comemorada nesta semana',Updated=TO_DATE('2019-02-20 17:57:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1122861 AND AD_Language='pt_BR'
;

-- 20/02/2019 17h58min13s BRT
UPDATE AD_Element SET ColumnName='LBR_IsThisMonth', Name='This Month', PrintName='This Month',Updated=TO_DATE('2019-02-20 17:58:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1122860
;

-- 20/02/2019 17h58min13s BRT
UPDATE AD_Element_Trl SET IsTranslated='N' WHERE AD_Element_ID=1122860
;

-- 20/02/2019 17h58min13s BRT
UPDATE AD_Element_Trl SET Description=NULL,Help=NULL,Name='This Month',PO_Description=NULL,PO_Help=NULL,PO_Name=NULL,PO_PrintName=NULL,PrintName='This Month',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Element_ID=1122860
;

-- 20/02/2019 17h58min13s BRT
UPDATE AD_Column SET ColumnName='LBR_IsThisMonth', Name='This Month', Description=NULL, Help=NULL WHERE AD_Element_ID=1122860
;

-- 20/02/2019 17h58min13s BRT
UPDATE AD_Process_Para SET ColumnName='LBR_IsThisMonth', Name='This Month', Description=NULL, Help=NULL, AD_Element_ID=1122860 WHERE UPPER(ColumnName)='LBR_ISTHISMONTH' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 20/02/2019 17h58min13s BRT
UPDATE AD_Process_Para SET ColumnName='LBR_IsThisMonth', Name='This Month', Description=NULL, Help=NULL WHERE AD_Element_ID=1122860 AND IsCentrallyMaintained='Y'
;

-- 20/02/2019 17h58min13s BRT
UPDATE AD_Field SET Name='This Month', Description=NULL, Help=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=1122860) AND IsCentrallyMaintained='Y'
;

-- 20/02/2019 17h58min13s BRT
UPDATE AD_PrintFormatItem pi SET PrintName='This Month', Name='This Month' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=pi.AD_Column_ID AND c.AD_Element_ID=1122860)
;

-- 20/02/2019 17h58min33s BRT
UPDATE AD_Element_Trl SET IsTranslated='Y',Name='Neste Mês',PrintName='Neste Mês',Description='Verifica se a data é comemorada neste mês',Updated=TO_DATE('2019-02-20 17:58:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1122860 AND AD_Language='pt_BR'
;

-- 20/02/2019 17h59min31s BRT
INSERT INTO AD_Table (AD_Client_ID,AD_Org_ID,AD_Table_ID,AccessLevel,CopyColumnsFromTable,Created,CreatedBy,EntityType,ImportTable,IsActive,IsCentrallyMaintained,IsChangeLog,IsDeleteable,IsHighVolume,IsSecurityEnabled,IsSystemLanguage,IsView,LoadSeq,Name,ReplicationType,TableName,Updated,UpdatedBy) VALUES (0,0,1120651,'3','N',TO_DATE('2019-02-20 17:59:31','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','N','Y','Y','N','N','N','N','N','Y',0,'Company Anniversary','L','RV_LBR_Anniversary',TO_DATE('2019-02-20 17:59:31','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 20/02/2019 17h59min31s BRT
INSERT INTO AD_Table_Trl (AD_Language,AD_Table_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Table_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Table t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Table_ID=1120651 AND NOT EXISTS (SELECT * FROM AD_Table_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Table_ID=t.AD_Table_ID)
;

-- 20/02/2019 17h59min31s BRT
INSERT INTO AD_Sequence (AD_Client_ID,AD_Org_ID,AD_Sequence_ID,Created,CreatedBy,CurrentNext,CurrentNextSys,Description,IncrementNo,IsActive,IsAudited,IsAutoSequence,IsTableID,Name,StartNewYear,StartNo,Updated,UpdatedBy) VALUES (0,0,1153698,TO_DATE('2019-02-20 17:59:31','YYYY-MM-DD HH24:MI:SS'),100,1000000,50000,'Table RV_LBR_Anniversary',1,'Y','N','Y','Y','RV_LBR_Anniversary','N',1000000,TO_DATE('2019-02-20 17:59:31','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 20/02/2019 18h0min16s BRT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1131429,102,0,19,1120651,'AD_Client_ID',TO_DATE('2019-02-20 18:00:16','YYYY-MM-DD HH24:MI:SS'),100,'Client/Tenant for this installation.','LBRA',10,'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Y','N','N','N','N','N','N','N','N','N','Client',TO_DATE('2019-02-20 18:00:16','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 20/02/2019 18h0min16s BRT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1131429 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 20/02/2019 18h0min17s BRT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1131430,113,0,19,1120651,'AD_Org_ID',TO_DATE('2019-02-20 18:00:16','YYYY-MM-DD HH24:MI:SS'),100,'Organizational entity within client','LBRA',10,'An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Y','N','N','N','N','N','N','N','N','N','Organization',TO_DATE('2019-02-20 18:00:16','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 20/02/2019 18h0min17s BRT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1131430 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 20/02/2019 18h0min17s BRT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1131431,245,0,16,1120651,'Created',TO_DATE('2019-02-20 18:00:17','YYYY-MM-DD HH24:MI:SS'),100,'Date this record was created','LBRA',29,'The Created field indicates the date that this record was created.','Y','N','N','N','N','N','N','N','N','N','Created',TO_DATE('2019-02-20 18:00:17','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 20/02/2019 18h0min17s BRT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1131431 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 20/02/2019 18h0min17s BRT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1131432,246,0,18,110,1120651,'CreatedBy',TO_DATE('2019-02-20 18:00:17','YYYY-MM-DD HH24:MI:SS'),100,'User who created this records','LBRA',10,'The Created By field indicates the user who created this record.','Y','N','N','N','N','N','N','N','N','N','Created By',TO_DATE('2019-02-20 18:00:17','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 20/02/2019 18h0min17s BRT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1131432 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 20/02/2019 18h0min18s BRT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1131433,607,0,16,1120651,'Updated',TO_DATE('2019-02-20 18:00:17','YYYY-MM-DD HH24:MI:SS'),100,'Date this record was updated','LBRA',29,'The Updated field indicates the date that this record was updated.','Y','N','N','N','N','N','N','N','N','N','Updated',TO_DATE('2019-02-20 18:00:17','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 20/02/2019 18h0min18s BRT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1131433 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 20/02/2019 18h0min18s BRT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1131434,608,0,18,110,1120651,'UpdatedBy',TO_DATE('2019-02-20 18:00:18','YYYY-MM-DD HH24:MI:SS'),100,'User who updated this records','LBRA',10,'The Updated By field indicates the user who updated this record.','Y','N','N','N','N','N','N','N','N','N','Updated By',TO_DATE('2019-02-20 18:00:18','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 20/02/2019 18h0min18s BRT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1131434 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 20/02/2019 18h0min18s BRT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1131435,348,0,20,1120651,'IsActive',TO_DATE('2019-02-20 18:00:18','YYYY-MM-DD HH24:MI:SS'),100,'The record is active in the system','LBRA',1,'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Y','N','N','N','N','N','N','N','N','N','Active',TO_DATE('2019-02-20 18:00:18','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 20/02/2019 18h0min18s BRT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1131435 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 20/02/2019 18h0min18s BRT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1131436,469,0,10,1120651,'Name',TO_DATE('2019-02-20 18:00:18','YYYY-MM-DD HH24:MI:SS'),100,'Alphanumeric identifier of the entity','LBRA',30,'The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.','Y','N','N','Y','N','N','N','N','N','N','Name',1,TO_DATE('2019-02-20 18:00:18','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 20/02/2019 18h0min18s BRT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1131436 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 20/02/2019 18h0min19s BRT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1131437,1122838,0,16,1120651,'LBR_AdmissionDate',TO_DATE('2019-02-20 18:00:18','YYYY-MM-DD HH24:MI:SS'),100,'LBRA',29,'Y','N','N','N','N','N','N','N','N','N','Admission Date',TO_DATE('2019-02-20 18:00:18','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 20/02/2019 18h0min19s BRT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1131437 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 20/02/2019 18h0min19s BRT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1131438,1122816,0,19,1120651,'LBR_JobRole_ID',TO_DATE('2019-02-20 18:00:19','YYYY-MM-DD HH24:MI:SS'),100,'LBRA',10,'Y','N','N','N','N','N','N','N','N','N','Job Role',TO_DATE('2019-02-20 18:00:19','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 20/02/2019 18h0min19s BRT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1131438 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 20/02/2019 18h0min19s BRT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1131439,1122818,0,19,1120651,'LBR_JobTitle_ID',TO_DATE('2019-02-20 18:00:19','YYYY-MM-DD HH24:MI:SS'),100,'LBRA',10,'Y','N','N','N','N','N','N','N','N','N','Job Title',TO_DATE('2019-02-20 18:00:19','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 20/02/2019 18h0min19s BRT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1131439 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 20/02/2019 18h0min20s BRT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1131440,1122825,0,20,1120651,'LBR_Gender',TO_DATE('2019-02-20 18:00:19','YYYY-MM-DD HH24:MI:SS'),100,'LBRA',1,'Y','N','N','N','N','N','N','N','N','N','Gender',TO_DATE('2019-02-20 18:00:19','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 20/02/2019 18h0min20s BRT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1131440 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 20/02/2019 18h0min20s BRT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1131441,1122860,0,14,1120651,'LBR_IsThisMonth',TO_DATE('2019-02-20 18:00:20','YYYY-MM-DD HH24:MI:SS'),100,'LBRA',2147483647,'Y','N','N','N','N','N','N','N','N','N','This Month',TO_DATE('2019-02-20 18:00:20','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 20/02/2019 18h0min20s BRT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1131441 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 20/02/2019 18h0min20s BRT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1131442,1122861,0,14,1120651,'LBR_IsThisWeek',TO_DATE('2019-02-20 18:00:20','YYYY-MM-DD HH24:MI:SS'),100,'LBRA',2147483647,'Y','N','N','N','N','N','N','N','N','N','This Week',TO_DATE('2019-02-20 18:00:20','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 20/02/2019 18h0min20s BRT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1131442 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 20/02/2019 18h0min50s BRT
UPDATE AD_Column SET AD_Reference_ID=20, FieldLength=1,Updated=TO_DATE('2019-02-20 18:00:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1131442
;

-- 20/02/2019 18h0min54s BRT
UPDATE AD_Column SET AD_Reference_ID=20, FieldLength=1,Updated=TO_DATE('2019-02-20 18:00:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1131441
;

-- 20/02/2019 18h1min28s BRT
INSERT INTO AD_ReportView (AD_Client_ID,AD_Org_ID,AD_ReportView_ID,AD_Table_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy) VALUES (0,0,1120042,1120651,TO_DATE('2019-02-20 18:01:27','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','RV_LBR_Anniversary',TO_DATE('2019-02-20 18:01:27','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 20/02/2019 18h1min44s BRT
INSERT INTO AD_ReportView (AD_Client_ID,AD_Org_ID,AD_ReportView_ID,AD_Table_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy) VALUES (0,0,1120043,1120650,TO_DATE('2019-02-20 18:01:44','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','RV_LBR_Birthday',TO_DATE('2019-02-20 18:01:44','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 20/02/2019 18h2min32s BRT
INSERT INTO AD_Process (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_ReportView_ID,AccessLevel,CopyFromProcess,Created,CreatedBy,EntityType,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value) VALUES (0,0,1120231,1120043,'3','N',TO_DATE('2019-02-20 18:02:32','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','N','N','Y','N','Birthday Report','Y',0,0,TO_DATE('2019-02-20 18:02:32','YYYY-MM-DD HH24:MI:SS'),100,'RV_LBR_Birthday')
;

-- 20/02/2019 18h2min32s BRT
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=1120231 AND NOT EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_ID=t.AD_Process_ID)
;

-- 20/02/2019 18h3min21s BRT
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1891,0,1120231,1120461,15,'Birthday',TO_DATE('2019-02-20 18:03:21','YYYY-MM-DD HH24:MI:SS'),100,'LBRA',0,'Y','Y','N','Y','Birthday',10,TO_DATE('2019-02-20 18:03:21','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 20/02/2019 18h3min21s BRT
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=1120461 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 20/02/2019 18h5min0s BRT
INSERT INTO AD_Reference (AD_Client_ID,AD_Org_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,IsOrderByValue,Name,Updated,UpdatedBy,ValidationType) VALUES (0,0,1120321,TO_DATE('2019-02-20 18:05:00','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','N','LBR_YesOnly',TO_DATE('2019-02-20 18:05:00','YYYY-MM-DD HH24:MI:SS'),100,'L')
;

-- 20/02/2019 18h5min0s BRT
INSERT INTO AD_Reference_Trl (AD_Language,AD_Reference_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Reference_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Reference t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Reference_ID=1120321 AND NOT EXISTS (SELECT * FROM AD_Reference_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Reference_ID=t.AD_Reference_ID)
;

-- 20/02/2019 18h5min10s BRT
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1122273,1120321,TO_DATE('2019-02-20 18:05:10','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Yes',TO_DATE('2019-02-20 18:05:10','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;

-- 20/02/2019 18h5min10s BRT
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1122273 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 20/02/2019 18h5min16s BRT
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Name='Sim',Updated=TO_DATE('2019-02-20 18:05:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1122273 AND AD_Language='pt_BR'
;

-- 20/02/2019 18h5min28s BRT
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Reference_Value_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1122860,0,1120231,1120462,17,1120321,'LBR_IsThisMonth',TO_DATE('2019-02-20 18:05:28','YYYY-MM-DD HH24:MI:SS'),100,'LBRA',0,'Y','Y','N','N','This Month',20,TO_DATE('2019-02-20 18:05:28','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 20/02/2019 18h5min28s BRT
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=1120462 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 20/02/2019 18h5min50s BRT
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Reference_Value_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1122861,0,1120231,1120463,17,1120321,'LBR_IsThisWeek',TO_DATE('2019-02-20 18:05:50','YYYY-MM-DD HH24:MI:SS'),100,'LBRA',0,'Y','Y','N','N','This Week',30,TO_DATE('2019-02-20 18:05:50','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 20/02/2019 18h5min50s BRT
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=1120463 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 20/02/2019 18h6min13s BRT
INSERT INTO AD_Process (AD_Client_ID,AD_Org_ID,AD_Process_ID,AD_ReportView_ID,AccessLevel,CopyFromProcess,Created,CreatedBy,EntityType,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value) VALUES (0,0,1120232,1120042,'3','N',TO_DATE('2019-02-20 18:06:13','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','N','N','Y','N','Company Anniversary Report','Y',0,0,TO_DATE('2019-02-20 18:06:13','YYYY-MM-DD HH24:MI:SS'),100,'RV_LBR_Anniversary')
;

-- 20/02/2019 18h6min13s BRT
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=1120232 AND NOT EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_ID=t.AD_Process_ID)
;

-- 20/02/2019 18h6min35s BRT
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1122838,0,1120232,1120464,15,'LBR_AdmissionDate',TO_DATE('2019-02-20 18:06:35','YYYY-MM-DD HH24:MI:SS'),100,'LBRA',0,'Y','Y','N','Y','Admission Date',10,TO_DATE('2019-02-20 18:06:35','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 20/02/2019 18h6min35s BRT
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=1120464 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 20/02/2019 18h7min3s BRT
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Reference_Value_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1122860,0,1120232,1120465,17,1120321,'LBR_IsThisMonth',TO_DATE('2019-02-20 18:07:03','YYYY-MM-DD HH24:MI:SS'),100,'LBRA',0,'Y','Y','N','N','This Month',20,TO_DATE('2019-02-20 18:07:03','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 20/02/2019 18h7min3s BRT
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=1120465 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 20/02/2019 18h7min22s BRT
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Reference_Value_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1122861,0,1120232,1120466,17,1120321,'LBR_IsThisWeek',TO_DATE('2019-02-20 18:07:22','YYYY-MM-DD HH24:MI:SS'),100,'LBRA',0,'Y','Y','N','N','This Week',30,TO_DATE('2019-02-20 18:07:22','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 20/02/2019 18h7min22s BRT
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=1120466 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 20/02/2019 18h8min1s BRT
UPDATE AD_Process_Trl SET IsTranslated='Y',Name='Relatório de Aniversariantes',Updated=TO_DATE('2019-02-20 18:08:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=1120231 AND AD_Language='pt_BR'
;

-- 20/02/2019 18h8min28s BRT
UPDATE AD_Process_Trl SET IsTranslated='Y',Name='Relatório de Aniversário de Empresa',Updated=TO_DATE('2019-02-20 18:08:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=1120232 AND AD_Language='pt_BR'
;

-- 20/02/2019 18h9min47s BRT
INSERT INTO AD_Menu (AD_Client_ID,AD_Menu_ID,AD_Org_ID,AD_Process_ID,Action,Created,CreatedBy,EntityType,IsActive,IsCentrallyMaintained,IsReadOnly,IsSOTrx,IsSummary,Name,Updated,UpdatedBy) VALUES (0,1120346,0,1120231,'R',TO_DATE('2019-02-20 18:09:47','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Y','N','N','N','Birthday Report',TO_DATE('2019-02-20 18:09:47','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 20/02/2019 18h9min47s BRT
INSERT INTO AD_Menu_Trl (AD_Language,AD_Menu_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Menu_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Menu t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Menu_ID=1120346 AND NOT EXISTS (SELECT * FROM AD_Menu_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Menu_ID=t.AD_Menu_ID)
;

-- 20/02/2019 18h9min47s BRT
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo) SELECT t.AD_Client_ID, 0, 'Y', SysDate, 100, SysDate, 100,t.AD_Tree_ID, 1120346, 0, 999 FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=1120346)
;

-- 20/02/2019 18h10min1s BRT
INSERT INTO AD_Menu (AD_Client_ID,AD_Menu_ID,AD_Org_ID,AD_Process_ID,Action,Created,CreatedBy,EntityType,IsActive,IsCentrallyMaintained,IsReadOnly,IsSOTrx,IsSummary,Name,Updated,UpdatedBy) VALUES (0,1120347,0,1120232,'R',TO_DATE('2019-02-20 18:10:01','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Y','N','N','N','Company Anniversary Report',TO_DATE('2019-02-20 18:10:01','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 20/02/2019 18h10min1s BRT
INSERT INTO AD_Menu_Trl (AD_Language,AD_Menu_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Menu_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Menu t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Menu_ID=1120347 AND NOT EXISTS (SELECT * FROM AD_Menu_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Menu_ID=t.AD_Menu_ID)
;

-- 20/02/2019 18h10min1s BRT
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo) SELECT t.AD_Client_ID, 0, 'Y', SysDate, 100, SysDate, 100,t.AD_Tree_ID, 1120347, 0, 999 FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=1120347)
;

-- 20/02/2019 18h10min18s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=53108, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=531
;

-- 20/02/2019 18h10min18s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=53108, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53124
;

-- 20/02/2019 18h10min18s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=53108, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=530
;

-- 20/02/2019 18h10min18s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=53108, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53109
;

-- 20/02/2019 18h10min18s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=53108, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120346
;

-- 20/02/2019 18h10min18s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=53108, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53114
;

-- 20/02/2019 18h10min23s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=53109, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120345
;

-- 20/02/2019 18h10min23s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=53109, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120344
;

-- 20/02/2019 18h10min23s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=53109, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120343
;

-- 20/02/2019 18h10min23s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=53109, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53110
;

-- 20/02/2019 18h10min23s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=53109, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53112
;

-- 20/02/2019 18h10min23s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=53109, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53113
;

-- 20/02/2019 18h10min23s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=53109, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120346
;

-- 20/02/2019 18h10min23s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=53109, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53111
;

-- 20/02/2019 18h10min27s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=53109, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120345
;

-- 20/02/2019 18h10min27s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=53109, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120344
;

-- 20/02/2019 18h10min27s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=53109, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120343
;

-- 20/02/2019 18h10min27s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=53109, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53110
;

-- 20/02/2019 18h10min27s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=53109, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53112
;

-- 20/02/2019 18h10min27s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=53109, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53113
;

-- 20/02/2019 18h10min27s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=53109, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120346
;

-- 20/02/2019 18h10min27s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=53109, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120347
;

-- 20/02/2019 18h10min27s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=53109, SeqNo=8, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53111
;

-- 20/02/2019 18h10min29s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=53109, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120345
;

-- 20/02/2019 18h10min29s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=53109, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120344
;

-- 20/02/2019 18h10min29s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=53109, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120343
;

-- 20/02/2019 18h10min29s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=53109, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53110
;

-- 20/02/2019 18h10min29s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=53109, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53112
;

-- 20/02/2019 18h10min29s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=53109, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53113
;

-- 20/02/2019 18h10min29s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=53109, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53111
;

-- 20/02/2019 18h10min29s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=53109, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120346
;

-- 20/02/2019 18h10min29s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=53109, SeqNo=8, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120347
;

-- 20/02/2019 18h10min29s BRT
UPDATE AD_TreeNodeMM SET Parent_ID=53109, SeqNo=9, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=53111
;

SELECT Register_Migration_Script ('201902201810_AnniversaryReport.sql') FROM DUAL
;