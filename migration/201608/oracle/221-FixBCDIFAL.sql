-- 07/07/2016 13h29min15s BRT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,ValueMax,ValueMin,Version) VALUES (0,1128989,2004,0,22,1000026,'Percentage',TO_DATE('2016-07-07 13:29:13','YYYY-MM-DD HH24:MI:SS'),100,'Percent of the entire amount','LBRA',10,'Percentage of an amount (up to 100)','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Percentage',0,TO_DATE('2016-07-07 13:29:13','YYYY-MM-DD HH24:MI:SS'),100,'100','0',0)
;

-- 07/07/2016 13h29min15s BRT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1128989 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 07/07/2016 13h29min21s BRT
UPDATE AD_Column SET DefaultValue='100', IsMandatory='Y',Updated=TO_DATE('2016-07-07 13:29:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1128989
;

-- 07/07/2016 13h29min27s BRT
ALTER TABLE LBR_TaxFormula ADD Percentage NUMBER DEFAULT 100 NOT NULL
;

-- 07/07/2016 13h29min42s BRT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1128989,1126951,0,1000019,TO_DATE('2016-07-07 13:29:42','YYYY-MM-DD HH24:MI:SS'),100,'Percent of the entire amount',10,'LBRA','Percentage of an amount (up to 100)','Y','Y','Y','N','N','N','N','N','Percentage',TO_DATE('2016-07-07 13:29:42','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 07/07/2016 13h29min42s BRT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1126951 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 07/07/2016 13h29min58s BRT
UPDATE AD_Field SET IsSameLine='Y', SeqNo=120,Updated=TO_DATE('2016-07-07 13:29:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1126951
;

-- 07/07/2016 13h30min4s BRT
UPDATE AD_Field SET SortNo=1.000000000000,Updated=TO_DATE('2016-07-07 13:30:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1120260
;

-- 07/07/2016 13h36min42s BRT
UPDATE LBR_TaxFormula SET LBR_FormulaBase_ID=1000014, LBR_FormulaNet_ID=1000001, LBR_Formula_ID=1000016, Percentage=40.000000000000,Updated=TO_DATE('2016-07-07 13:36:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_TaxFormula_ID=1120013
;

-- 07/07/2016 13h36min59s BRT
UPDATE LBR_TaxFormula SET LBR_FormulaBase_ID=1000014, LBR_FormulaNet_ID=1000001, LBR_Formula_ID=1000016, Percentage=60.000000000000,Updated=TO_DATE('2016-07-07 13:36:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_TaxFormula_ID=1120014
;

-- 07/07/2016 13h37min9s BRT
UPDATE LBR_TaxFormula SET LBR_FormulaBase_ID=1000014, LBR_FormulaNet_ID=1000001, LBR_Formula_ID=1000016, Percentage=80.000000000000,Updated=TO_DATE('2016-07-07 13:37:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_TaxFormula_ID=1120015
;

-- 07/07/2016 13h37min21s BRT
UPDATE LBR_TaxFormula SET LBR_FormulaNet_ID=1000001, LBR_Formula_ID=1000016,Updated=TO_DATE('2016-07-07 13:37:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_TaxFormula_ID=1120016
;

-- 07/07/2016 13h37min38s BRT
UPDATE LBR_TaxFormula SET LBR_FormulaBase_ID=1000014, LBR_FormulaNet_ID=1000001, LBR_Formula_ID=1000016, Percentage=60.000000000000,Updated=TO_DATE('2016-07-07 13:37:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_TaxFormula_ID=1120017
;

-- 07/07/2016 13h37min48s BRT
UPDATE LBR_TaxFormula SET LBR_FormulaBase_ID=1000014, LBR_FormulaNet_ID=1000001, LBR_Formula_ID=1000016, Percentage=40.000000000000,Updated=TO_DATE('2016-07-07 13:37:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_TaxFormula_ID=1120018
;

-- 07/07/2016 13h38min0s BRT
UPDATE LBR_TaxFormula SET LBR_FormulaBase_ID=1000014, LBR_FormulaNet_ID=1000001, LBR_Formula_ID=1000016, Percentage=20.000000000000,Updated=TO_DATE('2016-07-07 13:38:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_TaxFormula_ID=1120019
;

-- 07/07/2016 13h43min42s BRT
UPDATE LBR_TaxName SET LBR_TaxSubstitution_ID=1106000, lbr_TaxType='T',Updated=TO_DATE('2016-07-07 13:43:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_TaxName_ID=1120002
;

-- 07/07/2016 13h43min49s BRT
UPDATE LBR_TaxName SET LBR_TaxSubstitution_ID=1106000, lbr_TaxType='T',Updated=TO_DATE('2016-07-07 13:43:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_TaxName_ID=1120001
;

-- 07/07/2016 16h6min42s BRT
INSERT INTO LBR_TaxFormula (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,IsTaxIncluded,LBR_FormulaBase_ID,LBR_FormulaNet_ID,LBR_Formula_ID,LBR_TaxFormula_ID,LBR_TaxName_ID,Percentage,Updated,UpdatedBy,ValidFrom,lbr_TransactionType) VALUES (0,0,TO_DATE('2016-07-07 16:06:42','YYYY-MM-DD HH24:MI:SS'),100,'Y','N',1000014,1000001,1000016,1120020,1120002,0,TO_DATE('2016-07-07 16:06:42','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2019-01-01','YYYY-MM-DD'),'END')
;

-- 07/07/2016 13h43min49s BRT
SELECT Register_Migration_Script ('221-FixBCDIFAL.sql') FROM DUAL
;

EXIT