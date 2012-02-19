-- 31/10/2011 11h23min8s BRST
-- Correcao nas formulas de calculo de ST
UPDATE LBR_TaxFormula SET LBR_Formula_ID=1000016,Updated=TO_DATE('2011-10-31 11:23:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_TaxFormula_ID=1106023
;

-- 31/10/2011 11h23min8s BRST
-- Correcao nas formulas de calculo de ST
UPDATE LBR_Formula SET lbr_Formula='(1+IPI)*((1+IVA)*((1-ICMSPROD)/(1-ICMSST)))',Updated=TO_DATE('2011-10-31 11:23:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_Formula_ID=1000015
;

-- 31/10/2011 11h23min46s BRST
-- Correcao nas formulas de calculo de ST
UPDATE LBR_Formula SET lbr_Formula='(((1+(PISPROD+COFINSPROD)/(1-(PISPROD+COFINSPROD)-ICMSPROD)))/(1-ICMSPROD))*(1+IPI)*((1+IVA)*((1-ICMSPROD)/(1-ICMSST)))',Updated=TO_DATE('2011-10-31 11:23:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_Formula_ID=1000005
;

