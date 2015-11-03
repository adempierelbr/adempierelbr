-- 28/10/2015 15h52min11s BRST
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,1121800,0,'LBR_IsShowIBPT',TO_TIMESTAMP('2015-10-28 15:52:09','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Show IBPT','Show IBPT',TO_TIMESTAMP('2015-10-28 15:52:09','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 28/10/2015 15h52min11s BRST
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1121800 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 28/10/2015 15h52min44s BRST
UPDATE AD_Element_Trl SET IsTranslated='Y',Name='Mostrar IBPT',PrintName='Mostrar IBPT',Description='Mostra as informações de trubutação do IBPT na Nota Fiscal',Help='Mostra as informações de trubutação do IBPT na Nota Fiscal',Updated=TO_TIMESTAMP('2015-10-28 15:52:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1121800 AND AD_Language='pt_BR'
;

-- 28/10/2015 15h53min7s BRST
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1126820,1121800,0,20,1000010,'LBR_IsShowIBPT',TO_TIMESTAMP('2015-10-28 15:53:06','YYYY-MM-DD HH24:MI:SS'),100,'N','LBRA',1,'Y','Y','N','N','N','N','N','Y','N','N','N','N','Y','Show IBPT',0,TO_TIMESTAMP('2015-10-28 15:53:06','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 28/10/2015 15h53min7s BRST
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1126820 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 28/10/2015 15h53min8s BRST
ALTER TABLE LBR_CFOP ADD COLUMN LBR_IsShowIBPT CHAR(1) DEFAULT 'N' CHECK (LBR_IsShowIBPT IN ('Y','N')) NOT NULL
;

-- 28/10/2015 15h53min20s BRST
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1126820,1125560,0,1000005,TO_TIMESTAMP('2015-10-28 15:53:20','YYYY-MM-DD HH24:MI:SS'),100,1,'LBRA','Y','Y','Y','N','N','N','N','N','Show IBPT',TO_TIMESTAMP('2015-10-28 15:53:20','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 28/10/2015 15h53min20s BRST
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1125560 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 28/10/2015 15h53min44s BRST
UPDATE AD_Field SET IsSameLine='Y', SeqNo=90,Updated=TO_TIMESTAMP('2015-10-28 15:53:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125560
;

-- 28/10/2015 15h53min44s BRST
UPDATE LBR_CFOP SET LBR_IsShowIBPT='Y' WHERE (Value LIKE '5%' OR Value LIKE '6%') AND UPPER(Description) LIKE 'VENDA%'
;

-- 7/10/2015 14h4min23s BRST
SELECT Register_Migration_Script ('147-IBPT_CFOP_Flag.sql') FROM DUAL
;
