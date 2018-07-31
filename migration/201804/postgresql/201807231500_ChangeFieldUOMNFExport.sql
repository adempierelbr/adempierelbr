-- 26/06/2018 11h4min15s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging) VALUES (1130360,0,'UOM Code','UOM EDI X12 Code','The Unit of Measure Code indicates the EDI X12 Code Data Element 355 (Unit or Basis for Measurement)',1000028,'X12DE355',4,'N','N','N','N','N',0,'N',10,0,0,'Y',TO_TIMESTAMP('2018-06-26 11:04:15','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-06-26 11:04:15','YYYY-MM-DD HH24:MI:SS'),100,634,'Y','N','LBRA','N','N','N','Y')
;

-- 26/06/2018 11h4min20s BRT
ALTER TABLE LBR_NotaFiscalLine ADD COLUMN X12DE355 VARCHAR(4) DEFAULT NULL 
;

-- 26/06/2018 11h15min15s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,AD_FieldGroup_ID,EntityType) VALUES (1127483,'UOM Code','UOM EDI X12 Code','The Unit of Measure Code indicates the EDI X12 Code Data Element 355 (Unit or Basis for Measurement)',1000021,1130360,'Y',0,360,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2018-06-26 11:15:15','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-06-26 11:15:15','YYYY-MM-DD HH24:MI:SS'),100,'N','Y',1120062,'LBRA')
;

-- 26/06/2018 11h21min56s BRT
UPDATE LBR_NotaFiscalLine SET X12DE355 = lbr_UTribName;

-- 26/06/2018 11h21min56s BRT
DELETE FROM AD_Field WHERE AD_Column_ID=1129893;

-- 26/06/2018 11h21min56s BRT
DELETE FROM ad_printformatitem WHERE AD_Column_ID = 1129893;

-- 26/06/2018 11h21min56s BRT
DELETE FROM AD_Column WHERE AD_Column_ID=1129893;

-- 26/06/2018 11h21min56s BRT
ALTER TABLE LBR_NotaFiscalLine DROP COLUMN lbr_UTribID;

-- 26/06/2018 11h21min56s BRT
DELETE FROM AD_Field WHERE AD_Column_ID=1129890;

-- 26/06/2018 11h21min56s BRT
DELETE FROM ad_printformatitem WHERE AD_Column_ID = 1129890;

-- 26/06/2018 11h21min56s BRT
DELETE FROM AD_Column WHERE AD_Column_ID=1129890;

-- 26/06/2018 11h21min56s BRT
ALTER TABLE LBR_NotaFiscalLine DROP COLUMN lbr_UTribName;


-- 26/06/2018 11h21min56s BRT
DELETE FROM AD_Element_Trl WHERE AD_Element_ID=1122417
;

-- 26/06/2018 11h21min56s BRT
DELETE FROM AD_Element WHERE AD_Element_ID=1122417
;

-- 26/06/2018 11h22min14s BRT
DELETE FROM AD_Element_Trl WHERE AD_Element_ID=1122414
;

-- 26/06/2018 11h22min14s BRT
DELETE FROM AD_Element WHERE AD_Element_ID=1122414
;

-- 26/06/2018 11h22min44s BRT
UPDATE AD_Element SET ColumnName='LBR_qTrib',Updated=TO_TIMESTAMP('2018-06-26 11:22:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1122415
;

-- 26/06/2018 11h22min44s BRT
UPDATE AD_Column SET ColumnName='LBR_qTrib', Name='Tax Quantity', Description='Defines the Tax Quantity', Help='Defines the Tax Quantity' WHERE AD_Element_ID=1122415
;

-- 26/06/2018 11h22min44s BRT
UPDATE AD_Process_Para SET ColumnName='LBR_qTrib', Name='Tax Quantity', Description='Defines the Tax Quantity', Help='Defines the Tax Quantity', AD_Element_ID=1122415 WHERE UPPER(ColumnName)='LBR_QTRIB' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 26/06/2018 11h22min44s BRT
UPDATE AD_Process_Para SET ColumnName='LBR_qTrib', Name='Tax Quantity', Description='Defines the Tax Quantity', Help='Defines the Tax Quantity' WHERE AD_Element_ID=1122415 AND IsCentrallyMaintained='Y'
;

-- 26/06/2018 11h24min43s BRT
UPDATE AD_Element SET ColumnName='LBR_vUnTrib',Updated=TO_TIMESTAMP('2018-06-26 11:24:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1122416
;

-- 26/06/2018 11h24min43s BRT
UPDATE AD_Column SET ColumnName='LBR_vUnTrib', Name='Unit Tax Price', Description='Defines the Unit Tax Price', Help='Defines the Unit Tax Price' WHERE AD_Element_ID=1122416
;

-- 26/06/2018 11h24min43s BRT
UPDATE AD_Process_Para SET ColumnName='LBR_vUnTrib', Name='Unit Tax Price', Description='Defines the Unit Tax Price', Help='Defines the Unit Tax Price', AD_Element_ID=1122416 WHERE UPPER(ColumnName)='LBR_VUNTRIB' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 26/06/2018 11h24min43s BRT
UPDATE AD_Process_Para SET ColumnName='LBR_vUnTrib', Name='Unit Tax Price', Description='Defines the Unit Tax Price', Help='Defines the Unit Tax Price' WHERE AD_Element_ID=1122416 AND IsCentrallyMaintained='Y'
;

-- 26/06/2018 11h24min43s BRT
UPDATE AD_Column SET ReadOnlyLogic='@IsManual@!Y' WHERE AD_Column_ID=1130360
;

SELECT Register_Migration_Script ('201807231500_ChangeFieldUOMNFExport.sql') FROM DUAL
;