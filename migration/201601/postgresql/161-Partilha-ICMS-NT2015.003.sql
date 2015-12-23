-- 11/12/2015 12h28min14s BRST
INSERT INTO LBR_Formula (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,IsActive,LBR_Formula_ID,Name,Updated,UpdatedBy,lbr_Formula) VALUES (0,0,TO_TIMESTAMP('2015-12-11 12:28:14','YYYY-MM-DD HH24:MI:SS'),100,'Fórmula para cálculo de imposto de produto, levando em consideração o valor com PIS, COFINS e ICMS, adiciona o IPI e o fator do difenrecial de alíquota.','Y',1120004,'FLBR15.2',TO_TIMESTAMP('2015-12-11 12:28:14','YYYY-MM-DD HH24:MI:SS'),100,'FLBR15*(ICMSDIFAL-ICMSPROD)/ICMSDIFAL')
;

-- 11/12/2015 12h30min12s BRST
INSERT INTO LBR_Formula (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,IsActive,LBR_Formula_ID,Name,Updated,UpdatedBy,lbr_Formula) VALUES (0,0,TO_TIMESTAMP('2015-12-11 12:30:12','YYYY-MM-DD HH24:MI:SS'),100,'Fórmula para cálculo de imposto de produto, levando em consideração o valor líquido teremos um fator para chegar no valor com PIS, COFINS e ICMS. Para operações onde o IPI entra na Base de Cálculo do ICMS, considerando o diferencial de alíquota.','Y',1120005,'FLBR02.2',TO_TIMESTAMP('2015-12-11 12:30:12','YYYY-MM-DD HH24:MI:SS'),100,'FLBR02*(ICMSDIFAL-ICMSPROD)/ICMSDIFAL')
;

-- 11/12/2015 12h30min12s BRST
ALTER TABLE LBR_TaxFormula DROP CONSTRAINT LBR_TaxFormula_Key2
;

-- 11/12/2015 19h50min42s BRST
INSERT INTO LBR_TaxName (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,IsActive,LBR_HasWithhold,LBR_TaxName_ID,LBR_WithholdThreshold,LBR_WithholdType,Name,Updated,UpdatedBy,lbr_TaxType,lbr_WithholdFrequency) VALUES (0,0,TO_TIMESTAMP('2015-12-11 19:50:42','YYYY-MM-DD HH24:MI:SS'),100,'Fundo de Combate a Pobreza','Y','N',1120000,0,'T','FCP',TO_TIMESTAMP('2015-12-11 19:50:42','YYYY-MM-DD HH24:MI:SS'),100,'P','M')
;

-- 11/12/2015 19h51min21s BRST
INSERT INTO LBR_TaxFormula (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,IsTaxIncluded,LBR_FormulaNet_ID,LBR_Formula_ID,LBR_TaxFormula_ID,LBR_TaxName_ID,Updated,UpdatedBy,ValidFrom,lbr_TransactionType) VALUES (0,0,TO_TIMESTAMP('2015-12-11 19:51:21','YYYY-MM-DD HH24:MI:SS'),100,'Y','N',1000001,1000016,1120010,1120000,TO_TIMESTAMP('2015-12-11 19:51:21','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2000-01-01','YYYY-MM-DD'),'END')
;

-- 18/12/2015 18h29min6s BRST
INSERT INTO LBR_Formula (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,IsActive,LBR_Formula_ID,Name,Updated,UpdatedBy,lbr_Formula) VALUES (0,0,TO_TIMESTAMP('2015-12-18 18:29:06','YYYY-MM-DD HH24:MI:SS'),100,'20% do (Valor do Frete + Valor)','Y',1120006,'20% do (Frete + Valor)',TO_TIMESTAMP('2015-12-18 18:29:06','YYYY-MM-DD HH24:MI:SS'),100,'(AMT + FREIGHT) * 0.2')
;

-- 18/12/2015 18h29min15s BRST
INSERT INTO LBR_Formula (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,IsActive,LBR_Formula_ID,Name,Updated,UpdatedBy,lbr_Formula) VALUES (0,0,TO_TIMESTAMP('2015-12-18 18:29:15','YYYY-MM-DD HH24:MI:SS'),100,'40% do (Valor do Frete + Valor)','Y',1120007,'40% do (Frete + Valor)',TO_TIMESTAMP('2015-12-18 18:29:15','YYYY-MM-DD HH24:MI:SS'),100,'(AMT + FREIGHT) * 0.4')
;

