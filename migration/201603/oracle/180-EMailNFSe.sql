-- 05/02/2016 11h39min56s BRST
INSERT INTO AD_Message (AD_Client_ID,AD_Message_ID,AD_Org_ID,Created,CreatedBy,EntityType,IsActive,MsgText,MsgType,Updated,UpdatedBy,Value) VALUES (0,1120036,0,TO_DATE('2016-02-05 11:39:54','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Este e-mail é enviado automaticamente, por favor não responda.<br><br>Prezado cliente,<br><br>Anexo à este e-mail você está recebendo o arquivo PDF da Nota Fiscal de Serviços Eletrônica. <br><br>Para se certificar que esta NFS-e é válida, queira por favor consultar sua autenticidade no site da prefeitura emitente da NFS-e.<br><br>--<br>Atenciosamente,<br>@AD_Org_ID<Name>@.<br>Nota Fiscal emitida pelo sistema Kenos ERP Adempiere (www.kenos.com.br)','I',TO_DATE('2016-02-05 11:39:54','YYYY-MM-DD HH24:MI:SS'),100,'LBR_EMailNFSe')
;

-- 05/02/2016 11h39min56s BRST
INSERT INTO AD_Message_Trl (AD_Language,AD_Message_ID, MsgText,MsgTip, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Message_ID, t.MsgText,t.MsgTip, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Message t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Message_ID=1120036 AND NOT EXISTS (SELECT * FROM AD_Message_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Message_ID=t.AD_Message_ID)
;

-- 05/02/2016 11h39min56s BRST
SELECT Register_Migration_Script ('180-EMailNFSe.sql') FROM DUAL
;

EXIT