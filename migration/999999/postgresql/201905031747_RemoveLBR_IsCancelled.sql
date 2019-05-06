-- 03/05/2019 19h7min23s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET AD_Element_ID=2531, ColumnName='IsCancelled', DefaultValue='N', Description='The transaction was cancelled', Help=NULL, Name='Cancelled',Updated=TO_TIMESTAMP('2019-05-03 19:07:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000062
;

-- 03/05/2019 19h7min23s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column_Trl SET IsTranslated='N' WHERE AD_Column_ID=1000062
;

-- 03/05/2019 19h7min24s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column_Trl SET Name='Cancelled',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Column_ID=1000062
;

-- 03/05/2019 19h7min24s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET Name='Cancelled', Description='The transaction was cancelled', Help=NULL WHERE AD_Column_ID=1000062 AND IsCentrallyMaintained='Y'
;

-- 03/05/2019 19h7min29s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
ALTER TABLE LBR_Boleto ADD COLUMN IsCancelled CHAR(1) DEFAULT 'N' CHECK (IsCancelled IN ('Y','N')) NOT NULL
;

-- 03/05/2019 19h8min4s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET AD_Element_ID=2531, ColumnName='IsCancelled', DefaultValue='N', Description='The transaction was cancelled', Help=NULL, Name='Cancelled',Updated=TO_TIMESTAMP('2019-05-03 19:08:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000072
;

-- 03/05/2019 19h8min4s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column_Trl SET IsTranslated='N' WHERE AD_Column_ID=1000072
;

-- 03/05/2019 19h8min4s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column_Trl SET Name='Cancelled',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Column_ID=1000072
;

-- 03/05/2019 19h8min4s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET Name='Cancelled', Description='The transaction was cancelled', Help=NULL WHERE AD_Column_ID=1000072 AND IsCentrallyMaintained='Y'
;

-- 03/05/2019 19h8min5s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
ALTER TABLE LBR_CNAB ADD COLUMN IsCancelled CHAR(1) DEFAULT 'N' CHECK (IsCancelled IN ('Y','N')) NOT NULL
;

-- 03/05/2019 19h8min51s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET AD_Element_ID=2531, ColumnName='IsCancelled', Description='The transaction was cancelled', Help=NULL, Name='Cancelled',Updated=TO_TIMESTAMP('2019-05-03 19:08:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1129790
;

-- 03/05/2019 19h8min51s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column_Trl SET IsTranslated='N' WHERE AD_Column_ID=1129790
;

-- 03/05/2019 19h8min51s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column_Trl SET Name='Cancelled',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Column_ID=1129790
;

-- 03/05/2019 19h8min51s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET Name='Cancelled', Description='The transaction was cancelled', Help=NULL WHERE AD_Column_ID=1129790 AND IsCentrallyMaintained='Y'
;

-- 06/05/2019 11h45min5s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Process_Para SET AD_Element_ID=2531, ColumnName='IsCancelled',Updated=TO_TIMESTAMP('2019-05-06 11:45:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=1120338
;

-- 06/05/2019 11h45min36s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Process_Para SET AD_Element_ID=2531, ColumnName='IsCancelled',Updated=TO_TIMESTAMP('2019-05-06 11:45:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=1120346
;

-- 06/05/2019 11h45min53s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
DELETE FROM AD_Element_Trl WHERE AD_Element_ID=1000027
;

-- 06/05/2019 11h45min53s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
DELETE FROM AD_Element WHERE AD_Element_ID=1000027
;

UPDATE AD_Process_Para SET AD_Element_ID=2531, ColumnName='IsCancelled',Updated=TO_TIMESTAMP('2019-05-06 11:45:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1000027
;
UPDATE LBR_Boleto SET IsCancelled=LBR_IsCancelled
;
UPDATE LBR_CNAB SET IsCancelled=LBR_IsCancelled
;
DROP VIEW RV_LBR_Boleto
;

CREATE OR REPLACE VIEW RV_LBR_Boleto AS
 SELECT b.ad_client_id,
    b.ad_org_id,
    b.isactive,
    b.updated,
    b.updatedby,
    b.created,
    b.createdby,
    b.lbr_boleto_id,
    b.c_invoice_id,
    b.lbr_agencyno,
    b.accountno,
    b.documentno,
    b.lbr_docdate,
    b.lbr_cessionary,
    b.c_bpartner_id,
    b.duedate,
    b.lbr_payscheduleno,
    b.grandtotal,
    b.discountamt,
    b.discountdate,
    b.lbr_jboletono,
    b.lbr_interest,
    b.lbr_hassue,
    b.lbr_suedays,
    b.c_payment_id,
    b.ispaid,
    b.lbr_occurno,
    b.docstatus,
    b.c_bankaccount_id,
    b.routingno,
    b.lbr_receivername,
    b.lbr_bptypebr,
    b.lbr_billkind,
    b.lbr_billfold,
    b.lbr_clientcode,
    b.lbr_paymentlocation1,
    b.lbr_paymentlocation2,
    b.lbr_instruction1,
    b.lbr_instruction2,
    b.lbr_instruction3,
    b.address1,
    b.address2,
    b.address3,
    b.address4,
    b.city,
    b.regionname,
    b.postal,
    b.iscancelled
   FROM lbr_boleto b
;

SELECT Register_Migration_Script ('201905031747_RemoveLBR_IsCancelled.sql') FROM DUAL
;