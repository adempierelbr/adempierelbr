-- 19/08/2015 14h24min48s BRT
UPDATE AD_Element SET ColumnName='LBR_BookNo', Name='Book No', PrintName='Book No',Updated=TO_TIMESTAMP('2015-08-19 14:24:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1121272
;

-- 19/08/2015 14h24min48s BRT
UPDATE AD_Element_Trl SET IsTranslated='N' WHERE AD_Element_ID=1121272
;

-- 19/08/2015 14h24min49s BRT
UPDATE AD_Element_Trl SET Description=NULL,Help=NULL,Name='Book No',PO_Description=NULL,PO_Help=NULL,PO_Name=NULL,PO_PrintName=NULL,PrintName='Book No',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Element_ID=1121272
;

-- 19/08/2015 14h24min49s BRT
UPDATE AD_Column SET ColumnName='LBR_BookNo', Name='Book No', Description=NULL, Help=NULL WHERE AD_Element_ID=1121272
;

-- 19/08/2015 14h24min49s BRT
UPDATE AD_Process_Para SET ColumnName='LBR_BookNo', Name='Book No', Description=NULL, Help=NULL, AD_Element_ID=1121272 WHERE UPPER(ColumnName)='LBR_BOOKNO' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 19/08/2015 14h24min49s BRT
UPDATE AD_Process_Para SET ColumnName='LBR_BookNo', Name='Book No', Description=NULL, Help=NULL WHERE AD_Element_ID=1121272 AND IsCentrallyMaintained='Y'
;

-- 19/08/2015 14h24min49s BRT
UPDATE AD_Field SET Name='Book No', Description=NULL, Help=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=1121272) AND IsCentrallyMaintained='Y'
;

-- 19/08/2015 14h24min49s BRT
UPDATE AD_PrintFormatItem SET PrintName='Book No', Name='Book No' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=AD_PrintFormatItem.AD_Column_ID AND c.AD_Element_ID=1121272)
;

-- 19/08/2015 14h27min21s BRT
ALTER TABLE LBR_TaxAssessment ADD COLUMN LBR_BookNo NUMERIC(10) NOT NULL DEFAULT 0
;

-- 19/08/2015 14h29min11s BRT
UPDATE AD_Element SET ColumnName='LBR_HasWithhold', Description='Defines if the Tax, has Withhold', Help='Defines if the Tax, has Withhold', Name='Has Withhold', PrintName='Has Withhold',Updated=TO_TIMESTAMP('2015-08-19 14:29:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1000171
;

-- 19/08/2015 14h29min11s BRT
UPDATE AD_Element_Trl SET IsTranslated='N' WHERE AD_Element_ID=1000171
;

-- 19/08/2015 14h29min11s BRT
UPDATE AD_Element_Trl SET Description='Defines if the Tax, has Withhold',Help='Defines if the Tax, has Withhold',Name='Has Withhold',PO_Description=NULL,PO_Help=NULL,PO_Name=NULL,PO_PrintName=NULL,PrintName='Has Withhold',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Element_ID=1000171
;

-- 19/08/2015 14h29min11s BRT
UPDATE AD_Column SET ColumnName='LBR_HasWithhold', Name='Has Withhold', Description='Defines if the Tax, has Withhold', Help='Defines if the Tax, has Withhold' WHERE AD_Element_ID=1000171
;

-- 19/08/2015 14h29min11s BRT
UPDATE AD_Process_Para SET ColumnName='LBR_HasWithhold', Name='Has Withhold', Description='Defines if the Tax, has Withhold', Help='Defines if the Tax, has Withhold', AD_Element_ID=1000171 WHERE UPPER(ColumnName)='LBR_HASWITHHOLD' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 19/08/2015 14h29min11s BRT
UPDATE AD_Process_Para SET ColumnName='LBR_HasWithhold', Name='Has Withhold', Description='Defines if the Tax, has Withhold', Help='Defines if the Tax, has Withhold' WHERE AD_Element_ID=1000171 AND IsCentrallyMaintained='Y'
;

-- 19/08/2015 14h29min11s BRT
UPDATE AD_Field SET Name='Has Withhold', Description='Defines if the Tax, has Withhold', Help='Defines if the Tax, has Withhold' WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=1000171) AND IsCentrallyMaintained='Y'
;

