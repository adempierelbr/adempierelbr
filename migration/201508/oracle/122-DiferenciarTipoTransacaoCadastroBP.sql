-- 22/07/2015 15h40min29s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,1121740,0,'lbr_TransactionTypeVendor',TO_DATE('2015-07-22 15:40:29','YYYY-MM-DD HH24:MI:SS'),100,'Defines the Transaction Type of a Vendor on Business Partner','U','Defines the Transaction Type of a Vendor on Business Partner','Y','Transaction Type Vendor','Transaction Type Vendor',TO_DATE('2015-07-22 15:40:29','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 22/07/2015 15h40min29s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1121740 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 22/07/2015 15h41min13s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Element SET EntityType='LBRA',Updated=TO_DATE('2015-07-22 15:41:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1121740
;

-- 22/07/2015 15h41min37s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Element_Trl SET IsTranslated='Y',Name='Tipo de Transação (Fornecedor)',PrintName='Tipo de Transação (Fornecedor)',Updated=TO_DATE('2015-07-22 15:41:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1121740 AND AD_Language='pt_BR'
;

-- 22/07/2015 15h42min16s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Element_Trl SET Description='Define o Tipo de Transação do Fornecedor no cadastro de Parceiro de Negócio',Help='Define o Tipo de Transação do Fornecedor no cadastro de Parceiro de Negócio',Updated=TO_DATE('2015-07-22 15:42:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1121740 AND AD_Language='pt_BR'
;

-- 22/07/2015 15h42min39s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1126603,1121740,0,17,291,'lbr_TransactionTypeVendor',TO_DATE('2015-07-22 15:42:39','YYYY-MM-DD HH24:MI:SS'),100,'Defines the Transaction Type of a Vendor on Business Partner','U',3,'Defines the Transaction Type of a Vendor on Business Partner','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Transaction Type Vendor',0,TO_DATE('2015-07-22 15:42:39','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 22/07/2015 15h42min39s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1126603 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 22/07/2015 15h43min51s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET EntityType='LBRA',Updated=TO_DATE('2015-07-22 15:43:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1126603
;

-- 22/07/2015 15h44min2s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
ALTER TABLE C_BPartner ADD lbr_TransactionTypeVendor NVARCHAR2(3) DEFAULT NULL 
;

-- 22/07/2015 15h44min39s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET AD_Column_ID=1126603, Description='Defines the Transaction Type of a Vendor on Business Partner', Help='Defines the Transaction Type of a Vendor on Business Partner', Name='Transaction Type Vendor',Updated=TO_DATE('2015-07-22 15:44:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000473
;

-- 22/07/2015 15h44min39s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field_Trl SET IsTranslated='N' WHERE AD_Field_ID=1000473
;

-- 22/07/2015 15h44min39s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field_Trl SET Description='Defines the Transaction Type of a Vendor on Business Partner',Help='Defines the Transaction Type of a Vendor on Business Partner',Name='Transaction Type Vendor',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Field_ID=1000473
;

-- 22/07/2015 16h20min21s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET AD_Reference_Value_ID=1000024,Updated=TO_DATE('2015-07-22 16:20:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1126603
;

SELECT Register_Migration_Script ('122-DiferenciarTipoTransacaoCadastroBP.sql') FROM DUAL
;

EXIT