-- 18/12/2015 18h29min24s BRST
INSERT INTO LBR_Formula (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,IsActive,LBR_Formula_ID,Name,Updated,UpdatedBy,lbr_Formula) VALUES (0,0,TO_TIMESTAMP('2015-12-18 18:29:24','YYYY-MM-DD HH24:MI:SS'),100,'60% do (Valor do Frete + Valor)','Y',1120008,'60% do (Frete + Valor)',TO_TIMESTAMP('2015-12-18 18:29:24','YYYY-MM-DD HH24:MI:SS'),100,'(AMT + FREIGHT) * 0.6')
;

-- 18/12/2015 18h29min37s BRST
INSERT INTO LBR_Formula (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,IsActive,LBR_Formula_ID,Name,Updated,UpdatedBy,lbr_Formula) VALUES (0,0,TO_TIMESTAMP('2015-12-18 18:29:37','YYYY-MM-DD HH24:MI:SS'),100,'80% do (Valor do Frete + Valor)','Y',1120009,'80% do (Frete + Valor)',TO_TIMESTAMP('2015-12-18 18:29:37','YYYY-MM-DD HH24:MI:SS'),100,'(AMT + FREIGHT) * 0.8')
;

-- 18/12/2015 18h30min33s BRST
INSERT INTO LBR_TaxName (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,IsActive,LBR_HasWithhold,LBR_TaxName_ID,LBR_WithholdThreshold,LBR_WithholdType,Name,Updated,UpdatedBy,lbr_TaxType,lbr_WithholdFrequency) VALUES (0,0,TO_TIMESTAMP('2015-12-18 18:30:33','YYYY-MM-DD HH24:MI:SS'),100,'ICMS de diferencial de alíquota','Y','N',1120001,0,'T','ICMSDIFAL',TO_TIMESTAMP('2015-12-18 18:30:33','YYYY-MM-DD HH24:MI:SS'),100,'P','M')
;

-- 18/12/2015 18h31min14s BRST
INSERT INTO LBR_TaxFormula (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,IsTaxIncluded,LBR_FormulaBase_ID,LBR_FormulaNet_ID,LBR_Formula_ID,LBR_TaxFormula_ID,LBR_TaxName_ID,Updated,UpdatedBy,ValidFrom,lbr_TransactionType) VALUES (0,0,TO_TIMESTAMP('2015-12-18 18:31:14','YYYY-MM-DD HH24:MI:SS'),100,'Y','N',1120007,1120005,1120004,1120013,1120001,TO_TIMESTAMP('2015-12-18 18:31:14','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-01-01','YYYY-MM-DD'),'END')
;

-- 18/12/2015 18h31min53s BRST
INSERT INTO LBR_TaxFormula (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,IsTaxIncluded,LBR_FormulaBase_ID,LBR_FormulaNet_ID,LBR_Formula_ID,LBR_TaxFormula_ID,LBR_TaxName_ID,Updated,UpdatedBy,ValidFrom,lbr_TransactionType) VALUES (0,0,TO_TIMESTAMP('2015-12-18 18:31:53','YYYY-MM-DD HH24:MI:SS'),100,'Y','N',1120008,1120005,1120004,1120014,1120001,TO_TIMESTAMP('2015-12-18 18:31:53','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-01-01','YYYY-MM-DD'),'END')
;

-- 18/12/2015 18h32min1s BRST
INSERT INTO LBR_TaxFormula (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,IsTaxIncluded,LBR_FormulaBase_ID,LBR_FormulaNet_ID,LBR_Formula_ID,LBR_TaxFormula_ID,LBR_TaxName_ID,Updated,UpdatedBy,ValidFrom,lbr_TransactionType) VALUES (0,0,TO_TIMESTAMP('2015-12-18 18:32:01','YYYY-MM-DD HH24:MI:SS'),100,'Y','N',1120009,1120005,1120004,1120015,1120001,TO_TIMESTAMP('2015-12-18 18:32:01','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-01-01','YYYY-MM-DD'),'END')
;

-- 18/12/2015 18h32min14s BRST
INSERT INTO LBR_TaxFormula (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,IsTaxIncluded,LBR_FormulaBase_ID,LBR_FormulaNet_ID,LBR_Formula_ID,LBR_TaxFormula_ID,LBR_TaxName_ID,Updated,UpdatedBy,ValidFrom,lbr_TransactionType) VALUES (0,0,TO_TIMESTAMP('2015-12-18 18:32:14','YYYY-MM-DD HH24:MI:SS'),100,'Y','N',1000014,1120005,1120004,1120016,1120001,TO_TIMESTAMP('2015-12-18 18:32:14','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2019-01-01','YYYY-MM-DD'),'END')
;