-- 19/08/2015 14h29min11s BRT
UPDATE AD_PrintFormatItem SET PrintName='Has Withhold', Name='Has Withhold' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=AD_PrintFormatItem.AD_Column_ID AND c.AD_Element_ID=1000171)
;

-- 19/08/2015 14h29min51s BRT
ALTER TABLE C_Order ADD COLUMN LBR_HasWithhold CHAR(1) DEFAULT 'Y' CHECK (LBR_HasWithhold IN ('Y','N'))
;

-- 19/08/2015 14h30min5s BRT
ALTER TABLE C_BPartner ADD COLUMN LBR_HasWithhold CHAR(1) DEFAULT 'Y' CHECK (LBR_HasWithhold IN ('Y','N')) NOT NULL
;

-- 19/08/2015 14h30min20s BRT
ALTER TABLE C_Invoice ADD COLUMN LBR_HasWithhold CHAR(1) DEFAULT 'Y' CHECK (LBR_HasWithhold IN ('Y','N')) NOT NULL
;

-- 19/08/2015 14h30min35s BRT
ALTER TABLE LBR_TaxName ADD COLUMN LBR_HasWithhold CHAR(1) DEFAULT 'N' CHECK (LBR_HasWithhold IN ('Y','N')) NOT NULL
;

-- 19/08/2015 14h31min3s BRT
UPDATE AD_Element SET ColumnName='LBR_PageNo', Name='Page No', PrintName='Page No',Updated=TO_TIMESTAMP('2015-08-19 14:31:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1121273
;

-- 19/08/2015 14h31min3s BRT
UPDATE AD_Element_Trl SET IsTranslated='N' WHERE AD_Element_ID=1121273
;

-- 19/08/2015 14h31min3s BRT
UPDATE AD_Element_Trl SET Description=NULL,Help=NULL,Name='Page No',PO_Description=NULL,PO_Help=NULL,PO_Name=NULL,PO_PrintName=NULL,PrintName='Page No',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Element_ID=1121273
;

-- 19/08/2015 14h31min3s BRT
UPDATE AD_Column SET ColumnName='LBR_PageNo', Name='Page No', Description=NULL, Help=NULL WHERE AD_Element_ID=1121273
;

-- 19/08/2015 14h31min3s BRT
UPDATE AD_Process_Para SET ColumnName='LBR_PageNo', Name='Page No', Description=NULL, Help=NULL, AD_Element_ID=1121273 WHERE UPPER(ColumnName)='LBR_PAGENO' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 19/08/2015 14h31min3s BRT
UPDATE AD_Process_Para SET ColumnName='LBR_PageNo', Name='Page No', Description=NULL, Help=NULL WHERE AD_Element_ID=1121273 AND IsCentrallyMaintained='Y'
;

-- 19/08/2015 14h31min3s BRT
UPDATE AD_Field SET Name='Page No', Description=NULL, Help=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=1121273) AND IsCentrallyMaintained='Y'
;

-- 19/08/2015 14h31min3s BRT
UPDATE AD_PrintFormatItem SET PrintName='Page No', Name='Page No' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=AD_PrintFormatItem.AD_Column_ID AND c.AD_Element_ID=1121273)
;

