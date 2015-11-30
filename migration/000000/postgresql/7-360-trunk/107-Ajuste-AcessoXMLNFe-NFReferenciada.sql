-- 06/04/2015 14h21min17s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET IsMandatory='Y',Updated=TO_TIMESTAMP('2015-04-06 14:21:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1126466
;

-- 06/04/2015 14h21min25s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO t_alter_column values('lbr_authorizedaccessxml','lbr_BPTypeBR','VARCHAR(2)',null,'PJ')
;

-- 06/04/2015 14h21min25s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE LBR_AuthorizedAccessXML SET lbr_BPTypeBR='PJ' WHERE lbr_BPTypeBR IS NULL
;

-- 06/04/2015 14h21min25s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO t_alter_column values('lbr_authorizedaccessxml','lbr_BPTypeBR',null,'NOT NULL',null)
;

-- 06/04/2015 14h22min18s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET VFormat='00.000.000/0000-00', DefaultValue=NULL,Updated=TO_TIMESTAMP('2015-04-06 14:22:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1126464
;

-- 06/04/2015 18h0min28s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Ref_List SET Name='NF (Produtor Rural)',Updated=TO_TIMESTAMP('2015-04-06 18:00:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121543
;

-- 06/04/2015 18h0min28s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=1121543
;

-- 06/04/2015 18h0min28s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Ref_List_Trl SET Description=NULL,Name='NF (Produtor Rural)',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Ref_List_ID=1121543
;

-- 06/04/2015 18h0min42s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Name='NF (Produtor Rural)',Updated=TO_TIMESTAMP('2015-04-06 18:00:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121543 AND AD_Language='pt_BR'
;

-- 06/04/2015 18h1min34s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1120208,2000205,TO_TIMESTAMP('2015-04-06 18:01:34','YYYY-MM-DD HH24:MI:SS'),100,'U','Y','CT-e',TO_TIMESTAMP('2015-04-06 18:01:34','YYYY-MM-DD HH24:MI:SS'),100,'T')
;

-- 06/04/2015 18h1min34s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=2000205 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 06/04/2015 18h1min38s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Ref_List SET EntityType='LBRA',Updated=TO_TIMESTAMP('2015-04-06 18:01:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=2000205
;

-- 06/04/2015 18h1min44s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Updated=TO_TIMESTAMP('2015-04-06 18:01:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=2000205 AND AD_Language='pt_BR'
;

-- 06/04/2015 18h3min11s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET DisplayLogic='@LBR_FiscalDocRefType@ = N | @LBR_FiscalDocRefType@ = R | @LBR_FiscalDocRefType@ = T',Updated=TO_TIMESTAMP('2015-04-06 18:03:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1124900
;

-- 06/04/2015 18h3min34s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET DisplayLogic='@LBR_FiscalDocRefType@ = N | @LBR_FiscalDocRefType@ = R | @LBR_FiscalDocRefType@ = T',Updated=TO_TIMESTAMP('2015-04-06 18:03:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1124914
;

-- 06/04/2015 18h17min24s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET DisplayLogic='@LBR_FiscalDocRefType@ ! N & @LBR_FiscalDocRefType@ ! T',Updated=TO_TIMESTAMP('2015-04-06 18:17:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1124912
;

-- 06/04/2015 18h17min34s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET DisplayLogic='@LBR_FiscalDocRefType@ ! N & @LBR_FiscalDocRefType@ ! T',Updated=TO_TIMESTAMP('2015-04-06 18:17:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1124915
;

-- 06/04/2015 18h21min26s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET DisplayLogic='@LBR_FiscalDocRefType@ ! N & @LBR_FiscalDocRefType@ ! T',Updated=TO_TIMESTAMP('2015-04-06 18:21:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1124901
;

-- 06/04/2015 18h21min36s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET DisplayLogic='@LBR_FiscalDocRefType@ ! N & @LBR_FiscalDocRefType@ ! T',Updated=TO_TIMESTAMP('2015-04-06 18:21:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1124896
;

SELECT register_migration_script('107-Ajuste-AcessoXMLNFe-NFReferenciada.sql') FROM dual;