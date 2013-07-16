-- 13/03/2013 14h44min34s BRT
-- Boleto Email
INSERT INTO AD_Message (AD_Client_ID,AD_Message_ID,AD_Org_ID,Created,CreatedBy,EntityType,IsActive,MsgText,MsgTip,MsgType,Updated,UpdatedBy,Value) VALUES (0,1120032,0,TO_DATE('2013-03-13 14:44:33','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Prezado Cliente,

Segue o boleto da Empresa {0}. A Nota Fiscal é enviada pelo site da Prefeitura de São Paulo.

Atenciosamente,
Cobrança - {0}
Telefone: {1}',null,'I',TO_DATE('2013-03-13 14:44:33','YYYY-MM-DD HH24:MI:SS'),100,'LBR_BillingEMailText')
;

-- 13/03/2013 14h44min34s BRT
-- Boleto Email
INSERT INTO AD_Message_Trl (AD_Language,AD_Message_ID, MsgText,MsgTip, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Message_ID, t.MsgText,t.MsgTip, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Message t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Message_ID=1120032 AND NOT EXISTS (SELECT * FROM AD_Message_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Message_ID=t.AD_Message_ID)
;-- 13/03/2013 14h53min0s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
DELETE  FROM  AD_Message_Trl WHERE AD_Message_ID=2000002
;

-- 13/03/2013 14h53min0s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
DELETE FROM AD_Message WHERE AD_Message_ID=2000002
;

--	Atualiza o ultimo script
UPDATE AD_SysConfig SET Value='360-trunk/75-MensagemEnvioBoletoporEmail.sql' WHERE AD_SysConfig_ID=1100006
;
