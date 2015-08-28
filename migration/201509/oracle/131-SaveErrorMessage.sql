-- 28/08/2015 10h7min4s BRT
INSERT INTO AD_Message (AD_Client_ID,AD_Message_ID,AD_Org_ID,Created,CreatedBy,EntityType,IsActive,MsgText,MsgType,Updated,UpdatedBy,Value) VALUES (0,1120034,0,TO_DATE('2015-08-28 10:07:00','YYYY-MM-DD HH24:MI:SS'),100,'U','Y','Save Error - No Change','I',TO_DATE('2015-08-28 10:07:00','YYYY-MM-DD HH24:MI:SS'),100,'SaveErrorNoChange')
;

-- 28/08/2015 10h7min4s BRT
INSERT INTO AD_Message_Trl (AD_Language,AD_Message_ID, MsgText,MsgTip, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Message_ID, t.MsgText,t.MsgTip, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Message t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Message_ID=1120034 AND NOT EXISTS (SELECT * FROM AD_Message_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Message_ID=t.AD_Message_ID)
;

-- 28/08/2015 10h7min7s BRT
UPDATE AD_Message SET EntityType='LBRA',Updated=TO_DATE('2015-08-28 10:07:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Message_ID=1120034
;

-- 28/08/2015 10h7min21s BRT
UPDATE AD_Message_Trl SET MsgText='Erro ao Salvar Registro - Sem modificações',Updated=TO_DATE('2015-08-28 10:07:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Message_ID=1120034 AND AD_Language='pt_BR'
;

-- 28/08/2015 10h7min21s BRT
SELECT Register_Migration_Script ('131-SaveErrorMessage.sql') FROM DUAL
;

EXIT