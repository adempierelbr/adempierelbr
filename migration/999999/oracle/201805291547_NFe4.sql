-- 30/01/2018 18h17min52s BRST
INSERT INTO AD_Element (AD_Element_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,ColumnName,Name,Description,Help,PrintName,EntityType) VALUES (1122437,0,0,'Y',TO_TIMESTAMP('2018-01-30 18:17:51','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-01-30 18:17:51','YYYY-MM-DD HH24:MI:SS'),100,'LBR_PORef_Item','Order Reference Item','Item reference to the Order Reference indicated in the same document','Item reference to the Order Reference indicated in the same document','Order Reference Item','LBRA')
;

-- 29/05/2018 16h46min16s BRT
-- NF-e 4.0
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1122437 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 30/01/2018 18h18min44s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging) VALUES (1130204,0,'Order Reference Item','Item reference to the Order Reference indicated in the same document','Item reference to the Order Reference indicated in the same document',260,'LBR_PORef_Item',20,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2018-01-30 18:18:43','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-01-30 18:18:43','YYYY-MM-DD HH24:MI:SS'),100,1122437,'Y','N','LBRA','N','N','N','Y')
;

-- 29/05/2018 16h48min17s BRT
-- NF-e 4.0
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1130204 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 30/01/2018 18h18min58s BRST
ALTER TABLE C_OrderLine ADD COLUMN LBR_PORef_Item VARCHAR(20) DEFAULT NULL 
;

-- 30/01/2018 18h22min20s BRST
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType) VALUES (1127296,'Order Reference Item','Item reference to the Order Reference indicated in the same document','Item reference to the Order Reference indicated in the same document',187,1130204,'Y',0,20420,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2018-01-30 18:22:19','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-01-30 18:22:19','YYYY-MM-DD HH24:MI:SS'),100,'N','Y','LBRA')
;

-- 29/05/2018 16h49min12s BRT
-- NF-e 4.0
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1127296 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 29/05/2018 15h23min51s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121843,1120204,TO_DATE('2018-05-29 15:23:51','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Operação presencial, fora do estabelecimento',TO_DATE('2018-05-29 15:23:51','YYYY-MM-DD HH24:MI:SS'),100,'5')
;

-- 29/05/2018 15h23min51s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121843 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 29/05/2018 15h25min6s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121844,1120208,TO_DATE('2018-05-29 15:25:06','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','NF Venda a Consumidor (Modelo 2)',TO_DATE('2018-05-29 15:25:06','YYYY-MM-DD HH24:MI:SS'),100,'2')
;

-- 29/05/2018 15h25min6s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121844 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 29/05/2018 15h38min52s BRT
-- NF-e 4.0
INSERT INTO AD_Val_Rule (AD_Client_ID,AD_Org_ID,AD_Val_Rule_ID,Code,Created,CreatedBy,EntityType,IsActive,Name,Type,Updated,UpdatedBy) VALUES (0,0,1120143,'EXISTS (SELECT ''1'' FROM AD_Ref_List rl WHERE rl.AD_Ref_List_ID=AD_Ref_List.AD_Ref_List_ID AND 
(CASE WHEN ''@LBR_FiscalDocRefType@''=''2'' THEN rl.Value=''02'' ELSE rl.Value!=''02'' END))',TO_DATE('2018-05-29 15:38:52','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','LBR_NotaFiscalDocRef - LBR_NFModel','S',TO_DATE('2018-05-29 15:38:52','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 29/05/2018 15h39min27s BRT
-- NF-e 4.0
UPDATE AD_Column SET AD_Val_Rule_ID=1120143,Updated=TO_DATE('2018-05-29 15:39:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1126488
;

-- 29/05/2018 15h40min56s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121845,1120147,TO_DATE('2018-05-29 15:40:56','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','3 - Transporte Próprio por conta do Remetente',TO_DATE('2018-05-29 15:40:56','YYYY-MM-DD HH24:MI:SS'),100,'3')
;

-- 29/05/2018 15h40min56s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121845 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 29/05/2018 15h41min9s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121846,1120147,TO_DATE('2018-05-29 15:41:09','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','4 - Transporte Próprio por conta do Destinatário',TO_DATE('2018-05-29 15:41:09','YYYY-MM-DD HH24:MI:SS'),100,'4')
;

-- 29/05/2018 15h41min9s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121846 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 29/05/2018 15h43min13s BRT
-- NF-e 4.0
UPDATE AD_Ref_List SET Name='0 - Contratação do Frete por conta do Remetente (CIF)',Updated=TO_DATE('2018-05-29 15:43:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121327
;

-- 29/05/2018 15h43min13s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=1121327
;

-- 29/05/2018 15h43min13s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET Description=NULL,Name='0 - Contratação do Frete por conta do Remetente (CIF)',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Ref_List_ID=1121327
;

-- 29/05/2018 15h43min18s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Name='0 - Contratação do Frete por conta do Remetente (CIF)',Updated=TO_DATE('2018-05-29 15:43:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121327 AND AD_Language='es_MX'
;

-- 29/05/2018 15h44min28s BRT
-- NF-e 4.0
UPDATE AD_Ref_List SET Name='1 - Contratação do Frete por conta do Destinatário (FOB)',Updated=TO_DATE('2018-05-29 15:44:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121328
;

-- 29/05/2018 15h44min28s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=1121328
;

-- 29/05/2018 15h44min28s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET Description=NULL,Name='1 - Contratação do Frete por conta do Destinatário (FOB)',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Ref_List_ID=1121328
;

-- 29/05/2018 15h44min34s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Name='1 - Contratação do Frete por conta do Destinatário (FOB)',Updated=TO_DATE('2018-05-29 15:44:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121328 AND AD_Language='es_MX'
;

-- 29/05/2018 15h45min2s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121847,1120147,TO_DATE('2018-05-29 15:45:02','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','2 - Contratação do Frete por conta de Terceiros',TO_DATE('2018-05-29 15:45:02','YYYY-MM-DD HH24:MI:SS'),100,'2')
;

-- 29/05/2018 15h45min2s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121847 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 29/05/2018 15h45min19s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121848,1120147,TO_DATE('2018-05-29 15:45:19','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','9 - Sem Ocorrência de Transporte',TO_DATE('2018-05-29 15:45:19','YYYY-MM-DD HH24:MI:SS'),100,'9')
;

-- 29/05/2018 15h45min19s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121848 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 29/05/2018 16h36min33s BRT
-- NF-e 4.0
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,1122474,0,'LBR_ScaleProduction',TO_DATE('2018-05-29 16:36:32','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Scale Production','Scale Production',TO_DATE('2018-05-29 16:36:32','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 29/05/2018 16h36min33s BRT
-- NF-e 4.0
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1122474 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 29/05/2018 16h37min57s BRT
-- NF-e 4.0
UPDATE AD_Element_Trl SET IsTranslated='Y',Name='Escala Relevante',PrintName='Escala Relevante',Description='Indicador de Produção em escala relevante, conforme Cláusula 23 do Convenio ICMS 52/2017',Help='Indicador de Produção em escala relevante, conforme Cláusula 23 do Convenio ICMS 52/2017:
S - Produzido em Escala Relevante;
N – Produzido em Escala NÃO Relevante.
Nota: preenchimento obrigatório para produtos com NCM relacionado no Anexo XXVII do Convenio 52/2017',Updated=TO_DATE('2018-05-29 16:37:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1122474 AND AD_Language='pt_BR'
;

-- 29/05/2018 16h38min46s BRT
-- NF-e 4.0
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1130277,1122474,0,17,319,1000028,'LBR_ScaleProduction',TO_DATE('2018-05-29 16:38:46','YYYY-MM-DD HH24:MI:SS'),100,'LBRA',1,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Scale Production',0,TO_DATE('2018-05-29 16:38:46','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 29/05/2018 16h38min46s BRT
-- NF-e 4.0
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1130277 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 29/05/2018 16h38min52s BRT
-- NF-e 4.0
ALTER TABLE LBR_NotaFiscalLine ADD LBR_ScaleProduction CHAR(1) DEFAULT NULL 
;

-- 29/05/2018 16h40min14s BRT
-- NF-e 4.0
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,1122475,0,'LBR_CNPJManufacturer',TO_DATE('2018-05-29 16:40:14','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','CNPJ Manufacturer','CNPJ Manufacturer',TO_DATE('2018-05-29 16:40:14','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 29/05/2018 16h40min14s BRT
-- NF-e 4.0
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1122475 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 29/05/2018 16h40min24s BRT
-- NF-e 4.0
UPDATE AD_Element_Trl SET IsTranslated='Y',Name='CNPJ do Fabricante',PrintName='CNPJ do Fabricante',Updated=TO_DATE('2018-05-29 16:40:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1122475 AND AD_Language='pt_BR'
;

-- 29/05/2018 16h41min14s BRT
-- NF-e 4.0
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,VFormat,Version) VALUES (0,1130278,1122475,0,10,1000028,'LBR_CNPJManufacturer',TO_DATE('2018-05-29 16:41:14','YYYY-MM-DD HH24:MI:SS'),100,'LBRA',18,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','CNPJ Manufacturer',0,TO_DATE('2018-05-29 16:41:14','YYYY-MM-DD HH24:MI:SS'),100,'00.000.000/0000-00',0)
;

-- 29/05/2018 16h41min14s BRT
-- NF-e 4.0
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1130278 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 29/05/2018 16h41min17s BRT
-- NF-e 4.0
ALTER TABLE LBR_NotaFiscalLine ADD LBR_CNPJManufacturer NVARCHAR2(18) DEFAULT NULL 
;

-- 29/05/2018 16h42min9s BRT
-- NF-e 4.0
UPDATE AD_Column SET MandatoryLogic='@LBR_ScaleProduction@=N',Updated=TO_DATE('2018-05-29 16:42:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1130278
;

-- 29/05/2018 16h43min52s BRT
-- NF-e 4.0
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_FieldGroup_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1130277,106,1127363,0,1000021,TO_DATE('2018-05-29 16:43:51','YYYY-MM-DD HH24:MI:SS'),100,22,'LBRA','Y','Y','Y','N','N','N','N','N','Scale Production',175,TO_DATE('2018-05-29 16:43:51','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 29/05/2018 16h43min52s BRT
-- NF-e 4.0
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1127363 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 29/05/2018 16h44min7s BRT
-- NF-e 4.0
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_FieldGroup_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1130278,106,1127364,0,1000021,TO_DATE('2018-05-29 16:44:07','YYYY-MM-DD HH24:MI:SS'),100,22,'LBRA','Y','Y','Y','N','N','N','N','Y','CNPJ Manufacturer',176,TO_DATE('2018-05-29 16:44:07','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 29/05/2018 16h44min7s BRT
-- NF-e 4.0
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1127364 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 29/05/2018 16h46min16s BRT
-- NF-e 4.0
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,1122476,0,'LBR_TaxBenefitCode',TO_DATE('2018-05-29 16:46:15','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Tax Benefit Code','Tax Benefit Code',TO_DATE('2018-05-29 16:46:15','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 29/05/2018 16h46min16s BRT
-- NF-e 4.0
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1122476 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 29/05/2018 16h47min20s BRT
-- NF-e 4.0
UPDATE AD_Element_Trl SET IsTranslated='Y',Name='Código de Benefício Fiscal',PrintName='Código de Benefício Fiscal',Description='Código de Benefício Fiscal na UF  aplicado ao item',Help='Código de Benefício Fiscal utilizado pela UF, aplicado ao item.
Obs.: Deve ser utilizado o mesmo código adotado na EFD e outras declarações, nas UF que o exigem.',Updated=TO_DATE('2018-05-29 16:47:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1122476 AND AD_Language='pt_BR'
;

-- 29/05/2018 16h48min17s BRT
-- NF-e 4.0
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1130279,1122476,0,10,1000028,'LBR_TaxBenefitCode',TO_DATE('2018-05-29 16:48:17','YYYY-MM-DD HH24:MI:SS'),100,'LBRA',10,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Tax Benefit Code',0,TO_DATE('2018-05-29 16:48:17','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 29/05/2018 16h48min17s BRT
-- NF-e 4.0
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1130279 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 29/05/2018 16h48min20s BRT
-- NF-e 4.0
ALTER TABLE LBR_NotaFiscalLine ADD LBR_TaxBenefitCode NVARCHAR2(10) DEFAULT NULL 
;

-- 29/05/2018 16h49min12s BRT
-- NF-e 4.0
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_FieldGroup_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,DisplayLogic,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1130279,106,1127365,0,1000021,TO_DATE('2018-05-29 16:49:12','YYYY-MM-DD HH24:MI:SS'),100,60,NULL,'LBRA','Y','Y','Y','N','N','N','N','Y','Tax Benefit Code',185,TO_DATE('2018-05-29 16:49:12','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 29/05/2018 16h49min12s BRT
-- NF-e 4.0
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1127365 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 29/05/2018 17h8min33s BRT
-- NF-e 4.0
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1130280,952,0,10,1000028,'POReference',TO_DATE('2018-05-29 17:08:33','YYYY-MM-DD HH24:MI:SS'),100,'Transaction Reference Number (Sales Order, Purchase Order) of your Business Partner','LBRA',20,'The business partner order reference is the order reference for this specific transaction; Often Purchase Order numbers are given to print on Invoices for easier reference.  A standard number can be defined in the Business Partner (Customer) window.','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Order Reference',0,TO_DATE('2018-05-29 17:08:33','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 29/05/2018 17h8min33s BRT
-- NF-e 4.0
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1130280 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 29/05/2018 17h8min37s BRT
-- NF-e 4.0
ALTER TABLE LBR_NotaFiscalLine ADD POReference NVARCHAR2(20) DEFAULT NULL 
;

-- 29/05/2018 17h13min59s BRT
-- NF-e 4.0
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1130281,1122437,0,10,1000028,'LBR_PORef_Item',TO_DATE('2018-05-29 17:13:59','YYYY-MM-DD HH24:MI:SS'),100,'Item reference to the Order Reference indicated in the same document','LBRA',20,'Item reference to the Order Reference indicated in the same document','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Order Reference Item',0,TO_DATE('2018-05-29 17:13:59','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 29/05/2018 17h13min59s BRT
-- NF-e 4.0
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1130281 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 29/05/2018 17h14min2s BRT
-- NF-e 4.0
ALTER TABLE LBR_NotaFiscalLine ADD LBR_PORef_Item NVARCHAR2(20) DEFAULT NULL 
;

-- 29/05/2018 17h35min22s BRT
-- NF-e 4.0
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,1122477,0,'LBR_AFRMMAmt',TO_DATE('2018-05-29 17:35:22','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','AFRMM Amount','AFRMM Amount',TO_DATE('2018-05-29 17:35:22','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 29/05/2018 17h35min22s BRT
-- NF-e 4.0
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1122477 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 29/05/2018 17h36min27s BRT
-- NF-e 4.0
UPDATE AD_Element_Trl SET IsTranslated='Y',Name='Valor do AFRMM',PrintName='Valor do AFRMM',Description='Valor do Adicional ao Frete para Renovação da Marinha Mercante',Help='Valor do Adicional ao Frete para Renovação da Marinha Mercante (AFRMM)',Updated=TO_DATE('2018-05-29 17:36:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1122477 AND AD_Language='pt_BR'
;

-- 29/05/2018 17h36min42s BRT
-- NF-e 4.0
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1130282,1122477,0,12,1000028,'LBR_AFRMMAmt',TO_DATE('2018-05-29 17:36:42','YYYY-MM-DD HH24:MI:SS'),100,'LBRA',10,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','AFRMM Amount',0,TO_DATE('2018-05-29 17:36:42','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 29/05/2018 17h36min42s BRT
-- NF-e 4.0
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1130282 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 29/05/2018 17h36min44s BRT
-- NF-e 4.0
ALTER TABLE LBR_NotaFiscalLine ADD LBR_AFRMMAmt NUMBER DEFAULT NULL 
;

-- 29/05/2018 17h38min45s BRT
-- NF-e 4.0
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_FieldGroup_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,SortNo,Updated,UpdatedBy) VALUES (0,1130282,103,1127366,0,1000021,TO_DATE('2018-05-29 17:38:44','YYYY-MM-DD HH24:MI:SS'),100,22,'LBRA','Y','Y','Y','N','N','N','N','Y','AFRMM Amount',274,0,TO_DATE('2018-05-29 17:38:44','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 29/05/2018 17h38min45s BRT
-- NF-e 4.0
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1127366 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 29/05/2018 17h41min8s BRT
-- NF-e 4.0
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1130283,1121529,0,17,1120183,1000027,'LBR_TaxRegime',TO_DATE('2018-05-29 17:41:07','YYYY-MM-DD HH24:MI:SS'),100,'LBRA',1,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Tax Regime',0,TO_DATE('2018-05-29 17:41:07','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 29/05/2018 17h41min8s BRT
-- NF-e 4.0
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1130283 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 29/05/2018 17h41min10s BRT
-- NF-e 4.0
ALTER TABLE LBR_NotaFiscal ADD LBR_TaxRegime CHAR(1) DEFAULT NULL 
;

-- 29/05/2018 17h44min41s BRT
-- NF-e 4.0
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_FieldGroup_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,DisplayLogic,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1130283,1120053,1127367,0,1000020,TO_DATE('2018-05-29 17:44:40','YYYY-MM-DD HH24:MI:SS'),100,22,NULL,'LBRA','Y','Y','Y','N','N','N','N','N','Tax Regime',1065,TO_DATE('2018-05-29 17:44:40','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 29/05/2018 17h44min41s BRT
-- NF-e 4.0
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1127367 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 29/05/2018 17h53min22s BRT
-- NF-e 4.0
UPDATE AD_Column SET DefaultValue='0', IsMandatory='Y',Updated=TO_DATE('2018-05-29 17:53:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1130282
;

-- 29/05/2018 17h53min24s BRT
-- NF-e 4.0
ALTER TABLE LBR_NotaFiscalLine MODIFY LBR_AFRMMAmt NUMBER DEFAULT 0
;

-- 29/05/2018 17h53min24s BRT
-- NF-e 4.0
UPDATE LBR_NotaFiscalLine SET LBR_AFRMMAmt=0 WHERE LBR_AFRMMAmt IS NULL
;

-- 29/05/2018 17h53min24s BRT
-- NF-e 4.0
ALTER TABLE LBR_NotaFiscalLine MODIFY LBR_AFRMMAmt NOT NULL
;

