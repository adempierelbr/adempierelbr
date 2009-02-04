ALTER TABLE "adempiere"."lbr_processlink"
	DROP COLUMN "c_orderline_id"
;
ALTER TABLE "adempiere"."lbr_processlink"
	DROP COLUMN "c_invoiceline_id"
;

-- 26/01/2009 11h13min48s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,1000344,0,'lbr_Ref_C_InvoiceLine_ID',TO_TIMESTAMP('2009-01-26 11:13:48','YYYY-MM-DD HH24:MI:SS'),100,'Reference Invoice Line','LBRA','Reference Invoice Line','Y','Reference Invoice Line','Reference Invoice Line',TO_TIMESTAMP('2009-01-26 11:13:48','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 26/01/2009 11h13min48s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1000344 AND EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Element_ID!=t.AD_Element_ID)
;

-- 26/01/2009 11h14min2s BRST
-- Default comment for updating dictionary
UPDATE AD_Element_Trl SET IsTranslated='Y',Name='Linha da Fatura de referência',PrintName='Linha da Fatura de referência',Description='Linha da Fatura de referência para criação desta linha',Help='Linha da Fatura de referência para criação desta linha',Updated=TO_TIMESTAMP('2009-01-26 11:14:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1000344 AND AD_Language='pt_BR'
;

-- 26/01/2009 11h14min48s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1001022,1000344,0,18,260,'lbr_Ref_C_InvoiceLine_ID',TO_TIMESTAMP('2009-01-26 11:14:47','YYYY-MM-DD HH24:MI:SS'),100,'Reference Invoice Line','LBRA',22,'Reference Invoice Line','Y','N','N','N','N','N','N','N','N','N','Y','Reference Invoice Line',0,TO_TIMESTAMP('2009-01-26 11:14:47','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 26/01/2009 11h14min48s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1001022 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 26/01/2009 11h14min49s BRST
-- Default comment for updating dictionary
ALTER TABLE C_OrderLine ADD COLUMN lbr_Ref_C_InvoiceLine_ID NUMERIC(10)
;

-- 26/01/2009 11h15min50s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Reference (AD_Client_ID,AD_Org_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,IsOrderByValue,Name,Updated,UpdatedBy,ValidationType) VALUES (0,0,1000042,TO_TIMESTAMP('2009-01-26 11:15:50','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','N','LBR_C_InvoiceLine',TO_TIMESTAMP('2009-01-26 11:15:50','YYYY-MM-DD HH24:MI:SS'),100,'T')
;

-- 26/01/2009 11h15min50s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Reference_Trl (AD_Language,AD_Reference_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Reference_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Reference t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Reference_ID=1000042 AND EXISTS (SELECT * FROM AD_Reference_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Reference_ID!=t.AD_Reference_ID)
;

-- 26/01/2009 11h16min4s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Ref_Table (AD_Client_ID,AD_Display,AD_Key,AD_Org_ID,AD_Reference_ID,AD_Table_ID,Created,CreatedBy,EntityType,IsActive,IsValueDisplayed,Updated,UpdatedBy) VALUES (0,3828,3828,0,1000042,333,TO_TIMESTAMP('2009-01-26 11:16:04','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','N',TO_TIMESTAMP('2009-01-26 11:16:04','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 26/01/2009 11h16min37s BRST
-- Default comment for updating dictionary
UPDATE AD_Column SET AD_Reference_Value_ID=1000042,Updated=TO_TIMESTAMP('2009-01-26 11:16:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1001022
;

-- 26/01/2009 11h17min55s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,1000345,0,'LBR_DocBaseType',TO_TIMESTAMP('2009-01-26 11:17:55','YYYY-MM-DD HH24:MI:SS'),100,'Localization Brasil Document Base Type','LBRA','Localization Brasil Document Base Type','Y','LBR DocBaseType','LBR DocBaseType',TO_TIMESTAMP('2009-01-26 11:17:55','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 26/01/2009 11h17min55s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1000345 AND EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Element_ID!=t.AD_Element_ID)
;

-- 26/01/2009 11h18min30s BRST
-- Default comment for updating dictionary
UPDATE AD_Element_Trl SET IsTranslated='Y',Name='Tipo de Documento Base LBR',PrintName='Tipo de Documento Base LBR',Description='Tipo de Documento Base LBR',Help='Tipo de Documento Base LBR',Updated=TO_TIMESTAMP('2009-01-26 11:18:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1000345 AND AD_Language='pt_BR'
;

-- 26/01/2009 11h19min2s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Reference (AD_Client_ID,AD_Org_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,IsOrderByValue,Name,Updated,UpdatedBy,VFormat,ValidationType) VALUES (0,0,1000043,TO_TIMESTAMP('2009-01-26 11:19:02','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','N','LBR_DocBaseType',TO_TIMESTAMP('2009-01-26 11:19:02','YYYY-MM-DD HH24:MI:SS'),100,'LLLL','L')
;

-- 26/01/2009 11h19min2s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Reference_Trl (AD_Language,AD_Reference_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Reference_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Reference t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Reference_ID=1000043 AND EXISTS (SELECT * FROM AD_Reference_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Reference_ID!=t.AD_Reference_ID)
;

-- 26/01/2009 11h19min13s BRST
-- Default comment for updating dictionary
UPDATE AD_Element SET ColumnName='lbr_DocBaseType',Updated=TO_TIMESTAMP('2009-01-26 11:19:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1000345
;

-- 26/01/2009 11h19min13s BRST
-- Default comment for updating dictionary
UPDATE AD_Column SET ColumnName='lbr_DocBaseType', Name='LBR DocBaseType', Description='Localization Brasil Document Base Type', Help='Localization Brasil Document Base Type' WHERE AD_Element_ID=1000345
;

-- 26/01/2009 11h19min13s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET Name='LBR DocBaseType', Description='Localization Brasil Document Base Type', Help='Localization Brasil Document Base Type' WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=1000345) AND IsCentrallyMaintained='Y'
;

-- 26/01/2009 11h19min13s BRST
-- Default comment for updating dictionary
UPDATE AD_Process_Para SET ColumnName='lbr_DocBaseType', Name='LBR DocBaseType', Description='Localization Brasil Document Base Type', Help='Localization Brasil Document Base Type', AD_Element_ID=1000345 WHERE UPPER(ColumnName)='LBR_DOCBASETYPE' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 26/01/2009 11h19min13s BRST
-- Default comment for updating dictionary
UPDATE AD_Process_Para SET ColumnName='lbr_DocBaseType', Name='LBR DocBaseType', Description='Localization Brasil Document Base Type', Help='Localization Brasil Document Base Type' WHERE AD_Element_ID=1000345 AND IsCentrallyMaintained='Y'
;

-- 26/01/2009 11h19min13s BRST
-- Default comment for updating dictionary
UPDATE AD_PrintFormatItem SET PrintName='LBR DocBaseType', Name='LBR DocBaseType' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=AD_PrintFormatItem.AD_Column_ID AND c.AD_Element_ID=1000345)
;

-- 26/01/2009 11h19min13s BRST
-- Default comment for updating dictionary
UPDATE AD_PrintFormatItem SET PrintName='LBR DocBaseType', Name='LBR DocBaseType' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=AD_PrintFormatItem.AD_Column_ID AND c.AD_Element_ID=1000345)
;

-- 26/01/2009 11h20min7s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1000067,1000043,TO_TIMESTAMP('2009-01-26 11:20:07','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Consignation Sales Order',TO_TIMESTAMP('2009-01-26 11:20:07','YYYY-MM-DD HH24:MI:SS'),100,'OVEC')
;

-- 26/01/2009 11h20min7s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1000067 AND EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Ref_List_ID!=t.AD_Ref_List_ID)
;

-- 26/01/2009 11h20min19s BRST
-- Default comment for updating dictionary
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Name='Ordem de Venda de Envio de Cosnignação',Updated=TO_TIMESTAMP('2009-01-26 11:20:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1000067 AND AD_Language='pt_BR'
;

-- 26/01/2009 11h20min55s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1000068,1000043,TO_TIMESTAMP('2009-01-26 11:20:55','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Consignation Shipment',TO_TIMESTAMP('2009-01-26 11:20:55','YYYY-MM-DD HH24:MI:SS'),100,'EXEC')
;

-- 26/01/2009 11h20min55s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1000068 AND EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Ref_List_ID!=t.AD_Ref_List_ID)
;

-- 26/01/2009 11h21min12s BRST
-- Default comment for updating dictionary
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Name='Expedição de Envio de Consignação',Updated=TO_TIMESTAMP('2009-01-26 11:21:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1000068 AND AD_Language='pt_BR'
;

-- 26/01/2009 11h21min30s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1000069,1000043,TO_TIMESTAMP('2009-01-26 11:21:30','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Consignation Invoice',TO_TIMESTAMP('2009-01-26 11:21:30','YYYY-MM-DD HH24:MI:SS'),100,'FAEC')
;

-- 26/01/2009 11h21min30s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1000069 AND EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Ref_List_ID!=t.AD_Ref_List_ID)
;

-- 26/01/2009 11h21min40s BRST
-- Default comment for updating dictionary
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Name='Fatura de Envio de Cosnginação',Updated=TO_TIMESTAMP('2009-01-26 11:21:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1000069 AND AD_Language='pt_BR'
;

-- 26/01/2009 11h22min7s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1000070,1000043,TO_TIMESTAMP('2009-01-26 11:22:07','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Consignation return sales order',TO_TIMESTAMP('2009-01-26 11:22:07','YYYY-MM-DD HH24:MI:SS'),100,'OVRC')
;

-- 26/01/2009 11h22min7s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1000070 AND EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Ref_List_ID!=t.AD_Ref_List_ID)
;

-- 26/01/2009 11h22min21s BRST
-- Default comment for updating dictionary
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Name='Ordem de Venda de Retorno de Consignação',Updated=TO_TIMESTAMP('2009-01-26 11:22:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1000070 AND AD_Language='pt_BR'
;

-- 26/01/2009 11h22min40s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1000071,1000043,TO_TIMESTAMP('2009-01-26 11:22:40','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Consignation Return Shipment',TO_TIMESTAMP('2009-01-26 11:22:40','YYYY-MM-DD HH24:MI:SS'),100,'EXRC')
;

-- 26/01/2009 11h22min40s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1000071 AND EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Ref_List_ID!=t.AD_Ref_List_ID)
;

-- 26/01/2009 11h22min58s BRST
-- Default comment for updating dictionary
UPDATE AD_Ref_List_Trl SET Name='Expedição de Retorno de Consignação',Updated=TO_TIMESTAMP('2009-01-26 11:22:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1000071 AND AD_Language='pt_BR'
;

-- 26/01/2009 11h23min0s BRST
-- Default comment for updating dictionary
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Updated=TO_TIMESTAMP('2009-01-26 11:23:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1000071 AND AD_Language='pt_BR'
;

-- 26/01/2009 11h23min17s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1000072,1000043,TO_TIMESTAMP('2009-01-26 11:23:17','YYYY-MM-DD HH24:MI:SS'),100,'U','Y','Consignation Return Invoice',TO_TIMESTAMP('2009-01-26 11:23:17','YYYY-MM-DD HH24:MI:SS'),100,'FARC')
;

-- 26/01/2009 11h23min17s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1000072 AND EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Ref_List_ID!=t.AD_Ref_List_ID)
;

-- 26/01/2009 11h23min29s BRST
-- Default comment for updating dictionary
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Name='Fatura de Retorno de Consignação',Updated=TO_TIMESTAMP('2009-01-26 11:23:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1000072 AND AD_Language='pt_BR'
;

-- 26/01/2009 11h24min21s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1000073,1000043,TO_TIMESTAMP('2009-01-26 11:24:21','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Consignation Invoice Sales Order',TO_TIMESTAMP('2009-01-26 11:24:21','YYYY-MM-DD HH24:MI:SS'),100,'OVFC')
;

-- 26/01/2009 11h24min21s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1000073 AND EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Ref_List_ID!=t.AD_Ref_List_ID)
;

-- 26/01/2009 11h24min41s BRST
-- Default comment for updating dictionary
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Name='Ordem de Venda de Faturamento de Consignação',Updated=TO_TIMESTAMP('2009-01-26 11:24:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1000073 AND AD_Language='pt_BR'
;

-- 26/01/2009 11h25min3s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1000074,1000043,TO_TIMESTAMP('2009-01-26 11:25:03','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Consignation Invoice Shipment',TO_TIMESTAMP('2009-01-26 11:25:03','YYYY-MM-DD HH24:MI:SS'),100,'EXFC')
;

-- 26/01/2009 11h25min3s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1000074 AND EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Ref_List_ID!=t.AD_Ref_List_ID)
;

-- 26/01/2009 11h25min29s BRST
-- Default comment for updating dictionary
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Name='Expedição de Faturamento de Consignação',Updated=TO_TIMESTAMP('2009-01-26 11:25:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1000074 AND AD_Language='pt_BR'
;

-- 26/01/2009 11h25min55s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1000075,1000043,TO_TIMESTAMP('2009-01-26 11:25:55','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Consignation Invoice Invoice',TO_TIMESTAMP('2009-01-26 11:25:55','YYYY-MM-DD HH24:MI:SS'),100,'FAFC')
;

-- 26/01/2009 11h25min55s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1000075 AND EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Ref_List_ID!=t.AD_Ref_List_ID)
;

-- 26/01/2009 11h26min16s BRST
-- Default comment for updating dictionary
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Name='Fatura de Faturamento de Consignação',Updated=TO_TIMESTAMP('2009-01-26 11:26:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1000075 AND AD_Language='pt_BR'
;

-- 26/01/2009 11h26min26s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1000076,1000043,TO_TIMESTAMP('2009-01-26 11:26:26','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Default',TO_TIMESTAMP('2009-01-26 11:26:26','YYYY-MM-DD HH24:MI:SS'),100,'DEFA')
;

-- 26/01/2009 11h26min26s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1000076 AND EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Ref_List_ID!=t.AD_Ref_List_ID)
;

-- 26/01/2009 11h26min33s BRST
-- Default comment for updating dictionary
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Name='Padrão',Updated=TO_TIMESTAMP('2009-01-26 11:26:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1000076 AND AD_Language='pt_BR'
;

-- 26/01/2009 11h26min52s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1001023,1000345,0,17,1000043,217,'lbr_DocBaseType',TO_TIMESTAMP('2009-01-26 11:26:52','YYYY-MM-DD HH24:MI:SS'),100,'Localization Brasil Document Base Type','LBRA',4,'Localization Brasil Document Base Type','Y','N','N','N','N','N','N','N','N','N','Y','LBR DocBaseType',0,TO_TIMESTAMP('2009-01-26 11:26:52','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 26/01/2009 11h26min52s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1001023 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 26/01/2009 11h26min53s BRST
-- Default comment for updating dictionary
ALTER TABLE C_DocType ADD COLUMN lbr_DocBaseType VARCHAR(4)
;

-- 26/01/2009 11h27min22s BRST
-- Default comment for updating dictionary
insert into t_alter_column values('c_orderline','lbr_Ref_C_InvoiceLine_ID','NUMERIC(10)',null,'NULL')
;

-- 26/01/2009 11h28min0s BRST
-- Default comment for updating dictionary
DELETE FROM AD_Column_Trl WHERE AD_Column_ID=1000928
;

-- 26/01/2009 11h28min0s BRST
-- Default comment for updating dictionary
DELETE FROM AD_Column WHERE AD_Column_ID=1000928
;

-- 26/01/2009 11h28min3s BRST
-- Default comment for updating dictionary
DELETE FROM AD_Column_Trl WHERE AD_Column_ID=1000927
;

-- 26/01/2009 11h28min3s BRST
-- Default comment for updating dictionary
DELETE FROM AD_Column WHERE AD_Column_ID=1000927
;

-- 26/01/2009 11h29min3s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,1000346,0,'lbr_Ori_C_InvoiceLine_ID',TO_TIMESTAMP('2009-01-26 11:29:03','YYYY-MM-DD HH24:MI:SS'),100,'Origin Invoice Line','LBRA','Origin Invoice Line','Y','Origin Invoice Line','Origin Invoice Line',TO_TIMESTAMP('2009-01-26 11:29:03','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 26/01/2009 11h29min3s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1000346 AND EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Element_ID!=t.AD_Element_ID)
;

-- 26/01/2009 11h29min43s BRST
-- Default comment for updating dictionary
UPDATE AD_Element_Trl SET IsTranslated='Y',Name='Linha da Fatura de Origem',PrintName='Linha da Fatura de Origem',Description='Linha da Fatura de Envio de Consignação',Help='Linha da Fatura de Envio de Consignação',Updated=TO_TIMESTAMP('2009-01-26 11:29:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1000346 AND AD_Language='pt_BR'
;

-- 26/01/2009 11h30min13s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1001024,1000346,0,18,1000042,1000037,'lbr_Ori_C_InvoiceLine_ID',TO_TIMESTAMP('2009-01-26 11:30:13','YYYY-MM-DD HH24:MI:SS'),100,'Origin Invoice Line','LBRA',22,'Origin Invoice Line','Y','N','N','N','N','N','Y','N','N','N','N','Origin Invoice Line',0,TO_TIMESTAMP('2009-01-26 11:30:13','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 26/01/2009 11h30min13s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1001024 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 26/01/2009 11h30min14s BRST
-- Default comment for updating dictionary
ALTER TABLE LBR_ProcessLink ADD COLUMN lbr_Ori_C_InvoiceLine_ID NUMERIC(10)
;

-- 26/01/2009 11h31min3s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,1000348,0,'lbr_Dest_C_InvoiceLine_ID',TO_TIMESTAMP('2009-01-26 11:31:03','YYYY-MM-DD HH24:MI:SS'),100,'Destination Invoice Line','LBRA','Destination Invoice Line','Y','Destination Invoice Line','Destination Invoice Line',TO_TIMESTAMP('2009-01-26 11:31:03','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 26/01/2009 11h31min3s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1000348 AND EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Element_ID!=t.AD_Element_ID)
;

-- 26/01/2009 11h33min5s BRST
-- Default comment for updating dictionary
UPDATE AD_Element_Trl SET IsTranslated='Y',Name='Linha da Fatura de Destino',PrintName='Linha da Fatura de Destino',Description='Linha da Fatura de Destino',Help='Linha da Fatura de Destino',Updated=TO_TIMESTAMP('2009-01-26 11:33:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1000348 AND AD_Language='pt_BR'
;

-- 26/01/2009 11h34min57s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1001025,1000348,0,18,1000042,1000037,'lbr_Dest_C_InvoiceLine_ID',TO_TIMESTAMP('2009-01-26 11:34:57','YYYY-MM-DD HH24:MI:SS'),100,'Destination Invoice Line','U',22,'Destination Invoice Line','Y','N','N','N','N','N','N','N','N','N','Y','Destination Invoice Line',0,TO_TIMESTAMP('2009-01-26 11:34:57','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 26/01/2009 11h34min57s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1001025 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 26/01/2009 11h42min27s BRST
-- Default comment for updating dictionary
UPDATE AD_Column SET EntityType='LBRA',Updated=TO_TIMESTAMP('2009-01-26 11:42:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1001025
;

-- 26/01/2009 11h42min28s BRST
-- Default comment for updating dictionary
ALTER TABLE LBR_ProcessLink ADD COLUMN lbr_Dest_C_InvoiceLine_ID NUMERIC(10)
;

-- 26/01/2009 11h42min34s BRST
-- Default comment for updating dictionary
UPDATE AD_Column SET IsParent='Y', IsUpdateable='N',Updated=TO_TIMESTAMP('2009-01-26 11:42:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1001025
;

-- 26/01/2009 11h45min37s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1001026,454,0,18,161,1000037,'M_Product_ID',TO_TIMESTAMP('2009-01-26 11:45:37','YYYY-MM-DD HH24:MI:SS'),100,'Product, Service, Item','LBRA',22,'Identifies an item which is either purchased or sold in this organization.','Y','N','N','N','N','N','N','N','N','N','Y','Product',0,TO_TIMESTAMP('2009-01-26 11:45:37','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 26/01/2009 11h45min37s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1001026 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 26/01/2009 11h45min38s BRST
-- Default comment for updating dictionary
ALTER TABLE LBR_ProcessLink ADD COLUMN M_Product_ID NUMERIC(10)
;

-- 26/01/2009 11h46min51s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1001027,1039,0,17,189,1000037,'MovementType',TO_TIMESTAMP('2009-01-26 11:46:51','YYYY-MM-DD HH24:MI:SS'),100,'Method of moving the inventory','LBRA',2,'The Movement Type indicates the type of movement (in, out, to production, etc)','Y','N','N','N','N','N','N','N','N','N','Y','Movement Type',0,TO_TIMESTAMP('2009-01-26 11:46:51','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 26/01/2009 11h46min52s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1001027 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 26/01/2009 11h46min53s BRST
-- Default comment for updating dictionary
ALTER TABLE LBR_ProcessLink ADD COLUMN MovementType VARCHAR(2)
;

-- 26/01/2009 11h47min12s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1001028,1038,0,29,1000037,'MovementQty',TO_TIMESTAMP('2009-01-26 11:47:12','YYYY-MM-DD HH24:MI:SS'),100,'Quantity of a product moved.','LBRA',22,'The Movement Quantity indicates the quantity of a product that has been moved.','Y','N','N','N','N','N','N','N','N','N','Y','Movement Quantity',0,TO_TIMESTAMP('2009-01-26 11:47:12','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 26/01/2009 11h47min12s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1001028 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 26/01/2009 11h47min13s BRST
-- Default comment for updating dictionary
ALTER TABLE LBR_ProcessLink ADD COLUMN MovementQty NUMERIC
;

-- 26/01/2009 11h48min34s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1001029,2019,0,35,1000037,'M_AttributeSetInstance_ID',TO_TIMESTAMP('2009-01-26 11:48:33','YYYY-MM-DD HH24:MI:SS'),100,'Product Attribute Set Instance','LBRA',22,'The values of the actual Product Attribute Instances.  The product level attributes are defined on Product level.','Y','N','N','N','N','N','N','N','N','N','Y','Attribute Set Instance',0,TO_TIMESTAMP('2009-01-26 11:48:33','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 26/01/2009 11h48min34s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1001029 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 26/01/2009 11h48min35s BRST
-- Default comment for updating dictionary
ALTER TABLE LBR_ProcessLink ADD COLUMN M_AttributeSetInstance_ID NUMERIC(10)
;

-- 26/01/2009 11h50min7s BRST
-- Default comment for updating dictionary
UPDATE AD_SysConfig SET Value='100-trunk/009-OtherNF_TableChanges.sql',Updated=TO_TIMESTAMP('2009-01-21 11:22:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_SysConfig_ID=1100006
;