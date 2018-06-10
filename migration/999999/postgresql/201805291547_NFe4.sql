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
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121843,1120204,TO_TIMESTAMP('2018-05-29 15:23:51','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Operação presencial, fora do estabelecimento',TO_TIMESTAMP('2018-05-29 15:23:51','YYYY-MM-DD HH24:MI:SS'),100,'5')
;

-- 29/05/2018 15h23min51s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121843 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 29/05/2018 15h25min6s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121844,1120208,TO_TIMESTAMP('2018-05-29 15:25:06','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','NF Venda a Consumidor (Modelo 2)',TO_TIMESTAMP('2018-05-29 15:25:06','YYYY-MM-DD HH24:MI:SS'),100,'2')
;

-- 29/05/2018 15h25min6s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121844 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 29/05/2018 15h38min52s BRT
-- NF-e 4.0
INSERT INTO AD_Val_Rule (AD_Client_ID,AD_Org_ID,AD_Val_Rule_ID,Code,Created,CreatedBy,EntityType,IsActive,Name,Type,Updated,UpdatedBy) VALUES (0,0,1120143,'EXISTS (SELECT ''1'' FROM AD_Ref_List rl WHERE rl.AD_Ref_List_ID=AD_Ref_List.AD_Ref_List_ID AND 
(CASE WHEN ''@LBR_FiscalDocRefType@''=''2'' THEN rl.Value=''02'' ELSE rl.Value!=''02'' END))',TO_TIMESTAMP('2018-05-29 15:38:52','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','LBR_NotaFiscalDocRef - LBR_NFModel','S',TO_TIMESTAMP('2018-05-29 15:38:52','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 29/05/2018 15h39min27s BRT
-- NF-e 4.0
UPDATE AD_Column SET AD_Val_Rule_ID=1120143,Updated=TO_TIMESTAMP('2018-05-29 15:39:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1126488
;

-- 29/05/2018 15h40min56s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121845,1120147,TO_TIMESTAMP('2018-05-29 15:40:56','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','3 - Transporte Próprio por conta do Remetente',TO_TIMESTAMP('2018-05-29 15:40:56','YYYY-MM-DD HH24:MI:SS'),100,'3')
;

-- 29/05/2018 15h40min56s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121845 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 29/05/2018 15h41min9s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121846,1120147,TO_TIMESTAMP('2018-05-29 15:41:09','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','4 - Transporte Próprio por conta do Destinatário',TO_TIMESTAMP('2018-05-29 15:41:09','YYYY-MM-DD HH24:MI:SS'),100,'4')
;

-- 29/05/2018 15h41min9s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121846 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 29/05/2018 15h43min13s BRT
-- NF-e 4.0
UPDATE AD_Ref_List SET Name='0 - Contratação do Frete por conta do Remetente (CIF)',Updated=TO_TIMESTAMP('2018-05-29 15:43:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121327
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
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Name='0 - Contratação do Frete por conta do Remetente (CIF)',Updated=TO_TIMESTAMP('2018-05-29 15:43:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121327 AND AD_Language='es_MX'
;

-- 01/06/2018 13h26min28s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Name='0 - Contratação do Frete por conta do Remetente (CIF)',Updated=TO_TIMESTAMP('2018-06-01 13:26:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121327 AND AD_Language='pt_BR'
;

-- 29/05/2018 15h44min28s BRT
-- NF-e 4.0
UPDATE AD_Ref_List SET Name='1 - Contratação do Frete por conta do Destinatário (FOB)',Updated=TO_TIMESTAMP('2018-05-29 15:44:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121328
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
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Name='1 - Contratação do Frete por conta do Destinatário (FOB)',Updated=TO_TIMESTAMP('2018-05-29 15:44:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121328 AND AD_Language='es_MX'
;

-- 01/06/2018 13h26min37s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Name='1 - Contratação do Frete por conta do Destinatário (FOB)',Updated=TO_TIMESTAMP('2018-06-01 13:26:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121328 AND AD_Language='pt_BR'
;

-- 29/05/2018 15h45min2s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121847,1120147,TO_TIMESTAMP('2018-05-29 15:45:02','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','2 - Contratação do Frete por conta de Terceiros',TO_TIMESTAMP('2018-05-29 15:45:02','YYYY-MM-DD HH24:MI:SS'),100,'2')
;

-- 29/05/2018 15h45min2s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121847 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 29/05/2018 15h45min19s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121848,1120147,TO_TIMESTAMP('2018-05-29 15:45:19','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','9 - Sem Ocorrência de Transporte',TO_TIMESTAMP('2018-05-29 15:45:19','YYYY-MM-DD HH24:MI:SS'),100,'9')
;

-- 29/05/2018 15h45min19s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121848 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 29/05/2018 16h36min33s BRT
-- NF-e 4.0
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,1122474,0,'LBR_ScaleProduction',TO_TIMESTAMP('2018-05-29 16:36:32','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Scale Production','Scale Production',TO_TIMESTAMP('2018-05-29 16:36:32','YYYY-MM-DD HH24:MI:SS'),100)
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
Nota: preenchimento obrigatório para produtos com NCM relacionado no Anexo XXVII do Convenio 52/2017',Updated=TO_TIMESTAMP('2018-05-29 16:37:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1122474 AND AD_Language='pt_BR'
;

-- 29/05/2018 16h38min46s BRT
-- NF-e 4.0
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1130277,1122474,0,17,319,1000028,'LBR_ScaleProduction',TO_TIMESTAMP('2018-05-29 16:38:46','YYYY-MM-DD HH24:MI:SS'),100,'LBRA',1,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Scale Production',0,TO_TIMESTAMP('2018-05-29 16:38:46','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 29/05/2018 16h38min46s BRT
-- NF-e 4.0
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1130277 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 29/05/2018 16h38min52s BRT
-- NF-e 4.0
ALTER TABLE LBR_NotaFiscalLine ADD COLUMN LBR_ScaleProduction CHAR(1) DEFAULT NULL 
;

-- 29/05/2018 16h40min14s BRT
-- NF-e 4.0
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,1122475,0,'LBR_CNPJManufacturer',TO_TIMESTAMP('2018-05-29 16:40:14','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','CNPJ Manufacturer','CNPJ Manufacturer',TO_TIMESTAMP('2018-05-29 16:40:14','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 29/05/2018 16h40min14s BRT
-- NF-e 4.0
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1122475 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 29/05/2018 16h40min24s BRT
-- NF-e 4.0
UPDATE AD_Element_Trl SET IsTranslated='Y',Name='CNPJ do Fabricante',PrintName='CNPJ do Fabricante',Updated=TO_TIMESTAMP('2018-05-29 16:40:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1122475 AND AD_Language='pt_BR'
;

-- 29/05/2018 16h41min14s BRT
-- NF-e 4.0
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,VFormat,Version) VALUES (0,1130278,1122475,0,10,1000028,'LBR_CNPJManufacturer',TO_TIMESTAMP('2018-05-29 16:41:14','YYYY-MM-DD HH24:MI:SS'),100,'LBRA',18,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','CNPJ Manufacturer',0,TO_TIMESTAMP('2018-05-29 16:41:14','YYYY-MM-DD HH24:MI:SS'),100,'00.000.000/0000-00',0)
;

-- 29/05/2018 16h41min14s BRT
-- NF-e 4.0
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1130278 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 29/05/2018 16h41min17s BRT
-- NF-e 4.0
ALTER TABLE LBR_NotaFiscalLine ADD COLUMN LBR_CNPJManufacturer VARCHAR(18) DEFAULT NULL 
;

-- 29/05/2018 16h42min9s BRT
-- NF-e 4.0
UPDATE AD_Column SET MandatoryLogic='@LBR_ScaleProduction@=N',Updated=TO_TIMESTAMP('2018-05-29 16:42:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1130278
;

-- 29/05/2018 16h43min52s BRT
-- NF-e 4.0
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_FieldGroup_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1130277,106,1127363,0,1000021,TO_TIMESTAMP('2018-05-29 16:43:51','YYYY-MM-DD HH24:MI:SS'),100,22,'LBRA','Y','Y','Y','N','N','N','N','N','Scale Production',175,TO_TIMESTAMP('2018-05-29 16:43:51','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 29/05/2018 16h43min52s BRT
-- NF-e 4.0
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1127363 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 29/05/2018 16h44min7s BRT
-- NF-e 4.0
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_FieldGroup_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1130278,106,1127364,0,1000021,TO_TIMESTAMP('2018-05-29 16:44:07','YYYY-MM-DD HH24:MI:SS'),100,22,'LBRA','Y','Y','Y','N','N','N','N','Y','CNPJ Manufacturer',176,TO_TIMESTAMP('2018-05-29 16:44:07','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 29/05/2018 16h44min7s BRT
-- NF-e 4.0
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1127364 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 29/05/2018 16h46min16s BRT
-- NF-e 4.0
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,1122476,0,'LBR_TaxBenefitCode',TO_TIMESTAMP('2018-05-29 16:46:15','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Tax Benefit Code','Tax Benefit Code',TO_TIMESTAMP('2018-05-29 16:46:15','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 29/05/2018 16h46min16s BRT
-- NF-e 4.0
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1122476 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 29/05/2018 16h47min20s BRT
-- NF-e 4.0
UPDATE AD_Element_Trl SET IsTranslated='Y',Name='Código de Benefício Fiscal',PrintName='Código de Benefício Fiscal',Description='Código de Benefício Fiscal na UF  aplicado ao item',Help='Código de Benefício Fiscal utilizado pela UF, aplicado ao item.
Obs.: Deve ser utilizado o mesmo código adotado na EFD e outras declarações, nas UF que o exigem.',Updated=TO_TIMESTAMP('2018-05-29 16:47:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1122476 AND AD_Language='pt_BR'
;

-- 29/05/2018 16h48min17s BRT
-- NF-e 4.0
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1130279,1122476,0,10,1000028,'LBR_TaxBenefitCode',TO_TIMESTAMP('2018-05-29 16:48:17','YYYY-MM-DD HH24:MI:SS'),100,'LBRA',10,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Tax Benefit Code',0,TO_TIMESTAMP('2018-05-29 16:48:17','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 29/05/2018 16h48min17s BRT
-- NF-e 4.0
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1130279 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 29/05/2018 16h48min20s BRT
-- NF-e 4.0
ALTER TABLE LBR_NotaFiscalLine ADD COLUMN LBR_TaxBenefitCode VARCHAR(10) DEFAULT NULL 
;

-- 29/05/2018 16h49min12s BRT
-- NF-e 4.0
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_FieldGroup_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,DisplayLogic,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1130279,106,1127365,0,1000021,TO_TIMESTAMP('2018-05-29 16:49:12','YYYY-MM-DD HH24:MI:SS'),100,60,NULL,'LBRA','Y','Y','Y','N','N','N','N','Y','Tax Benefit Code',185,TO_TIMESTAMP('2018-05-29 16:49:12','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 29/05/2018 16h49min12s BRT
-- NF-e 4.0
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1127365 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 29/05/2018 17h8min33s BRT
-- NF-e 4.0
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1130280,952,0,10,1000028,'POReference',TO_TIMESTAMP('2018-05-29 17:08:33','YYYY-MM-DD HH24:MI:SS'),100,'Transaction Reference Number (Sales Order, Purchase Order) of your Business Partner','LBRA',20,'The business partner order reference is the order reference for this specific transaction; Often Purchase Order numbers are given to print on Invoices for easier reference.  A standard number can be defined in the Business Partner (Customer) window.','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Order Reference',0,TO_TIMESTAMP('2018-05-29 17:08:33','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 29/05/2018 17h8min33s BRT
-- NF-e 4.0
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1130280 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 29/05/2018 17h8min37s BRT
-- NF-e 4.0
ALTER TABLE LBR_NotaFiscalLine ADD COLUMN POReference VARCHAR(20) DEFAULT NULL 
;

-- 29/05/2018 17h13min59s BRT
-- NF-e 4.0
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1130281,1122437,0,10,1000028,'LBR_PORef_Item',TO_TIMESTAMP('2018-05-29 17:13:59','YYYY-MM-DD HH24:MI:SS'),100,'Item reference to the Order Reference indicated in the same document','LBRA',20,'Item reference to the Order Reference indicated in the same document','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Order Reference Item',0,TO_TIMESTAMP('2018-05-29 17:13:59','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 29/05/2018 17h13min59s BRT
-- NF-e 4.0
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1130281 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 29/05/2018 17h14min2s BRT
-- NF-e 4.0
ALTER TABLE LBR_NotaFiscalLine ADD COLUMN LBR_PORef_Item VARCHAR(20) DEFAULT NULL 
;

-- 29/05/2018 17h35min22s BRT
-- NF-e 4.0
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,1122477,0,'LBR_AFRMMAmt',TO_TIMESTAMP('2018-05-29 17:35:22','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','AFRMM Amount','AFRMM Amount',TO_TIMESTAMP('2018-05-29 17:35:22','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 29/05/2018 17h35min22s BRT
-- NF-e 4.0
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1122477 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 29/05/2018 17h36min27s BRT
-- NF-e 4.0
UPDATE AD_Element_Trl SET IsTranslated='Y',Name='Valor do AFRMM',PrintName='Valor do AFRMM',Description='Valor do Adicional ao Frete para Renovação da Marinha Mercante',Help='Valor do Adicional ao Frete para Renovação da Marinha Mercante (AFRMM)',Updated=TO_TIMESTAMP('2018-05-29 17:36:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1122477 AND AD_Language='pt_BR'
;

-- 29/05/2018 17h36min42s BRT
-- NF-e 4.0
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1130282,1122477,0,12,1000028,'LBR_AFRMMAmt',TO_TIMESTAMP('2018-05-29 17:36:42','YYYY-MM-DD HH24:MI:SS'),100,'LBRA',10,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','AFRMM Amount',0,TO_TIMESTAMP('2018-05-29 17:36:42','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 29/05/2018 17h36min42s BRT
-- NF-e 4.0
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1130282 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 29/05/2018 17h36min44s BRT
-- NF-e 4.0
ALTER TABLE LBR_NotaFiscalLine ADD COLUMN LBR_AFRMMAmt NUMERIC DEFAULT NULL 
;

-- 29/05/2018 17h38min45s BRT
-- NF-e 4.0
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_FieldGroup_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,SortNo,Updated,UpdatedBy) VALUES (0,1130282,103,1127366,0,1000021,TO_TIMESTAMP('2018-05-29 17:38:44','YYYY-MM-DD HH24:MI:SS'),100,22,'LBRA','Y','Y','Y','N','N','N','N','Y','AFRMM Amount',274,0,TO_TIMESTAMP('2018-05-29 17:38:44','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 29/05/2018 17h38min45s BRT
-- NF-e 4.0
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1127366 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 29/05/2018 17h41min8s BRT
-- NF-e 4.0
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1130283,1121529,0,17,1120183,1000027,'LBR_TaxRegime',TO_TIMESTAMP('2018-05-29 17:41:07','YYYY-MM-DD HH24:MI:SS'),100,'LBRA',1,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Tax Regime',0,TO_TIMESTAMP('2018-05-29 17:41:07','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 29/05/2018 17h41min8s BRT
-- NF-e 4.0
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1130283 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 29/05/2018 17h41min10s BRT
-- NF-e 4.0
ALTER TABLE LBR_NotaFiscal ADD COLUMN LBR_TaxRegime CHAR(1) DEFAULT NULL 
;

-- 29/05/2018 17h44min41s BRT
-- NF-e 4.0
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_FieldGroup_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,DisplayLogic,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1130283,1120053,1127367,0,1000020,TO_TIMESTAMP('2018-05-29 17:44:40','YYYY-MM-DD HH24:MI:SS'),100,22,NULL,'LBRA','Y','Y','Y','N','N','N','N','N','Tax Regime',1065,TO_TIMESTAMP('2018-05-29 17:44:40','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 29/05/2018 17h44min41s BRT
-- NF-e 4.0
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1127367 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 29/05/2018 17h53min22s BRT
-- NF-e 4.0
UPDATE AD_Column SET DefaultValue='0', IsMandatory='Y',Updated=TO_TIMESTAMP('2018-05-29 17:53:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1130282
;

-- 29/05/2018 17h53min24s BRT
-- NF-e 4.0
INSERT INTO t_alter_column values('lbr_notafiscalline','LBR_AFRMMAmt','NUMERIC',null,'0')
;

-- 29/05/2018 17h53min24s BRT
-- NF-e 4.0
UPDATE LBR_NotaFiscalLine SET LBR_AFRMMAmt=0 WHERE LBR_AFRMMAmt IS NULL
;

-- 29/05/2018 17h53min24s BRT
-- NF-e 4.0
INSERT INTO t_alter_column values('lbr_notafiscalline','LBR_AFRMMAmt',null,'NOT NULL',null)
;

-- 30/05/2018 13h41min48s BRT
-- NF-e 4.0
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1130284,1100009,0,17,1120257,1120247,'lbr_NFModel',TO_TIMESTAMP('2018-05-30 13:41:48','YYYY-MM-DD HH24:MI:SS'),100,'Identifies the model of Nota Fiscal','LBRA',2,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','NF Model',0,TO_TIMESTAMP('2018-05-30 13:41:48','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 30/05/2018 13h41min48s BRT
-- NF-e 4.0
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1130284 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 30/05/2018 13h41min54s BRT
-- NF-e 4.0
ALTER TABLE LBR_NFeEvent ADD COLUMN lbr_NFModel VARCHAR(2) DEFAULT NULL 
;

-- 30/05/2018 13h43min59s BRT
-- NF-e 4.0
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1130286,3065,0,10,1120247,'Protocol',TO_TIMESTAMP('2018-05-30 13:43:59','YYYY-MM-DD HH24:MI:SS'),100,'Protocol','LBRA',60,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Protocol',0,TO_TIMESTAMP('2018-05-30 13:43:59','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 30/05/2018 13h43min59s BRT
-- NF-e 4.0
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1130286 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 30/05/2018 13h44min1s BRT
-- NF-e 4.0
ALTER TABLE LBR_NFeEvent ADD COLUMN Protocol VARCHAR(60) DEFAULT NULL 
;

-- 30/05/2018 13h44min15s BRT
-- NF-e 4.0
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1130284,1127368,0,1120049,TO_TIMESTAMP('2018-05-30 13:44:14','YYYY-MM-DD HH24:MI:SS'),100,'Identifies the model of Nota Fiscal',2,'LBRA','Y','Y','Y','N','N','N','N','N','NF Model',TO_TIMESTAMP('2018-05-30 13:44:14','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 30/05/2018 13h44min15s BRT
-- NF-e 4.0
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1127368 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 30/05/2018 13h44min15s BRT
-- NF-e 4.0
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1130286,1127369,0,1120049,TO_TIMESTAMP('2018-05-30 13:44:15','YYYY-MM-DD HH24:MI:SS'),100,'Protocol',60,'LBRA','Y','Y','Y','N','N','N','N','N','Protocol',TO_TIMESTAMP('2018-05-30 13:44:15','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 30/05/2018 13h44min15s BRT
-- NF-e 4.0
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1127369 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 30/05/2018 13h45min28s BRT
-- NF-e 4.0
UPDATE AD_Field SET SeqNo=85,Updated=TO_TIMESTAMP('2018-05-30 13:45:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127368
;

-- 30/05/2018 13h45min36s BRT
-- NF-e 4.0
UPDATE AD_Field SET IsSameLine='Y', SeqNo=86,Updated=TO_TIMESTAMP('2018-05-30 13:45:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127369
;

-- 30/05/2018 13h47min35s BRT
-- NF-e 4.0
UPDATE AD_Field SET DisplayLogic='@LBR_NotaFiscal_ID@=0 & @LBR_PartnerDFe_ID@=0',Updated=TO_TIMESTAMP('2018-05-30 13:47:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127368
;

-- 30/05/2018 13h47min43s BRT
-- NF-e 4.0
UPDATE AD_Field SET DisplayLogic='@LBR_NotaFiscal_ID@=0 & @LBR_PartnerDFe_ID@=0',Updated=TO_TIMESTAMP('2018-05-30 13:47:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127369
;

-- 30/05/2018 13h48min20s BRT
-- NF-e 4.0
UPDATE AD_Field SET DefaultValue='55',Updated=TO_TIMESTAMP('2018-05-30 13:48:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127368
;

-- 30/05/2018 13h51min31s BRT
-- NF-e 4.0
UPDATE AD_Field SET DisplayLogic='@LBR_NotaFiscal_ID@=0 & @LBR_PartnerDFe_ID@=0 & @LBR_EventType@=''110111''',Updated=TO_TIMESTAMP('2018-05-30 13:51:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127369
;

UPDATE LBR_NFeEvent SET Protocol=(SELECT LBR_NFeProt FROM LBR_NotaFiscal nf WHERE nf.LBR_NotaFiscal_ID=LBR_NFeEvent.LBR_NotaFiscal_ID) WHERE LBR_NotaFiscal_ID>0 AND Protocol IS NULL
;
UPDATE LBR_NFeEvent SET LBR_NFModel=(SELECT LBR_NFModel FROM LBR_NotaFiscal nf WHERE nf.LBR_NotaFiscal_ID=LBR_NFeEvent.LBR_NotaFiscal_ID) WHERE LBR_NotaFiscal_ID>0 AND LBR_NFModel IS NULL
;
UPDATE LBR_NFeEvent SET Protocol=(SELECT LBR_NFeProt FROM LBR_PartnerDFe dfe WHERE dfe.LBR_PartnerDFe_ID=LBR_NFeEvent.LBR_PartnerDFe_ID) WHERE LBR_PartnerDFe_ID>0 AND Protocol IS NULL
;
UPDATE LBR_NFeEvent SET LBR_NFModel=(SELECT LBR_NFModel FROM LBR_PartnerDFe dfe WHERE dfe.LBR_PartnerDFe_ID=LBR_NFeEvent.LBR_PartnerDFe_ID) WHERE LBR_PartnerDFe_ID>0 AND LBR_NFModel IS NULL
;

-- 30/05/2018 14h10min52s BRT
-- NF-e 4.0
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1130287,1830,0,30,1000034,1120000,1000009,'C_City_ID',TO_TIMESTAMP('2018-05-30 14:10:52','YYYY-MM-DD HH24:MI:SS'),100,'City','U',10,'City in a country','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','City',0,TO_TIMESTAMP('2018-05-30 14:10:52','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 30/05/2018 14h10min52s BRT
-- NF-e 4.0
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1130287 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 30/05/2018 14h10min56s BRT
-- NF-e 4.0
ALTER TABLE LBR_NFeWebService ADD COLUMN C_City_ID NUMERIC(10) DEFAULT NULL 
;

-- 30/05/2018 14h11min11s BRT
-- NF-e 4.0
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1130287,1127370,0,1120000,TO_TIMESTAMP('2018-05-30 14:11:10','YYYY-MM-DD HH24:MI:SS'),100,'City',10,'U','City in a country','Y','Y','Y','N','N','N','N','N','City',TO_TIMESTAMP('2018-05-30 14:11:10','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 30/05/2018 14h11min11s BRT
-- NF-e 4.0
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1127370 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 30/05/2018 14h14min45s BRT
-- NF-e 4.0
INSERT INTO AD_Val_Rule (AD_Client_ID,AD_Org_ID,AD_Val_Rule_ID,Code,Created,CreatedBy,Description,EntityType,IsActive,Name,Type,Updated,UpdatedBy) VALUES (0,0,1120144,'C_Region.C_Country_ID=139 AND C_Region.Name IN (''AC'',''BA'',''CE'',''GO'',''MS'',''MT'',''PB'',''PR'',''RN'',''RS'',''SC'',''SP'')',TO_TIMESTAMP('2018-05-30 14:14:45','YYYY-MM-DD HH24:MI:SS'),100,'UFs com serviço de Consulta de Cadastro habilitadas','LBRA','Y','C_Region (Brazil Consulta Cadastro)','S',TO_TIMESTAMP('2018-05-30 14:14:45','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 30/05/2018 14h15min5s BRT
-- NF-e 4.0
UPDATE AD_Process_Para SET AD_Val_Rule_ID=1120144,Updated=TO_TIMESTAMP('2018-05-30 14:15:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=1120211
;

-- 01/06/2018 14h1min21s BRT
-- NF-e 4.0
UPDATE AD_Ref_List SET Description='Deprecated, use new values from NFe', IsActive='N',Updated=TO_TIMESTAMP('2018-06-01 14:01:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1000063
;

-- 01/06/2018 14h1min22s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=1000063
;

-- 01/06/2018 14h1min22s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET Description='Deprecated, use new values from NFe',Name='Bill',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Ref_List_ID=1000063
;

-- 01/06/2018 14h1min27s BRT
-- NF-e 4.0
UPDATE AD_Ref_List SET Description='Deprecated, use new values from NFe', IsActive='N',Updated=TO_TIMESTAMP('2018-06-01 14:01:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1000062
;

-- 01/06/2018 14h1min27s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=1000062
;

-- 01/06/2018 14h1min27s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET Description='Deprecated, use new values from NFe',Name='Check',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Ref_List_ID=1000062
;

-- 01/06/2018 14h1min29s BRT
-- NF-e 4.0
UPDATE AD_Ref_List SET Description='Deprecated, use new values from NFe', IsActive='N',Updated=TO_TIMESTAMP('2018-06-01 14:01:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1000064
;

-- 01/06/2018 14h1min29s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=1000064
;

-- 01/06/2018 14h1min29s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET Description='Deprecated, use new values from NFe',Name='Direct Deposit',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Ref_List_ID=1000064
;

-- 01/06/2018 14h1min32s BRT
-- NF-e 4.0
UPDATE AD_Ref_List SET Description='Deprecated, use new values from NFe', IsActive='N',Updated=TO_TIMESTAMP('2018-06-01 14:01:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1000061
;

-- 01/06/2018 14h1min32s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=1000061
;

-- 01/06/2018 14h1min32s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET Description='Deprecated, use new values from NFe',Name='Cash',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Ref_List_ID=1000061
;

-- 01/06/2018 14h2min23s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121884,1000035,TO_TIMESTAMP('2018-06-01 14:02:22','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Cash',TO_TIMESTAMP('2018-06-01 14:02:22','YYYY-MM-DD HH24:MI:SS'),100,'01')
;

-- 01/06/2018 14h2min23s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121884 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 01/06/2018 14h2min31s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Name='Dinheiro',Updated=TO_TIMESTAMP('2018-06-01 14:02:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121884 AND AD_Language='pt_BR'
;

-- 01/06/2018 14h2min49s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121885,1000035,TO_TIMESTAMP('2018-06-01 14:02:49','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Check',TO_TIMESTAMP('2018-06-01 14:02:49','YYYY-MM-DD HH24:MI:SS'),100,'02')
;

-- 01/06/2018 14h2min49s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121885 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 01/06/2018 14h2min54s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Name='Cheque',Updated=TO_TIMESTAMP('2018-06-01 14:02:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121885 AND AD_Language='pt_BR'
;

-- 01/06/2018 14h3min10s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121886,1000035,TO_TIMESTAMP('2018-06-01 14:03:09','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Credit Card',TO_TIMESTAMP('2018-06-01 14:03:09','YYYY-MM-DD HH24:MI:SS'),100,'03')
;

-- 01/06/2018 14h3min10s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121886 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 01/06/2018 14h3min18s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Name='Cartão de Crédito',Updated=TO_TIMESTAMP('2018-06-01 14:03:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121886 AND AD_Language='pt_BR'
;

-- 01/06/2018 14h3min33s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121887,1000035,TO_TIMESTAMP('2018-06-01 14:03:32','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Debit Card',TO_TIMESTAMP('2018-06-01 14:03:32','YYYY-MM-DD HH24:MI:SS'),100,'04')
;

-- 01/06/2018 14h3min33s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121887 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 01/06/2018 14h3min40s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Name='Cartão de Débito',Updated=TO_TIMESTAMP('2018-06-01 14:03:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121887 AND AD_Language='pt_BR'
;

-- 01/06/2018 14h4min0s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121888,1000035,TO_TIMESTAMP('2018-06-01 14:04:00','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Store Credit',TO_TIMESTAMP('2018-06-01 14:04:00','YYYY-MM-DD HH24:MI:SS'),100,'05')
;

-- 01/06/2018 14h4min0s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121888 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 01/06/2018 14h4min7s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Name='Crédito na Loja',Updated=TO_TIMESTAMP('2018-06-01 14:04:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121888 AND AD_Language='pt_BR'
;

-- 01/06/2018 14h4min37s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121889,1000035,TO_TIMESTAMP('2018-06-01 14:04:36','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Food Voucher',TO_TIMESTAMP('2018-06-01 14:04:36','YYYY-MM-DD HH24:MI:SS'),100,'10')
;

-- 01/06/2018 14h4min37s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121889 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 01/06/2018 14h4min44s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Name='Vale Alimentação',Updated=TO_TIMESTAMP('2018-06-01 14:04:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121889 AND AD_Language='pt_BR'
;

-- 01/06/2018 14h4min58s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121890,1000035,TO_TIMESTAMP('2018-06-01 14:04:58','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Meal Voucher',TO_TIMESTAMP('2018-06-01 14:04:58','YYYY-MM-DD HH24:MI:SS'),100,'11')
;

-- 01/06/2018 14h4min58s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121890 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 01/06/2018 14h5min5s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Name='Vale Refeição',Updated=TO_TIMESTAMP('2018-06-01 14:05:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121890 AND AD_Language='pt_BR'
;

-- 01/06/2018 14h5min28s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121891,1000035,TO_TIMESTAMP('2018-06-01 14:05:28','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Gift Card',TO_TIMESTAMP('2018-06-01 14:05:28','YYYY-MM-DD HH24:MI:SS'),100,'12')
;

-- 01/06/2018 14h5min28s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121891 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 01/06/2018 14h5min36s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Name='Vale Presente',Updated=TO_TIMESTAMP('2018-06-01 14:05:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121891 AND AD_Language='pt_BR'
;

-- 01/06/2018 14h5min48s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121892,1000035,TO_TIMESTAMP('2018-06-01 14:05:48','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Fuel Voucher',TO_TIMESTAMP('2018-06-01 14:05:48','YYYY-MM-DD HH24:MI:SS'),100,'13')
;

-- 01/06/2018 14h5min48s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121892 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 01/06/2018 14h5min55s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Name='Vale Combustível',Updated=TO_TIMESTAMP('2018-06-01 14:05:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121892 AND AD_Language='pt_BR'
;

-- 01/06/2018 14h7min34s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121893,1000035,TO_TIMESTAMP('2018-06-01 14:07:34','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Trade Bill',TO_TIMESTAMP('2018-06-01 14:07:34','YYYY-MM-DD HH24:MI:SS'),100,'14')
;

-- 01/06/2018 14h7min34s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121893 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 01/06/2018 14h7min40s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Name='Duplicata Mercantil',Updated=TO_TIMESTAMP('2018-06-01 14:07:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121893 AND AD_Language='pt_BR'
;

-- 01/06/2018 14h8min18s BRT
-- NF-e 4.0
UPDATE AD_Ref_List SET Description='De-activate on revision 1.51 of Nota Técnica 2016.002',Updated=TO_TIMESTAMP('2018-06-01 14:08:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121893
;

-- 01/06/2018 14h8min18s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=1121893
;

-- 01/06/2018 14h8min18s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET Description='De-activate on revision 1.51 of Nota Técnica 2016.002',Name='Trade Bill',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Ref_List_ID=1121893
;

-- 01/06/2018 14h8min22s BRT
-- NF-e 4.0
UPDATE AD_Ref_List SET IsActive='N',Updated=TO_TIMESTAMP('2018-06-01 14:08:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121893
;

-- 01/06/2018 14h8min37s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121894,1000035,TO_TIMESTAMP('2018-06-01 14:08:37','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Bill',TO_TIMESTAMP('2018-06-01 14:08:37','YYYY-MM-DD HH24:MI:SS'),100,'15')
;

-- 01/06/2018 14h8min37s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121894 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 01/06/2018 14h8min46s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Name='Boleto Bancário',Updated=TO_TIMESTAMP('2018-06-01 14:08:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121894 AND AD_Language='pt_BR'
;

-- 01/06/2018 14h9min7s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121895,1000035,TO_TIMESTAMP('2018-06-01 14:09:07','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','No Payment Required',TO_TIMESTAMP('2018-06-01 14:09:07','YYYY-MM-DD HH24:MI:SS'),100,'90')
;

-- 01/06/2018 14h9min7s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121895 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 01/06/2018 14h9min16s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Name='Sem Pagamento',Updated=TO_TIMESTAMP('2018-06-01 14:09:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121895 AND AD_Language='pt_BR'
;

-- 01/06/2018 14h9min26s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121896,1000035,TO_TIMESTAMP('2018-06-01 14:09:26','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Other',TO_TIMESTAMP('2018-06-01 14:09:26','YYYY-MM-DD HH24:MI:SS'),100,'99')
;

-- 01/06/2018 14h9min26s BRT
-- NF-e 4.0
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121896 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 01/06/2018 14h9min31s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Name='Outros',Updated=TO_TIMESTAMP('2018-06-01 14:09:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121896 AND AD_Language='pt_BR'
;

-- 01/06/2018 14h14min20s BRT
-- NF-e 4.0
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Updated=TO_TIMESTAMP('2018-06-01 14:14:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121893 AND AD_Language='pt_BR'
;

-- 01/06/2018 14h20min38s BRT
-- NF-e 4.0
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1130288,1000305,0,17,1000035,1000027,'lbr_PaymentRule',TO_TIMESTAMP('2018-06-01 14:20:37','YYYY-MM-DD HH24:MI:SS'),100,'How you pay the invoice','U',2,'The Payment Rule indicates the method of invoice payment.','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Payment Rule',0,TO_TIMESTAMP('2018-06-01 14:20:37','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 01/06/2018 14h20min38s BRT
-- NF-e 4.0
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1130288 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 01/06/2018 14h20min43s BRT
-- NF-e 4.0
UPDATE AD_Column SET EntityType='LBRA',Updated=TO_TIMESTAMP('2018-06-01 14:20:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1130288
;

-- 01/06/2018 14h20min45s BRT
-- NF-e 4.0
ALTER TABLE LBR_NotaFiscal ADD COLUMN lbr_PaymentRule VARCHAR(2) DEFAULT NULL 
;

-- 01/06/2018 14h21min11s BRT
-- NF-e 4.0
UPDATE AD_Column SET FieldLength=2,Updated=TO_TIMESTAMP('2018-06-01 14:21:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000905
;

-- 01/06/2018 14h21min15s BRT
-- NF-e 4.0
INSERT INTO t_alter_column values('c_order','lbr_PaymentRule','VARCHAR(2)',null,'NULL')
;

-- 01/06/2018 14h21min36s BRT
-- NF-e 4.0
UPDATE AD_Column SET FieldLength=2,Updated=TO_TIMESTAMP('2018-06-01 14:21:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000907
;

-- 01/06/2018 14h21min37s BRT
-- NF-e 4.0
INSERT INTO t_alter_column values('c_invoice','lbr_PaymentRule','VARCHAR(2)',null,'NULL')
;

-- 01/06/2018 14h21min55s BRT
-- NF-e 4.0
UPDATE AD_Column SET FieldLength=2,Updated=TO_TIMESTAMP('2018-06-01 14:21:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000903
;

-- 01/06/2018 14h21min59s BRT
-- NF-e 4.0
INSERT INTO t_alter_column values('c_bpartner','lbr_PaymentRule','VARCHAR(2)',null,'NULL')
;

-- 01/06/2018 14h23min13s BRT
-- NF-e 4.0
UPDATE AD_Field SET IsSameLine='N',Updated=TO_TIMESTAMP('2018-06-01 14:23:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125797
;

-- 01/06/2018 14h23min33s BRT
-- NF-e 4.0
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1130288,1127371,0,1000020,TO_TIMESTAMP('2018-06-01 14:23:33','YYYY-MM-DD HH24:MI:SS'),100,'How you pay the invoice',1,'LBRA','The Payment Rule indicates the method of invoice payment.','Y','Y','Y','N','N','N','N','Y','Payment Rule',265,TO_TIMESTAMP('2018-06-01 14:23:33','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 01/06/2018 14h23min33s BRT
-- NF-e 4.0
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1127371 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 01/06/2018 14h29min28s BRT
-- NF-e 4.0
UPDATE AD_Field SET DisplayLogic='@lbr_HasOpenItems@=Y',Updated=TO_TIMESTAMP('2018-06-01 14:29:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127371
;

-- 01/06/2018 14h29min58s BRT
-- NF-e 4.0
UPDATE AD_Reference SET IsOrderByValue='Y',Updated=TO_TIMESTAMP('2018-06-01 14:29:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=1000035
;

--	Fix Payment Rules to new schema
UPDATE AD_Field SET DisplayLogic=REPLACE (DisplayLogic, '@lbr_PaymentRule@=''B''', '@lbr_PaymentRule@=''B'' | @lbr_PaymentRule@=''15''') 
WHERE (DisplayLogic) LIKE '%@lbr_PaymentRule@=''B''%' AND
(DisplayLogic) NOT LIKE '%@lbr_PaymentRule@=''15''%'
;

UPDATE AD_Field SET DisplayLogic=REPLACE (DisplayLogic, '@lbr_PaymentRule@=''D''', '@lbr_PaymentRule@=''D'' | @lbr_PaymentRule@=''99''') 
WHERE (DisplayLogic) LIKE '%@lbr_PaymentRule@=''D''%' AND
(DisplayLogic) NOT LIKE '%@lbr_PaymentRule@=''99''%'
;

--  Corrigir para Boleto
UPDATE C_BPartner SET lbr_PaymentRule='15' WHERE lbr_PaymentRule='B'
;
UPDATE C_Order SET lbr_PaymentRule='15' WHERE lbr_PaymentRule='B'
;
UPDATE C_Invoice SET lbr_PaymentRule='15' WHERE lbr_PaymentRule='B'
;
--  Corrigir para Dinheiro
UPDATE C_BPartner SET lbr_PaymentRule='01' WHERE lbr_PaymentRule='X'
;
UPDATE C_Order SET lbr_PaymentRule='01' WHERE lbr_PaymentRule='X'
;
UPDATE C_Invoice SET lbr_PaymentRule='01' WHERE lbr_PaymentRule='X'
;
--  Corrigir para Cheque
UPDATE C_BPartner SET lbr_PaymentRule='02' WHERE lbr_PaymentRule='C'
;
UPDATE C_Order SET lbr_PaymentRule='02' WHERE lbr_PaymentRule='C'
;
UPDATE C_Invoice SET lbr_PaymentRule='02' WHERE lbr_PaymentRule='C'
;
--  Corrigir para Depósito
UPDATE C_BPartner SET lbr_PaymentRule='99' WHERE lbr_PaymentRule='D'
;
UPDATE C_Order SET lbr_PaymentRule='99' WHERE lbr_PaymentRule='D'
;
UPDATE C_Invoice SET lbr_PaymentRule='99' WHERE lbr_PaymentRule='D'
;

-- 04/06/2018 10h56min48s BRT
-- NF-e 4.0
UPDATE AD_Field SET DisplayLength=22, SeqNo=177,Updated=TO_TIMESTAMP('2018-06-04 10:56:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127365
;

-- 04/06/2018 10h56min55s BRT
-- NF-e 4.0
UPDATE AD_Field SET IsSameLine='N',Updated=TO_TIMESTAMP('2018-06-04 10:56:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127364
;

-- 04/06/2018 10h57min20s BRT
-- NF-e 4.0
UPDATE AD_Field SET DisplayLogic='@LBR_ScaleProduction@!''''',Updated=TO_TIMESTAMP('2018-06-04 10:57:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127364
;

-- 04/06/2018 10h57min23s BRT
-- NF-e 4.0
UPDATE AD_Field SET DisplayLogic='@LBR_ScaleProduction@!''''',Updated=TO_TIMESTAMP('2018-06-04 10:57:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127365
;

-- 04/06/2018 11h47min28s BRT
-- NF-e 4.0
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,SortNo,Updated,UpdatedBy) VALUES (0,1130280,1127372,0,1000021,TO_TIMESTAMP('2018-06-04 11:47:27','YYYY-MM-DD HH24:MI:SS'),100,'Transaction Reference Number (Sales Order, Purchase Order) of your Business Partner',22,'LBRA','The business partner order reference is the order reference for this specific transaction; Often Purchase Order numbers are given to print on Invoices for easier reference.  A standard number can be defined in the Business Partner (Customer) window.','Y','Y','Y','N','N','N','N','N','Order Reference',75,0,TO_TIMESTAMP('2018-06-04 11:47:27','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 04/06/2018 11h47min28s BRT
-- NF-e 4.0
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1127372 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 04/06/2018 11h47min49s BRT
-- NF-e 4.0
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,SortNo,Updated,UpdatedBy) VALUES (0,1130281,1127373,0,1000021,TO_TIMESTAMP('2018-06-04 11:47:48','YYYY-MM-DD HH24:MI:SS'),100,'Item reference to the Order Reference indicated in the same document',22,'LBRA','Item reference to the Order Reference indicated in the same document','Y','Y','Y','N','N','N','N','Y','Order Reference Item',76,0,TO_TIMESTAMP('2018-06-04 11:47:48','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 04/06/2018 11h47min49s BRT
-- NF-e 4.0
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1127373 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 04/06/2018 12h31min8s BRT
-- NF-e 4.0
UPDATE AD_Field SET DisplayLength=22, SeqNo=145,Updated=TO_TIMESTAMP('2018-06-04 12:31:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1123973
;

-- 04/06/2018 12h31min21s BRT
-- NF-e 4.0
UPDATE AD_Field SET DisplayLength=22, IsSameLine='Y', SeqNo=146,Updated=TO_TIMESTAMP('2018-06-04 12:31:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127296
;

-- 04/06/2018 14h2min44s BRT
UPDATE C_OrderLine SET LBR_PORef_Item=SUBSTR (POReference,0,10)
WHERE LBR_PORef_Item IS NULL AND POReference IS NOT NULL
;
UPDATE C_OrderLine SET POReference=NULL 
WHERE POReference IS NOT NULL
;
UPDATE C_OrderLine SET POReference=(SELECT SUBSTR (o.POReference,0,20) FROM C_Order o WHERE o.C_Order_ID=C_OrderLine.C_Order_ID) 
WHERE EXISTS (SELECT '1' FROM C_Order o WHERE o.C_Order_ID=C_OrderLine.C_Order_ID AND o.POReference IS NOT NULL)
;

-- 30/05/2018 16h1min44s BRT
SELECT Register_Migration_Script ('201805291547_NFe4.sql') FROM DUAL
;