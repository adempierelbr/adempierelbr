-- 06/05/2019 11h40min18s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET AD_Element_ID=265, ColumnName='DateDoc', Description='Date of the Document', Help='The Document Date indicates the date the document was generated.  It may or may not be the same as the accounting date.', Name='Document Date',Updated=TO_TIMESTAMP('2019-05-06 11:40:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000049
;

-- 06/05/2019 11h40min18s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET Name='Document Date', Description='Date of the Document', Help='The Document Date indicates the date the document was generated.  It may or may not be the same as the accounting date.' WHERE AD_Column_ID=1000049 AND IsCentrallyMaintained='Y'
;

-- 06/05/2019 11h40min22s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
ALTER TABLE LBR_Boleto ADD COLUMN DateDoc TIMESTAMP NOT NULL
;

-- 06/05/2019 11h40min46s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET AD_Element_ID=265, ColumnName='DateDoc', Description='Date of the Document', Help='The Document Date indicates the date the document was generated.  It may or may not be the same as the accounting date.', Name='Document Date',Updated=TO_TIMESTAMP('2019-05-06 11:40:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000238
;

-- 06/05/2019 11h40min46s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET Name='Document Date', Description='Date of the Document', Help='The Document Date indicates the date the document was generated.  It may or may not be the same as the accounting date.' WHERE AD_Column_ID=1000238 AND IsCentrallyMaintained='Y'
;

-- 06/05/2019 11h40min49s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
ALTER TABLE LBR_CNAB ADD COLUMN DateDoc TIMESTAMP NOT NULL
;

-- 06/05/2019 11h41min12s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET AD_Element_ID=265, ColumnName='DateDoc', Description='Date of the Document', Help='The Document Date indicates the date the document was generated.  It may or may not be the same as the accounting date.', Name='Document Date',Updated=TO_TIMESTAMP('2019-05-06 11:41:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1129755
;

-- 06/05/2019 11h41min12s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET Name='Document Date', Description='Date of the Document', Help='The Document Date indicates the date the document was generated.  It may or may not be the same as the accounting date.' WHERE AD_Column_ID=1129755 AND IsCentrallyMaintained='Y'
;

-- 06/05/2019 11h43min46s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Process_Para SET AD_Element_ID=265, ColumnName='DateDoc',Updated=TO_TIMESTAMP('2019-05-06 11:43:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=1000003
;

-- 06/05/2019 11h44min0s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Process_Para SET AD_Element_ID=265, ColumnName='DateDoc',Updated=TO_TIMESTAMP('2019-05-06 11:44:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=1000013
;

-- 06/05/2019 11h44min16s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Process_Para SET AD_Element_ID=265, ColumnName='DateDoc',Updated=TO_TIMESTAMP('2019-05-06 11:44:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=1120334
;

-- 06/05/2019 11h44min25s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
DELETE FROM AD_Element_Trl WHERE AD_Element_ID=1000018
;

-- 06/05/2019 11h44min25s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
DELETE FROM AD_Element WHERE AD_Element_ID=1000018
;

UPDATE AD_Process_Para SET AD_Element_ID=265, ColumnName='DateDoc',Updated=TO_TIMESTAMP('2019-05-06 11:44:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1000018
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
    b.datedoc,
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

SELECT Register_Migration_Script ('201905061142_RemoveLBR_DocDate.sql') FROM DUAL
;
