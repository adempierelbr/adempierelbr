-- 14/10/2013 15h46min15s BRT
ALTER TABLE LBR_TaxFormula
	DROP CONSTRAINT LBR_TaxFormula_Key2 CASCADE
;

-- 14/10/2013 15h46min15s BRT
ALTER TABLE lbr_taxformula
	ADD CONSTRAINT LBR_TaxFormula_UNQ
	UNIQUE (AD_Client_ID, LBR_TaxFormula_ID, LBR_TransactionType, ValidFrom)
;

-- 14/10/2013 15h46min15s BRT
INSERT INTO LBR_TaxFormula (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,IsTaxIncluded,LBR_FormulaBase_ID,LBR_Formula_ID,LBR_TaxFormula_ID,LBR_TaxName_ID,Updated,UpdatedBy,ValidFrom,lbr_TransactionType) VALUES (0,0,TO_TIMESTAMP('2013-10-14 15:46:14','YYYY-MM-DD HH24:MI:SS'),100,'Y','N',1000014,1000010,1120005,1106001,TO_TIMESTAMP('2013-10-14 15:46:14','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2013-10-10','YYYY-MM-DD'),'IMP')
;

-- 14/10/2013 15h47min24s BRT
INSERT INTO LBR_TaxFormula (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,IsTaxIncluded,LBR_FormulaBase_ID,LBR_Formula_ID,LBR_TaxFormula_ID,LBR_TaxName_ID,Updated,UpdatedBy,ValidFrom,lbr_TransactionType) VALUES (0,0,TO_TIMESTAMP('2013-10-14 15:47:23','YYYY-MM-DD HH24:MI:SS'),100,'Y','N',1000014,1000010,1120006,1106002,TO_TIMESTAMP('2013-10-14 15:47:23','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2013-10-10','YYYY-MM-DD'),'IMP')
;

-- 14/10/2013 15h54min52s BRT
INSERT INTO LBR_Formula (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,IsActive,LBR_Formula_ID,Name,Updated,UpdatedBy,lbr_Formula) VALUES (0,0,TO_TIMESTAMP('2013-10-14 15:54:51','YYYY-MM-DD HH24:MI:SS'),100,'Fórmula para cálculo de imposto de produto, levando em consideração o CIF+II teremos um fator para chegar no valor do ICMS. Para operações de Importação. Válido a partir de 10/10/2013.','Y',1120001,'FLBR16',TO_TIMESTAMP('2013-10-14 15:54:51','YYYY-MM-DD HH24:MI:SS'),100,'((1+((FLBR11*(PISPROD+COFINSPROD))+(IPI)))/(1-ICMSPROD))')
;

-- 14/10/2013 15h55min42s BRT
INSERT INTO LBR_Formula (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,IsActive,LBR_Formula_ID,Name,Updated,UpdatedBy,lbr_Formula) VALUES (0,0,TO_TIMESTAMP('2013-10-14 15:55:41','YYYY-MM-DD HH24:MI:SS'),100,'Fórmula para cálculo de imposto de produto, levando em consideração o CIF (Sem acréscimo do II) teremos um fator para chegar no valor do ICMS. Para operações de Importação.','Y',1120002,'FLBR17',TO_TIMESTAMP('2013-10-14 15:55:41','YYYY-MM-DD HH24:MI:SS'),100,'((1+((FLBR11*(PISPROD+COFINSPROD))+(IPI)))/(1-ICMSPROD))*(1+II)')
;

-- 14/10/2013 15h56min18s BRT
INSERT INTO LBR_TaxFormula (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,IsTaxIncluded,LBR_FormulaAdd_ID,LBR_FormulaBase_ID,LBR_FormulaNet_ID,LBR_Formula_ID,LBR_TaxFormula_ID,LBR_TaxName_ID,Updated,UpdatedBy,ValidFrom,lbr_TransactionType) VALUES (0,0,TO_TIMESTAMP('2013-10-14 15:56:17','YYYY-MM-DD HH24:MI:SS'),100,'Y','N',1000011,1000014,1120002,1120001,1120007,1106000,TO_TIMESTAMP('2013-10-14 15:56:17','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2013-10-10','YYYY-MM-DD'),'IMP')
;

-- 14/10/2013 16h34min26s BRT
INSERT INTO LBR_TaxFormula (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,IsTaxIncluded,LBR_FormulaBase_ID,LBR_Formula_ID,LBR_TaxFormula_ID,LBR_TaxName_ID,Updated,UpdatedBy,ValidFrom,lbr_TransactionType) VALUES (0,0,TO_TIMESTAMP('2013-10-14 16:34:26','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y',1000014,1000010,1120008,1106004,TO_TIMESTAMP('2013-10-14 16:34:26','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2013-10-10','YYYY-MM-DD'),'IMP')
;

-- 05/02/2016 12h25min52s BRST
SELECT Register_Migration_Script ('184-FixImportTaxes.sql') FROM DUAL
;

