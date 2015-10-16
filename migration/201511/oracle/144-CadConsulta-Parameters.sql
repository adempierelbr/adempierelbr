-- 16/10/2015 15h27min30s BRT
UPDATE AD_Process_Para SET IsMandatory='N',Updated=TO_DATE('2015-10-16 15:27:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=1120001
;

-- 16/10/2015 15h31min5s BRT
UPDATE AD_Process SET Classname='org.adempierelbr.process.ConsultaCadastro',Updated=TO_DATE('2015-10-16 15:31:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=1120001
;

-- 16/10/2015 15h32min3s BRT
UPDATE AD_Process_Para SET IsMandatory='N',Updated=TO_DATE('2015-10-16 15:32:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=1120001
;

-- 16/10/2015 15h32min43s BRT
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Reference_Value_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,113,0,1120001,1120206,19,322,'AD_Org_ID',TO_DATE('2015-10-16 15:32:41','YYYY-MM-DD HH24:MI:SS'),100,'LBRA',0,'Y','Y','Y','N','Organização',30,TO_DATE('2015-10-16 15:32:41','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 16/10/2015 15h32min43s BRT
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=1120206 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 16/10/2015 15h32min51s BRT
UPDATE AD_Process_Para SET SeqNo=5,Updated=TO_DATE('2015-10-16 15:32:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=1120206
;

-- 16/10/2015 15h39min0s BRT
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1000010,0,1120001,1120207,10,'lbr_CPF',TO_DATE('2015-10-16 15:38:59','YYYY-MM-DD HH24:MI:SS'),100,'LBRA',0,'Y','Y','N','N','CPF',30,TO_DATE('2015-10-16 15:38:59','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 16/10/2015 15h39min0s BRT
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=1120207 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 16/10/2015 15h39min15s BRT
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1000009,0,1120001,1120208,10,'lbr_CNPJ',TO_DATE('2015-10-16 15:39:14','YYYY-MM-DD HH24:MI:SS'),100,'U',0,'Y','Y','N','N','CNPJ',40,TO_DATE('2015-10-16 15:39:14','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 16/10/2015 15h39min15s BRT
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=1120208 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 16/10/2015 15h39min32s BRT
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1000014,0,1120001,1120209,10,'lbr_IE',TO_DATE('2015-10-16 15:39:32','YYYY-MM-DD HH24:MI:SS'),100,'LBRA',0,'Y','Y','N','N','IE',50,TO_DATE('2015-10-16 15:39:32','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 16/10/2015 15h39min32s BRT
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=1120209 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 16/10/2015 15h40min45s BRT
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,DefaultValue,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1126,0,1120001,1120210,20,'ProcCreate',TO_DATE('2015-10-16 15:40:44','YYYY-MM-DD HH24:MI:SS'),100,'N','LBRA',0,'Y','Y','Y','N','ProcCreate',60,TO_DATE('2015-10-16 15:40:44','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 16/10/2015 15h40min45s BRT
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=1120210 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 16/10/2015 15h41min1s BRT
UPDATE AD_Process_Para SET SeqNo=70,Updated=TO_DATE('2015-10-16 15:41:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=1120000
;

-- 16/10/2015 15h41min5s BRT
UPDATE AD_Process_Para SET SeqNo=80,Updated=TO_DATE('2015-10-16 15:41:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=1120001
;

-- 16/10/2015 15h41min8s BRT
UPDATE AD_Process_Para SET IsMandatory='N',Updated=TO_DATE('2015-10-16 15:41:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=1120000
;

-- 16/10/2015 15h41min43s BRT
UPDATE AD_Process_Para SET EntityType='LBRA',Updated=TO_DATE('2015-10-16 15:41:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=1120208
;

-- 16/10/2015 16h3min5s BRT
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,209,0,1120001,1120211,19,1000003,'C_Region_ID',TO_DATE('2015-10-16 16:03:04','YYYY-MM-DD HH24:MI:SS'),100,'LBRA',0,'Y','Y','N','N','UF',55,TO_DATE('2015-10-16 16:03:04','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 16/10/2015 16h3min5s BRT
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=1120211 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 16/10/2015 16h22min11s BRT
UPDATE AD_Process_Para SET DefaultValue='-1',Updated=TO_DATE('2015-10-16 16:22:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=1120211
;

-- 16/10/2015 16h25min13s BRT
UPDATE AD_Process_Trl SET IsTranslated='Y',Help='Faz a consulta do PN na SEFAZ. Alguns estados permitem a consulta por CPF e IE, todos os estados permitem a consulta por CNPJ. É possível efetuar a consulta de um PN já cadastrado apenas preenchendo o campo de Parceiro de Negócios. Caso o PN não esteja cadastrado no sistema, faça o cadastro preenchendo os campo CNPJ ou IE ou CPF, além de um dos 3 campos também é necessário preencher o campo de Região (UF). Caso deseje efetuar o cadastro do PN consultado, marque a opção Criar.',Updated=TO_DATE('2015-10-16 16:25:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=1120001 AND AD_Language='es_MX'
;

-- 16/10/2015 16h25min20s BRT
UPDATE AD_Process_Trl SET Help='Faz a consulta do PN na SEFAZ. Alguns estados permitem a consulta por CPF e IE, todos os estados permitem a consulta por CNPJ. É possível efetuar a consulta de um PN já cadastrado apenas preenchendo o campo de Parceiro de Negócios. Caso o PN não esteja cadastrado no sistema, faça o cadastro preenchendo os campo CNPJ ou IE ou CPF, além de um dos 3 campos também é necessário preencher o campo de Região (UF). Caso deseje efetuar o cadastro do PN consultado, marque a opção Criar.',Updated=TO_DATE('2015-10-16 16:25:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=1120001 AND AD_Language='pt_BR'
;

-- 16/10/2015 16h27min12s BRT
UPDATE AD_Process_Trl SET Help='Faz a consulta do PN na SEFAZ. Alguns estados permitem a consulta por CPF e IE, todos os estados permitem a consulta por CNPJ. É possível efetuar a consulta de um PN já cadastrado apenas preenchendo o campo de Parceiro de Negócios. Caso o PN não esteja cadastrado no sistema, faça a consulta preenchendo os campo CNPJ ou IE ou CPF, além de um dos 3 campos também é necessário preencher o campo de Região (UF). Caso deseje efetuar o cadastro do PN consultado, marque a opção Criar.',Updated=TO_DATE('2015-10-16 16:27:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=1120001 AND AD_Language='pt_BR'
;

-- 16/10/2015 16h28min35s BRT
UPDATE AD_Process_Para SET ReadOnlyLogic='@lbr_CNPJ@!'''' | @lbr_IE@!'''' | @C_BPartner_ID@>0 | @C_BPartner_Location_ID@>0',Updated=TO_DATE('2015-10-16 16:28:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=1120207
;

-- 16/10/2015 16h30min40s BRT
UPDATE AD_Process_Para SET ReadOnlyLogic='@C_BPartner_ID@>0 | @C_BPartner_Location_ID@>0',Updated=TO_DATE('2015-10-16 16:30:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=1120207
;

-- 16/10/2015 16h30min45s BRT
UPDATE AD_Process_Para SET ReadOnlyLogic='@C_BPartner_ID@>0 | @C_BPartner_Location_ID@>0',Updated=TO_DATE('2015-10-16 16:30:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=1120208
;

-- 16/10/2015 16h30min47s BRT
UPDATE AD_Process_Para SET ReadOnlyLogic='@C_BPartner_ID@>0 | @C_BPartner_Location_ID@>0',Updated=TO_DATE('2015-10-16 16:30:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=1120209
;

-- 16/10/2015 16h30min50s BRT
UPDATE AD_Process_Para SET ReadOnlyLogic='@C_BPartner_ID@>0 | @C_BPartner_Location_ID@>0',Updated=TO_DATE('2015-10-16 16:30:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=1120211
;

-- 16/10/2015 16h31min10s BRT
UPDATE AD_Process_Para SET ReadOnlyLogic='@lbr_CNPJ@!''''',Updated=TO_DATE('2015-10-16 16:31:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=1120000
;

-- 16/10/2015 16h31min57s BRT
UPDATE AD_Process_Para SET ReadOnlyLogic='@C_BPartner_ID@>0 | @C_BPartner_Location_ID@>0',Updated=TO_DATE('2015-10-16 16:31:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=1120210
;

-- 16/10/2015 16h32min49s BRT
UPDATE AD_Process_Para SET ReadOnlyLogic=NULL,Updated=TO_DATE('2015-10-16 16:32:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=1120000
;

-- 31/08/2015 11h54min22s BRT
SELECT Register_Migration_Script ('144-CadConsulta-Parameters.sql') FROM DUAL
;

EXIT
