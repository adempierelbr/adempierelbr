-- 19/08/2015 19h2min50s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,53584,1000000,TO_DATE('2015-08-19 19:02:50','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','PM - Individual Minor',TO_DATE('2015-08-19 19:02:50','YYYY-MM-DD HH24:MI:SS'),100,'PM')
;

-- 19/08/2015 19h2min50s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=53584 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 19/08/2015 19h2min57s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
DELETE  FROM  AD_Ref_List_Trl WHERE AD_Ref_List_ID=53584
;

-- 19/08/2015 19h2min57s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
DELETE FROM AD_Ref_List WHERE AD_Ref_List_ID=53584
;

-- 19/08/2015 19h3min31s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,53585,1000000,TO_DATE('2015-08-19 19:03:31','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','PM - Individual Minor',TO_DATE('2015-08-19 19:03:31','YYYY-MM-DD HH24:MI:SS'),100,'PM')
;

-- 19/08/2015 19h3min31s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=53585 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 19/08/2015 19h3min37s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
DELETE  FROM  AD_Ref_List_Trl WHERE AD_Ref_List_ID=53585
;

-- 19/08/2015 19h3min37s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
DELETE FROM AD_Ref_List WHERE AD_Ref_List_ID=53585
;

-- 19/08/2015 19h4min9s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121573,1000000,TO_DATE('2015-08-19 19:04:08','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','PM - Individual Minor',TO_DATE('2015-08-19 19:04:08','YYYY-MM-DD HH24:MI:SS'),100,'PM')
;

-- 19/08/2015 19h4min9s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121573 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 19/08/2015 19h5min6s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121574,1000000,TO_DATE('2015-08-19 19:05:05','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','XX - Foreigner',TO_DATE('2015-08-19 19:05:05','YYYY-MM-DD HH24:MI:SS'),100,'XX')
;

