-- 17/12/2015 14h54min16s BRST
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1128660,1122099,0,17,1120235,1106001,'LBR_IndIEDest',TO_DATE('2015-12-17 14:54:13','YYYY-MM-DD HH24:MI:SS'),100,'Indicador da IE do Destinatário','LBRA',1,'Indicador da IE do Destinatário','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Indicador da IE',0,TO_DATE('2015-12-17 14:54:13','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 17/12/2015 14h54min16s BRST
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1128660 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 17/12/2015 14h54min18s BRST
ALTER TABLE LBR_TaxDefinition ADD LBR_IndIEDest CHAR(1) DEFAULT NULL 
;

-- 17/12/2015 14h54min39s BRST
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1128661,1474,0,20,1106001,'IsManual',TO_DATE('2015-12-17 14:54:38','YYYY-MM-DD HH24:MI:SS'),100,'N','This is a manual process','LBRA',1,'The Manual check box indicates if the process will done manually.','Y','Y','N','N','N','N','N','Y','N','N','N','N','Y','Manual',0,TO_DATE('2015-12-17 14:54:38','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 17/12/2015 14h54min39s BRST
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1128661 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 17/12/2015 14h54min40s BRST
ALTER TABLE LBR_TaxDefinition ADD IsManual CHAR(1) DEFAULT 'N' CHECK (IsManual IN ('Y','N')) NOT NULL
;

-- 17/12/2015 14h59min59s BRST
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1128662,618,0,15,1106001,'ValidTo',TO_DATE('2015-12-17 14:59:57','YYYY-MM-DD HH24:MI:SS'),100,'Valid to including this date (last day)','LBRA',7,'The Valid To date indicates the last day of a date range','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Valid to',0,TO_DATE('2015-12-17 14:59:57','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 17/12/2015 14h59min59s BRST
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1128662 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 17/12/2015 15h0min1s BRST
ALTER TABLE LBR_TaxDefinition ADD ValidTo DATE DEFAULT NULL 
;

-- 17/12/2015 16h3min15s BRST
INSERT INTO AD_Reference (AD_Client_ID,AD_Org_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,IsOrderByValue,Name,Updated,UpdatedBy,ValidationType) VALUES (0,0,1120244,TO_DATE('2015-12-17 16:03:14','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','N','BR Regions',TO_DATE('2015-12-17 16:03:14','YYYY-MM-DD HH24:MI:SS'),100,'L')
;

-- 17/12/2015 16h3min15s BRST
INSERT INTO AD_Reference_Trl (AD_Language,AD_Reference_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Reference_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Reference t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Reference_ID=1120244 AND NOT EXISTS (SELECT * FROM AD_Reference_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Reference_ID=t.AD_Reference_ID)
;

-- 17/12/2015 16h5min39s BRST
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121757,1120244,TO_DATE('2015-12-17 16:05:37','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Sul',TO_DATE('2015-12-17 16:05:37','YYYY-MM-DD HH24:MI:SS'),100,'0')
;

-- 17/12/2015 16h5min39s BRST
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121757 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 17/12/2015 16h5min51s BRST
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121758,1120244,TO_DATE('2015-12-17 16:05:50','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Sudeste',TO_DATE('2015-12-17 16:05:50','YYYY-MM-DD HH24:MI:SS'),100,'1')
;

-- 17/12/2015 16h5min51s BRST
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121758 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 17/12/2015 16h5min59s BRST
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121759,1120244,TO_DATE('2015-12-17 16:05:58','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Norte',TO_DATE('2015-12-17 16:05:58','YYYY-MM-DD HH24:MI:SS'),100,'2')
;

-- 17/12/2015 16h5min59s BRST
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121759 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 17/12/2015 16h6min9s BRST
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121760,1120244,TO_DATE('2015-12-17 16:06:08','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Nordeste',TO_DATE('2015-12-17 16:06:08','YYYY-MM-DD HH24:MI:SS'),100,'3')
;

-- 17/12/2015 16h6min9s BRST
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121760 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 17/12/2015 16h6min16s BRST
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121761,1120244,TO_DATE('2015-12-17 16:06:16','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Centro-Oeste',TO_DATE('2015-12-17 16:06:16','YYYY-MM-DD HH24:MI:SS'),100,'4')
;

-- 17/12/2015 16h6min16s BRST
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121761 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 17/12/2015 16h6min30s BRST
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121762,1120244,TO_DATE('2015-12-17 16:06:29','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Sul e Sudeste',TO_DATE('2015-12-17 16:06:29','YYYY-MM-DD HH24:MI:SS'),100,'5')
;

-- 17/12/2015 16h6min30s BRST
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121762 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 17/12/2015 16h6min38s BRST
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121763,1120244,TO_DATE('2015-12-17 16:06:37','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Norte, Nordeste e Centro-Oeste',TO_DATE('2015-12-17 16:06:37','YYYY-MM-DD HH24:MI:SS'),100,'6')
;

-- 17/12/2015 16h6min38s BRST
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121763 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 17/12/2015 16h6min49s BRST
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121764,1120244,TO_DATE('2015-12-17 16:06:48','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Sul e Sudeste, exceto ES',TO_DATE('2015-12-17 16:06:48','YYYY-MM-DD HH24:MI:SS'),100,'7')
;

-- 17/12/2015 16h6min49s BRST
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121764 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 17/12/2015 16h6min59s BRST
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121765,1120244,TO_DATE('2015-12-17 16:06:58','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Norte, Nordeste, Centro-Oeste e ES',TO_DATE('2015-12-17 16:06:58','YYYY-MM-DD HH24:MI:SS'),100,'8')
;

-- 17/12/2015 16h6min59s BRST
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121765 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 17/12/2015 16h8min41s BRST
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,1122215,0,'LBR_RegionFrom',TO_DATE('2015-12-17 16:08:40','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Region From','Region From',TO_DATE('2015-12-17 16:08:40','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 17/12/2015 16h8min41s BRST
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1122215 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 17/12/2015 16h8min57s BRST
UPDATE AD_Element_Trl SET IsTranslated='Y',Name='Da Região',PrintName='Da Região',Updated=TO_DATE('2015-12-17 16:08:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1122215 AND AD_Language='pt_BR'
;

-- 17/12/2015 16h9min14s BRST
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,1122216,0,'LBR_RegionTo',TO_DATE('2015-12-17 16:09:12','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Region To','Region To',TO_DATE('2015-12-17 16:09:12','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 17/12/2015 16h9min14s BRST
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1122216 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 17/12/2015 16h9min23s BRST
UPDATE AD_Element_Trl SET IsTranslated='Y',Name='Para Região',PrintName='Para Região',Updated=TO_DATE('2015-12-17 16:09:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1122216 AND AD_Language='pt_BR'
;

-- 17/12/2015 16h9min47s BRST
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1128681,1122215,0,17,1120244,1106001,'LBR_RegionFrom',TO_DATE('2015-12-17 16:09:45','YYYY-MM-DD HH24:MI:SS'),100,'LBRA',1,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Region From',0,TO_DATE('2015-12-17 16:09:45','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 17/12/2015 16h9min47s BRST
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1128681 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 17/12/2015 16h9min49s BRST
ALTER TABLE LBR_TaxDefinition ADD LBR_RegionFrom CHAR(1) DEFAULT NULL 
;

-- 17/12/2015 16h9min57s BRST
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1128682,1122216,0,17,1120244,1106001,'LBR_RegionTo',TO_DATE('2015-12-17 16:09:56','YYYY-MM-DD HH24:MI:SS'),100,'LBRA',1,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Region To',0,TO_DATE('2015-12-17 16:09:56','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 17/12/2015 16h9min57s BRST
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1128682 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 17/12/2015 16h9min59s BRST
ALTER TABLE LBR_TaxDefinition ADD LBR_RegionTo CHAR(1) DEFAULT NULL 
;

-- 17/12/2015 16h13min22s BRST
UPDATE AD_Tab SET IsActive='N',Updated=TO_DATE('2015-12-17 16:13:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=1000012
;

-- 17/12/2015 16h13min23s BRST
UPDATE AD_Tab SET IsActive='N',Updated=TO_DATE('2015-12-17 16:13:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=1000013
;

-- 17/12/2015 16h13min24s BRST
UPDATE AD_Tab SET IsActive='N',Updated=TO_DATE('2015-12-17 16:13:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=1000014
;

-- 17/12/2015 16h13min24s BRST
UPDATE AD_Tab SET IsActive='N',Updated=TO_DATE('2015-12-17 16:13:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=1000017
;

-- 17/12/2015 16h13min25s BRST
UPDATE AD_Tab SET IsActive='N',Updated=TO_DATE('2015-12-17 16:13:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=1000015
;

-- 17/12/2015 16h13min26s BRST
UPDATE AD_Tab SET IsActive='N',Updated=TO_DATE('2015-12-17 16:13:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=1000016
;

-- 17/12/2015 16h13min33s BRST
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1128660,1125665,0,1106002,TO_DATE('2015-12-17 16:13:31','YYYY-MM-DD HH24:MI:SS'),100,'Indicador da IE do Destinatário',1,'LBRA','Indicador da IE do Destinatário','Y','Y','Y','N','N','N','N','N','Indicador da IE',TO_DATE('2015-12-17 16:13:31','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 17/12/2015 16h13min33s BRST
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1125665 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 17/12/2015 16h13min33s BRST
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1128661,1125666,0,1106002,TO_DATE('2015-12-17 16:13:33','YYYY-MM-DD HH24:MI:SS'),100,'This is a manual process',1,'LBRA','The Manual check box indicates if the process will done manually.','Y','Y','Y','N','N','N','N','N','Manual',TO_DATE('2015-12-17 16:13:33','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 17/12/2015 16h13min33s BRST
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1125666 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 17/12/2015 16h13min34s BRST
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1128681,1125667,0,1106002,TO_DATE('2015-12-17 16:13:33','YYYY-MM-DD HH24:MI:SS'),100,1,'LBRA','Y','Y','Y','N','N','N','N','N','Region From',TO_DATE('2015-12-17 16:13:33','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 17/12/2015 16h13min34s BRST
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1125667 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 17/12/2015 16h13min34s BRST
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1128682,1125668,0,1106002,TO_DATE('2015-12-17 16:13:34','YYYY-MM-DD HH24:MI:SS'),100,1,'LBRA','Y','Y','Y','N','N','N','N','N','Region To',TO_DATE('2015-12-17 16:13:34','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 17/12/2015 16h13min34s BRST
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1125668 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 17/12/2015 16h13min35s BRST
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1128662,1125669,0,1106002,TO_DATE('2015-12-17 16:13:34','YYYY-MM-DD HH24:MI:SS'),100,'Valid to including this date (last day)',7,'LBRA','The Valid To date indicates the last day of a date range','Y','Y','Y','N','N','N','N','N','Valid to',TO_DATE('2015-12-17 16:13:34','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 17/12/2015 16h13min35s BRST
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1125669 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 17/12/2015 16h14min36s BRST
UPDATE AD_Field SET SeqNo=40,IsDisplayed='Y' WHERE AD_Field_ID=1125669
;

-- 17/12/2015 16h14min36s BRST
UPDATE AD_Field SET SeqNo=50,IsDisplayed='Y' WHERE AD_Field_ID=1125666
;

-- 17/12/2015 16h14min36s BRST
UPDATE AD_Field SET SeqNo=60,IsDisplayed='Y' WHERE AD_Field_ID=1106051
;

-- 17/12/2015 16h14min36s BRST
UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y' WHERE AD_Field_ID=1106030
;

-- 17/12/2015 16h14min36s BRST
UPDATE AD_Field SET SeqNo=80,IsDisplayed='Y' WHERE AD_Field_ID=1106056
;

-- 17/12/2015 16h14min36s BRST
UPDATE AD_Field SET SeqNo=90,IsDisplayed='Y' WHERE AD_Field_ID=1106035
;

-- 17/12/2015 16h14min36s BRST
UPDATE AD_Field SET SeqNo=100,IsDisplayed='Y' WHERE AD_Field_ID=1106033
;

-- 17/12/2015 16h14min36s BRST
UPDATE AD_Field SET SeqNo=110,IsDisplayed='Y' WHERE AD_Field_ID=1106031
;

-- 17/12/2015 16h14min36s BRST
UPDATE AD_Field SET SeqNo=120,IsDisplayed='Y' WHERE AD_Field_ID=1106045
;

-- 17/12/2015 16h14min36s BRST
UPDATE AD_Field SET SeqNo=130,IsDisplayed='Y' WHERE AD_Field_ID=1106048
;

-- 17/12/2015 16h14min36s BRST
UPDATE AD_Field SET SeqNo=140,IsDisplayed='Y' WHERE AD_Field_ID=1125667
;

-- 17/12/2015 16h14min36s BRST
UPDATE AD_Field SET SeqNo=150,IsDisplayed='Y' WHERE AD_Field_ID=1125668
;

-- 17/12/2015 16h14min36s BRST
UPDATE AD_Field SET SeqNo=160,IsDisplayed='Y' WHERE AD_Field_ID=1125665
;

-- 17/12/2015 16h14min36s BRST
UPDATE AD_Field SET SeqNo=170,IsDisplayed='Y' WHERE AD_Field_ID=1106043
;

-- 17/12/2015 16h14min36s BRST
UPDATE AD_Field SET SeqNo=180,IsDisplayed='Y' WHERE AD_Field_ID=1106044
;

-- 17/12/2015 16h14min36s BRST
UPDATE AD_Field SET SeqNo=190,IsDisplayed='Y' WHERE AD_Field_ID=1106038
;

-- 17/12/2015 16h14min36s BRST
UPDATE AD_Field SET SeqNo=200,IsDisplayed='Y' WHERE AD_Field_ID=1106037
;

-- 17/12/2015 16h14min36s BRST
UPDATE AD_Field SET SeqNo=210,IsDisplayed='Y' WHERE AD_Field_ID=1106041
;

-- 17/12/2015 16h14min36s BRST
UPDATE AD_Field SET SeqNo=220,IsDisplayed='Y' WHERE AD_Field_ID=1106039
;

-- 17/12/2015 16h14min36s BRST
UPDATE AD_Field SET SeqNo=230,IsDisplayed='Y' WHERE AD_Field_ID=58883
;

-- 17/12/2015 16h14min36s BRST
UPDATE AD_Field SET SeqNo=240,IsDisplayed='Y' WHERE AD_Field_ID=1106036
;

-- 17/12/2015 16h14min36s BRST
UPDATE AD_Field SET SeqNo=250,IsDisplayed='Y' WHERE AD_Field_ID=1106049
;

-- 17/12/2015 16h14min36s BRST
UPDATE AD_Field SET SeqNo=260,IsDisplayed='Y' WHERE AD_Field_ID=1106032
;

-- 17/12/2015 16h14min36s BRST
UPDATE AD_Field SET SeqNo=270,IsDisplayed='Y' WHERE AD_Field_ID=1106040
;

-- 17/12/2015 16h14min36s BRST
UPDATE AD_Field SET SeqNo=280,IsDisplayed='Y' WHERE AD_Field_ID=1106047
;

-- 17/12/2015 16h14min36s BRST
UPDATE AD_Field SET SeqNo=290,IsDisplayed='Y' WHERE AD_Field_ID=1106055
;

-- 17/12/2015 16h14min41s BRST
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2015-12-17 16:14:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125669
;

-- 17/12/2015 16h14min49s BRST
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2015-12-17 16:14:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125668
;

-- 17/12/2015 16h15min43s BRST
DELETE  FROM  AD_Field_Trl WHERE AD_Field_ID=1106055
;

-- 17/12/2015 16h15min43s BRST
DELETE FROM AD_Field WHERE AD_Field_ID=1106055
;

-- 17/12/2015 16h15min45s BRST
DELETE  FROM  AD_Field_Trl WHERE AD_Field_ID=1106047
;

-- 17/12/2015 16h15min45s BRST
DELETE FROM AD_Field WHERE AD_Field_ID=1106047
;

-- 17/12/2015 16h15min47s BRST
DELETE  FROM  AD_Field_Trl WHERE AD_Field_ID=1106040
;

-- 17/12/2015 16h15min47s BRST
DELETE FROM AD_Field WHERE AD_Field_ID=1106040
;

-- 17/12/2015 16h15min58s BRST
UPDATE AD_Column SET IsActive='N',Updated=TO_DATE('2015-12-17 16:15:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1106048
;

-- 17/12/2015 16h16min4s BRST
UPDATE AD_Column SET IsActive='N',Updated=TO_DATE('2015-12-17 16:16:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1106041
;

-- 17/12/2015 16h16min11s BRST
UPDATE AD_Column SET IsActive='N',Updated=TO_DATE('2015-12-17 16:16:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1106042
;

-- 17/12/2015 16h17min17s BRST
UPDATE AD_Field SET IsReadOnly='N',Updated=TO_DATE('2015-12-17 16:17:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1106051
;

-- 17/12/2015 16h18min41s BRST
UPDATE AD_Column SET ReadOnlyLogic='@IsManual@!Y',Updated=TO_DATE('2015-12-17 16:18:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1106044
;

-- 17/12/2015 16h25min56s BRST
UPDATE AD_Column SET DefaultValue='@#Date@',Updated=TO_DATE('2015-12-17 16:25:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1106043
;

-- 17/12/2015 16h26min27s BRST
UPDATE AD_Column SET DefaultValue=NULL,Updated=TO_DATE('2015-12-17 16:26:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=59231
;

-- 17/12/2015 16h26min30s BRST
ALTER TABLE LBR_TaxDefinition MODIFY lbr_ProductSource CHAR(1) DEFAULT NULL 
;

-- 17/12/2015 17h57min44s BRST
UPDATE AD_Reference SET IsOrderByValue='Y',Updated=TO_DATE('2015-12-17 17:57:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=1120244
;

-- 17/12/2015 18h59min22s BRST
UPDATE AD_Field SET IsMandatory='Y',Updated=TO_DATE('2015-12-17 18:59:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1106032
;

-- 17/12/2015 19h3min34s BRST
UPDATE AD_Field SET SeqNo=170,IsDisplayed='Y' WHERE AD_Field_ID=1106037
;

-- 17/12/2015 19h3min34s BRST
UPDATE AD_Field SET SeqNo=180,IsDisplayed='Y' WHERE AD_Field_ID=1106043
;

-- 17/12/2015 19h3min34s BRST
UPDATE AD_Field SET SeqNo=190,IsDisplayed='Y' WHERE AD_Field_ID=1106044
;

-- 17/12/2015 19h3min34s BRST
UPDATE AD_Field SET SeqNo=200,IsDisplayed='Y' WHERE AD_Field_ID=1106038
;

-- 17/12/2015 19h3min34s BRST
UPDATE AD_Field SET SeqNo=210,IsDisplayed='Y' WHERE AD_Field_ID=58883
;

-- 17/12/2015 19h3min34s BRST
UPDATE AD_Field SET SeqNo=220,IsDisplayed='Y' WHERE AD_Field_ID=1106041
;

-- 17/12/2015 19h3min34s BRST
UPDATE AD_Field SET SeqNo=230,IsDisplayed='Y' WHERE AD_Field_ID=1106039
;

-- 17/12/2015 19h3min45s BRST
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2015-12-17 19:03:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=58883
;

-- 17/12/2015 19h7min21s BRST
UPDATE AD_Column SET IsIdentifier='N', IsUpdateable='N',Updated=TO_DATE('2015-12-17 19:07:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000288
;

-- 17/12/2015 19h7min30s BRST
UPDATE AD_Column SET IsIdentifier='Y',Updated=TO_DATE('2015-12-17 19:07:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000296
;

-- 17/12/2015 19h7min30s BRST
SELECT Register_Migration_Script ('163-EnhancementTaxDefinition.sql') FROM DUAL
;

EXIT