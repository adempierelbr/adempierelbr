-- 05/07/2016 14h11min11s BRT
DELETE FROM AD_Field_Trl WHERE AD_Field_ID=1001076
;

-- 05/07/2016 14h11min11s BRT
DELETE FROM AD_Field WHERE AD_Field_ID=1001076
;

-- 05/07/2016 14h11min28s BRT
DELETE FROM AD_Field_Trl WHERE AD_Field_ID=1001100
;

-- 05/07/2016 14h11min28s BRT
DELETE FROM AD_Field WHERE AD_Field_ID=1001100
;

-- 05/07/2016 14h11min53s BRT
DELETE FROM AD_Column_Trl WHERE AD_Column_ID=1001047
;

-- 05/07/2016 14h11min53s BRT
DELETE FROM AD_Column WHERE AD_Column_ID=1001047
;

-- 05/07/2016 14h11min53s BRT
ALTER TABLE LBR_NotaFiscal DROP COLUMN lbr_NFReference
;

-- 05/07/2016 14h16min35s BRT
UPDATE AD_Tab SET OrderByClause='LBR_NotaFiscal.AD_Org_ID, LBR_NotaFiscal.C_DocTypeTarget_ID, LBR_NotaFiscal.DateDoc DESC, LBR_NotaFiscal.DocumentNo DESC', WhereClause='LBR_NotaFiscal.IsSOTrx=''Y''',Updated=TO_TIMESTAMP('2016-07-05 14:16:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=1000020
;

-- 05/07/2016 14h17min7s BRT
UPDATE AD_Tab SET OrderByClause='LBR_NotaFiscal.AD_Org_ID, LBR_NotaFiscal.C_DocTypeTarget_ID, LBR_NotaFiscal.DateDoc DESC, LBR_NotaFiscal.DocumentNo DESC', WhereClause='LBR_NotaFiscal.IsSOTrx=''N''',Updated=TO_TIMESTAMP('2016-07-05 14:17:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=1000028
;

-- 05/07/2016 14h56min16s BRT
INSERT INTO AD_Reference (AD_Client_ID,AD_Org_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,IsOrderByValue,Name,Updated,UpdatedBy,ValidationType) VALUES (0,0,1120249,TO_TIMESTAMP('2016-07-05 14:56:15','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','N','M_Shipper',TO_TIMESTAMP('2016-07-05 14:56:15','YYYY-MM-DD HH24:MI:SS'),100,'T')
;

-- 05/07/2016 14h56min16s BRT
INSERT INTO AD_Reference_Trl (AD_Language,AD_Reference_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Reference_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Reference t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Reference_ID=1120249 AND NOT EXISTS (SELECT * FROM AD_Reference_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Reference_ID=t.AD_Reference_ID)
;

-- 05/07/2016 14h56min35s BRT
INSERT INTO AD_Ref_Table (AD_Client_ID,AD_Display,AD_Key,AD_Org_ID,AD_Reference_ID,AD_Table_ID,Created,CreatedBy,EntityType,IsActive,IsValueDisplayed,Updated,UpdatedBy) VALUES (0,2085,2077,0,1120249,253,TO_TIMESTAMP('2016-07-05 14:56:35','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','N',TO_TIMESTAMP('2016-07-05 14:56:35','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 05/07/2016 14h56min51s BRT
UPDATE AD_Ref_Table SET AD_Window_ID=142,Updated=TO_TIMESTAMP('2016-07-05 14:56:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=1120249
;

-- 05/07/2016 14h57min4s BRT
UPDATE AD_Column SET AD_Reference_Value_ID=1120249,Updated=TO_TIMESTAMP('2016-07-05 14:57:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000489
;

-- 05/07/2016 15h4min40s BRT
UPDATE AD_Window SET WinHeight=640, WinWidth=1024,Updated=TO_TIMESTAMP('2016-07-05 15:04:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Window_ID=1000015
;

-- 05/07/2016 15h4min48s BRT
UPDATE AD_Window SET WinHeight=640, WinWidth=1024,Updated=TO_TIMESTAMP('2016-07-05 15:04:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Window_ID=1000019
;

-- 05/07/2016 15h10min11s BRT
UPDATE AD_Column SET DefaultValue='@IsSOTrx@',Updated=TO_TIMESTAMP('2016-07-05 15:10:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000493
;

-- 05/07/2016 15h14min29s BRT
UPDATE AD_Val_Rule SET Code='C_DocType.DocBaseType=''NFB'' AND C_DocType.IsSOTrx=''@IsSOTrx@''',Updated=TO_TIMESTAMP('2016-07-05 15:14:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=1000007
;

-- 05/07/2016 15h17min4s BRT
UPDATE AD_Val_Rule SET Name='C_DocType NF (IsSOTrx)',Updated=TO_TIMESTAMP('2016-07-05 15:17:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=1000007
;

-- 05/07/2016 15h17min14s BRT
UPDATE AD_Val_Rule SET Name='C_DocType NF (By Org)',Updated=TO_TIMESTAMP('2016-07-05 15:17:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=1120123
;

-- 05/07/2016 15h17min48s BRT
UPDATE AD_Val_Rule SET Name='C_DocType NF (Export XML)',Updated=TO_TIMESTAMP('2016-07-05 15:17:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=1120122
;

-- 05/07/2016 15h18min14s BRT
UPDATE AD_Val_Rule SET Name='C_DocType NF (Invoice)',Updated=TO_TIMESTAMP('2016-07-05 15:18:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=1120092
;

-- 05/07/2016 15h18min14s BRT
SELECT Register_Migration_Script ('219-FixIsSOTrxOnNF.sql') FROM DUAL
;

