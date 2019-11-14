-- 22/10/2019 15h25min3s BRT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1131528,1121485,0,19,1120357,'LBR_MDFeDriver_ID',TO_DATE('2019-10-22 15:25:03','YYYY-MM-DD HH24:MI:SS'),100,'LBRA',10,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','MDFe Driver',0,TO_DATE('2019-10-22 15:25:03','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 22/10/2019 15h25min3s BRT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1131528 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 22/10/2019 15h25min12s BRT
ALTER TABLE LBR_MDFeVehicle ADD LBR_MDFeDriver_ID NUMBER(10) DEFAULT NULL 
;

-- 22/10/2019 15h25min55s BRT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1131528,1128208,0,1120139,TO_DATE('2019-10-22 15:25:54','YYYY-MM-DD HH24:MI:SS'),100,10,'LBRA','Y','Y','Y','N','N','N','N','N','MDFe Driver',TO_DATE('2019-10-22 15:25:54','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 22/10/2019 15h25min55s BRT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1128208 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 22/10/2019 15h26min34s BRT
UPDATE AD_Field SET IsCentrallyMaintained='N', Name='Default Driver', SeqNo=200,Updated=TO_DATE('2019-10-22 15:26:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1128208
;

-- 22/10/2019 15h26min34s BRT
UPDATE AD_Field_Trl SET IsTranslated='N' WHERE AD_Field_ID=1128208
;

-- 22/10/2019 15h26min34s BRT
UPDATE AD_Field_Trl SET Description=NULL,Help=NULL,Name='Default Driver',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Field_ID=1128208
;

-- 22/10/2019 15h26min42s BRT
UPDATE AD_Field_Trl SET IsTranslated='Y',Name='Motorista Padrão',Updated=TO_DATE('2019-10-22 15:26:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1128208 AND AD_Language='pt_BR'
;

-- 22/10/2019 15h28min13s BRT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1131529,1122873,0,10,1120351,'LBR_CSRTHash',TO_DATE('2019-10-22 15:28:13','YYYY-MM-DD HH24:MI:SS'),100,'CSRT Hash is generated using NFe ID and CSRT Code','LBRA',60,'CSRT Hash is generated using NFe ID and CSRT Code','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','CSRT Hash',0,TO_DATE('2019-10-22 15:28:13','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 22/10/2019 15h28min13s BRT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1131529 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 22/10/2019 15h28min16s BRT
ALTER TABLE LBR_MDFe ADD LBR_CSRTHash NVARCHAR2(60) DEFAULT NULL 
;

-- 22/10/2019 15h30min54s BRT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1131530,2901,0,16,1120351,'DateStartPlan',TO_DATE('2019-10-22 15:30:54','YYYY-MM-DD HH24:MI:SS'),100,'Planned Start Date','LBRA',7,'Date when you plan to start','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Start Plan',0,TO_DATE('2019-10-22 15:30:54','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 22/10/2019 15h30min54s BRT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1131530 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 22/10/2019 15h30min56s BRT
ALTER TABLE LBR_MDFe ADD DateStartPlan DATE DEFAULT NULL 
;

-- 22/10/2019 15h32min7s BRT
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,1122886,0,'LBR_GreenChannel',TO_DATE('2019-10-22 15:32:07','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Green Channel','Green Channel',TO_DATE('2019-10-22 15:32:07','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 22/10/2019 15h32min7s BRT
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1122886 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 22/10/2019 15h32min26s BRT
UPDATE AD_Element_Trl SET IsTranslated='Y',Name='Canal Verde',PrintName='Canal Verde',Description='Indicador de participação do Canal Verde',Help='Indicador de participação do Canal Verde',Updated=TO_DATE('2019-10-22 15:32:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1122886 AND AD_Language='pt_BR'
;

-- 22/10/2019 15h32min53s BRT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1131531,1122886,0,17,319,1120351,'LBR_GreenChannel',TO_DATE('2019-10-22 15:32:52','YYYY-MM-DD HH24:MI:SS'),100,'LBRA',1,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Green Channel',0,TO_DATE('2019-10-22 15:32:52','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 22/10/2019 15h32min53s BRT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1131531 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 22/10/2019 15h32min55s BRT
ALTER TABLE LBR_MDFe ADD LBR_GreenChannel CHAR(1) DEFAULT NULL 
;

-- 22/10/2019 15h34min23s BRT
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,1122887,0,'LBR_PostLoading',TO_DATE('2019-10-22 15:34:22','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Post Loading','Post Loading',TO_DATE('2019-10-22 15:34:22','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 22/10/2019 15h34min23s BRT
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1122887 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 22/10/2019 15h34min59s BRT
UPDATE AD_Element_Trl SET IsTranslated='Y',Name='Carreg. Posterior',PrintName='Carreg. Posterior',Description='Indicador de MDF-e com inclusão da E N Carga posterior a emissão por evento de inclusão de DF-e',Help='Indicador de MDF-e com inclusão da E N Carga posterior a emissão por evento de inclusão de DF-e',Updated=TO_DATE('2019-10-22 15:34:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1122887 AND AD_Language='pt_BR'
;

-- 22/10/2019 15h35min17s BRT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1131532,1122887,0,17,319,1120351,'LBR_PostLoading',TO_DATE('2019-10-22 15:35:17','YYYY-MM-DD HH24:MI:SS'),100,'LBRA',1,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Post Loading',0,TO_DATE('2019-10-22 15:35:17','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 22/10/2019 15h35min17s BRT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1131532 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 22/10/2019 15h35min19s BRT
ALTER TABLE LBR_MDFe ADD LBR_PostLoading CHAR(1) DEFAULT NULL 
;

-- 22/10/2019 15h36min33s BRT
INSERT INTO AD_Table (AD_Client_ID,AD_Org_ID,AD_Table_ID,AD_Window_ID,AccessLevel,CopyColumnsFromTable,Created,CreatedBy,EntityType,ImportTable,IsActive,IsCentrallyMaintained,IsChangeLog,IsDeleteable,IsHighVolume,IsSecurityEnabled,IsSystemLanguage,IsView,LoadSeq,Name,ReplicationType,TableName,Updated,UpdatedBy) VALUES (0,0,1120658,1120085,'3','N',TO_DATE('2019-10-22 15:36:32','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','N','Y','Y','N','Y','N','N','N','N',0,'MDFe Insurance','L','LBR_MDFeInsurance',TO_DATE('2019-10-22 15:36:32','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 22/10/2019 15h36min33s BRT
INSERT INTO AD_Table_Trl (AD_Language,AD_Table_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Table_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Table t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Table_ID=1120658 AND NOT EXISTS (SELECT * FROM AD_Table_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Table_ID=t.AD_Table_ID)
;

-- 22/10/2019 15h36min33s BRT
INSERT INTO AD_Sequence (AD_Client_ID,AD_Org_ID,AD_Sequence_ID,Created,CreatedBy,CurrentNext,CurrentNextSys,Description,IncrementNo,IsActive,IsAudited,IsAutoSequence,IsTableID,Name,StartNewYear,StartNo,Updated,UpdatedBy) VALUES (0,0,1153702,TO_DATE('2019-10-22 15:36:33','YYYY-MM-DD HH24:MI:SS'),100,1000000,50000,'Table LBR_MDFeInsurance',1,'Y','N','Y','Y','LBR_MDFeInsurance','N',1000000,TO_DATE('2019-10-22 15:36:33','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 22/10/2019 15h39min0s BRT
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,1122888,0,'LBR_MDFeInsurance_ID',TO_DATE('2019-10-22 15:39:00','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','MDFe Insurance','MDFe Insurance',TO_DATE('2019-10-22 15:39:00','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 22/10/2019 15h39min0s BRT
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1122888 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 22/10/2019 15h39min0s BRT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1131533,1122888,0,13,1120658,'LBR_MDFeInsurance_ID',TO_DATE('2019-10-22 15:39:00','YYYY-MM-DD HH24:MI:SS'),100,'LBRA',10,'Y','N','N','N','Y','Y','N','N','N','N','MDFe Insurance',TO_DATE('2019-10-22 15:39:00','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 22/10/2019 15h39min0s BRT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1131533 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 22/10/2019 15h39min1s BRT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1131534,102,0,19,1120658,'AD_Client_ID',TO_DATE('2019-10-22 15:39:00','YYYY-MM-DD HH24:MI:SS'),100,'Client/Tenant for this installation.','LBRA',10,'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Y','N','N','N','N','Y','N','N','N','N','Client',TO_DATE('2019-10-22 15:39:00','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 22/10/2019 15h39min1s BRT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1131534 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 22/10/2019 15h39min1s BRT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1131535,113,0,19,1120658,'AD_Org_ID',TO_DATE('2019-10-22 15:39:01','YYYY-MM-DD HH24:MI:SS'),100,'Organizational entity within client','LBRA',10,'An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Y','N','N','N','N','Y','N','N','N','N','Organization',TO_DATE('2019-10-22 15:39:01','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 22/10/2019 15h39min1s BRT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1131535 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 22/10/2019 15h39min1s BRT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1131536,245,0,16,1120658,'Created',TO_DATE('2019-10-22 15:39:01','YYYY-MM-DD HH24:MI:SS'),100,'Date this record was created','LBRA',29,'The Created field indicates the date that this record was created.','Y','N','N','N','N','Y','N','N','N','N','Created',TO_DATE('2019-10-22 15:39:01','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 22/10/2019 15h39min1s BRT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1131536 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 22/10/2019 15h39min2s BRT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1131537,246,0,18,110,1120658,'CreatedBy',TO_DATE('2019-10-22 15:39:01','YYYY-MM-DD HH24:MI:SS'),100,'User who created this records','LBRA',10,'The Created By field indicates the user who created this record.','Y','N','N','N','N','Y','N','N','N','N','Created By',TO_DATE('2019-10-22 15:39:01','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 22/10/2019 15h39min2s BRT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1131537 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 22/10/2019 15h39min2s BRT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1131538,348,0,20,1120658,'IsActive',TO_DATE('2019-10-22 15:39:02','YYYY-MM-DD HH24:MI:SS'),100,'The record is active in the system','LBRA',1,'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Y','N','N','N','N','Y','N','N','N','Y','Active',TO_DATE('2019-10-22 15:39:02','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 22/10/2019 15h39min2s BRT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1131538 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 22/10/2019 15h39min2s BRT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1131539,607,0,16,1120658,'Updated',TO_DATE('2019-10-22 15:39:02','YYYY-MM-DD HH24:MI:SS'),100,'Date this record was updated','LBRA',29,'The Updated field indicates the date that this record was updated.','Y','N','N','N','N','Y','N','N','N','N','Updated',TO_DATE('2019-10-22 15:39:02','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 22/10/2019 15h39min2s BRT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1131539 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 22/10/2019 15h39min3s BRT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1131540,608,0,18,110,1120658,'UpdatedBy',TO_DATE('2019-10-22 15:39:02','YYYY-MM-DD HH24:MI:SS'),100,'User who updated this records','LBRA',10,'The Updated By field indicates the user who updated this record.','Y','N','N','N','N','Y','N','N','N','N','Updated By',TO_DATE('2019-10-22 15:39:02','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 22/10/2019 15h39min3s BRT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1131540 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 22/10/2019 15h39min3s BRT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1131541,1121468,0,19,1120658,'LBR_MDFe_ID',TO_DATE('2019-10-22 15:39:03','YYYY-MM-DD HH24:MI:SS'),100,'Manifesto Eletrônico de Documentos Fiscais','LBRA',10,'Y','N','N','N','N','N','N','N','N','Y','MDF-e',TO_DATE('2019-10-22 15:39:03','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 22/10/2019 15h39min3s BRT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1131541 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 22/10/2019 15h41min31s BRT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1131542,187,0,30,1120658,'C_BPartner_ID',TO_DATE('2019-10-22 15:41:31','YYYY-MM-DD HH24:MI:SS'),100,'Identifies a Business Partner','LBRA',10,'A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Business Partner ',0,TO_DATE('2019-10-22 15:41:31','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 22/10/2019 15h41min31s BRT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1131542 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

CREATE TABLE LBR_MDFeInsurance
(
	LBR_MDFeInsurance_ID  	NUMBER (10)	NOT NULL,
	AD_Client_ID      		NUMBER (10)	NOT NULL,
	AD_Org_ID 	     		NUMBER (10)	NOT NULL,
	Created           		DATE		NOT NULL,
	CreatedBy         		NUMBER (10)	NOT NULL,
	IsActive          		CHAR(1) CHECK (IsActive IN ('Y','N')) NOT NULL,
	Updated           		DATE		NOT NULL,
	UpdatedBy         		NUMBER (10)	NOT NULL,
	LBR_MDFe_ID       		NUMBER (10)	NOT NULL,
	CONSTRAINT LBR_MDFeInsurance_Key PRIMARY KEY (LBR_MDFeInsurance_ID)
)
;

-- 22/10/2019 15h41min34s BRT
ALTER TABLE LBR_MDFeInsurance ADD C_BPartner_ID NUMBER(10) DEFAULT NULL 
;

-- 22/10/2019 15h43min6s BRT
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,1122889,0,'LBR_InsuResp',TO_DATE('2019-10-22 15:43:06','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Insurance Resp','Insurance Resp',TO_DATE('2019-10-22 15:43:06','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 22/10/2019 15h43min6s BRT
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1122889 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 22/10/2019 15h43min27s BRT
UPDATE AD_Element_Trl SET IsTranslated='Y',Name='Resp. pelo Seguro',PrintName='Resp. pelo Seguro',Updated=TO_DATE('2019-10-22 15:43:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1122889 AND AD_Language='pt_BR'
;

-- 22/10/2019 15h52min2s BRT
INSERT INTO AD_Reference (AD_Client_ID,AD_Org_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,IsOrderByValue,Name,Updated,UpdatedBy,ValidationType) VALUES (0,0,1120324,TO_DATE('2019-10-22 15:52:02','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','N','LBR_MDFeInsurance - LBR_InsuResp',TO_DATE('2019-10-22 15:52:02','YYYY-MM-DD HH24:MI:SS'),100,'L')
;

-- 22/10/2019 15h52min2s BRT
INSERT INTO AD_Reference_Trl (AD_Language,AD_Reference_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Reference_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Reference t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Reference_ID=1120324 AND NOT EXISTS (SELECT * FROM AD_Reference_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Reference_ID=t.AD_Reference_ID)
;

-- 22/10/2019 15h52min35s BRT
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1122289,1120324,TO_DATE('2019-10-22 15:52:35','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','MDFe Issuer',TO_DATE('2019-10-22 15:52:35','YYYY-MM-DD HH24:MI:SS'),100,'1')
;

-- 22/10/2019 15h52min36s BRT
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1122289 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 22/10/2019 15h52min48s BRT
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Name='Emitente do MDF-e',Updated=TO_DATE('2019-10-22 15:52:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1122289 AND AD_Language='pt_BR'
;

-- 22/10/2019 15h53min47s BRT
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,Description,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1122290,1120324,TO_DATE('2019-10-22 15:53:47','YYYY-MM-DD HH24:MI:SS'),100,'Responsible for hiring transportation service','LBRA','Y','Contractor',TO_DATE('2019-10-22 15:53:47','YYYY-MM-DD HH24:MI:SS'),100,'2')
;

-- 22/10/2019 15h53min47s BRT
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1122290 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 22/10/2019 15h54min0s BRT
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Name='Contratante',Description='Responsável pela contratação do serviço de transporte',Updated=TO_DATE('2019-10-22 15:54:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1122290 AND AD_Language='pt_BR'
;

-- 22/10/2019 15h54min18s BRT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1131543,1122889,0,17,1120324,1120658,'LBR_InsuResp',TO_DATE('2019-10-22 15:54:17','YYYY-MM-DD HH24:MI:SS'),100,'LBRA',1,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Insurance Resp',0,TO_DATE('2019-10-22 15:54:17','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 22/10/2019 15h54min18s BRT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1131543 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 22/10/2019 15h54min22s BRT
ALTER TABLE LBR_MDFeInsurance ADD LBR_InsuResp CHAR(1) DEFAULT NULL 
;

-- 22/10/2019 15h56min54s BRT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1131544,1000008,0,17,1000000,1120658,'lbr_BPTypeBR',TO_DATE('2019-10-22 15:56:53','YYYY-MM-DD HH24:MI:SS'),100,'Brazilian BP Type (Identifies if the BP is a Legal Entity or an Individual)','LBRA',2,'Used to identify if the Business partner is a legal entity or an individual','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Brazilian BP Type',0,TO_DATE('2019-10-22 15:56:53','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 22/10/2019 15h56min54s BRT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1131544 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 22/10/2019 15h56min57s BRT
ALTER TABLE LBR_MDFeInsurance ADD lbr_BPTypeBR NVARCHAR2(2) DEFAULT NULL 
;

-- 22/10/2019 15h57min52s BRT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,VFormat,Version) VALUES (0,1131545,1000009,0,10,1120658,'lbr_CNPJ',TO_DATE('2019-10-22 15:57:52','YYYY-MM-DD HH24:MI:SS'),100,'Used to identify Legal Entities in Brazil','U',18,'Used to identify Legal Entities in Brazil','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','CNPJ',0,TO_DATE('2019-10-22 15:57:52','YYYY-MM-DD HH24:MI:SS'),100,'00.000.000/0000-00',0)
;

-- 22/10/2019 15h57min52s BRT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1131545 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 22/10/2019 15h57min56s BRT
UPDATE AD_Column SET EntityType='LBRA',Updated=TO_DATE('2019-10-22 15:57:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1131545
;

-- 22/10/2019 15h57min57s BRT
ALTER TABLE LBR_MDFeInsurance ADD lbr_CNPJ NVARCHAR2(18) DEFAULT NULL 
;

-- 22/10/2019 15h58min24s BRT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,VFormat,Version) VALUES (0,1131546,1000010,0,10,1120658,'lbr_CPF',TO_DATE('2019-10-22 15:58:24','YYYY-MM-DD HH24:MI:SS'),100,'Used to identify individuals in Brazil','U',14,'Used to identify individuals in Brazil','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','CPF',0,TO_DATE('2019-10-22 15:58:24','YYYY-MM-DD HH24:MI:SS'),100,'000.000.000-00',0)
;

-- 22/10/2019 15h58min24s BRT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1131546 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 22/10/2019 15h58min27s BRT
UPDATE AD_Column SET EntityType='LBRA',Updated=TO_DATE('2019-10-22 15:58:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1131546
;

-- 22/10/2019 15h58min30s BRT
ALTER TABLE LBR_MDFeInsurance ADD lbr_CPF NVARCHAR2(14) DEFAULT NULL 
;

-- 22/10/2019 16h0min35s BRT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1131547,53622,0,10,1120658,'A_Insurance_Co',TO_DATE('2019-10-22 16:00:35','YYYY-MM-DD HH24:MI:SS'),100,'LBRA',30,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Insurance Company',0,TO_DATE('2019-10-22 16:00:35','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 22/10/2019 16h0min35s BRT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1131547 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 22/10/2019 16h0min37s BRT
ALTER TABLE LBR_MDFeInsurance ADD A_Insurance_Co NVARCHAR2(30) DEFAULT NULL 
;

-- 22/10/2019 16h2min27s BRT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1131548,1000187,0,10,1120658,'lbr_BPCNPJ',TO_DATE('2019-10-22 16:02:26','YYYY-MM-DD HH24:MI:SS'),100,'BP CNPJ - Copied from the BP into Brazilan Legal and Tax Books','LBRA',18,'BP CNPJ - Copied from the BP into Brazilan Legal and Tax Books','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','BP CNPJ',0,TO_DATE('2019-10-22 16:02:26','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 22/10/2019 16h2min27s BRT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1131548 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 22/10/2019 16h2min29s BRT
ALTER TABLE LBR_MDFeInsurance ADD lbr_BPCNPJ NVARCHAR2(18) DEFAULT NULL 
;

-- 22/10/2019 16h4min6s BRT
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,1122890,0,'LBR_InsurancePolicy',TO_DATE('2019-10-22 16:04:06','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Insurance Policy','Insurance Policy',TO_DATE('2019-10-22 16:04:06','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 22/10/2019 16h4min6s BRT
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1122890 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 22/10/2019 16h4min15s BRT
UPDATE AD_Element_Trl SET IsTranslated='Y',Name='Apólice de Seguro',PrintName='Apólice de Seguro',Updated=TO_DATE('2019-10-22 16:04:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1122890 AND AD_Language='pt_BR'
;

-- 22/10/2019 16h4min39s BRT
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,1122891,0,'LBR_InsuranceAnnot',TO_DATE('2019-10-22 16:04:39','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Insurance Annotation','Insurance Annotation',TO_DATE('2019-10-22 16:04:39','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 22/10/2019 16h4min39s BRT
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1122891 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 22/10/2019 16h5min9s BRT
UPDATE AD_Element_Trl SET IsTranslated='Y',Name='Averbação',PrintName='Averbação',Description='Número da Averbação separado por ;',Updated=TO_DATE('2019-10-22 16:05:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1122891 AND AD_Language='pt_BR'
;

-- 22/10/2019 16h5min24s BRT
UPDATE AD_Element SET Description='Insurance Annotation number, separated by semicolon ;',Updated=TO_DATE('2019-10-22 16:05:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1122891
;

-- 22/10/2019 16h5min24s BRT
UPDATE AD_Element_Trl SET IsTranslated='N' WHERE AD_Element_ID=1122891
;

-- 22/10/2019 16h5min24s BRT
UPDATE AD_Element_Trl SET Description='Insurance Annotation number, separated by semicolon ;',Help=NULL,Name='Insurance Annotation',PO_Description=NULL,PO_Help=NULL,PO_Name=NULL,PO_PrintName=NULL,PrintName='Insurance Annotation',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Element_ID=1122891
;

-- 22/10/2019 16h5min24s BRT
UPDATE AD_Column SET ColumnName='LBR_InsuranceAnnot', Name='Insurance Annotation', Description='Insurance Annotation number, separated by semicolon ;', Help=NULL WHERE AD_Element_ID=1122891
;

-- 22/10/2019 16h5min24s BRT
UPDATE AD_Process_Para SET ColumnName='LBR_InsuranceAnnot', Name='Insurance Annotation', Description='Insurance Annotation number, separated by semicolon ;', Help=NULL, AD_Element_ID=1122891 WHERE UPPER(ColumnName)='LBR_INSURANCEANNOT' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 22/10/2019 16h5min24s BRT
UPDATE AD_Process_Para SET ColumnName='LBR_InsuranceAnnot', Name='Insurance Annotation', Description='Insurance Annotation number, separated by semicolon ;', Help=NULL WHERE AD_Element_ID=1122891 AND IsCentrallyMaintained='Y'
;

-- 22/10/2019 16h5min24s BRT
UPDATE AD_Field SET Name='Insurance Annotation', Description='Insurance Annotation number, separated by semicolon ;', Help=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=1122891) AND IsCentrallyMaintained='Y'
;

-- 22/10/2019 16h5min35s BRT
UPDATE AD_Element_Trl SET IsTranslated='Y',Description='Número da Averbação separado por ponto-e-vírgula ;',Updated=TO_DATE('2019-10-22 16:05:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1122891 AND AD_Language='pt_BR'
;

-- 22/10/2019 16h5min57s BRT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1131549,1122890,0,10,1120658,'LBR_InsurancePolicy',TO_DATE('2019-10-22 16:05:56','YYYY-MM-DD HH24:MI:SS'),100,'LBRA',20,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Insurance Policy',0,TO_DATE('2019-10-22 16:05:56','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 22/10/2019 16h5min57s BRT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1131549 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 22/10/2019 16h5min59s BRT
ALTER TABLE LBR_MDFeInsurance ADD LBR_InsurancePolicy NVARCHAR2(20) DEFAULT NULL 
;

-- 22/10/2019 16h6min38s BRT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1131550,1122891,0,10,1120658,'LBR_InsuranceAnnot',TO_DATE('2019-10-22 16:06:38','YYYY-MM-DD HH24:MI:SS'),100,'Insurance Annotation number, separated by semicolon ;','LBRA',512,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Insurance Annotation',0,TO_DATE('2019-10-22 16:06:38','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 22/10/2019 16h6min38s BRT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1131550 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 22/10/2019 16h6min40s BRT
ALTER TABLE LBR_MDFeInsurance ADD LBR_InsuranceAnnot NVARCHAR2(512) DEFAULT NULL 
;

-- 22/10/2019 16h7min54s BRT
INSERT INTO AD_Tab (AD_Client_ID,AD_Org_ID,AD_Tab_ID,AD_Table_ID,AD_Window_ID,Created,CreatedBy,DisplayLogic,EntityType,HasTree,ImportFields,IsActive,IsAdvancedTab,IsInfoTab,IsInsertRecord,IsReadOnly,IsSingleRow,IsSortTab,IsTranslationTab,Name,Processing,SeqNo,TabLevel,Updated,UpdatedBy) VALUES (0,0,1120342,1120658,1120085,TO_DATE('2019-10-22 16:07:54','YYYY-MM-DD HH24:MI:SS'),100,'@LBR_ShipmentType@=''1''','LBRA','N','N','Y','N','N','Y','N','Y','N','N','Insurance','N',90,1,TO_DATE('2019-10-22 16:07:54','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 22/10/2019 16h7min54s BRT
INSERT INTO AD_Tab_Trl (AD_Language,AD_Tab_ID, CommitWarning,Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Tab_ID, t.CommitWarning,t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Tab t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Tab_ID=1120342 AND NOT EXISTS (SELECT * FROM AD_Tab_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Tab_ID=t.AD_Tab_ID)
;

-- 22/10/2019 16h7min58s BRT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1131538,1128209,0,1120342,TO_DATE('2019-10-22 16:07:58','YYYY-MM-DD HH24:MI:SS'),100,'The record is active in the system',1,'LBRA','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Y','Y','Y','N','N','N','N','N','Active',TO_DATE('2019-10-22 16:07:58','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 22/10/2019 16h7min58s BRT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1128209 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 22/10/2019 16h7min59s BRT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1131548,1128210,0,1120342,TO_DATE('2019-10-22 16:07:58','YYYY-MM-DD HH24:MI:SS'),100,'BP CNPJ - Copied from the BP into Brazilan Legal and Tax Books',18,'LBRA','BP CNPJ - Copied from the BP into Brazilan Legal and Tax Books','Y','Y','Y','N','N','N','N','N','BP CNPJ',TO_DATE('2019-10-22 16:07:58','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 22/10/2019 16h7min59s BRT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1128210 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 22/10/2019 16h7min59s BRT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1131544,1128211,0,1120342,TO_DATE('2019-10-22 16:07:59','YYYY-MM-DD HH24:MI:SS'),100,'Brazilian BP Type (Identifies if the BP is a Legal Entity or an Individual)',2,'LBRA','Used to identify if the Business partner is a legal entity or an individual','Y','Y','Y','N','N','N','N','N','Brazilian BP Type',TO_DATE('2019-10-22 16:07:59','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 22/10/2019 16h7min59s BRT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1128211 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 22/10/2019 16h7min59s BRT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1131542,1128212,0,1120342,TO_DATE('2019-10-22 16:07:59','YYYY-MM-DD HH24:MI:SS'),100,'Identifies a Business Partner',10,'LBRA','A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson','Y','Y','Y','N','N','N','N','N','Business Partner ',TO_DATE('2019-10-22 16:07:59','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 22/10/2019 16h7min59s BRT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1128212 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 22/10/2019 16h8min0s BRT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1131545,1128213,0,1120342,TO_DATE('2019-10-22 16:07:59','YYYY-MM-DD HH24:MI:SS'),100,'Used to identify Legal Entities in Brazil',18,'LBRA','Used to identify Legal Entities in Brazil','Y','Y','Y','N','N','N','N','N','CNPJ',TO_DATE('2019-10-22 16:07:59','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 22/10/2019 16h8min0s BRT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1128213 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 22/10/2019 16h8min0s BRT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1131546,1128214,0,1120342,TO_DATE('2019-10-22 16:08:00','YYYY-MM-DD HH24:MI:SS'),100,'Used to identify individuals in Brazil',14,'LBRA','Used to identify individuals in Brazil','Y','Y','Y','N','N','N','N','N','CPF',TO_DATE('2019-10-22 16:08:00','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 22/10/2019 16h8min0s BRT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1128214 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 22/10/2019 16h8min0s BRT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1131534,1128215,0,1120342,TO_DATE('2019-10-22 16:08:00','YYYY-MM-DD HH24:MI:SS'),100,'Client/Tenant for this installation.',10,'LBRA','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Y','Y','Y','N','N','N','N','N','Client',TO_DATE('2019-10-22 16:08:00','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 22/10/2019 16h8min0s BRT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1128215 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 22/10/2019 16h8min0s BRT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1131550,1128216,0,1120342,TO_DATE('2019-10-22 16:08:00','YYYY-MM-DD HH24:MI:SS'),100,'Insurance Annotation number, separated by semicolon ;',512,'LBRA','Y','Y','Y','N','N','N','N','N','Insurance Annotation',TO_DATE('2019-10-22 16:08:00','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 22/10/2019 16h8min0s BRT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1128216 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 22/10/2019 16h8min1s BRT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1131547,1128217,0,1120342,TO_DATE('2019-10-22 16:08:00','YYYY-MM-DD HH24:MI:SS'),100,30,'LBRA','Y','Y','Y','N','N','N','N','N','Insurance Company',TO_DATE('2019-10-22 16:08:00','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 22/10/2019 16h8min1s BRT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1128217 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 22/10/2019 16h8min1s BRT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1131549,1128218,0,1120342,TO_DATE('2019-10-22 16:08:01','YYYY-MM-DD HH24:MI:SS'),100,20,'LBRA','Y','Y','Y','N','N','N','N','N','Insurance Policy',TO_DATE('2019-10-22 16:08:01','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 22/10/2019 16h8min1s BRT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1128218 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 22/10/2019 16h8min1s BRT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1131543,1128219,0,1120342,TO_DATE('2019-10-22 16:08:01','YYYY-MM-DD HH24:MI:SS'),100,1,'LBRA','Y','Y','Y','N','N','N','N','N','Insurance Resp',TO_DATE('2019-10-22 16:08:01','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 22/10/2019 16h8min1s BRT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1128219 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 22/10/2019 16h8min2s BRT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1131541,1128220,0,1120342,TO_DATE('2019-10-22 16:08:01','YYYY-MM-DD HH24:MI:SS'),100,'Manifesto Eletrônico de Documentos Fiscais',10,'LBRA','Y','Y','Y','N','N','N','N','N','MDF-e',TO_DATE('2019-10-22 16:08:01','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 22/10/2019 16h8min2s BRT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1128220 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 22/10/2019 16h8min2s BRT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1131533,1128221,0,1120342,TO_DATE('2019-10-22 16:08:02','YYYY-MM-DD HH24:MI:SS'),100,10,'LBRA','Y','Y','N','N','N','N','N','N','MDFe Insurance',TO_DATE('2019-10-22 16:08:02','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 22/10/2019 16h8min2s BRT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1128221 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 22/10/2019 16h8min2s BRT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1131535,1128222,0,1120342,TO_DATE('2019-10-22 16:08:02','YYYY-MM-DD HH24:MI:SS'),100,'Organizational entity within client',10,'LBRA','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Y','Y','Y','N','N','N','N','N','Organization',TO_DATE('2019-10-22 16:08:02','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 22/10/2019 16h8min2s BRT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1128222 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 22/10/2019 16h9min31s BRT
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1128209
;

-- 22/10/2019 16h9min31s BRT
UPDATE AD_Field SET SeqNo=10,IsDisplayed='Y' WHERE AD_Field_ID=1128215
;

-- 22/10/2019 16h9min31s BRT
UPDATE AD_Field SET SeqNo=20,IsDisplayed='Y' WHERE AD_Field_ID=1128222
;

-- 22/10/2019 16h9min31s BRT
UPDATE AD_Field SET SeqNo=30,IsDisplayed='Y' WHERE AD_Field_ID=1128220
;

-- 22/10/2019 16h9min31s BRT
UPDATE AD_Field SET SeqNo=40,IsDisplayed='Y' WHERE AD_Field_ID=1128219
;

-- 22/10/2019 16h9min31s BRT
UPDATE AD_Field SET SeqNo=50,IsDisplayed='Y' WHERE AD_Field_ID=1128212
;

-- 22/10/2019 16h9min31s BRT
UPDATE AD_Field SET SeqNo=60,IsDisplayed='Y' WHERE AD_Field_ID=1128211
;

-- 22/10/2019 16h9min31s BRT
UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y' WHERE AD_Field_ID=1128213
;

-- 22/10/2019 16h9min31s BRT
UPDATE AD_Field SET SeqNo=80,IsDisplayed='Y' WHERE AD_Field_ID=1128214
;

-- 22/10/2019 16h9min31s BRT
UPDATE AD_Field SET SeqNo=90,IsDisplayed='Y' WHERE AD_Field_ID=1128217
;

-- 22/10/2019 16h9min31s BRT
UPDATE AD_Field SET SeqNo=100,IsDisplayed='Y' WHERE AD_Field_ID=1128210
;

-- 22/10/2019 16h9min31s BRT
UPDATE AD_Field SET SeqNo=110,IsDisplayed='Y' WHERE AD_Field_ID=1128218
;

-- 22/10/2019 16h9min31s BRT
UPDATE AD_Field SET SeqNo=120,IsDisplayed='Y' WHERE AD_Field_ID=1128216
;

-- 22/10/2019 16h9min38s BRT
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2019-10-22 16:09:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1128222
;

-- 22/10/2019 16h10min5s BRT
UPDATE AD_Field SET DisplayLength=60,Updated=TO_DATE('2019-10-22 16:10:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1128216
;

-- 22/10/2019 16h10min22s BRT
UPDATE AD_Column SET AD_Reference_ID=14,Updated=TO_DATE('2019-10-22 16:10:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1131550
;

-- 22/10/2019 16h10min42s BRT
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2019-10-22 16:10:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1128218
;

-- 22/10/2019 16h11min2s BRT
UPDATE AD_Field SET DisplayLength=60,Updated=TO_DATE('2019-10-22 16:11:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1128217
;

-- 22/10/2019 16h11min8s BRT
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2019-10-22 16:11:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1128214
;

-- 22/10/2019 16h11min22s BRT
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2019-10-22 16:11:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1128211
;

-- 22/10/2019 16h12min10s BRT
UPDATE AD_Field SET DisplayLogic='@LBR_InsuResp@=2',Updated=TO_DATE('2019-10-22 16:12:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1128212
;

-- 22/10/2019 16h12min12s BRT
UPDATE AD_Field SET DisplayLogic='@LBR_InsuResp@=2',Updated=TO_DATE('2019-10-22 16:12:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1128211
;

-- 22/10/2019 16h12min13s BRT
UPDATE AD_Field SET DisplayLogic='@LBR_InsuResp@=2',Updated=TO_DATE('2019-10-22 16:12:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1128213
;

-- 22/10/2019 16h12min15s BRT
UPDATE AD_Field SET DisplayLogic='@LBR_InsuResp@=2',Updated=TO_DATE('2019-10-22 16:12:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1128214
;

-- 22/10/2019 16h12min17s BRT
UPDATE AD_Field SET DisplayLogic='@LBR_InsuResp@=2',Updated=TO_DATE('2019-10-22 16:12:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1128217
;

-- 22/10/2019 16h12min19s BRT
UPDATE AD_Field SET DisplayLogic='@LBR_InsuResp@=2',Updated=TO_DATE('2019-10-22 16:12:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1128210
;

-- 22/10/2019 16h12min39s BRT
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2019-10-22 16:12:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1128210
;

-- 22/10/2019 16h12min42s BRT
UPDATE AD_Field SET IsSameLine='N',Updated=TO_DATE('2019-10-22 16:12:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1128218
;

-- 22/10/2019 16h12min46s BRT
UPDATE AD_Field SET SeqNo=100,IsDisplayed='Y' WHERE AD_Field_ID=1128218
;

-- 22/10/2019 16h12min46s BRT
UPDATE AD_Field SET SeqNo=110,IsDisplayed='Y' WHERE AD_Field_ID=1128210
;

-- 22/10/2019 16h17min33s BRT
UPDATE AD_Tab SET AD_Column_ID=1131541,Updated=TO_DATE('2019-10-22 16:17:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=1120342
;

-- 22/10/2019 16h17min50s BRT
UPDATE AD_Column SET VFormat='00.000.000/0000-00',Updated=TO_DATE('2019-10-22 16:17:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1131548
;

-- 22/10/2019 16h18min27s BRT
UPDATE AD_Field SET DisplayLogic='@LBR_InsuResp@=2 & @lbr_BPTypeBR@=PJ',Updated=TO_DATE('2019-10-22 16:18:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1128213
;

-- 22/10/2019 16h18min32s BRT
UPDATE AD_Field SET DisplayLogic='@LBR_InsuResp@=2 & @lbr_BPTypeBR@=PF',Updated=TO_DATE('2019-10-22 16:18:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1128214
;

-- 22/10/2019 16h20min24s BRT
UPDATE AD_Tab_Trl SET IsTranslated='Y',Name='Seguro',Updated=TO_DATE('2019-10-22 16:20:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=1120342 AND AD_Language='pt_BR'
;

-- 22/10/2019 16h27min14s BRT
INSERT INTO AD_Process (AD_Client_ID,AD_Org_ID,AD_Process_ID,AccessLevel,Classname,CopyFromProcess,Created,CreatedBy,EntityType,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value) VALUES (0,0,1120237,'3','org.kenos.idempiere.lbr.mdfe.process.PrintFromXML','N',TO_DATE('2019-10-22 16:27:14','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','N','N','Y','N','Print From XML MDFe','Y',0,0,TO_DATE('2019-10-22 16:27:14','YYYY-MM-DD HH24:MI:SS'),100,'PrintFromXML-MDFe')
;

-- 22/10/2019 16h27min14s BRT
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=1120237 AND NOT EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_ID=t.AD_Process_ID)
;

-- 22/10/2019 17h14min42s BRT
ALTER TABLE LBR_MDFeInsurance MODIFY LBR_InsuResp CHAR(1)
;

-- 22/10/2019 17h14min42s BRT
ALTER TABLE LBR_MDFeInsurance MODIFY LBR_InsuResp NOT NULL
;

-- 22/10/2019 18h11min18s BRT
-- 
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1131551,1367,0,12,1120359,'Amount',TO_DATE('2019-10-22 18:11:18','YYYY-MM-DD HH24:MI:SS'),100,'0','Amount in a defined currency','LBRA',10,'The Amount indicates the amount for this document line.','Y','Y','N','N','N','N','N','Y','N','N','N','N','Y','Amount',0,TO_DATE('2019-10-22 18:11:18','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 22/10/2019 18h11min18s BRT
-- 
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1131551 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 22/10/2019 18h11min22s BRT
-- 
ALTER TABLE LBR_MDFeToll ADD Amount NUMBER DEFAULT 0 NOT NULL
;

-- 22/10/2019 18h11min36s BRT
-- 
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1131551,1128223,0,1120136,TO_DATE('2019-10-22 18:11:36','YYYY-MM-DD HH24:MI:SS'),100,'Amount in a defined currency',10,'LBRA','The Amount indicates the amount for this document line.','Y','Y','Y','N','N','N','N','N','Amount',TO_DATE('2019-10-22 18:11:36','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 22/10/2019 18h11min36s BRT
-- 
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1128223 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 22/10/2019 18h11min55s BRT
-- 
UPDATE AD_Field SET IsSameLine='Y', SeqNo=70,Updated=TO_DATE('2019-10-22 18:11:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1128223
;

-- 22/10/2019 18h12min45s BRT
-- 
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1131529,1128224,0,1120130,TO_DATE('2019-10-22 18:12:45','YYYY-MM-DD HH24:MI:SS'),100,'CSRT Hash is generated using NFe ID and CSRT Code',60,'LBRA','CSRT Hash is generated using NFe ID and CSRT Code','Y','Y','Y','N','N','N','N','N','CSRT Hash',TO_DATE('2019-10-22 18:12:45','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 22/10/2019 18h12min45s BRT
-- 
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1128224 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 22/10/2019 18h12min46s BRT
-- 
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1131531,1128225,0,1120130,TO_DATE('2019-10-22 18:12:45','YYYY-MM-DD HH24:MI:SS'),100,1,'LBRA','Y','Y','Y','N','N','N','N','N','Green Channel',TO_DATE('2019-10-22 18:12:45','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 22/10/2019 18h12min46s BRT
-- 
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1128225 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 22/10/2019 18h12min46s BRT
-- 
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1131532,1128226,0,1120130,TO_DATE('2019-10-22 18:12:46','YYYY-MM-DD HH24:MI:SS'),100,1,'LBRA','Y','Y','Y','N','N','N','N','N','Post Loading',TO_DATE('2019-10-22 18:12:46','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 22/10/2019 18h12min46s BRT
-- 
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1128226 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 22/10/2019 18h12min46s BRT
-- 
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1131530,1128227,0,1120130,TO_DATE('2019-10-22 18:12:46','YYYY-MM-DD HH24:MI:SS'),100,'Planned Start Date',7,'LBRA','Date when you plan to start','Y','Y','Y','N','N','N','N','N','Start Plan',TO_DATE('2019-10-22 18:12:46','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 22/10/2019 18h12min46s BRT
-- 
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1128227 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 22/10/2019 18h13min50s BRT
-- 
UPDATE AD_Field SET IsDisplayed='N',Updated=TO_DATE('2019-10-22 18:13:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1128224
;

-- 22/10/2019 18h14min15s BRT
-- 
UPDATE AD_Field SET SeqNo=181,Updated=TO_DATE('2019-10-22 18:14:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1128227
;

-- 22/10/2019 18h14min24s BRT
-- 
UPDATE AD_Field SET IsSameLine='Y', SeqNo=182,Updated=TO_DATE('2019-10-22 18:14:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1128225
;

-- 22/10/2019 18h14min30s BRT
-- 
UPDATE AD_Field SET SeqNo=183,Updated=TO_DATE('2019-10-22 18:14:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1128226
;

-- 23/10/2019 10h51min4s BRT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1131552,1000177,0,30,1120355,1120030,'LBR_NotaFiscal_ID',TO_DATE('2019-10-23 10:51:04','YYYY-MM-DD HH24:MI:SS'),100,'Primary key table LBR_NotaFiscal','LBRA',10,'Primary key table LBR_NotaFiscal','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Nota Fiscal',0,TO_DATE('2019-10-23 10:51:04','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 23/10/2019 10h51min4s BRT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1131552 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 23/10/2019 10h51min10s BRT
ALTER TABLE LBR_MDFeUnloadDoc ADD LBR_NotaFiscal_ID NUMBER(10) DEFAULT NULL 
;

-- 23/10/2019 10h51min41s BRT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1131552,1128228,0,1120134,TO_DATE('2019-10-23 10:51:41','YYYY-MM-DD HH24:MI:SS'),100,'Primary key table LBR_NotaFiscal',10,'LBRA','Primary key table LBR_NotaFiscal','Y','Y','Y','N','N','N','N','N','Nota Fiscal',TO_DATE('2019-10-23 10:51:41','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 23/10/2019 10h51min41s BRT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1128228 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 23/10/2019 10h52min0s BRT
UPDATE AD_Field SET IsSameLine='Y', SeqNo=150,Updated=TO_DATE('2019-10-23 10:52:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1128228
;

-- 23/10/2019 10h55min51s BRT
UPDATE AD_Column SET DefaultValue='PJ',Updated=TO_DATE('2019-10-23 10:55:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1131544
;

-- 23/10/2019 15h18min1s BRT
INSERT INTO AD_Process (AD_Client_ID,AD_Org_ID,AD_Process_ID,AccessLevel,Classname,CopyFromProcess,Created,CreatedBy,Description,EntityType,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value) VALUES (0,0,1120238,'3','org.kenos.idempiere.lbr.mdfe.process.IncludeDocument','N',TO_DATE('2019-10-23 15:18:00','YYYY-MM-DD HH24:MI:SS'),100,'Include Document NFe to an open MDFe','LBRA','Y','N','N','N','N','Include Document','Y',0,0,TO_DATE('2019-10-23 15:18:00','YYYY-MM-DD HH24:MI:SS'),100,'MDFeIncludeDoc')
;

-- 23/10/2019 15h18min1s BRT
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=1120238 AND NOT EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_ID=t.AD_Process_ID)
;

-- 23/10/2019 15h19min5s BRT
UPDATE AD_Process_Trl SET IsTranslated='Y',Name='Incluir Documento',Description='Incluir NF-e ao MDF-e em aberto',Help='Incluir NF-e ao MDF-e em aberto caso o MDF-e tenha sido gerado com a informação que o carregamento será posterior a geração do MDF-e',Updated=TO_DATE('2019-10-23 15:19:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=1120238 AND AD_Language='pt_BR'
;

-- 23/10/2019 15h19min37s BRT
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1000177,0,1120238,1120480,30,1120030,'LBR_NotaFiscal_ID',TO_DATE('2019-10-23 15:19:37','YYYY-MM-DD HH24:MI:SS'),100,'LBRA',0,'Y','Y','N','N','LBR_NotaFiscal_ID',10,TO_DATE('2019-10-23 15:19:37','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 23/10/2019 15h19min37s BRT
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=1120480 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 23/10/2019 15h20min14s BRT
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,209,0,1120238,1120481,19,157,1000003,'C_Region_ID',TO_DATE('2019-10-23 15:20:13','YYYY-MM-DD HH24:MI:SS'),100,'LBRA',0,'Y','Y','N','N','C_Region_ID',20,TO_DATE('2019-10-23 15:20:13','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 23/10/2019 15h20min14s BRT
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=1120481 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 23/10/2019 15h21min0s BRT
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1830,0,1120238,1120482,30,1000034,1000009,'C_City_ID',TO_DATE('2019-10-23 15:21:00','YYYY-MM-DD HH24:MI:SS'),100,'LBRA',0,'Y','Y','N','N','C_City_ID',30,TO_DATE('2019-10-23 15:21:00','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 23/10/2019 15h21min0s BRT
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=1120482 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 23/10/2019 15h21min33s BRT
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,DefaultValue,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,316,0,1120238,1120483,12,'GrandTotal',TO_DATE('2019-10-23 15:21:33','YYYY-MM-DD HH24:MI:SS'),100,'0','LBRA',0,'Y','Y','Y','N','GrandTotal',40,TO_DATE('2019-10-23 15:21:33','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 23/10/2019 15h21min33s BRT
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=1120483 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 23/10/2019 15h22min7s BRT
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1100017,0,1120238,1120484,10,'lbr_NFeID',TO_DATE('2019-10-23 15:22:07','YYYY-MM-DD HH24:MI:SS'),100,'LBRA',0,'Y','Y','N','N','LBR_NFeID',50,TO_DATE('2019-10-23 15:22:07','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 23/10/2019 15h22min7s BRT
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=1120484 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 23/10/2019 16h40min44s BRT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1131553,1100027,0,10,1120355,'lbr_NFeProt',TO_DATE('2019-10-23 16:40:44','YYYY-MM-DD HH24:MI:SS'),100,'LBRA',15,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','NFe Protocol',0,TO_DATE('2019-10-23 16:40:44','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 23/10/2019 16h40min44s BRT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1131553 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 23/10/2019 16h40min47s BRT
ALTER TABLE LBR_MDFeUnloadDoc ADD lbr_NFeProt NVARCHAR2(15) DEFAULT NULL 
;

-- 23/10/2019 16h41min12s BRT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1131554,1297,0,16,1120355,'DateTrx',TO_DATE('2019-10-23 16:41:11','YYYY-MM-DD HH24:MI:SS'),100,'Transaction Date','LBRA',7,'The Transaction Date indicates the date of the transaction.','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Transaction Date',0,TO_DATE('2019-10-23 16:41:11','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 23/10/2019 16h41min12s BRT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1131554 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 23/10/2019 16h41min15s BRT
ALTER TABLE LBR_MDFeUnloadDoc ADD DateTrx DATE DEFAULT NULL 
;

-- 24/10/2019 10h21min55s BRT
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,1122892,0,'LBR_UnloadCity_ID',TO_DATE('2019-10-24 10:21:54','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Unload City','Unload City',TO_DATE('2019-10-24 10:21:54','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 24/10/2019 10h21min55s BRT
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1122892 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 24/10/2019 10h22min15s BRT
UPDATE AD_Element_Trl SET IsTranslated='Y',Name='Cidade Descarreg.',PrintName='Cidade Descarreg.',Description='Cidade de Descarregamento',Updated=TO_DATE('2019-10-24 10:22:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1122892 AND AD_Language='pt_BR'
;

-- 24/10/2019 10h23min46s BRT
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,210,0,1120238,1120486,18,157,1000003,'C_SalesRegion_ID',TO_DATE('2019-10-24 10:23:45','YYYY-MM-DD HH24:MI:SS'),100,'LBRA',0,'Y','Y','N','N','C_SalesRegion_ID',35,TO_DATE('2019-10-24 10:23:45','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 24/10/2019 10h23min46s BRT
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=1120486 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 24/10/2019 10h26min10s BRT
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1122892,0,1120238,1120487,30,1000034,1120102,'LBR_UnloadCity_ID',TO_DATE('2019-10-24 10:26:10','YYYY-MM-DD HH24:MI:SS'),100,'LBRA',0,'Y','Y','N','N','LBR_UnloadCity_ID',36,TO_DATE('2019-10-24 10:26:10','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 24/10/2019 10h26min10s BRT
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=1120487 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 24/10/2019 10h26min19s BRT
UPDATE AD_Process_Para SET AD_Element_ID=1121494, ColumnName='LBR_EndRegion_ID', Name='LBR_EndRegion_ID',Updated=TO_DATE('2019-10-24 10:26:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=1120486
;

-- 24/10/2019 10h26min19s BRT
UPDATE AD_Process_Para_Trl SET IsTranslated='N' WHERE AD_Process_Para_ID=1120486
;

-- 24/10/2019 10h26min19s BRT
UPDATE AD_Process_Para_Trl SET Description=NULL,Help=NULL,Name='LBR_EndRegion_ID',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Process_Para_ID=1120486
;

SELECT Register_Migration_Script ('201910171840_MDFeUpgradeTo300.sql') FROM DUAL
;

