/******************************************************************************
 * Copyright (C) 2011 Ricardo Santana                                         *
 * Copyright (C) 2011 Kenos Assessoria e Consultoria de Sistemas Ltda         *
 * This program is free software; you can redistribute it and/or modify it    *
 * under the terms version 2 of the GNU General Public License as published   *
 * by the Free Software Foundation. This program is distributed in the hope   *
 * that it will be useful, but WITHOUT ANY WARRANTY; without even the implied *
 * warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.           *
 * See the GNU General Public License for more details.                       *
 * You should have received a copy of the GNU General Public License along    *
 * with this program; if not, write to the Free Software Foundation, Inc.,    *
 * 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA.                     *
 *****************************************************************************/
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

EXIT