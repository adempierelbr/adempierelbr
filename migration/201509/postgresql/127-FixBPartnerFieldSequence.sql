-- 18/08/2015 10h24min38s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=355,Updated=TO_TIMESTAMP('2015-08-18 10:24:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000011
;

-- 18/08/2015 10h24min43s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=356,Updated=TO_TIMESTAMP('2015-08-18 10:24:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000014
;

SELECT Register_Migration_Script ('127-FixBPartnerFieldSequence.sql') FROM DUAL
;