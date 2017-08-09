-- 28/06/2017 12h0min16s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_ModelValidator SET IsActive='N', SeqNo=100,Updated=TO_TIMESTAMP('2017-06-28 12:00:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_ModelValidator_ID=50000
;

-- 28/06/2017 12h1min23s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_ModelValidator SET SeqNo=10,Updated=TO_TIMESTAMP('2017-06-28 12:01:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_ModelValidator_ID=1120000
;

-- 28/06/2017 12h1min45s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_ModelValidator SET SeqNo=20,Updated=TO_TIMESTAMP('2017-06-28 12:01:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_ModelValidator_ID=1000000
;

-- 28/06/2017 12h3min15s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_ModelValidator SET SeqNo=10,Updated=TO_TIMESTAMP('2017-06-28 12:03:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_ModelValidator_ID=1120002
;

-- 28/06/2017 12h3min56s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_ModelValidator SET SeqNo=20,Updated=TO_TIMESTAMP('2017-06-28 12:03:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_ModelValidator_ID=1120000
;

-- 28/06/2017 12h4min52s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_ModelValidator SET SeqNo=10,Updated=TO_TIMESTAMP('2017-06-28 12:04:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_ModelValidator_ID=1000000
;

-- 28/06/2017 12h5min1s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_ModelValidator SET SeqNo=20,Updated=TO_TIMESTAMP('2017-06-28 12:05:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_ModelValidator_ID=1120002
;

-- 28/06/2017 12h5min3s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_ModelValidator SET SeqNo=20,Updated=TO_TIMESTAMP('2017-06-28 12:05:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_ModelValidator_ID=1000002
;

-- 28/06/2017 12h5min7s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_ModelValidator SET SeqNo=30,Updated=TO_TIMESTAMP('2017-06-28 12:05:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_ModelValidator_ID=1120002
;

-- 28/06/2017 12h5min53s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_ModelValidator SET SeqNo=40,Updated=TO_TIMESTAMP('2017-06-28 12:05:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_ModelValidator_ID=1120000
;

-- 28/06/2017 12h5min58s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_ModelValidator SET SeqNo=50,Updated=TO_TIMESTAMP('2017-06-28 12:05:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_ModelValidator_ID=1000004
;

-- 28/06/2017 12h6min37s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_ModelValidator SET SeqNo=60,Updated=TO_TIMESTAMP('2017-06-28 12:06:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_ModelValidator_ID=1000001
;

-- 28/06/2017 12h6min48s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_ModelValidator SET SeqNo=70,Updated=TO_TIMESTAMP('2017-06-28 12:06:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_ModelValidator_ID=1000003
;

-- 28/06/2017 12h7min18s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_ModelValidator SET SeqNo=80,Updated=TO_TIMESTAMP('2017-06-28 12:07:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_ModelValidator_ID=1120001
;

-- 28/06/2017 12h7min18s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_ModelValidator SET SeqNo = 100 + SeqNo WHERE ENTITYTYPE = 'U';

SELECT Register_Migration_Script ('278-ModelValidator_FixSequence.sql') FROM DUAL
;
