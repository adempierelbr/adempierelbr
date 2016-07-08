-- 07/07/2016 14h13min19s BRT
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121792,1000024,TO_TIMESTAMP('2016-07-07 14:13:17','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','End User (Double Base)',TO_TIMESTAMP('2016-07-07 14:13:17','YYYY-MM-DD HH24:MI:SS'),100,'EN2')
;

-- 07/07/2016 14h13min19s BRT
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121792 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 07/07/2016 14h14min5s BRT
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Name='Consumidor Final (BC Dupla)',Updated=TO_TIMESTAMP('2016-07-07 14:14:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121792 AND AD_Language='pt_BR'
;

-- 07/07/2016 14h20min22s BRT
UPDATE LBR_Formula SET lbr_Formula='FLBR15*(1-ICMSPROD)/(1-(ICMSDIFAL+FCP))',Updated=TO_TIMESTAMP('2016-07-07 14:20:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_Formula_ID=1120004
;

-- 07/07/2016 14h20min52s BRT
UPDATE LBR_Formula SET lbr_Formula='FLBR02*(1-ICMSPROD)/(1-(ICMSDIFAL+FCP))',Updated=TO_TIMESTAMP('2016-07-07 14:20:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_Formula_ID=1120005
;

-- 07/07/2016 17h40min22s BRT
INSERT INTO LBR_Formula (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,IsActive,LBR_Formula_ID,Name,Updated,UpdatedBy,lbr_Formula) VALUES (0,0,TO_TIMESTAMP('2016-07-07 17:40:21','YYYY-MM-DD HH24:MI:SS'),100,'Fórmula para cálculo de imposto de produto, levando em consideração o valor com PIS, COFINS e ICMS, adiciona o IPI e o fator do difenrecial de alíquota.','Y',1120010,'FLBR15.3',TO_TIMESTAMP('2016-07-07 17:40:21','YYYY-MM-DD HH24:MI:SS'),100,'FLBR15*(1-ICMSPROD)/(1-(ICMSST))')
;

-- 07/07/2016 17h44min2s BRT
INSERT INTO LBR_Formula (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,IsActive,LBR_Formula_ID,Name,Updated,UpdatedBy,lbr_Formula) VALUES (0,0,TO_TIMESTAMP('2016-07-07 17:44:02','YYYY-MM-DD HH24:MI:SS'),100,'Fórmula para cálculo de imposto de produto, levando em consideração o valor líquido teremos um fator para chegar no valor com PIS, COFINS, ICMS com o IVA. Para operações onde o IPI entra na Base de Cálculo do ICMS.','Y',1120011,'FLBR04.2',TO_TIMESTAMP('2016-07-07 17:44:02','YYYY-MM-DD HH24:MI:SS'),100,'FLBR04*(1-ICMSPROD)/(1-(ICMSST))')
;

-- 07/07/2016 17h44min33s BRT
INSERT INTO LBR_TaxFormula (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,IsTaxIncluded,LBR_FormulaBase_ID,LBR_FormulaNet_ID,LBR_Formula_ID,LBR_TaxFormula_ID,LBR_TaxName_ID,Percentage,Updated,UpdatedBy,ValidFrom,lbr_TransactionType) VALUES (0,0,TO_TIMESTAMP('2016-07-07 17:44:32','YYYY-MM-DD HH24:MI:SS'),100,'Y','N',1000014,1120011,1120010,1120030,1106012,100,TO_TIMESTAMP('2016-07-07 17:44:32','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'),'EN2')
;

-- 07/07/2016 17h44min50s BRT
INSERT INTO LBR_TaxFormula (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,IsTaxIncluded,LBR_FormulaBase_ID,LBR_FormulaNet_ID,LBR_TaxFormula_ID,LBR_TaxName_ID,Percentage,Updated,UpdatedBy,ValidFrom,lbr_TransactionType) VALUES (0,0,TO_TIMESTAMP('2016-07-07 17:44:49','YYYY-MM-DD HH24:MI:SS'),100,'Y','N',1000014,1000000,1120031,1106003,100,TO_TIMESTAMP('2016-07-07 17:44:49','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'),'EN2')
;

-- 07/07/2016 17h45min9s BRT
INSERT INTO LBR_TaxFormula (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,IsTaxIncluded,LBR_FormulaBase_ID,LBR_FormulaNet_ID,LBR_TaxFormula_ID,LBR_TaxName_ID,Percentage,Updated,UpdatedBy,ValidFrom,lbr_TransactionType) VALUES (0,0,TO_TIMESTAMP('2016-07-07 17:45:09','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y',1000014,1000000,1120032,1106002,100,TO_TIMESTAMP('2016-07-07 17:45:09','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'),'EN2')
;

-- 07/07/2016 17h45min25s BRT
INSERT INTO LBR_TaxFormula (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,IsTaxIncluded,LBR_FormulaBase_ID,LBR_FormulaNet_ID,LBR_TaxFormula_ID,LBR_TaxName_ID,Percentage,Updated,UpdatedBy,ValidFrom,lbr_TransactionType) VALUES (0,0,TO_TIMESTAMP('2016-07-07 17:45:25','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y',1000014,1000000,1120033,1106001,100,TO_TIMESTAMP('2016-07-07 17:45:25','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'),'EN2')
;

-- 07/07/2016 17h45min42s BRT
INSERT INTO LBR_TaxFormula (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,IsTaxIncluded,LBR_FormulaBase_ID,LBR_FormulaNet_ID,LBR_Formula_ID,LBR_TaxFormula_ID,LBR_TaxName_ID,Percentage,Updated,UpdatedBy,ValidFrom,lbr_TransactionType) VALUES (0,0,TO_TIMESTAMP('2016-07-07 17:45:41','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y',1000014,1000001,1000016,1120034,1106000,100,TO_TIMESTAMP('2016-07-07 17:45:41','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'),'EN2')
;

-- 07/07/2016 17h29min15s BRT
INSERT INTO LBR_TaxFormula (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,IsTaxIncluded,LBR_FormulaBase_ID,LBR_FormulaNet_ID,LBR_Formula_ID,LBR_TaxFormula_ID,LBR_TaxName_ID,Percentage,Updated,UpdatedBy,ValidFrom,lbr_TransactionType) VALUES (0,0,TO_TIMESTAMP('2016-07-07 17:29:14','YYYY-MM-DD HH24:MI:SS'),100,'Y','N',1000014,1120005,1120004,1120021,1120002,60.000000000000,TO_TIMESTAMP('2016-07-07 17:29:14','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-01-01','YYYY-MM-DD'),'EN2')
;

-- 07/07/2016 17h29min36s BRT
INSERT INTO LBR_TaxFormula (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,IsTaxIncluded,LBR_FormulaBase_ID,LBR_FormulaNet_ID,LBR_Formula_ID,LBR_TaxFormula_ID,LBR_TaxName_ID,Percentage,Updated,UpdatedBy,ValidFrom,lbr_TransactionType) VALUES (0,0,TO_TIMESTAMP('2016-07-07 17:29:35','YYYY-MM-DD HH24:MI:SS'),100,'Y','N',1000014,1120005,1120004,1120022,1120002,40.000000000000,TO_TIMESTAMP('2016-07-07 17:29:35','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-01-01','YYYY-MM-DD'),'EN2')
;

-- 07/07/2016 17h29min46s BRT
INSERT INTO LBR_TaxFormula (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,IsTaxIncluded,LBR_FormulaBase_ID,LBR_FormulaNet_ID,LBR_Formula_ID,LBR_TaxFormula_ID,LBR_TaxName_ID,Percentage,Updated,UpdatedBy,ValidFrom,lbr_TransactionType) VALUES (0,0,TO_TIMESTAMP('2016-07-07 17:29:46','YYYY-MM-DD HH24:MI:SS'),100,'Y','N',1000014,1120005,1120004,1120023,1120002,20.000000000000,TO_TIMESTAMP('2016-07-07 17:29:46','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-01-01','YYYY-MM-DD'),'EN2')
;

-- 07/07/2016 17h30min0s BRT
INSERT INTO LBR_TaxFormula (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,IsTaxIncluded,LBR_FormulaBase_ID,LBR_FormulaNet_ID,LBR_Formula_ID,LBR_TaxFormula_ID,LBR_TaxName_ID,Percentage,Updated,UpdatedBy,ValidFrom,lbr_TransactionType) VALUES (0,0,TO_TIMESTAMP('2016-07-07 17:30:00','YYYY-MM-DD HH24:MI:SS'),100,'Y','N',1000014,1120005,1120004,1120024,1120002,0,TO_TIMESTAMP('2016-07-07 17:30:00','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2019-01-01','YYYY-MM-DD'),'EN2')
;

-- 07/07/2016 17h30min18s BRT
INSERT INTO LBR_TaxFormula (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,IsTaxIncluded,LBR_FormulaBase_ID,LBR_FormulaNet_ID,LBR_Formula_ID,LBR_TaxFormula_ID,LBR_TaxName_ID,Percentage,Updated,UpdatedBy,ValidFrom,lbr_TransactionType) VALUES (0,0,TO_TIMESTAMP('2016-07-07 17:30:18','YYYY-MM-DD HH24:MI:SS'),100,'Y','N',1000014,1120005,1120004,1120025,1120001,40.000000000000,TO_TIMESTAMP('2016-07-07 17:30:18','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-01-01','YYYY-MM-DD'),'EN2')
;

-- 07/07/2016 17h30min27s BRT
INSERT INTO LBR_TaxFormula (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,IsTaxIncluded,LBR_FormulaBase_ID,LBR_FormulaNet_ID,LBR_Formula_ID,LBR_TaxFormula_ID,LBR_TaxName_ID,Percentage,Updated,UpdatedBy,ValidFrom,lbr_TransactionType) VALUES (0,0,TO_TIMESTAMP('2016-07-07 17:30:26','YYYY-MM-DD HH24:MI:SS'),100,'Y','N',1000014,1120005,1120004,1120026,1120001,60.000000000000,TO_TIMESTAMP('2016-07-07 17:30:26','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-01-01','YYYY-MM-DD'),'EN2')
;

-- 07/07/2016 17h30min35s BRT
INSERT INTO LBR_TaxFormula (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,IsTaxIncluded,LBR_FormulaBase_ID,LBR_FormulaNet_ID,LBR_Formula_ID,LBR_TaxFormula_ID,LBR_TaxName_ID,Percentage,Updated,UpdatedBy,ValidFrom,lbr_TransactionType) VALUES (0,0,TO_TIMESTAMP('2016-07-07 17:30:35','YYYY-MM-DD HH24:MI:SS'),100,'Y','N',1000014,1120005,1120004,1120027,1120001,80.000000000000,TO_TIMESTAMP('2016-07-07 17:30:35','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-01-01','YYYY-MM-DD'),'EN2')
;

-- 07/07/2016 17h30min44s BRT
INSERT INTO LBR_TaxFormula (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,IsTaxIncluded,LBR_FormulaBase_ID,LBR_FormulaNet_ID,LBR_Formula_ID,LBR_TaxFormula_ID,LBR_TaxName_ID,Percentage,Updated,UpdatedBy,ValidFrom,lbr_TransactionType) VALUES (0,0,TO_TIMESTAMP('2016-07-07 17:30:44','YYYY-MM-DD HH24:MI:SS'),100,'Y','N',1000014,1120005,1120004,1120028,1120001,100,TO_TIMESTAMP('2016-07-07 17:30:44','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2019-01-01','YYYY-MM-DD'),'EN2')
;

-- 07/07/2016 17h31min17s BRT
INSERT INTO LBR_TaxFormula (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,IsTaxIncluded,LBR_FormulaNet_ID,LBR_Formula_ID,LBR_TaxFormula_ID,LBR_TaxName_ID,Percentage,Updated,UpdatedBy,ValidFrom,lbr_TransactionType) VALUES (0,0,TO_TIMESTAMP('2016-07-07 17:31:16','YYYY-MM-DD HH24:MI:SS'),100,'Y','N',1120005,1120004,1120029,1120000,100,TO_TIMESTAMP('2016-07-07 17:31:16','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'),'EN2')
;

-- 07/07/2016 18h27min1s BRT
UPDATE LBR_Formula SET lbr_Formula='FLBR15',Updated=TO_TIMESTAMP('2016-07-07 18:27:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_Formula_ID=1120004
;

-- 07/07/2016 18h28min51s BRT
UPDATE LBR_Formula SET lbr_Formula='FLBR02',Updated=TO_TIMESTAMP('2016-07-07 18:28:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_Formula_ID=1120005
;

-- 07/07/2016 13h43min49s BRT
SELECT Register_Migration_Script ('222-ICMSST_BC_Dupla.sql') FROM DUAL
;
