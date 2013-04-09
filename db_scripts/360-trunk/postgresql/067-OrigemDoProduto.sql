/******************************************************************************
 * Copyright (C) 2013 Kenos Assessoria e Consultoria de Sistemas Ltda         *
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
-- 27/12/2012 15h20min11s BRST
-- Novos CSTs para Origem do Produto - https://adempiere.atlassian.net/browse/LBR-71
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1000031,1121320,TO_TIMESTAMP('2012-12-27 15:20:08','YYYY-MM-DD HH24:MI:SS'),100,'U','Y','Domestic with more than 40 percent Imported',TO_TIMESTAMP('2012-12-27 15:20:08','YYYY-MM-DD HH24:MI:SS'),100,'3')
;

-- 27/12/2012 15h20min11s BRST
-- Novos CSTs para Origem do Produto - https://adempiere.atlassian.net/browse/LBR-71
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121320 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 27/12/2012 15h20min42s BRST
-- Novos CSTs para Origem do Produto - https://adempiere.atlassian.net/browse/LBR-71
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Name='Produto nacional com conteúdo importado acima de 40%',Updated=TO_TIMESTAMP('2012-12-27 15:20:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121320 AND AD_Language='pt_BR'
;

-- 27/12/2012 15h22min0s BRST
-- Novos CSTs para Origem do Produto - https://adempiere.atlassian.net/browse/LBR-71
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1000031,1121321,TO_TIMESTAMP('2012-12-27 15:21:58','YYYY-MM-DD HH24:MI:SS'),100,'U','Y','Product acquired from Manaus',TO_TIMESTAMP('2012-12-27 15:21:58','YYYY-MM-DD HH24:MI:SS'),100,'4')
;

-- 27/12/2012 15h22min0s BRST
-- Novos CSTs para Origem do Produto - https://adempiere.atlassian.net/browse/LBR-71
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121321 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 27/12/2012 15h22min13s BRST
-- Novos CSTs para Origem do Produto - https://adempiere.atlassian.net/browse/LBR-71
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Name='Produto adquirido de Manaus',Updated=TO_TIMESTAMP('2012-12-27 15:22:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121321 AND AD_Language='pt_BR'
;

-- 27/12/2012 15h23min56s BRST
-- Novos CSTs para Origem do Produto - https://adempiere.atlassian.net/browse/LBR-71
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1000031,1121322,TO_TIMESTAMP('2012-12-27 15:23:50','YYYY-MM-DD HH24:MI:SS'),100,'U','Y','Domestic until 40 percent Imported',TO_TIMESTAMP('2012-12-27 15:23:50','YYYY-MM-DD HH24:MI:SS'),100,'5')
;

-- 27/12/2012 15h23min56s BRST
-- Novos CSTs para Origem do Produto - https://adempiere.atlassian.net/browse/LBR-71
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121322 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 27/12/2012 15h24min29s BRST
-- Novos CSTs para Origem do Produto - https://adempiere.atlassian.net/browse/LBR-71
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Name='Produto nacional com conteúdo até 40% de importado',Updated=TO_TIMESTAMP('2012-12-27 15:24:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121322 AND AD_Language='pt_BR'
;

-- 27/12/2012 15h26min18s BRST
-- Novos CSTs para Origem do Produto - https://adempiere.atlassian.net/browse/LBR-71
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1000031,1121323,TO_TIMESTAMP('2012-12-27 15:26:16','YYYY-MM-DD HH24:MI:SS'),100,'U','Y','Foreign - Direct import no similar national',TO_TIMESTAMP('2012-12-27 15:26:16','YYYY-MM-DD HH24:MI:SS'),100,'6')
;

-- 27/12/2012 15h26min18s BRST
-- Novos CSTs para Origem do Produto - https://adempiere.atlassian.net/browse/LBR-71
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121323 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 27/12/2012 15h26min42s BRST
-- Novos CSTs para Origem do Produto - https://adempiere.atlassian.net/browse/LBR-71
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Name='Estrangeira – Importação direta sem similar nacional',Updated=TO_TIMESTAMP('2012-12-27 15:26:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121323 AND AD_Language='pt_BR'
;

-- 27/12/2012 15h28min58s BRST
-- Novos CSTs para Origem do Produto - https://adempiere.atlassian.net/browse/LBR-71
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1000031,1121324,TO_TIMESTAMP('2012-12-27 15:28:57','YYYY-MM-DD HH24:MI:SS'),100,'U','Y','Foreign',TO_TIMESTAMP('2012-12-27 15:28:57','YYYY-MM-DD HH24:MI:SS'),100,'7')
;

-- 27/12/2012 15h28min58s BRST
-- Novos CSTs para Origem do Produto - https://adempiere.atlassian.net/browse/LBR-71
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121324 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 27/12/2012 15h29min39s BRST
-- Novos CSTs para Origem do Produto - https://adempiere.atlassian.net/browse/LBR-71
UPDATE AD_Ref_List SET Name='Foreign - Acquired from a domestic distributor',Updated=TO_TIMESTAMP('2012-12-27 15:29:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121324
;

-- 27/12/2012 15h29min39s BRST
-- Novos CSTs para Origem do Produto - https://adempiere.atlassian.net/browse/LBR-71
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=1121324
;

-- 27/12/2012 15h29min39s BRST
-- Novos CSTs para Origem do Produto - https://adempiere.atlassian.net/browse/LBR-71
UPDATE AD_Ref_List_Trl SET Description=NULL,Name='Foreign - Acquired from a domestic distributor',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Ref_List_ID=1121324
;

-- 27/12/2012 15h29min57s BRST
-- Novos CSTs para Origem do Produto - https://adempiere.atlassian.net/browse/LBR-71
UPDATE AD_Ref_List SET Name='Foreign - Acquired from a domestic distributor no similar national',Updated=TO_TIMESTAMP('2012-12-27 15:29:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121324
;

-- 27/12/2012 15h29min57s BRST
-- Novos CSTs para Origem do Produto - https://adempiere.atlassian.net/browse/LBR-71
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=1121324
;

-- 27/12/2012 15h29min57s BRST
-- Novos CSTs para Origem do Produto - https://adempiere.atlassian.net/browse/LBR-71
UPDATE AD_Ref_List_Trl SET Description=NULL,Name='Foreign - Acquired from a domestic distributor no similar national',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Ref_List_ID=1121324
;

-- 27/12/2012 15h30min34s BRST
-- Novos CSTs para Origem do Produto - https://adempiere.atlassian.net/browse/LBR-71
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Name='Estrangeira - Adquirida no mercado interno sem similar nacional',Updated=TO_TIMESTAMP('2012-12-27 15:30:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121324 AND AD_Language='pt_BR'
;

UPDATE AD_Ref_List SET Name = Value || ' - ' || Name WHERE AD_Reference_ID=1000031 AND Name NOT LIKE '_ -%'
;

UPDATE AD_Ref_List_Trl SET Name=(SELECT Value FROM AD_Ref_List WHERE AD_Ref_List.AD_Ref_List_ID=AD_Ref_List_Trl.AD_Ref_List_ID) || ' - ' || Name 
WHERE AD_Ref_List_ID IN (SELECT AD_Ref_List_ID FROM AD_Ref_List WHERE AD_Reference_ID=1000031) AND Name NOT LIKE '_ -%'
;

--	Atualiza o ultimo script
UPDATE AD_SysConfig SET Value='360-trunk/067-OrigemDoProduto.sql' WHERE AD_SysConfig_ID=1100006
;

