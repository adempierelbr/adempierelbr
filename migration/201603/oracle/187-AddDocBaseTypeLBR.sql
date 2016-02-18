-- 18/02/2016 14h39min47s BRST
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121767,1000043,TO_DATE('2016-02-18 14:39:45','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Sales Order Maintenance In',TO_DATE('2016-02-18 14:39:45','YYYY-MM-DD HH24:MI:SS'),100,'OVCO+')
;

-- 18/02/2016 14h39min47s BRST
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121767 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 18/02/2016 14h39min58s BRST
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Name='Ordem de Venda de Entrada para Conserto',Updated=TO_DATE('2016-02-18 14:39:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121767 AND AD_Language='pt_BR'
;

-- 18/02/2016 14h40min40s BRST
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121768,1000043,TO_DATE('2016-02-18 14:40:39','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Sales Order Maintenance Out',TO_DATE('2016-02-18 14:40:39','YYYY-MM-DD HH24:MI:SS'),100,'OVCO-')
;

-- 18/02/2016 14h40min40s BRST
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121768 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 18/02/2016 14h40min51s BRST
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Name='Ordem de Venda de Retorno de Conserto',Updated=TO_DATE('2016-02-18 14:40:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121768 AND AD_Language='pt_BR'
;

-- 18/02/2016 14h41min16s BRST
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121769,1000043,TO_DATE('2016-02-18 14:41:14','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Sales Order Demonstration Out',TO_DATE('2016-02-18 14:41:14','YYYY-MM-DD HH24:MI:SS'),100,'OVDE-')
;

-- 18/02/2016 14h41min16s BRST
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121769 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 18/02/2016 14h41min20s BRST
UPDATE AD_Ref_List_Trl SET Name='Ordem de Venda de Envio de Demonstração',Updated=TO_DATE('2016-02-18 14:41:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121769 AND AD_Language='pt_BR'
;

-- 18/02/2016 14h41min36s BRST
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121770,1000043,TO_DATE('2016-02-18 14:41:36','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Sales Order Demonstration In',TO_DATE('2016-02-18 14:41:36','YYYY-MM-DD HH24:MI:SS'),100,'OVDE+')
;

-- 18/02/2016 14h41min36s BRST
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121770 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 18/02/2016 14h41min44s BRST
UPDATE AD_Ref_List_Trl SET Name='Ordem de Venda de Retorno da Demonstração',Updated=TO_DATE('2016-02-18 14:41:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121770 AND AD_Language='pt_BR'
;

-- 18/02/2016 14h45min1s BRST
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121771,1000043,TO_DATE('2016-02-18 14:45:00','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Sales Order Other In',TO_DATE('2016-02-18 14:45:00','YYYY-MM-DD HH24:MI:SS'),100,'OVOE+')
;

-- 18/02/2016 14h45min1s BRST
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121771 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 18/02/2016 14h45min7s BRST
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Name='Ordem de Venda de Outras Entradas',Updated=TO_DATE('2016-02-18 14:45:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121771 AND AD_Language='pt_BR'
;

-- 18/02/2016 14h45min22s BRST
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121772,1000043,TO_DATE('2016-02-18 14:45:21','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Sales Order Other Out',TO_DATE('2016-02-18 14:45:21','YYYY-MM-DD HH24:MI:SS'),100,'OVOS-')
;

-- 18/02/2016 14h45min22s BRST
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121772 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 18/02/2016 14h45min27s BRST
UPDATE AD_Ref_List_Trl SET Name='Ordem de Venda de Outras Saídas',Updated=TO_DATE('2016-02-18 14:45:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121772 AND AD_Language='pt_BR'
;

-- 18/02/2016 14h45min31s BRST
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Updated=TO_DATE('2016-02-18 14:45:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121772 AND AD_Language='pt_BR'
;

-- 18/02/2016 14h48min57s BRST
UPDATE AD_Ref_List SET Value='DEFA+',Updated=TO_DATE('2016-02-18 14:48:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1000076
;

-- 18/02/2016 14h48min58s BRST
UPDATE AD_Ref_List SET Value='EXEC-',Updated=TO_DATE('2016-02-18 14:48:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1000068
;

-- 18/02/2016 14h48min59s BRST
UPDATE AD_Ref_List SET Value='EXFC-',Updated=TO_DATE('2016-02-18 14:48:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1000074
;

-- 18/02/2016 14h49min0s BRST
UPDATE AD_Ref_List SET Value='EXRC+',Updated=TO_DATE('2016-02-18 14:49:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1000071
;

-- 18/02/2016 14h49min0s BRST
UPDATE AD_Ref_List SET Value='FAEC-',Updated=TO_DATE('2016-02-18 14:49:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1000069
;

-- 18/02/2016 14h49min1s BRST
UPDATE AD_Ref_List SET Value='FAFC-',Updated=TO_DATE('2016-02-18 14:49:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1000075
;

-- 18/02/2016 14h49min2s BRST
UPDATE AD_Ref_List SET Value='FARC+',Updated=TO_DATE('2016-02-18 14:49:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1000072
;

-- 18/02/2016 14h49min3s BRST
UPDATE AD_Ref_List SET Value='OVEC-',Updated=TO_DATE('2016-02-18 14:49:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1000067
;

-- 18/02/2016 14h49min3s BRST
UPDATE AD_Ref_List SET Value='OVFC-',Updated=TO_DATE('2016-02-18 14:49:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1000073
;

-- 18/02/2016 14h49min4s BRST
UPDATE AD_Ref_List SET Value='OVRC+',Updated=TO_DATE('2016-02-18 14:49:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1000070
;

-- 18/02/2016 15h0min17s BRST
UPDATE AD_Column SET FieldLength=5,Updated=TO_DATE('2016-02-18 15:00:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1001023
;

-- 18/02/2016 15h0min18s BRST
ALTER TABLE C_DocType MODIFY lbr_DocBaseType NVARCHAR2(5) DEFAULT NULL 
;

-- 18/02/2016 14h49min4s BRST
UPDATE C_DocType SET lbr_DocBaseType='DEFA+' WHERE lbr_DocBaseType='DEFA';
UPDATE C_DocType SET lbr_DocBaseType='EXEC-' WHERE lbr_DocBaseType='EXEC';
UPDATE C_DocType SET lbr_DocBaseType='EXFC-' WHERE lbr_DocBaseType='EXFC';
UPDATE C_DocType SET lbr_DocBaseType='EXRC+' WHERE lbr_DocBaseType='EXRC';
UPDATE C_DocType SET lbr_DocBaseType='FAEC-' WHERE lbr_DocBaseType='FAEC';
UPDATE C_DocType SET lbr_DocBaseType='FAFC-' WHERE lbr_DocBaseType='FAFC';
UPDATE C_DocType SET lbr_DocBaseType='FARC+' WHERE lbr_DocBaseType='FARC';
UPDATE C_DocType SET lbr_DocBaseType='OVEC-' WHERE lbr_DocBaseType='OVEC';
UPDATE C_DocType SET lbr_DocBaseType='OVFC-' WHERE lbr_DocBaseType='OVFC';
UPDATE C_DocType SET lbr_DocBaseType='OVRC+' WHERE lbr_DocBaseType='OVRC';

-- 18/02/2016 14h49min4s BRST
SELECT Register_Migration_Script ('187-AddDocBaseTypeLBR.sql') FROM DUAL
;

EXIT