-- 22/12/2010 16h41min13s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_SysConfig (AD_Client_ID,AD_Org_ID,AD_SysConfig_ID,ConfigurationLevel,Created,CreatedBy,Description,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1120001,'C',TO_TIMESTAMP('2010-12-22 16:41:11','YYYY-MM-DD HH24:MI:SS'),0,'Se atualiza a aba Fornecedores com um Compra ou Fatura','LBRA','Y','LBR_AUTOUPDATE_MPRODUCTPO',TO_TIMESTAMP('2010-12-22 16:41:11','YYYY-MM-DD HH24:MI:SS'),0,'N')
;

-- 22/12/2010 16h42min6s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_SysConfig (AD_Client_ID,AD_Org_ID,AD_SysConfig_ID,ConfigurationLevel,Created,CreatedBy,Description,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1120002,'C',TO_TIMESTAMP('2010-12-22 16:42:05','YYYY-MM-DD HH24:MI:SS'),0,'Se completa uma linha do Pedido de Compra com a ultima Compra deste produto para este fornecedor','LBRA','Y','LBR_AUTOFILL_ORDERLINE_WITH_LAST',TO_TIMESTAMP('2010-12-22 16:42:05','YYYY-MM-DD HH24:MI:SS'),0,'N')
;

-- 22/12/2010 16h43min20s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_SysConfig (AD_Client_ID,AD_Org_ID,AD_SysConfig_ID,ConfigurationLevel,Created,CreatedBy,Description,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1120003,'C',TO_TIMESTAMP('2010-12-22 16:43:20','YYYY-MM-DD HH24:MI:SS'),0,'Se completa uma linha do Fatura com a ultima Fatura deste produto para este fornecedor','LBRA','Y','LBR_AUTOFILL_INVOICELINE_WITH_LAST',TO_TIMESTAMP('2010-12-22 16:43:20','YYYY-MM-DD HH24:MI:SS'),0,'N')
;

-- 22/12/2010 16h44min7s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_SysConfig (AD_Client_ID,AD_Org_ID,AD_SysConfig_ID,ConfigurationLevel,Created,CreatedBy,Description,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1120004,'C',TO_TIMESTAMP('2010-12-22 16:44:03','YYYY-MM-DD HH24:MI:SS'),0,'Atualiza a Lista de Preco compra com os valores de um Pedido de Compra','U','Y','LBR_UPDATE_PRICELIST_WITH_PO',TO_TIMESTAMP('2010-12-22 16:44:03','YYYY-MM-DD HH24:MI:SS'),0,'N')
;

-- 22/12/2010 16h53min23s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,Description,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,1120011,0,'LBR_UpdateProduct',TO_TIMESTAMP('2010-12-22 16:53:22','YYYY-MM-DD HH24:MI:SS'),0,'Sim/Não para saber se atualiza os valores do produto com base em compras e faturas','LBRA','Y','LBR_UpdateProduct','LBR_UpdateProduct',TO_TIMESTAMP('2010-12-22 16:53:22','YYYY-MM-DD HH24:MI:SS'),0)
;

-- 22/12/2010 16h53min23s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1120011 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 22/12/2010 16h54min6s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1120088,1120011,0,20,333,'LBR_UpdateProduct',TO_TIMESTAMP('2010-12-22 16:54:04','YYYY-MM-DD HH24:MI:SS'),0,'Y','Sim/Não para saber se atualiza os valores do produto com base em compras e faturas','LBRA',1,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','LBR_UpdateProduct',0,TO_TIMESTAMP('2010-12-22 16:54:04','YYYY-MM-DD HH24:MI:SS'),0,0)
;

-- 22/12/2010 16h54min6s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1120088 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 22/12/2010 16h56min55s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1120089,623,0,10,333,'VendorProductNo',TO_TIMESTAMP('2010-12-22 16:56:52','YYYY-MM-DD HH24:MI:SS'),0,'Product Key of the Business Partner','LBRA',20,'The Business Partner Product Key identifies the number used by the Business Partner for this product. It can be printed on orders and invoices when you include the Product Key in the print format.','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Partner Product Key',0,TO_TIMESTAMP('2010-12-22 16:56:52','YYYY-MM-DD HH24:MI:SS'),0,0)
;

-- 22/12/2010 16h56min55s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1120089 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 22/12/2010 16h59min6s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1120090,1120011,0,20,260,'LBR_UpdateProduct',TO_TIMESTAMP('2010-12-22 16:59:03','YYYY-MM-DD HH24:MI:SS'),0,'Y','Sim/Não para saber se atualiza os valores do produto com base em compras e faturas','LBRA',1,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','LBR_UpdateProduct',0,TO_TIMESTAMP('2010-12-22 16:59:03','YYYY-MM-DD HH24:MI:SS'),0,0)
;

-- 22/12/2010 16h59min6s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1120090 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 22/12/2010 17h4min17s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1120091,623,0,10,260,'VendorProductNo',TO_TIMESTAMP('2010-12-22 17:04:15','YYYY-MM-DD HH24:MI:SS'),0,'Product Key of the Business Partner','LBRA',20,'The Business Partner Product Key identifies the number used by the Business Partner for this product. It can be printed on orders and invoices when you include the Product Key in the print format.','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Partner Product Key',0,TO_TIMESTAMP('2010-12-22 17:04:15','YYYY-MM-DD HH24:MI:SS'),0,0)
;

-- 22/12/2010 17h4min17s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1120091 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

--- ADICIONA AS CALLOUTS
update ad_column set callout = COALESCE(callout,'') || 'org.adempierelbr.model.MLBRProductMovementFiller.getLastPO' where ad_column_id = 2221;
update ad_column set callout = COALESCE(callout,'') || 'org.adempierelbr.model.MLBRProductMovementFiller.getLastInv' where ad_column_id = 3840;


UPDATE AD_SysConfig SET Value='RC110-360/025-FR_3079621.sql' WHERE AD_SysConfig_ID=1100006;
