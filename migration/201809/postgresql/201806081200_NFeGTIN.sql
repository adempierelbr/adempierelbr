-- 07/06/2018 16h31min49s BRT
-- NF-e 4.0
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1130343,603,0,10,1000028,'UPC',TO_TIMESTAMP('2018-06-07 16:31:49','YYYY-MM-DD HH24:MI:SS'),100,'Bar Code (Universal Product Code or its superset European Article Number)','LBRA',18,'Use this field to enter the bar code for the product in any of the bar code symbologies (Codabar, Code 25, Code 39, Code 93, Code 128, UPC (A), UPC (E), EAN-13, EAN-8, ITF, ITF-14, ISBN, ISSN, JAN-13, JAN-8, POSTNET and FIM, MSI/Plessey, and Pharmacode) ','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','UPC/EAN',0,TO_TIMESTAMP('2018-06-07 16:31:49','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 07/06/2018 16h31min49s BRT
-- NF-e 4.0
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1130343 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 07/06/2018 16h31min57s BRT
-- NF-e 4.0
UPDATE AD_Column SET ReadOnlyLogic='@IsManual@!Y',Updated=TO_TIMESTAMP('2018-06-07 16:31:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1130343
;

-- 07/06/2018 16h32min2s BRT
-- NF-e 4.0
ALTER TABLE LBR_NotaFiscalLine ADD COLUMN UPC VARCHAR(18) DEFAULT NULL 
;

-- 07/06/2018 16h33min54s BRT
-- NF-e 4.0
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_FieldGroup_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1130343,106,1127470,0,1000021,TO_TIMESTAMP('2018-06-07 16:33:54','YYYY-MM-DD HH24:MI:SS'),100,'Bar Code (Universal Product Code or its superset European Article Number)',22,'LBRA','Use this field to enter the bar code for the product in any of the bar code symbologies (Codabar, Code 25, Code 39, Code 93, Code 128, UPC (A), UPC (E), EAN-13, EAN-8, ITF, ITF-14, ISBN, ISSN, JAN-13, JAN-8, POSTNET and FIM, MSI/Plessey, and Pharmacode) ','Y','Y','Y','N','N','N','N','N','UPC/EAN',135,TO_TIMESTAMP('2018-06-07 16:33:54','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 07/06/2018 16h33min54s BRT
-- NF-e 4.0
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1127470 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 07/06/2018 10h43min53s BRT
SELECT Register_Migration_Script ('201806081200_NFeGTIN.sql') FROM DUAL
;