-- 19/08/2015 14h31min8s BRT
UPDATE AD_Element_Trl SET PrintName='Número da Página',Updated=TO_TIMESTAMP('2015-08-19 14:31:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1121273 AND AD_Language='pt_BR'
;

-- 19/08/2015 14h31min31s BRT
ALTER TABLE LBR_TaxAssessment ADD COLUMN LBR_PageNo NUMERIC(10) NOT NULL DEFAULT 0
;

-- 19/08/2015 14h32min1s BRT
UPDATE AD_Element SET ColumnName='LBR_ProcCancelBoleto',Updated=TO_TIMESTAMP('2015-08-19 14:32:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1000299
;

-- 19/08/2015 14h32min1s BRT
UPDATE AD_Column SET ColumnName='LBR_ProcCancelBoleto', Name='Process Cancel Boleto', Description='Process to Cancel Boleto', Help='Process to Cancel Boleto' WHERE AD_Element_ID=1000299
;

-- 19/08/2015 14h32min1s BRT
UPDATE AD_Process_Para SET ColumnName='LBR_ProcCancelBoleto', Name='Process Cancel Boleto', Description='Process to Cancel Boleto', Help='Process to Cancel Boleto', AD_Element_ID=1000299 WHERE UPPER(ColumnName)='LBR_PROCCANCELBOLETO' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 19/08/2015 14h32min1s BRT
UPDATE AD_Process_Para SET ColumnName='LBR_ProcCancelBoleto', Name='Process Cancel Boleto', Description='Process to Cancel Boleto', Help='Process to Cancel Boleto' WHERE AD_Element_ID=1000299 AND IsCentrallyMaintained='Y'
;

-- 19/08/2015 14h32min17s BRT
ALTER TABLE C_Invoice ADD COLUMN LBR_ProcCancelBoleto CHAR(1) DEFAULT NULL 
;

-- 19/08/2015 14h32min34s BRT
UPDATE AD_Element SET ColumnName='LBR_ProcCancelProduction',Updated=TO_TIMESTAMP('2015-08-19 14:32:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1120547
;

-- 19/08/2015 14h32min34s BRT
UPDATE AD_Column SET ColumnName='LBR_ProcCancelProduction', Name='Cancel Production', Description=NULL, Help=NULL WHERE AD_Element_ID=1120547
;

-- 19/08/2015 14h32min34s BRT
UPDATE AD_Process_Para SET ColumnName='LBR_ProcCancelProduction', Name='Cancel Production', Description=NULL, Help=NULL, AD_Element_ID=1120547 WHERE UPPER(ColumnName)='LBR_PROCCANCELPRODUCTION' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 19/08/2015 14h32min34s BRT
UPDATE AD_Process_Para SET ColumnName='LBR_ProcCancelProduction', Name='Cancel Production', Description=NULL, Help=NULL WHERE AD_Element_ID=1120547 AND IsCentrallyMaintained='Y'
;

-- 19/08/2015 14h32min44s BRT
ALTER TABLE M_Production ADD COLUMN LBR_ProcCancelProduction CHAR(1) DEFAULT NULL 
;

-- 19/08/2015 14h32min58s BRT
UPDATE AD_Element SET ColumnName='LBR_ProcCreatePO',Updated=TO_TIMESTAMP('2015-08-19 14:32:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1000285
;

-- 19/08/2015 14h32min58s BRT
UPDATE AD_Column SET ColumnName='LBR_ProcCreatePO', Name='Create PO', Description='Process to Create PO Lines from Requisition', Help='Process to Create PO Lines from Requisition' WHERE AD_Element_ID=1000285
;

-- 19/08/2015 14h32min58s BRT
UPDATE AD_Process_Para SET ColumnName='LBR_ProcCreatePO', Name='Create PO', Description='Process to Create PO Lines from Requisition', Help='Process to Create PO Lines from Requisition', AD_Element_ID=1000285 WHERE UPPER(ColumnName)='LBR_PROCCREATEPO' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 19/08/2015 14h32min58s BRT
UPDATE AD_Process_Para SET ColumnName='LBR_ProcCreatePO', Name='Create PO', Description='Process to Create PO Lines from Requisition', Help='Process to Create PO Lines from Requisition' WHERE AD_Element_ID=1000285 AND IsCentrallyMaintained='Y'
;

-- 19/08/2015 14h33min47s BRT
ALTER TABLE C_Order ADD COLUMN LBR_ProcCreatePO CHAR(1) DEFAULT NULL 
;

-- 19/08/2015 14h34min41s BRT
UPDATE AD_Element SET ColumnName='LBR_Processing2',Updated=TO_TIMESTAMP('2015-08-19 14:34:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1000271
;

-- 19/08/2015 14h34min41s BRT
UPDATE AD_Column SET ColumnName='LBR_Processing2', Name='Process Now', Description=NULL, Help=NULL WHERE AD_Element_ID=1000271
;

-- 19/08/2015 14h34min41s BRT
UPDATE AD_Process_Para SET ColumnName='LBR_Processing2', Name='Process Now', Description=NULL, Help=NULL, AD_Element_ID=1000271 WHERE UPPER(ColumnName)='LBR_PROCESSING2' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 19/08/2015 14h34min41s BRT
UPDATE AD_Process_Para SET ColumnName='LBR_Processing2', Name='Process Now', Description=NULL, Help=NULL WHERE AD_Element_ID=1000271 AND IsCentrallyMaintained='Y'
;

-- 19/08/2015 14h35min3s BRT
ALTER TABLE LBR_NotaFiscal ADD COLUMN LBR_Processing2 CHAR(1) DEFAULT NULL 
;

-- 19/08/2015 14h35min17s BRT
ALTER TABLE LBR_NFeLot ADD COLUMN LBR_Processing2 CHAR(1) DEFAULT 'N' 
;

-- 19/08/2015 14h35min38s BRT
UPDATE AD_Element SET ColumnName='LBR_ProcReactivateNF',Updated=TO_TIMESTAMP('2015-08-19 14:35:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1000320
;

-- 19/08/2015 14h35min38s BRT
UPDATE AD_Column SET ColumnName='LBR_ProcReactivateNF', Name='Reactivate Nota Fiscal', Description='This Process Reactivates the Nota Fiscal Document', Help='Important: Reactivating the Nota Fiscal Document can result Legal Problems. BE AWARE OF THE MODIFICATIONS' WHERE AD_Element_ID=1000320
;

-- 19/08/2015 14h35min38s BRT
UPDATE AD_Process_Para SET ColumnName='LBR_ProcReactivateNF', Name='Reactivate Nota Fiscal', Description='This Process Reactivates the Nota Fiscal Document', Help='Important: Reactivating the Nota Fiscal Document can result Legal Problems. BE AWARE OF THE MODIFICATIONS', AD_Element_ID=1000320 WHERE UPPER(ColumnName)='LBR_PROCREACTIVATENF' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 19/08/2015 14h35min38s BRT
UPDATE AD_Process_Para SET ColumnName='LBR_ProcReactivateNF', Name='Reactivate Nota Fiscal', Description='This Process Reactivates the Nota Fiscal Document', Help='Important: Reactivating the Nota Fiscal Document can result Legal Problems. BE AWARE OF THE MODIFICATIONS' WHERE AD_Element_ID=1000320 AND IsCentrallyMaintained='Y'
;

-- 19/08/2015 14h35min57s BRT
ALTER TABLE LBR_NotaFiscal ADD COLUMN LBR_ProcReactivateNF CHAR(1) DEFAULT NULL 
;

-- 19/08/2015 14h37min20s BRT
UPDATE AD_Column SET AD_Element_ID=524, ColumnName='Processing', Description=NULL, Help=NULL, Name='Process Now',Updated=TO_TIMESTAMP('2015-08-19 14:37:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1124150
;

-- 19/08/2015 14h37min20s BRT
UPDATE AD_Column_Trl SET IsTranslated='N' WHERE AD_Column_ID=1124150
;

-- 19/08/2015 14h37min20s BRT
UPDATE AD_Column_Trl SET Name='Process Now',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Column_ID=1124150
;

-- 19/08/2015 14h37min20s BRT
UPDATE AD_Field SET Name='Process Now', Description=NULL, Help=NULL WHERE AD_Column_ID=1124150 AND IsCentrallyMaintained='Y'
;

-- 19/08/2015 14h37min23s BRT
ALTER TABLE LBR_SPED ADD COLUMN Processing CHAR(1) DEFAULT NULL 
;

-- 19/08/2015 14h37min37s BRT
DELETE FROM AD_Element_Trl WHERE AD_Element_ID=1121263
;

-- 19/08/2015 14h37min37s BRT
DELETE FROM AD_Element WHERE AD_Element_ID=1121263
;

-- 19/08/2015 14h38min22s BRT
UPDATE AD_Element SET ColumnName='LBR_WithholdThreshold', Description='Defines the Withhold Threshold ', Help='Defines the Withhold Threshold ', Name='Withhold Threshold', PrintName='Withhold Threshold',Updated=TO_TIMESTAMP('2015-08-19 14:38:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1000172
;

-- 19/08/2015 14h38min22s BRT
UPDATE AD_Element_Trl SET IsTranslated='N' WHERE AD_Element_ID=1000172
;

-- 19/08/2015 14h38min22s BRT
UPDATE AD_Element_Trl SET Description='Defines the Withhold Threshold ',Help='Defines the Withhold Threshold ',Name='Withhold Threshold',PO_Description=NULL,PO_Help=NULL,PO_Name=NULL,PO_PrintName=NULL,PrintName='Withhold Threshold',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Element_ID=1000172
;

-- 19/08/2015 14h38min22s BRT
UPDATE AD_Column SET ColumnName='LBR_WithholdThreshold', Name='Withhold Threshold', Description='Defines the Withhold Threshold ', Help='Defines the Withhold Threshold ' WHERE AD_Element_ID=1000172
;

-- 19/08/2015 14h38min22s BRT
UPDATE AD_Process_Para SET ColumnName='LBR_WithholdThreshold', Name='Withhold Threshold', Description='Defines the Withhold Threshold ', Help='Defines the Withhold Threshold ', AD_Element_ID=1000172 WHERE UPPER(ColumnName)='LBR_WITHHOLDTHRESHOLD' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 19/08/2015 14h38min22s BRT
UPDATE AD_Process_Para SET ColumnName='LBR_WithholdThreshold', Name='Withhold Threshold', Description='Defines the Withhold Threshold ', Help='Defines the Withhold Threshold ' WHERE AD_Element_ID=1000172 AND IsCentrallyMaintained='Y'
;

-- 19/08/2015 14h38min22s BRT
UPDATE AD_Field SET Name='Withhold Threshold', Description='Defines the Withhold Threshold ', Help='Defines the Withhold Threshold ' WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=1000172) AND IsCentrallyMaintained='Y'
;

-- 19/08/2015 14h38min22s BRT
UPDATE AD_PrintFormatItem SET PrintName='Withhold Threshold', Name='Withhold Threshold' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=AD_PrintFormatItem.AD_Column_ID AND c.AD_Element_ID=1000172)
;

-- 19/08/2015 14h38min53s BRT
UPDATE AD_Column SET DefaultValue='0',Updated=TO_TIMESTAMP('2015-08-19 14:38:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000454
;

-- 19/08/2015 14h38min54s BRT
ALTER TABLE LBR_TaxName ADD COLUMN LBR_WithholdThreshold NUMERIC DEFAULT '0' NOT NULL
;

-- 19/08/2015 14h39min11s BRT
UPDATE AD_Element SET ColumnName='LBR_TaxRegime',Updated=TO_TIMESTAMP('2015-08-19 14:39:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1121529
;

-- 19/08/2015 14h39min11s BRT
UPDATE AD_Column SET ColumnName='LBR_TaxRegime', Name='Tax Regime', Description=NULL, Help=NULL WHERE AD_Element_ID=1121529
;

-- 19/08/2015 14h39min11s BRT
UPDATE AD_Process_Para SET ColumnName='LBR_TaxRegime', Name='Tax Regime', Description=NULL, Help=NULL, AD_Element_ID=1121529 WHERE UPPER(ColumnName)='LBR_TAXREGIME' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 19/08/2015 14h39min11s BRT
UPDATE AD_Process_Para SET ColumnName='LBR_TaxRegime', Name='Tax Regime', Description=NULL, Help=NULL WHERE AD_Element_ID=1121529 AND IsCentrallyMaintained='Y'
;

-- 19/08/2015 14h39min43s BRT
ALTER TABLE AD_OrgInfo ADD COLUMN LBR_TaxRegime CHAR(1) DEFAULT NULL 
;

UPDATE LBR_TaxAssessment 
SET LBR_BookNo=booknumber
;

UPDATE C_Order 
SET LBR_HasWithhold=HasWithHold
;

UPDATE C_BPartner 
SET LBR_HasWithhold=HasWithHold
;

UPDATE C_Invoice 
SET LBR_HasWithhold=HasWithHold
;

UPDATE LBR_TaxName 
SET LBR_HasWithhold=HasWithHold
;

UPDATE LBR_TaxAssessment 
SET LBR_PageNo=pagenumber
;

UPDATE C_Invoice 
SET LBR_ProcCancelBoleto=ProcCancelBoleto
;

UPDATE M_Production 
SET LBR_ProcCancelProduction=ProcCancelProduction
;

UPDATE C_Order 
SET LBR_ProcCreatePO=ProcCreatePO
;

UPDATE LBR_NotaFiscal 
SET LBR_Processing2=Processing2
;

UPDATE LBR_NFeLot 
SET LBR_Processing2=Processing2
;

UPDATE LBR_NotaFiscal 
SET LBR_ProcReactivateNF=ProcReactivateNF
;

UPDATE LBR_TaxName 
SET LBR_WithholdThreshold=WithHoldThreshold
;

UPDATE AD_OrgInfo 
SET LBR_TaxRegime=Z_TaxRegime
;

ALTER TABLE LBR_TaxAssessment 
DROP COLUMN booknumber
;

ALTER TABLE C_Order 
DROP COLUMN HasWithHold
;

ALTER TABLE C_BPartner 
DROP COLUMN HasWithHold
;

ALTER TABLE C_Invoice 
DROP COLUMN HasWithHold
;

ALTER TABLE LBR_TaxName 
DROP COLUMN HasWithHold
;

ALTER TABLE LBR_TaxAssessment 
DROP COLUMN pagenumber
;

ALTER TABLE C_Invoice 
DROP COLUMN ProcCancelBoleto
;

ALTER TABLE M_Production 
DROP COLUMN ProcCancelProduction
;

ALTER TABLE C_Order 
DROP COLUMN ProcCreatePO
;

ALTER TABLE LBR_NotaFiscal 
DROP COLUMN Processing2
;

ALTER TABLE LBR_NFeLot 
DROP COLUMN Processing2
;

ALTER TABLE LBR_NotaFiscal 
DROP COLUMN ProcReactivateNF
;

ALTER TABLE LBR_TaxName 
DROP COLUMN WithHoldThreshold
;

ALTER TABLE AD_OrgInfo 
DROP COLUMN Z_TaxRegime
;

-- 19/08/2015 15h9min43s BRT
UPDATE AD_Field SET DisplayLogic='@lbr_TaxType@=''S'' & @LBR_HasWithhold@=Y',Updated=TO_TIMESTAMP('2015-08-19 15:09:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125409
;

-- 19/08/2015 15h9min47s BRT
UPDATE AD_Field SET DisplayLogic='@lbr_TaxType@=''S'' & @LBR_HasWithhold@=Y & @LBR_WithholdType@=T',Updated=TO_TIMESTAMP('2015-08-19 15:09:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125411
;

-- 19/08/2015 15h9min51s BRT
UPDATE AD_Field SET DisplayLogic='@lbr_TaxType@=''S'' & @LBR_HasWithhold@=''Y''',Updated=TO_TIMESTAMP('2015-08-19 15:09:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000266
;

-- 19/08/2015 15h11min49s BRT
UPDATE AD_Field SET DisplayLogic='@lbr_TaxType@=''S'' & @LBR_HasWithhold@=''Y''',Updated=TO_TIMESTAMP('2015-08-19 15:11:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000431
;

-- 19/08/2015 15h25min53s BRT
UPDATE AD_Column SET IsIdentifier='Y', SeqNo=1,Updated=TO_TIMESTAMP('2015-08-19 15:25:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1124172
;


SELECT Register_Migration_Script ('128-Fix-LBR-ColumnNames.sql') FROM DUAL
;