-- 26/10/2015 16h49min18s BRST
DELETE FROM LBR_IBPTax
;

-- 26/10/2015 16h49min18s BRST
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,1121797,0,'LBR_TaxRateRegion',TO_DATE('2015-10-26 16:49:17','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Tax Rate Region','Tax Rate Region',TO_DATE('2015-10-26 16:49:17','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 26/10/2015 16h49min18s BRST
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1121797 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 26/10/2015 16h49min54s BRST
UPDATE AD_Element_Trl SET IsTranslated='Y',Name='Alíquota Estadual',PrintName='Alíquota Estadual',Description='Alíquota de Imposto Estadual',Help='Alíquota de Imposto Estadual',Updated=TO_DATE('2015-10-26 16:49:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1121797 AND AD_Language='pt_BR'
;

-- 26/10/2015 16h50min49s BRST
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,1121798,0,'LBR_TaxRateCity',TO_DATE('2015-10-26 16:50:47','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Tax Rate City','Tax Rate City',TO_DATE('2015-10-26 16:50:47','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 26/10/2015 16h50min49s BRST
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1121798 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 26/10/2015 16h51min9s BRST
UPDATE AD_Element_Trl SET IsTranslated='Y',Name='Alíquota Municipal',PrintName='Alíquota Municipal',Description='Alíquota de Imposto Municipal',Updated=TO_DATE('2015-10-26 16:51:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1121798 AND AD_Language='pt_BR'
;

-- 26/10/2015 16h51min30s BRST
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1126813,617,0,15,1120342,'ValidFrom',TO_DATE('2015-10-26 16:51:29','YYYY-MM-DD HH24:MI:SS'),100,'Valid from including this date (first day)','U',7,'The Valid From date indicates the first day of a date range','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Valid from',0,TO_DATE('2015-10-26 16:51:29','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 26/10/2015 16h51min30s BRST
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1126813 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 26/10/2015 16h51min40s BRST
UPDATE AD_Column SET EntityType='LBRA',Updated=TO_DATE('2015-10-26 16:51:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1126813
;

-- 26/10/2015 16h51min42s BRST
ALTER TABLE LBR_IBPTax ADD ValidFrom DATE DEFAULT NULL 
;

-- 26/10/2015 16h51min58s BRST
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1126814,618,0,15,1120342,'ValidTo',TO_DATE('2015-10-26 16:51:57','YYYY-MM-DD HH24:MI:SS'),100,'Valid to including this date (last day)','LBRA',7,'The Valid To date indicates the last day of a date range','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Valid to',0,TO_DATE('2015-10-26 16:51:57','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 26/10/2015 16h51min58s BRST
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1126814 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 26/10/2015 16h51min59s BRST
ALTER TABLE LBR_IBPTax ADD ValidTo DATE DEFAULT NULL 
;

-- 26/10/2015 16h53min2s BRST
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1126815,620,0,10,1120342,'Value',TO_DATE('2015-10-26 16:53:01','YYYY-MM-DD HH24:MI:SS'),100,'Search key for the record in the format required - must be unique','LBRA',60,'A search key allows you a fast method of finding a particular record.
If you leave the search key empty, the system automatically creates a numeric number.  The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).','Y','Y','N','N','N','N','N','N','N','N','N','N','N','Search Key',0,TO_DATE('2015-10-26 16:53:01','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 26/10/2015 16h53min2s BRST
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1126815 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 26/10/2015 16h53min4s BRST
ALTER TABLE LBR_IBPTax ADD Value NVARCHAR2(60) DEFAULT NULL 
;

-- 26/10/2015 16h55min53s BRST
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,1121799,0,'LBR_Source',TO_DATE('2015-10-26 16:55:52','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Source','Source of information',TO_DATE('2015-10-26 16:55:52','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 26/10/2015 16h55min53s BRST
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1121799 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 26/10/2015 16h56min13s BRST
UPDATE AD_Element_Trl SET IsTranslated='Y',Name='Origem',PrintName='Origem',Description='Origem da Informação',Updated=TO_DATE('2015-10-26 16:56:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1121799 AND AD_Language='pt_BR'
;

-- 26/10/2015 16h56min32s BRST
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1126816,1121799,0,10,1120342,'LBR_Source',TO_DATE('2015-10-26 16:56:31','YYYY-MM-DD HH24:MI:SS'),100,'LBRA',60,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Source',0,TO_DATE('2015-10-26 16:56:31','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 26/10/2015 16h56min32s BRST
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1126816 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 26/10/2015 16h56min33s BRST
ALTER TABLE LBR_IBPTax ADD LBR_Source NVARCHAR2(60) DEFAULT NULL 
;

-- 26/10/2015 16h57min27s BRST
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1126817,1121797,0,12,1120342,'LBR_TaxRateRegion',TO_DATE('2015-10-26 16:57:26','YYYY-MM-DD HH24:MI:SS'),100,'LBRA',10,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Tax Rate Region',0,TO_DATE('2015-10-26 16:57:26','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 26/10/2015 16h57min27s BRST
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1126817 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 26/10/2015 16h57min28s BRST
ALTER TABLE LBR_IBPTax ADD LBR_TaxRateRegion NUMBER DEFAULT NULL 
;

-- 26/10/2015 16h57min42s BRST
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1126818,1121798,0,12,1120342,'LBR_TaxRateCity',TO_DATE('2015-10-26 16:57:41','YYYY-MM-DD HH24:MI:SS'),100,'U',10,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Tax Rate City',0,TO_DATE('2015-10-26 16:57:41','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 26/10/2015 16h57min42s BRST
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1126818 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 26/10/2015 16h57min45s BRST
UPDATE AD_Column SET EntityType='LBRA',Updated=TO_DATE('2015-10-26 16:57:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1126818
;

-- 26/10/2015 16h57min46s BRST
ALTER TABLE LBR_IBPTax ADD LBR_TaxRateCity NUMBER DEFAULT NULL 
;

-- 26/10/2015 16h58min11s BRST
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1126815,1125553,0,1120124,TO_DATE('2015-10-26 16:58:10','YYYY-MM-DD HH24:MI:SS'),100,'Search key for the record in the format required - must be unique',60,'LBRA','A search key allows you a fast method of finding a particular record.
If you leave the search key empty, the system automatically creates a numeric number.  The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).','Y','Y','Y','N','N','N','N','N','Search Key',TO_DATE('2015-10-26 16:58:10','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 26/10/2015 16h58min11s BRST
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1125553 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 26/10/2015 16h58min12s BRST
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1126816,1125554,0,1120124,TO_DATE('2015-10-26 16:58:11','YYYY-MM-DD HH24:MI:SS'),100,60,'LBRA','Y','Y','Y','N','N','N','N','N','Source',TO_DATE('2015-10-26 16:58:11','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 26/10/2015 16h58min12s BRST
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1125554 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 26/10/2015 16h58min12s BRST
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1126818,1125555,0,1120124,TO_DATE('2015-10-26 16:58:12','YYYY-MM-DD HH24:MI:SS'),100,10,'LBRA','Y','Y','Y','N','N','N','N','N','Tax Rate City',TO_DATE('2015-10-26 16:58:12','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 26/10/2015 16h58min12s BRST
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1125555 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 26/10/2015 16h58min13s BRST
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1126817,1125556,0,1120124,TO_DATE('2015-10-26 16:58:12','YYYY-MM-DD HH24:MI:SS'),100,10,'LBRA','Y','Y','Y','N','N','N','N','N','Tax Rate Region',TO_DATE('2015-10-26 16:58:12','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 26/10/2015 16h58min13s BRST
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1125556 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 26/10/2015 16h58min14s BRST
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1126813,1125557,0,1120124,TO_DATE('2015-10-26 16:58:13','YYYY-MM-DD HH24:MI:SS'),100,'Valid from including this date (first day)',7,'LBRA','The Valid From date indicates the first day of a date range','Y','Y','Y','N','N','N','N','N','Valid from',TO_DATE('2015-10-26 16:58:13','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 26/10/2015 16h58min14s BRST
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1125557 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 26/10/2015 16h58min15s BRST
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1126814,1125558,0,1120124,TO_DATE('2015-10-26 16:58:14','YYYY-MM-DD HH24:MI:SS'),100,'Valid to including this date (last day)',7,'LBRA','The Valid To date indicates the last day of a date range','Y','Y','Y','N','N','N','N','N','Valid to',TO_DATE('2015-10-26 16:58:14','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 26/10/2015 16h58min15s BRST
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1125558 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 26/10/2015 17h2min29s BRST
UPDATE AD_Field SET SeqNo=30,IsDisplayed='Y' WHERE AD_Field_ID=1123894
;

-- 26/10/2015 17h2min29s BRST
UPDATE AD_Field SET SeqNo=40,IsDisplayed='Y' WHERE AD_Field_ID=1123886
;

-- 26/10/2015 17h2min29s BRST
UPDATE AD_Field SET SeqNo=60,IsDisplayed='Y' WHERE AD_Field_ID=1125553
;

-- 26/10/2015 17h2min29s BRST
UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y' WHERE AD_Field_ID=1125557
;

-- 26/10/2015 17h2min29s BRST
UPDATE AD_Field SET SeqNo=80,IsDisplayed='Y' WHERE AD_Field_ID=1125558
;

-- 26/10/2015 17h2min29s BRST
UPDATE AD_Field SET SeqNo=90,IsDisplayed='Y' WHERE AD_Field_ID=1123892
;

-- 26/10/2015 17h2min29s BRST
UPDATE AD_Field SET SeqNo=100,IsDisplayed='Y' WHERE AD_Field_ID=1123893
;

-- 26/10/2015 17h2min29s BRST
UPDATE AD_Field SET SeqNo=110,IsDisplayed='Y' WHERE AD_Field_ID=1125556
;

-- 26/10/2015 17h2min29s BRST
UPDATE AD_Field SET SeqNo=120,IsDisplayed='Y' WHERE AD_Field_ID=1125555
;

-- 26/10/2015 17h2min29s BRST
UPDATE AD_Field SET SeqNo=130,IsDisplayed='Y' WHERE AD_Field_ID=1125554
;

-- 26/10/2015 17h2min29s BRST
UPDATE AD_Field SET SeqNo=140,IsDisplayed='Y' WHERE AD_Field_ID=1123888
;

-- 26/10/2015 17h2min51s BRST
UPDATE AD_Field SET DisplayLength=10,Updated=TO_DATE('2015-10-26 17:02:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1123894
;

-- 26/10/2015 17h2min53s BRST
UPDATE AD_Field SET DisplayLength=10,Updated=TO_DATE('2015-10-26 17:02:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1123886
;

-- 26/10/2015 17h2min57s BRST
UPDATE AD_Field SET DisplayLength=10,Updated=TO_DATE('2015-10-26 17:02:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125557
;

-- 26/10/2015 17h2min58s BRST
UPDATE AD_Field SET DisplayLength=10,Updated=TO_DATE('2015-10-26 17:02:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125558
;

-- 26/10/2015 17h2min59s BRST
UPDATE AD_Field SET DisplayLength=10,Updated=TO_DATE('2015-10-26 17:02:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1123892
;

-- 26/10/2015 17h2min59s BRST
UPDATE AD_Field SET DisplayLength=10,Updated=TO_DATE('2015-10-26 17:02:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1123893
;

-- 26/10/2015 17h3min21s BRST
UPDATE AD_Field SET IsSameLine='N',Updated=TO_DATE('2015-10-26 17:03:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1123894
;

-- 26/10/2015 17h3min23s BRST
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2015-10-26 17:03:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1123886
;

-- 26/10/2015 17h3min33s BRST
UPDATE AD_Field SET DisplayLength=10, IsSameLine='Y',Updated=TO_DATE('2015-10-26 17:03:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125553
;

-- 26/10/2015 17h3min35s BRST
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2015-10-26 17:03:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125558
;

-- 26/10/2015 17h3min40s BRST
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2015-10-26 17:03:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125555
;

-- 26/10/2015 17h4min29s BRST
UPDATE AD_Column SET AD_Reference_ID=30,Updated=TO_DATE('2015-10-26 17:04:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1125049
;

-- 26/10/2015 17h4min39s BRST
UPDATE AD_Column SET DefaultValue='0', IsMandatory='Y',Updated=TO_DATE('2015-10-26 17:04:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1126818
;

-- 26/10/2015 17h4min40s BRST
ALTER TABLE LBR_IBPTax MODIFY LBR_TaxRateCity NUMBER DEFAULT 0
;

-- 26/10/2015 17h4min40s BRST
UPDATE LBR_IBPTax SET LBR_TaxRateCity=0 WHERE LBR_TaxRateCity IS NULL
;

-- 26/10/2015 17h4min40s BRST
ALTER TABLE LBR_IBPTax MODIFY LBR_TaxRateCity NOT NULL
;

-- 26/10/2015 17h4min53s BRST
UPDATE AD_Column SET DefaultValue='0', IsMandatory='Y',Updated=TO_DATE('2015-10-26 17:04:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1126817
;

-- 26/10/2015 17h4min54s BRST
ALTER TABLE LBR_IBPTax MODIFY LBR_TaxRateRegion NUMBER DEFAULT 0
;

-- 26/10/2015 17h4min54s BRST
UPDATE LBR_IBPTax SET LBR_TaxRateRegion=0 WHERE LBR_TaxRateRegion IS NULL
;

-- 26/10/2015 17h4min54s BRST
ALTER TABLE LBR_IBPTax MODIFY LBR_TaxRateRegion NOT NULL
;

-- 26/10/2015 17h5min43s BRST
UPDATE AD_Element SET Name='Tax Rate Imported', PrintName='Tax Rate Imported',Updated=TO_DATE('2015-10-26 17:05:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1121417
;

-- 26/10/2015 17h5min43s BRST
UPDATE AD_Element_Trl SET IsTranslated='N' WHERE AD_Element_ID=1121417
;

-- 26/10/2015 17h5min43s BRST
UPDATE AD_Element_Trl SET Description='Indicates the Imported Tax Rate ',Help='Indicates the Imported Tax Rate ',Name='Tax Rate Imported',PO_Description=NULL,PO_Help=NULL,PO_Name=NULL,PO_PrintName=NULL,PrintName='Tax Rate Imported',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Element_ID=1121417
;

-- 26/10/2015 17h5min43s BRST
UPDATE AD_Column SET ColumnName='lbr_TaxRateImp', Name='Tax Rate Imported', Description='Indicates the Imported Tax Rate ', Help='Indicates the Imported Tax Rate ' WHERE AD_Element_ID=1121417
;

-- 26/10/2015 17h5min43s BRST
UPDATE AD_Process_Para SET ColumnName='lbr_TaxRateImp', Name='Tax Rate Imported', Description='Indicates the Imported Tax Rate ', Help='Indicates the Imported Tax Rate ', AD_Element_ID=1121417 WHERE UPPER(ColumnName)='LBR_TAXRATEIMP' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 26/10/2015 17h5min43s BRST
UPDATE AD_Process_Para SET ColumnName='lbr_TaxRateImp', Name='Tax Rate Imported', Description='Indicates the Imported Tax Rate ', Help='Indicates the Imported Tax Rate ' WHERE AD_Element_ID=1121417 AND IsCentrallyMaintained='Y'
;

-- 26/10/2015 17h5min43s BRST
UPDATE AD_Field SET Name='Tax Rate Imported', Description='Indicates the Imported Tax Rate ', Help='Indicates the Imported Tax Rate ' WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=1121417) AND IsCentrallyMaintained='Y'
;

-- 26/10/2015 17h5min43s BRST
UPDATE AD_PrintFormatItem pi SET PrintName='Tax Rate Imported', Name='Tax Rate Imported' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=pi.AD_Column_ID AND c.AD_Element_ID=1121417)
;

-- 26/10/2015 17h6min3s BRST
UPDATE AD_Element_Trl SET IsTranslated='Y',Name='Alíquota Importado',PrintName='Alíquota Importado',Updated=TO_DATE('2015-10-26 17:06:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1121417 AND AD_Language='pt_BR'
;

-- 26/10/2015 17h6min14s BRST
UPDATE AD_Field SET IsCentrallyMaintained='N',Updated=TO_DATE('2015-10-26 17:06:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1123892
;

-- 26/10/2015 17h6min31s BRST
UPDATE AD_Field_Trl SET Name='Alíquota Nacional',Description='Indica a Alíquota do Imposto Nacional (%)',Help='Indica a Alíquota do Imposto Nacional (%)',Updated=TO_DATE('2015-10-26 17:06:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1123892 AND AD_Language='pt_BR'
;

-- 26/10/2015 18h55min16s BRST
UPDATE AD_Process_Trl SET Description='Efetua a importação da tabela de aliquotas apriximadas de impostos de acordo com o IBPT',Help='** Atenção ** A importação pode demorar alguns minutos, de acordo com a quantidade de registros a ser importados. A primeira linha do arquivo CSV no padrão IBPT é ignorada.',Updated=TO_DATE('2015-10-26 18:55:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=1120126 AND AD_Language='es_MX'
;

-- 26/10/2015 18h56min0s BRST
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,DefaultValue,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1669,0,1120126,1120213,20,'DeleteOld',TO_DATE('2015-10-26 18:55:58','YYYY-MM-DD HH24:MI:SS'),100,'N','LBRA',0,'Y','Y','N','N','Excluir registros antigos/existentes',20,TO_DATE('2015-10-26 18:55:58','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 26/10/2015 18h56min0s BRST
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=1120213 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 27/10/2015 11h50min58s BRST
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1126819,209,0,18,157,1120342,1000003,'C_Region_ID',TO_DATE('2015-10-27 11:50:56','YYYY-MM-DD HH24:MI:SS'),100,'Identifies a geographical Region','U',10,'The Region identifies a unique Region for this Country.','Y','Y','N','N','N','N','N','Y','N','N','N','N','Y','Region',0,TO_DATE('2015-10-27 11:50:56','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 27/10/2015 11h50min58s BRST
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1126819 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 27/10/2015 11h51min9s BRST
UPDATE AD_Column SET EntityType='LBRA',Updated=TO_DATE('2015-10-27 11:51:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1126819
;

-- 27/10/2015 11h51min11s BRST
ALTER TABLE LBR_IBPTax ADD C_Region_ID NUMBER(10) NOT NULL
;

-- 27/10/2015 11h51min50s BRST
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1126819,1125559,0,1120124,TO_DATE('2015-10-27 11:51:49','YYYY-MM-DD HH24:MI:SS'),100,'Identifies a geographical Region',10,'LBRA','The Region identifies a unique Region for this Country.','Y','Y','Y','N','N','N','N','N','Region',TO_DATE('2015-10-27 11:51:49','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 27/10/2015 11h51min50s BRST
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1125559 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 27/10/2015 11h51min59s BRST
UPDATE AD_Field SET SeqNo=30,IsDisplayed='Y' WHERE AD_Field_ID=1123886
;

-- 27/10/2015 11h51min59s BRST
UPDATE AD_Field SET SeqNo=40,IsDisplayed='Y' WHERE AD_Field_ID=1123894
;

-- 27/10/2015 11h51min59s BRST
UPDATE AD_Field SET SeqNo=50,IsDisplayed='Y' WHERE AD_Field_ID=1125559
;

-- 27/10/2015 11h51min59s BRST
UPDATE AD_Field SET SeqNo=60,IsDisplayed='Y' WHERE AD_Field_ID=1123889
;

-- 27/10/2015 11h51min59s BRST
UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y' WHERE AD_Field_ID=1125553
;

-- 27/10/2015 11h51min59s BRST
UPDATE AD_Field SET SeqNo=80,IsDisplayed='Y' WHERE AD_Field_ID=1125557
;

-- 27/10/2015 11h51min59s BRST
UPDATE AD_Field SET SeqNo=90,IsDisplayed='Y' WHERE AD_Field_ID=1125558
;

-- 27/10/2015 11h51min59s BRST
UPDATE AD_Field SET SeqNo=100,IsDisplayed='Y' WHERE AD_Field_ID=1123892
;

-- 27/10/2015 11h51min59s BRST
UPDATE AD_Field SET SeqNo=110,IsDisplayed='Y' WHERE AD_Field_ID=1123893
;

-- 27/10/2015 11h51min59s BRST
UPDATE AD_Field SET SeqNo=120,IsDisplayed='Y' WHERE AD_Field_ID=1125556
;

-- 27/10/2015 11h51min59s BRST
UPDATE AD_Field SET SeqNo=130,IsDisplayed='Y' WHERE AD_Field_ID=1125555
;

-- 27/10/2015 11h51min59s BRST
UPDATE AD_Field SET SeqNo=140,IsDisplayed='Y' WHERE AD_Field_ID=1125554
;

-- 27/10/2015 11h51min59s BRST
UPDATE AD_Field SET SeqNo=150,IsDisplayed='Y' WHERE AD_Field_ID=1123888
;

-- 27/10/2015 11h52min8s BRST
UPDATE AD_Field SET IsSameLine='N',Updated=TO_DATE('2015-10-27 11:52:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1123886
;

-- 27/10/2015 11h52min11s BRST
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2015-10-27 11:52:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125559
;

-- 27/10/2015 11h53min57s BRST
UPDATE AD_Process_Para SET AD_Element_ID=2295, ColumnName='FileName', Name='FileName',Updated=TO_DATE('2015-10-27 11:53:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=1120143
;

-- 27/10/2015 11h53min57s BRST
UPDATE AD_Process_Para_Trl SET IsTranslated='N' WHERE AD_Process_Para_ID=1120143
;

-- 27/10/2015 11h53min57s BRST
UPDATE AD_Process_Para_Trl SET Description=NULL,Help=NULL,Name='FileName',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Process_Para_ID=1120143
;

-- 27/10/2015 11h54min54s BRST
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,DefaultValue,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,209,0,1120126,1120214,18,157,1000003,'C_Region_ID',TO_DATE('2015-10-27 11:54:53','YYYY-MM-DD HH24:MI:SS'),100,'-1','U',0,'Y','Y','Y','N','Region',15,TO_DATE('2015-10-27 11:54:53','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 27/10/2015 11h54min54s BRST
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=1120214 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 27/10/2015 11h54min58s BRST
UPDATE AD_Process_Para SET EntityType='LBRA',Updated=TO_DATE('2015-10-27 11:54:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=1120214
;

-- 27/10/2015 12h36min28s BRST
INSERT INTO AD_Message (AD_Client_ID,AD_Message_ID,AD_Org_ID,Created,CreatedBy,EntityType,IsActive,MsgText,MsgType,Updated,UpdatedBy,Value) VALUES (0,1120035,0,TO_DATE('2015-10-27 12:36:26','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Valor Aprox. de Impostos Federais R$ {0} ({1} %), Estaduais R$ {2} ({3} %), Fonte(s): {4} {5}','I',TO_DATE('2015-10-27 12:36:26','YYYY-MM-DD HH24:MI:SS'),100,'LBR_NFIBPT')
;

-- 27/10/2015 12h36min28s BRST
INSERT INTO AD_Message_Trl (AD_Language,AD_Message_ID, MsgText,MsgTip, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Message_ID, t.MsgText,t.MsgTip, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Message t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Message_ID=1120035 AND NOT EXISTS (SELECT * FROM AD_Message_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Message_ID=t.AD_Message_ID)
;

-- 27/10/2015 14h4min23s BRST
UPDATE AD_Message SET MsgText='Trib Aprox R$ {0,number,#,##0.00} ({1,number,#,##0.00}%) Federal e R$ {2,number,#,##0.00} ({3,number,#,##0.00}%) Estadual, Fonte(s): {4} {5}',MsgTip=NULL,Updated=TO_DATE('2015-10-27 14:04:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Message_ID=1120035
;

-- 27/10/2015 14h4min23s BRST
UPDATE AD_Message_Trl SET IsTranslated='N' WHERE AD_Message_ID=1120035
;

-- 27/10/2015 14h4min23s BRST
UPDATE AD_Message_Trl SET MsgText='Trib Aprox R$ {0,number,#,##0.00} ({1,number,#,##0.00}%) Federal e R$ {2,number,#,##0.00} ({3,number,#,##0.00}%) Estadual, Fonte(s): {4} {5}',MsgTip=NULL,IsTranslated='Y' WHERE AD_Message_ID=1120035
;

-- 27/10/2015 18h55min30s BRST
UPDATE AD_Process SET Description='Efetua a importação da tabela de aliquotas aproximadas de impostos de acordo com o IBPT', Help='Efetua a importação da tabela de aliquotas aproximadas de impostos de acordo com o IBPT. Marque a opção de apagar registros obsoletos para apagar toda a tabela do IBPT atual.',Updated=TO_DATE('2015-10-27 18:55:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=1120126
;

-- 27/10/2015 18h55min30s BRST
UPDATE AD_Process_Trl SET IsTranslated='N' WHERE AD_Process_ID=1120126
;

-- 27/10/2015 18h55min30s BRST
UPDATE AD_Process_Trl SET Description='Efetua a importação da tabela de aliquotas aproximadas de impostos de acordo com o IBPT',Help='Efetua a importação da tabela de aliquotas aproximadas de impostos de acordo com o IBPT. Marque a opção de apagar registros obsoletos para apagar toda a tabela do IBPT atual.',Name='Importar tabela de Impostos do IBPT',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Process_ID=1120126
;

-- 27/10/2015 18h55min30s BRST
UPDATE AD_Menu SET Description='Efetua a importação da tabela de aliquotas aproximadas de impostos de acordo com o IBPT', IsActive='Y', Name='Importar tabela de Impostos do IBPT',Updated=TO_DATE('2015-10-27 18:55:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=1120195
;

-- 27/10/2015 18h55min30s BRST
UPDATE AD_Menu_Trl SET IsTranslated='N' WHERE AD_Menu_ID=1120195
;

-- 27/10/2015 18h55min30s BRST
UPDATE AD_Menu_Trl SET Description='Efetua a importação da tabela de aliquotas aproximadas de impostos de acordo com o IBPT',Name='Importar tabela de Impostos do IBPT',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Menu_ID=1120195
;

-- 27/10/2015 18h55min35s BRST
UPDATE AD_Process_Trl SET Description='Efetua a importação da tabela de aliquotas aproximadas de impostos de acordo com o IBPT',Help='Efetua a importação da tabela de aliquotas aproximadas de impostos de acordo com o IBPT. Marque a opção de apagar registros obsoletos para apagar toda a tabela do IBPT atual.',Updated=TO_DATE('2015-10-27 18:55:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=1120126 AND AD_Language='pt_BR'
;

-- 7/10/2015 14h4min23s BRST
SELECT Register_Migration_Script ('146-IBPT.sql') FROM DUAL
;

EXIT