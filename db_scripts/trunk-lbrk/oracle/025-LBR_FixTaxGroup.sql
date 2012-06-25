-- 21/06/2012 16h55min48s BRT
-- LBR-45 - Corrigir Grupo de Imposto (Nota Fiscal)
UPDATE AD_Table SET AccessLevel='6',Updated=TO_DATE('2012-06-21 16:55:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=1000033
;
-- 22/06/2012 11h25min19s BRT
-- LBR-45 - Corrigir Grupo de Imposto (Nota Fiscal)
INSERT INTO LBR_TaxGroup (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,LBR_TaxGroup_ID,Name,Updated,UpdatedBy) VALUES (0,0,TO_DATE('2012-06-22 11:25:19','YYYY-MM-DD HH24:MI:SS'),100,'Y',1120000,'ICMS',TO_DATE('2012-06-22 11:25:19','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 22/06/2012 11h26min46s BRT
-- LBR-45 - Corrigir Grupo de Imposto (Nota Fiscal)
INSERT INTO LBR_TaxGroup (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,LBR_TaxGroup_ID,Name,Updated,UpdatedBy) VALUES (0,0,TO_DATE('2012-06-22 11:26:45','YYYY-MM-DD HH24:MI:SS'),100,'Y',1120001,'PIS',TO_DATE('2012-06-22 11:26:45','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 22/06/2012 11h26min51s BRT
-- LBR-45 - Corrigir Grupo de Imposto (Nota Fiscal)
INSERT INTO LBR_TaxGroup (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,LBR_TaxGroup_ID,Name,Updated,UpdatedBy) VALUES (0,0,TO_DATE('2012-06-22 11:26:51','YYYY-MM-DD HH24:MI:SS'),100,'Y',1120002,'COFINS',TO_DATE('2012-06-22 11:26:51','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 22/06/2012 11h27min2s BRT
-- LBR-45 - Corrigir Grupo de Imposto (Nota Fiscal)
INSERT INTO LBR_TaxGroup (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,LBR_TaxGroup_ID,Name,Updated,UpdatedBy) VALUES (0,0,TO_DATE('2012-06-22 11:27:01','YYYY-MM-DD HH24:MI:SS'),100,'Y',1120003,'IPI',TO_DATE('2012-06-22 11:27:01','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 22/06/2012 11h27min14s BRT
-- LBR-45 - Corrigir Grupo de Imposto (Nota Fiscal)
INSERT INTO LBR_TaxGroup (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,LBR_TaxGroup_ID,Name,Updated,UpdatedBy) VALUES (0,0,TO_DATE('2012-06-22 11:27:13','YYYY-MM-DD HH24:MI:SS'),100,'Y',1120004,'II',TO_DATE('2012-06-22 11:27:13','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 22/06/2012 11h27min26s BRT
-- LBR-45 - Corrigir Grupo de Imposto (Nota Fiscal)
INSERT INTO LBR_TaxGroup (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,LBR_TaxGroup_ID,Name,Updated,UpdatedBy) VALUES (0,0,TO_DATE('2012-06-22 11:27:24','YYYY-MM-DD HH24:MI:SS'),100,'Y',1120005,'IIS',TO_DATE('2012-06-22 11:27:24','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 22/06/2012 11h28min17s BRT
-- LBR-45 - Corrigir Grupo de Imposto (Nota Fiscal)
INSERT INTO LBR_TaxGroup (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,LBR_TaxGroup_ID,Name,Updated,UpdatedBy) VALUES (0,0,TO_DATE('2012-06-22 11:28:16','YYYY-MM-DD HH24:MI:SS'),100,'Y',1120006,'IR',TO_DATE('2012-06-22 11:28:16','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 22/06/2012 11h42min32s BRT
-- LBR-45 - Corrigir Grupo de Imposto (Nota Fiscal)
INSERT INTO LBR_TaxGroup (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,LBR_TaxGroup_ID,Name,Updated,UpdatedBy) VALUES (0,0,TO_DATE('2012-06-22 11:42:31','YYYY-MM-DD HH24:MI:SS'),100,'Y',1120007,'ICMSST',TO_DATE('2012-06-22 11:42:31','YYYY-MM-DD HH24:MI:SS'),100)
;

-- ICMS
-- Tabela C_Tax
UPDATE C_Tax SET LBR_TaxGroup_ID=1120000 WHERE LBR_TaxGroup_ID IN 
(SELECT LBR_TaxGroup_ID FROM LBR_TaxGroup WHERE LBR_TaxGroup_ID<>1120000 AND Name LIKE '%ICMS%' AND Name not LIKE '%ST%')
;
-- Tabela LBR_NFTax
UPDATE LBR_NFTax SET LBR_TaxGroup_ID=1120000 WHERE LBR_TaxGroup_ID IN 
(SELECT LBR_TaxGroup_ID FROM LBR_TaxGroup WHERE LBR_TaxGroup_ID<>1120000 AND Name LIKE '%ICMS%' AND Name not LIKE '%ST%')
;
-- Tabela LBR_NFLINeTax
UPDATE LBR_NFLINeTax SET LBR_TaxGroup_ID=1120000 WHERE LBR_TaxGroup_ID IN 
(SELECT LBR_TaxGroup_ID FROM LBR_TaxGroup WHERE LBR_TaxGroup_ID<>1120000 AND Name LIKE '%ICMS%' AND Name not LIKE '%ST%')
;
-- Tabela LBR_TaxGroup
DELETE  FROM LBR_TaxGroup WHERE LBR_TaxGroup_ID<>1120000 AND Name LIKE '%ICMS%' AND Name not LIKE '%ST%'
;
-- ICMSST
-- Tabela C_Tax
UPDATE C_Tax SET LBR_TaxGroup_ID=1120007 WHERE LBR_TaxGroup_ID IN 
(SELECT LBR_TaxGroup_ID FROM LBR_TaxGroup WHERE LBR_TaxGroup_ID<>1120007 AND Name LIKE '%ICMS%ST%')
;
-- Tabela LBR_NFTax
UPDATE LBR_NFTax SET LBR_TaxGroup_ID=1120007 WHERE LBR_TaxGroup_ID IN 
(SELECT LBR_TaxGroup_ID FROM LBR_TaxGroup WHERE LBR_TaxGroup_ID<>1120007 AND Name LIKE '%ICMS%ST%')
;
-- Tabela LBR_NFLINeTax
UPDATE LBR_NFLINeTax SET LBR_TaxGroup_ID=1120007 WHERE LBR_TaxGroup_ID IN 
(SELECT LBR_TaxGroup_ID FROM LBR_TaxGroup WHERE LBR_TaxGroup_ID<>1120007 AND Name LIKE '%ICMS%ST%')
;
-- Tabela LBR_TaxGroup
DELETE  FROM LBR_TaxGroup WHERE LBR_TaxGroup_ID<>1120007 AND Name LIKE '%ICMS%ST%'
;
-- PIS
-- Tabela C_Tax
UPDATE C_Tax SET LBR_TaxGroup_ID=1120001 WHERE LBR_TaxGroup_ID IN 
(SELECT LBR_TaxGroup_ID FROM LBR_TaxGroup WHERE LBR_TaxGroup_ID<>1120001 AND Name LIKE '%PIS%')
;
-- Tabela LBR_NFTax
UPDATE LBR_NFTax SET LBR_TaxGroup_ID=1120001 WHERE LBR_TaxGroup_ID IN 
(SELECT LBR_TaxGroup_ID FROM LBR_TaxGroup WHERE LBR_TaxGroup_ID<>1120001 AND Name LIKE '%PIS%')
;
-- Tabela LBR_NFLINeTax
UPDATE LBR_NFLINeTax SET LBR_TaxGroup_ID=1120001 WHERE LBR_TaxGroup_ID IN 
(SELECT LBR_TaxGroup_ID FROM LBR_TaxGroup WHERE LBR_TaxGroup_ID<>1120001 AND Name LIKE '%PIS%')
;
-- Tabela LBR_TaxGroup
DELETE FROM LBR_TaxGroup WHERE LBR_TaxGroup_ID<>1120001 AND Name LIKE '%PIS%'
;
-- COFINS
-- Tabela C_Tax
UPDATE C_Tax SET LBR_TaxGroup_ID=1120002 WHERE LBR_TaxGroup_ID IN 
(SELECT LBR_TaxGroup_ID FROM LBR_TaxGroup WHERE LBR_TaxGroup_ID<>1120002 AND Name LIKE '%COFINS%')
;
-- Tabela LBR_NFTax
UPDATE LBR_NFTax SET LBR_TaxGroup_ID=1120002 WHERE LBR_TaxGroup_ID IN 
(SELECT LBR_TaxGroup_ID FROM LBR_TaxGroup WHERE LBR_TaxGroup_ID<>1120002 AND Name LIKE '%COFINS%')
;
-- Tabela LBR_NFLINeTax
UPDATE LBR_NFLINeTax SET LBR_TaxGroup_ID=1120002 WHERE LBR_TaxGroup_ID IN 
(SELECT LBR_TaxGroup_ID FROM LBR_TaxGroup WHERE LBR_TaxGroup_ID<>1120002 AND Name LIKE '%COFINS%')
;
-- Tabela LBR_TaxGroup
DELETE FROM LBR_TaxGroup WHERE LBR_TaxGroup_ID<>1120002 AND Name LIKE '%COFINS%'
;
-- IPI
-- Tabela C_Tax
UPDATE C_Tax SET LBR_TaxGroup_ID=1120003 WHERE LBR_TaxGroup_ID IN 
(SELECT LBR_TaxGroup_ID FROM LBR_TaxGroup WHERE LBR_TaxGroup_ID<>1120003 AND Name LIKE '%IPI%');

-- Tabela LBR_NFTax
UPDATE LBR_NFTax SET LBR_TaxGroup_ID=1120003 WHERE LBR_TaxGroup_ID IN 
(SELECT LBR_TaxGroup_ID FROM LBR_TaxGroup WHERE LBR_TaxGroup_ID<>1120003 AND Name LIKE '%IPI%');

-- Tabela LBR_NFLINeTax
UPDATE LBR_NFLINeTax SET LBR_TaxGroup_ID=1120003 WHERE LBR_TaxGroup_ID IN 
(SELECT LBR_TaxGroup_ID FROM LBR_TaxGroup WHERE LBR_TaxGroup_ID<>1120003 AND Name LIKE '%IPI%');

-- Tabela LBR_TaxGroup
DELETE FROM LBR_TaxGroup WHERE LBR_TaxGroup_ID<>1120003 AND Name LIKE '%IPI%';

-- II
-- Tabela C_Tax
UPDATE C_Tax SET LBR_TaxGroup_ID=1120004 WHERE LBR_TaxGroup_ID IN 
(SELECT LBR_TaxGroup_ID FROM LBR_TaxGroup WHERE LBR_TaxGroup_ID<>1120004 AND Name LIKE '%II%');

-- Tabela LBR_NFTax
UPDATE LBR_NFTax SET LBR_TaxGroup_ID=1120004 WHERE LBR_TaxGroup_ID IN 
(SELECT LBR_TaxGroup_ID FROM LBR_TaxGroup WHERE LBR_TaxGroup_ID<>1120004 AND Name LIKE '%II%');

-- Tabela LBR_NFLINeTax
UPDATE LBR_NFLINeTax SET LBR_TaxGroup_ID=1120004 WHERE LBR_TaxGroup_ID IN 
(SELECT LBR_TaxGroup_ID FROM LBR_TaxGroup WHERE LBR_TaxGroup_ID<>1120004 AND Name LIKE '%II%');

-- Tabela LBR_TaxGroup
DELETE FROM LBR_TaxGroup WHERE LBR_TaxGroup_ID<>1120004 AND Name LIKE '%II%';

-- IIS
-- Tabela C_Tax
UPDATE C_Tax SET LBR_TaxGroup_ID=1120005 WHERE LBR_TaxGroup_ID IN 
(SELECT LBR_TaxGroup_ID FROM LBR_TaxGroup WHERE LBR_TaxGroup_ID<>1120005 AND Name LIKE '%IIS%');

-- Tabela LBR_NFTax
UPDATE LBR_NFTax SET LBR_TaxGroup_ID=1120005 WHERE LBR_TaxGroup_ID IN 
(SELECT LBR_TaxGroup_ID FROM LBR_TaxGroup WHERE LBR_TaxGroup_ID<>1120005 AND Name LIKE '%IIS%');

-- Tabela LBR_NFLINeTax
UPDATE LBR_NFLINeTax SET LBR_TaxGroup_ID=1120005 WHERE LBR_TaxGroup_ID IN 
(SELECT LBR_TaxGroup_ID FROM LBR_TaxGroup WHERE LBR_TaxGroup_ID<>1120005 AND Name LIKE '%IIS%');

-- Tabela LBR_TaxGroup
DELETE FROM LBR_TaxGroup WHERE LBR_TaxGroup_ID<>1120005 AND Name LIKE '%IIS%';

-- IR
-- Tabela C_Tax
UPDATE C_Tax SET LBR_TaxGroup_ID=1120006 WHERE LBR_TaxGroup_ID IN 
(SELECT LBR_TaxGroup_ID FROM LBR_TaxGroup WHERE LBR_TaxGroup_ID<>1120006 AND Name LIKE '%IR%');

-- Tabela LBR_NFTax
UPDATE LBR_NFTax SET LBR_TaxGroup_ID=1120006 WHERE LBR_TaxGroup_ID IN 
(SELECT LBR_TaxGroup_ID FROM LBR_TaxGroup WHERE LBR_TaxGroup_ID<>1120006 AND Name LIKE '%IR%');

-- Tabela LBR_NFLINeTax
UPDATE LBR_NFLINeTax SET LBR_TaxGroup_ID=1120006 WHERE LBR_TaxGroup_ID IN 
(SELECT LBR_TaxGroup_ID FROM LBR_TaxGroup WHERE LBR_TaxGroup_ID<>1120006 AND Name LIKE '%IR%');

-- Tabela LBR_TaxGroup
DELETE FROM LBR_TaxGroup WHERE LBR_TaxGroup_ID<>1120006 AND Name LIKE '%IR%';


