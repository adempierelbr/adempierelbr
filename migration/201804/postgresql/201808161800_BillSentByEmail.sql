-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
-- 16/08/2018 17h24min17s BRT
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsEncrypted,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsSyncDatabase,IsAlwaysUpdateable,IsAutocomplete,IsAllowLogging) VALUES (1130426,0,'EMail Sent','Indicates if the email was sent','Indicates if the email was sent',1000001,'LBR_EMailSent','N',1,'N','N','N','N','N',0,'N',20,0,0,'Y',TO_TIMESTAMP('2018-08-16 17:24:17','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-08-16 17:24:17','YYYY-MM-DD HH24:MI:SS'),100,1121729,'Y','N','LBRA','N','N','N','Y')
;

-- 16/08/2018 17h32min53s BRT
UPDATE AD_Message SET MsgText='Este e-mail &eacute; enviado automaticamente, por favor n&atilde;o responda.<br /><br />Prezado cliente,<br /><br />Anexo &agrave; este e-mail voc&ecirc; est&aacute; recebendo o Boleto em arquivo PDF enviado pela Empresa {0}.<br /><br />--<br />Atenciosamente,<br />{0}.<br />Telefone: {1}',Updated=TO_TIMESTAMP('2018-08-16 17:32:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Message_ID=1120032
;

-- 16/08/2018 17h41min2s BRT
UPDATE AD_Message SET MsgText='Este e-mail &eacute; enviado automaticamente, por favor n&atilde;o responda.<br />
<br />
Prezado cliente,<br />
<br />
Anexo &agrave; este e-mail voc&ecirc; est&aacute; recebendo o Boleto em arquivo PDF enviado pela Empresa {0}.<br />
<br />
--<br />
Atenciosamente,<br />
{0}.<br />
Telefone: {1}
',Updated=TO_TIMESTAMP('2018-08-16 17:41:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Message_ID=1120032
;

-- 16/08/2018 17h41min2s BRT
UPDATE AD_Message_trl SET MsgText='Este e-mail &eacute; enviado automaticamente, por favor n&atilde;o responda.<br />
<br />
Prezado cliente,<br />
<br />
Anexo &agrave; este e-mail voc&ecirc; est&aacute; recebendo o Boleto em arquivo PDF enviado pela Empresa {0}.<br />
<br />
--<br />
Atenciosamente,<br />
{0}.<br />
Telefone: {1}
',Updated=TO_TIMESTAMP('2018-08-16 17:41:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Message_ID=1120032 AND AD_Language = 'pt_BR'
;

-- 16/08/2018 17h41min54s BRT
ALTER TABLE LBR_Boleto ADD COLUMN LBR_EMailSent CHAR(1) DEFAULT 'N' CHECK (LBR_EMailSent IN ('Y','N'))
;

-- 16/08/2018 17h42min57s BRT
INSERT INTO AD_Field (AD_Field_ID,Name,Description,Help,AD_Tab_ID,AD_Column_ID,IsDisplayed,DisplayLength,SeqNo,SortNo,IsSameLine,IsHeading,IsFieldOnly,IsEncrypted,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsReadOnly,IsCentrallyMaintained,EntityType) VALUES (1127488,'EMail Sent','Indicates if the email was sent','Indicates if the email was sent',1000034,1130426,'Y',0,410,0,'N','N','N','N',0,0,'Y',TO_TIMESTAMP('2018-08-16 17:42:56','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2018-08-16 17:42:56','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','LBRA')
;

SELECT Register_Migration_Script ('201808161800_BillSentByEmail.sql') FROM DUAL
;