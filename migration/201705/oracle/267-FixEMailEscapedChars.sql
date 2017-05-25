SET DEFINE OFF
;

-- 12/05/2017 11h27min50s BRT
DELETE FROM AD_Message_Trl WHERE AD_Message_ID=1120033
;

-- 12/05/2017 11h27min50s BRT
UPDATE AD_Message SET MsgText='Este e-mail &eacute; enviado automaticamente, por favor n&atilde;o responda.<br /><br />Prezado cliente,<br /><br />Anexo &agrave; este e-mail voc&ecirc; est&aacute; recebendo o arquivo XML da Nota Fiscal Eletr&ocirc;nica. Este arquivo deve ser armazenado eletronicamente por sua empresa pelo prazo de 05 (cinco) anos, conforme previsto na legisla&ccedil;&atilde;o tribut&aacute;ria (Art. 173 do C&oacute;digo Tribut&aacute;rio Nacional e &sect; 4&ordm; da Lei 5.172 de 25/10/1966).<br /><br />O DANFE em papel seguir&aacute; junto com a mercadoria e poder&aacute; ser arquivado para apresenta&ccedil;&atilde;o ao fisco quando solicitado. Todavia, se sua empresa tamb&eacute;m for emitente de NF-e, o arquivamento eletr&ocirc;nico do XML de seus fornecedores &eacute; obrigat&oacute;rio, sendo pass&iacute;vel de fiscaliza&ccedil;&atilde;o.<br /><br />Para se certificar que esta NF-e &eacute; v&aacute;lida, queira por favor consultar sua autenticidade no site nacional do projeto NF-e (www.nfe.fazenda.gov.br), utilizando a chave de acesso contida no DANFE.<br /><br />--<br />Atenciosamente,<br />@AD_Org_ID<Name>@.<br />Nota Fiscal emitida pelo sistema Kenos ERP Adempiere (www.kenos.com.br)', Updated=TO_DATE('2017-05-12 10:46:00','YYYY-MM-DD HH24:MI:SS') WHERE AD_Message_ID=1120033
;

-- 12/05/2017 11h27min50s BRT
INSERT INTO AD_Message_Trl (AD_Language, AD_Message_ID, MsgText, MsgTip, IsTranslated, AD_Client_ID, AD_Org_ID, Created, Createdby, Updated, UpdatedBy) SELECT l.AD_Language, t.AD_Message_ID, t.MsgText, t.MsgTip, 'N', t.AD_Client_ID, t.AD_Org_ID, t.Created, t.Createdby, t.Updated, t.UpdatedBy FROM AD_Language l, AD_Message t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Message_ID=1120033 AND NOT EXISTS (SELECT * FROM AD_Message_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Message_ID=t.AD_Message_ID)
;

-- 12/05/2017 11h27min50s BRT
DELETE FROM AD_Message_Trl WHERE AD_Message_ID=1120036
;

-- 12/05/2017 11h27min50s BRT
UPDATE AD_Message SET MsgText='Este e-mail &eacute; enviado automaticamente, por favor n&atilde;o responda.<br /><br />Prezado cliente,<br /><br />Anexo &agrave; este e-mail voc&ecirc; est&aacute; recebendo o arquivo PDF da Nota Fiscal de Servi&ccedil;os Eletr&ocirc;nica. <br /><br />Para se certificar que esta NFS-e &eacute; v&aacute;lida, queira por favor consultar sua autenticidade no site da prefeitura emitente da NFS-e.<br /><br />--<br />Atenciosamente,<br />@AD_Org_ID<Name>@.<br />Nota Fiscal emitida pelo sistema Kenos ERP Adempiere (www.kenos.com.br)', Updated=TO_DATE('2017-05-12 10:46:00','YYYY-MM-DD HH24:MI:SS') WHERE AD_Message_ID=1120036
;

-- 12/05/2017 11h27min50s BRT
INSERT INTO AD_Message_Trl (AD_Language, AD_Message_ID, MsgText, MsgTip, IsTranslated, AD_Client_ID, AD_Org_ID, Created, Createdby, Updated, UpdatedBy) SELECT l.AD_Language, t.AD_Message_ID, t.MsgText, t.MsgTip, 'N', t.AD_Client_ID, t.AD_Org_ID, t.Created, t.Createdby, t.Updated, t.UpdatedBy FROM AD_Language l, AD_Message t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Message_ID=1120036 AND NOT EXISTS (SELECT * FROM AD_Message_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Message_ID=t.AD_Message_ID)
;

-- 12/05/2017 11h27min50s BRT
SELECT Register_Migration_Script ('267-FixEMailEscapedChars.sql') FROM DUAL
;

EXIT