-- 19/08/2015 19h5min6s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121574 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 19/08/2015 19h5min13s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Ref_List_Trl SET Name='XX - Estrangeiro',Updated=TO_DATE('2015-08-19 19:05:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121574 AND AD_Language='pt_BR'
;

-- 19/08/2015 19h5min32s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Ref_List_Trl SET Name='PM - Pessoa Física (Menor)',Updated=TO_DATE('2015-08-19 19:05:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121573 AND AD_Language='pt_BR'
;

-- 19/08/2015 19h7min10s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET DisplayLogic='@#LBR_ENABLED@=Y',Updated=TO_DATE('2015-08-19 19:07:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000007
;

-- 19/08/2015 19h7min20s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET DisplayLogic='@#LBR_ENABLED@=Y',Updated=TO_DATE('2015-08-19 19:07:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000008
;

-- 19/08/2015 19h9min30s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET DisplayLogic='@#LBR_ENABLED@=Y & @lbr_BPTypeBR@=''PF'' | @lbr_BPTypeBR@=''PM''',Updated=TO_DATE('2015-08-19 19:09:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000011
;

-- 19/08/2015 19h9min39s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET DisplayLogic='@AD_Language@=''pt_BR'' & @lbr_BPTypeBR@=''PF'' | @lbr_BPTypeBR@=''PM''',Updated=TO_DATE('2015-08-19 19:09:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000014
;

-- 19/08/2015 19h9min49s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET DisplayLogic='@#LBR_ENABLED@=Y & @lbr_BPTypeBR@=''PF'' | @lbr_BPTypeBR@=''PM''',Updated=TO_DATE('2015-08-19 19:09:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000014
;

-- 19/08/2015 19h10min14s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET DisplayLogic='@#LBR_ENABLED@=Y & @lbr_BPTypeBR@=''PJ''',Updated=TO_DATE('2015-08-19 19:10:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000010
;

-- 19/08/2015 19h10min29s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET DisplayLogic='@#LBR_ENABLED@=Y & @lbr_BPTypeBR@=''PJ'' & @#LBR_USE_UNIFIED_BP@!''Y''',Updated=TO_DATE('2015-08-19 19:10:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000009
;

-- 19/08/2015 19h10min40s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET DisplayLogic='@#LBR_ENABLED@=Y & @lbr_IsIEExempt@=''N'' & @#LBR_USE_UNIFIED_BP@!''Y''',Updated=TO_DATE('2015-08-19 19:10:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000012
;

-- 19/08/2015 19h10min47s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET DisplayLogic='@#LBR_ENABLED@=Y & @#LBR_USE_UNIFIED_BP@!''Y''',Updated=TO_DATE('2015-08-19 19:10:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000013
;

-- 19/08/2015 19h10min55s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET DisplayLogic='@#LBR_ENABLED@=Y & @lbr_BPTypeBR@=''PJ''',Updated=TO_DATE('2015-08-19 19:10:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000015
;

-- 19/08/2015 19h11min3s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET DisplayLogic='@#LBR_ENABLED@=Y',Updated=TO_DATE('2015-08-19 19:11:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000426
;

-- 19/08/2015 19h12min51s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET IsMandatory='N', MandatoryLogic='@IsProspect@=N | @IsEmployee@=N',Updated=TO_DATE('2015-08-19 19:12:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000017
;

-- 19/08/2015 19h13min42s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET IsMandatory='N', MandatoryLogic='@lbr_BPTypeBR@=PJ',Updated=TO_DATE('2015-08-19 19:13:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000018
;

-- 19/08/2015 19h13min55s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET MandatoryLogic='@lbr_BPTypeBR@=PF',Updated=TO_DATE('2015-08-19 19:13:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000019
;

-- 19/08/2015 19h16min29s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET IsMandatory='N',Updated=TO_DATE('2015-08-19 19:16:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000019
;

-- 19/08/2015 19h17min5s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET MandatoryLogic='@IsProspect@=N | @IsEmployee@=Y',Updated=TO_DATE('2015-08-19 19:17:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000017
;

-- 20/08/2015 16h17min4s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Ref_List_Trl SET Name='Pessoa Física',Updated=TO_DATE('2015-08-20 16:17:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1000001 AND AD_Language='pt_BR'
;

-- 20/08/2015 16h17min11s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Ref_List_Trl SET Name='Pessoa Jurídica',Updated=TO_DATE('2015-08-20 16:17:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1000000 AND AD_Language='pt_BR'
;

-- 20/08/2015 16h17min24s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Name='Pessoa Física (Menor de Idade)',Updated=TO_DATE('2015-08-20 16:17:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121573 AND AD_Language='pt_BR'
;

-- 20/08/2015 16h17min31s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Ref_List_Trl SET Name='Estrangeiro',Updated=TO_DATE('2015-08-20 16:17:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121574 AND AD_Language='pt_BR'
;

-- 20/08/2015 16h18min55s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET DisplayLogic='@#LBR_ENABLED@=Y & @lbr_IsIEExempt@=''N'' & @#LBR_USE_UNIFIED_BP@!''Y'' & @lbr_BPTypeBR@!''XX''',Updated=TO_DATE('2015-08-20 16:18:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000012
;

-- 20/08/2015 16h18min58s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET DisplayLogic='@#LBR_ENABLED@=Y & @#LBR_USE_UNIFIED_BP@!''Y'' & @lbr_BPTypeBR@!''XX''',Updated=TO_DATE('2015-08-20 16:18:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000013
;

-- 20/08/2015 16h19min8s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET DisplayLogic='@#LBR_ENABLED@=Y & @lbr_BPTypeBR@!''XX''',Updated=TO_DATE('2015-08-20 16:19:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000426
;

-- 20/08/2015 16h19min49s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET DisplayLogic='@#LBR_ENABLED@=Y & @lbr_BPTypeBR@!''XX'' & @lbr_BPTypeBR@!''''',Updated=TO_DATE('2015-08-20 16:19:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000426
;

-- 20/08/2015 16h19min56s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET DisplayLogic='@#LBR_ENABLED@=Y & @#LBR_USE_UNIFIED_BP@!''Y'' & @lbr_BPTypeBR@!''XX'' & @lbr_BPTypeBR@!''''',Updated=TO_DATE('2015-08-20 16:19:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000013
;

-- 20/08/2015 16h20min18s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET DisplayLogic='@#LBR_ENABLED@=Y & @lbr_IsIEExempt@=''N'' & @#LBR_USE_UNIFIED_BP@!''Y'' & @lbr_BPTypeBR@!''XX'' & @lbr_BPTypeBR@!''''',Updated=TO_DATE('2015-08-20 16:20:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000012
;

-- 20/08/2015 18h16min16s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET ReadOnlyLogic='@lbr_BPTypeBRIsValid@=''Y'' & @lbr_BPTypeBR@=''PM'' & @lbr_BPTypeBR@=''XX''',Updated=TO_DATE('2015-08-20 18:16:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000017
;

-- 20/08/2015 18h16min51s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET ReadOnlyLogic='@lbr_BPTypeBRIsValid@=''Y'' & @lbr_BPTypeBR@!''PM''',Updated=TO_DATE('2015-08-20 18:16:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000019
;

-- 20/08/2015 18h17min1s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET ReadOnlyLogic='@lbr_BPTypeBRIsValid@=''Y'' & @lbr_BPTypeBR@!''PM'' & @lbr_BPTypeBR@!''XX''',Updated=TO_DATE('2015-08-20 18:17:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000017
;

-- 20/08/2015 18h22min34s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET ReadOnlyLogic='@lbr_BPTypeBRIsValid@=''Y'' & @lbr_BPTypeBR@=''PF'' | @lbr_BPTypeBR@!''PJ''',Updated=TO_DATE('2015-08-20 18:22:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000017
;

-- 20/08/2015 18h22min50s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET ReadOnlyLogic='@lbr_BPTypeBRIsValid@=''Y'' & @lbr_BPTypeBR@=''PF'' | @lbr_BPTypeBR@=''PJ''',Updated=TO_DATE('2015-08-20 18:22:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000019
;

-- 20/08/2015 18h22min56s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET ReadOnlyLogic='@lbr_BPTypeBRIsValid@=''Y'' & @lbr_BPTypeBR@=''PF'' | @lbr_BPTypeBR@=''PJ''',Updated=TO_DATE('2015-08-20 18:22:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000017
;

-- 20/08/2015 18h32min27s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET Callout='org.adempierelbr.callout.CalloutBPartner.changeBPType',Updated=TO_DATE('2015-08-20 18:32:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000017
;

-- 20/08/2015 18h34min31s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET ReadOnlyLogic='@lbr_BPTypeBRIsValid@=''Y'' & @lbr_BPTypeBR@=''PF'' | @lbr_BPTypeBRIsValid@=''Y'' & @lbr_BPTypeBR@=''PJ''',Updated=TO_DATE('2015-08-20 18:34:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000017
;

-- 20/08/2015 18h35min18s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET ReadOnlyLogic='@lbr_BPTypeBRIsValid@=''Y'' & @lbr_BPTypeBR@=''PF'' | @lbr_BPTypeBRIsValid@=''Y'' & @lbr_BPTypeBR@=''PJ''',Updated=TO_DATE('2015-08-20 18:35:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000019
;

-- 20/08/2015 18h47min3s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET ReadOnlyLogic='@lbr_BPTypeBRIsValid@=''Y'' & @lbr_BPTypeBR@!''PM'' & @lbr_BPTypeBR@!''XX'' & @lbr_BPTypeBR@!''''',Updated=TO_DATE('2015-08-20 18:47:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000017
;

-- 20/08/2015 18h47min11s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET ReadOnlyLogic='@lbr_BPTypeBRIsValid@=''Y'' & @lbr_BPTypeBR@!''PM'' & @lbr_BPTypeBR@!''XX'' & @lbr_BPTypeBR@!''''',Updated=TO_DATE('2015-08-20 18:47:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000019
;

-- 20/08/2015 18h49min56s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET Callout='org.adempierelbr.callout.CalloutBPartner.changeBPType',Updated=TO_DATE('2015-08-20 18:49:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000019
;


UPDATE C_BPartner SET IsProspect='Y' WHERE IsProspect='N' AND (lbr_BPTypeBR NOT IN ('PJ','PF') OR lbr_BPTypeBR IS NULL)
;

UPDATE C_BPartner SET lbr_BPTypeBRIsValid='Y', lbr_BPTypeBR='XX' WHERE IsEmployee='Y' AND lbr_BPTypeBR IS NULL AND AD_Client_ID=11
;