-- 18/12/2015 18h33min48s BRST
INSERT INTO LBR_TaxName (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,IsActive,LBR_HasWithhold,LBR_TaxName_ID,LBR_WithholdThreshold,LBR_WithholdType,Name,Updated,UpdatedBy,lbr_TaxType,lbr_WithholdFrequency) VALUES (0,0,TO_TIMESTAMP('2015-12-18 18:33:48','YYYY-MM-DD HH24:MI:SS'),100,'ICMS de diferencial de alíquota an Origem','Y','N',1120002,0,'T','ICMSDIFALORIG',TO_TIMESTAMP('2015-12-18 18:33:48','YYYY-MM-DD HH24:MI:SS'),100,'P','M')
;

-- 18/12/2015 18h34min13s BRST
INSERT INTO LBR_TaxFormula (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,IsTaxIncluded,LBR_FormulaBase_ID,LBR_FormulaNet_ID,LBR_Formula_ID,LBR_TaxFormula_ID,LBR_TaxName_ID,Updated,UpdatedBy,ValidFrom,lbr_TransactionType) VALUES (0,0,TO_TIMESTAMP('2015-12-18 18:34:13','YYYY-MM-DD HH24:MI:SS'),100,'Y','N',1120008,1120005,1120004,1120017,1120002,TO_TIMESTAMP('2015-12-18 18:34:13','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2016-01-01','YYYY-MM-DD'),'END')
;

-- 18/12/2015 18h34min39s BRST
INSERT INTO LBR_TaxFormula (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,IsTaxIncluded,LBR_FormulaBase_ID,LBR_FormulaNet_ID,LBR_Formula_ID,LBR_TaxFormula_ID,LBR_TaxName_ID,Updated,UpdatedBy,ValidFrom,lbr_TransactionType) VALUES (0,0,TO_TIMESTAMP('2015-12-18 18:34:39','YYYY-MM-DD HH24:MI:SS'),100,'Y','N',1120007,1120005,1120004,1120018,1120002,TO_TIMESTAMP('2015-12-18 18:34:39','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2017-01-01','YYYY-MM-DD'),'END')
;

-- 18/12/2015 18h34min58s BRST
INSERT INTO LBR_TaxFormula (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,IsTaxIncluded,LBR_FormulaBase_ID,LBR_FormulaNet_ID,LBR_Formula_ID,LBR_TaxFormula_ID,LBR_TaxName_ID,Updated,UpdatedBy,ValidFrom,lbr_TransactionType) VALUES (0,0,TO_TIMESTAMP('2015-12-18 18:34:58','YYYY-MM-DD HH24:MI:SS'),100,'Y','N',1120006,1120005,1120004,1120019,1120002,TO_TIMESTAMP('2015-12-18 18:34:58','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-01-01','YYYY-MM-DD'),'END')
;

-- 18/12/2015 18h57min39s BRST
INSERT INTO LBR_TaxGroup (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,LBR_TaxGroup_ID,Name,Updated,UpdatedBy) VALUES (0,0,TO_TIMESTAMP('2015-12-18 18:57:39','YYYY-MM-DD HH24:MI:SS'),100,'Y',1120008,'ICMSDIFAL',TO_TIMESTAMP('2015-12-18 18:57:39','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 18/12/2015 18h57min45s BRST
INSERT INTO LBR_TaxGroup (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,LBR_TaxGroup_ID,Name,Updated,UpdatedBy) VALUES (0,0,TO_TIMESTAMP('2015-12-18 18:57:45','YYYY-MM-DD HH24:MI:SS'),100,'Y',1120009,'ICMSDIFALORIG',TO_TIMESTAMP('2015-12-18 18:57:45','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 18/12/2015 18h58min13s BRST
INSERT INTO LBR_TaxGroup (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,IsActive,LBR_TaxGroup_ID,Name,Updated,UpdatedBy) VALUES (0,0,TO_TIMESTAMP('2015-12-18 18:58:13','YYYY-MM-DD HH24:MI:SS'),100,'Fundo de Combate a Pobreza','Y',1120010,'FCP',TO_TIMESTAMP('2015-12-18 18:58:13','YYYY-MM-DD HH24:MI:SS'),100)
;

