-- 11/07/2016 16h30min49s BRT
UPDATE AD_Reference SET Name='LBR_TaxType',Updated=TO_TIMESTAMP('2016-07-11 16:30:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=1000022
;

-- 11/07/2016 16h30min49s BRT
UPDATE AD_Reference_Trl SET IsTranslated='N' WHERE AD_Reference_ID=1000022
;

-- 11/07/2016 16h30min49s BRT
UPDATE AD_Reference_Trl SET Description=NULL,Help=NULL,Name='LBR_TaxType',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Reference_ID=1000022
;

-- 11/07/2016 16h31min23s BRT
INSERT INTO AD_Ref_List (Value,AD_Ref_List_ID,Created,CreatedBy,Updated,UpdatedBy,AD_Reference_ID,AD_Org_ID,IsActive,AD_Client_ID,EntityType,Name) VALUES ('D',1121795,TO_TIMESTAMP('2016-07-11 16:31:22','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-07-11 16:31:22','YYYY-MM-DD HH24:MI:SS'),100,1000022,0,'Y',0,'LBRA','Differential')
;

-- 11/07/2016 16h31min23s BRT
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121795 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 11/07/2016 16h31min34s BRT
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Name='Diferencial de Alíquota',Updated=TO_TIMESTAMP('2016-07-11 16:31:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121795 AND AD_Language='pt_BR'
;

-- 11/07/2016 16h45min38s BRT
UPDATE AD_Field SET DisplayLogic='@lbr_TaxType@=''T'' | @lbr_TaxType@=D',Updated=TO_TIMESTAMP('2016-07-11 16:45:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000430
;

-- 11/07/2016 16h45min59s BRT
UPDATE LBR_TaxName SET LBR_TaxSubstitution_ID=1106000, lbr_TaxType='D',Updated=TO_TIMESTAMP('2016-07-11 16:45:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_TaxName_ID=1120002
;

-- 11/07/2016 16h46min5s BRT
UPDATE LBR_TaxName SET LBR_TaxSubstitution_ID=1106000, lbr_TaxType='D',Updated=TO_TIMESTAMP('2016-07-11 16:46:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_TaxName_ID=1120001
;

-- 11/07/2016 16h54min53s BRT
UPDATE LBR_Formula SET lbr_Formula='FLBR15/(1-(ICMSDIFAL+FCP))',Updated=TO_TIMESTAMP('2016-07-11 16:54:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_Formula_ID=1120004
;

-- 11/07/2016 16h55min4s BRT
UPDATE LBR_Formula SET lbr_Formula='FLBR02/(1-(ICMSDIFAL+FCP))',Updated=TO_TIMESTAMP('2016-07-11 16:55:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_Formula_ID=1120005
;

-- 11/07/2016 16h7min51s BRT
SELECT Register_Migration_Script ('224-TaxTypeDifferential.sql') FROM DUAL
;