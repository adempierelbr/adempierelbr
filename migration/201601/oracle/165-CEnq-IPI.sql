-- 07/01/2016 10h47min54s BRST
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1128695,1121793,0,19,1000035,'LBR_TaxLegalFW_ID',TO_DATE('2016-01-07 10:47:52','YYYY-MM-DD HH24:MI:SS'),100,'LBRA',10,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Tax Legal Framework',0,TO_DATE('2016-01-07 10:47:52','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 07/01/2016 10h47min54s BRST
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1128695 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 07/01/2016 10h47min55s BRST
ALTER TABLE LBR_NFLineTax ADD LBR_TaxLegalFW_ID NUMBER(10) DEFAULT NULL 
;

-- 07/01/2016 10h48min28s BRST
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1128695,1125687,0,1000027,TO_DATE('2016-01-07 10:48:26','YYYY-MM-DD HH24:MI:SS'),100,10,'LBRA','Y','Y','Y','N','N','N','N','N','Tax Legal Framework',TO_DATE('2016-01-07 10:48:26','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 07/01/2016 10h48min28s BRST
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1125687 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 07/01/2016 10h51min39s BRST
UPDATE AD_Element SET Description='Indicates the Tax Base Reduction', Help='Indicates the Tax Base Reduction', Name='Tax Base Reduction', PrintName='Tax Base Reduction',Updated=TO_DATE('2016-01-07 10:51:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1000128
;

-- 07/01/2016 10h51min39s BRST
UPDATE AD_Element_Trl SET IsTranslated='N' WHERE AD_Element_ID=1000128
;

-- 07/01/2016 10h51min39s BRST
UPDATE AD_Element_Trl SET Description='Indicates the Tax Base Reduction',Help='Indicates the Tax Base Reduction',Name='Tax Base Reduction',PO_Description=NULL,PO_Help=NULL,PO_Name=NULL,PO_PrintName=NULL,PrintName='Tax Base Reduction',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Element_ID=1000128
;

-- 07/01/2016 10h51min39s BRST
UPDATE AD_Column SET ColumnName='lbr_TaxBase', Name='Tax Base Reduction', Description='Indicates the Tax Base Reduction', Help='Indicates the Tax Base Reduction' WHERE AD_Element_ID=1000128
;

-- 07/01/2016 10h51min39s BRST
UPDATE AD_Process_Para SET ColumnName='lbr_TaxBase', Name='Tax Base Reduction', Description='Indicates the Tax Base Reduction', Help='Indicates the Tax Base Reduction', AD_Element_ID=1000128 WHERE UPPER(ColumnName)='LBR_TAXBASE' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 07/01/2016 10h51min39s BRST
UPDATE AD_Process_Para SET ColumnName='lbr_TaxBase', Name='Tax Base Reduction', Description='Indicates the Tax Base Reduction', Help='Indicates the Tax Base Reduction' WHERE AD_Element_ID=1000128 AND IsCentrallyMaintained='Y'
;

-- 07/01/2016 10h51min39s BRST
UPDATE AD_Field SET Name='Tax Base Reduction', Description='Indicates the Tax Base Reduction', Help='Indicates the Tax Base Reduction' WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=1000128) AND IsCentrallyMaintained='Y'
;

-- 07/01/2016 10h51min39s BRST
UPDATE AD_PrintFormatItem pi SET PrintName='Tax Base Reduction', Name='Tax Base Reduction' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=pi.AD_Column_ID AND c.AD_Element_ID=1000128)
;

-- 07/01/2016 10h52min28s BRST
UPDATE AD_Element_Trl SET Name='Redução na BC',PrintName='Redução na BC',Updated=TO_DATE('2016-01-07 10:52:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1000128 AND AD_Language='pt_BR'
;

-- 07/01/2016 10h53min33s BRST
UPDATE AD_Field SET SeqNo=60,IsDisplayed='Y' WHERE AD_Field_ID=1000630
;

-- 07/01/2016 10h53min33s BRST
UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y' WHERE AD_Field_ID=1000494
;

-- 07/01/2016 10h53min33s BRST
UPDATE AD_Field SET SeqNo=80,IsDisplayed='Y' WHERE AD_Field_ID=1000631
;

-- 07/01/2016 10h53min33s BRST
UPDATE AD_Field SET SeqNo=120,IsDisplayed='Y' WHERE AD_Field_ID=1125687
;

-- 07/01/2016 10h53min33s BRST
UPDATE AD_Field SET SeqNo=130,IsDisplayed='Y' WHERE AD_Field_ID=1124960
;

-- 07/01/2016 10h53min33s BRST
UPDATE AD_Field SET SeqNo=140,IsDisplayed='Y' WHERE AD_Field_ID=1124959
;

-- 07/01/2016 10h53min33s BRST
UPDATE AD_Field SET SeqNo=150,IsDisplayed='Y' WHERE AD_Field_ID=1124961
;

-- 07/01/2016 10h53min39s BRST
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_DATE('2016-01-07 10:53:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000488
;

-- 07/01/2016 10h54min0s BRST
UPDATE AD_Field SET AD_FieldGroup_ID=111,Updated=TO_DATE('2016-01-07 10:54:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000495
;

-- 07/01/2016 10h54min10s BRST
UPDATE AD_Field SET IsSameLine='N',Updated=TO_DATE('2016-01-07 10:54:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000630
;

-- 07/01/2016 10h54min12s BRST
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2016-01-07 10:54:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000494
;

-- 07/01/2016 10h54min29s BRST
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2016-01-07 10:54:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1124961
;

-- 07/01/2016 10h54min51s BRST
UPDATE AD_Field SET AD_FieldGroup_ID=113,Updated=TO_DATE('2016-01-07 10:54:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1124960
;

-- 07/01/2016 10h56min24s BRST
UPDATE AD_Column SET IsIdentifier='Y',Updated=TO_DATE('2016-01-07 10:56:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1126799
;

-- 07/01/2016 10h57min2s BRST
UPDATE AD_Column SET SeqNo=2,Updated=TO_DATE('2016-01-07 10:57:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1126799
;

-- 07/01/2016 10h57min8s BRST
UPDATE AD_Column SET IsIdentifier='Y', SeqNo=1,Updated=TO_DATE('2016-01-07 10:57:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1126800
;

-- 07/01/2016 11h6min20s BRST
INSERT INTO AD_Val_Rule (AD_Client_ID,AD_Org_ID,AD_Val_Rule_ID,Code,Created,CreatedBy,EntityType,IsActive,Name,Type,Updated,UpdatedBy) VALUES (0,0,1120120,'EXISTS (SELECT ''1'' FROM LBR_TaxLegalFW zfw WHERE zfw.LBR_TaxName_ID IN (SELECT zt.LBR_TaxName_ID FROM C_Tax zt WHERE zt.LBR_TaxGroup_ID = @LBR_TaxGroup_ID@))',TO_DATE('2016-01-07 11:06:19','YYYY-MM-DD HH24:MI:SS'),100,'U','Y','LBR_TaxLegalFW of TaxGroup','S',TO_DATE('2016-01-07 11:06:19','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 07/01/2016 11h6min33s BRST
UPDATE AD_Column SET AD_Val_Rule_ID=1120120,Updated=TO_DATE('2016-01-07 11:06:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1128695
;

-- 07/01/2016 11h6min33s BRST
SELECT Register_Migration_Script ('165-CEnq-IPI.sql') FROM DUAL
;

EXIT