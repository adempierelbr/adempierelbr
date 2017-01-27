-- 24/01/2017 14h35min26s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET DefaultValue='@AD_Client_ID@',Updated=TO_TIMESTAMP('2017-01-24 14:35:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000550
;

-- 24/01/2017 14h35min36s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET DefaultValue='@AD_Org_ID@',Updated=TO_TIMESTAMP('2017-01-24 14:35:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000549
;

-- 24/01/2017 14h36min5s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET DefaultValue='@AD_Client_ID@',Updated=TO_TIMESTAMP('2017-01-24 14:36:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000674
;

-- 24/01/2017 14h36min9s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET DefaultValue='@AD_Org_ID@',Updated=TO_TIMESTAMP('2017-01-24 14:36:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000675
;

-- 24/01/2017 14h36min35s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET DefaultValue='@AD_Client_ID@',Updated=TO_TIMESTAMP('2017-01-24 14:36:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000686
;

-- 24/01/2017 14h36min40s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET DefaultValue='@AD_Org_ID@',Updated=TO_TIMESTAMP('2017-01-24 14:36:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000687
;

-- 24/01/2017 14h36min58s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET DefaultValue='@AD_Client_ID@', IsUpdateable='N',Updated=TO_TIMESTAMP('2017-01-24 14:36:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1126473
;

-- 24/01/2017 14h37min4s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET DefaultValue='@AD_Org_ID@', IsUpdateable='N',Updated=TO_TIMESTAMP('2017-01-24 14:37:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1126474
;

-- 24/01/2017 14h41min51s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Val_Rule (AD_Client_ID,AD_Org_ID,AD_Val_Rule_ID,Code,Created,CreatedBy,Description,EntityType,IsActive,Name,Type,Updated,UpdatedBy) VALUES (0,0,1120129,'C_Invoice.DocStatus IN (''CO'', ''CL'') AND C_Invoice.AD_Org_ID = @AD_Org_ID@',TO_TIMESTAMP('2017-01-24 14:41:46','YYYY-MM-DD HH24:MI:SS'),100,'Completed, Closed and by Organization','LBRA','Y','C_Invoice By Org and Complete','S',TO_TIMESTAMP('2017-01-24 14:41:46','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 24/01/2017 14h42min18s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET AD_Val_Rule_ID=1120129,Updated=TO_TIMESTAMP('2017-01-24 14:42:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000485
;

-- 24/01/2017 14h44min52s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Val_Rule (AD_Client_ID,AD_Org_ID,AD_Val_Rule_ID,Code,Created,CreatedBy,EntityType,IsActive,Name,Type,Updated,UpdatedBy) VALUES (0,0,1120130,'C_Order.AD_Org_ID = @AD_Org_ID@',TO_TIMESTAMP('2017-01-24 14:44:51','YYYY-MM-DD HH24:MI:SS'),100,'C','Y','C_Order By Org','S',TO_TIMESTAMP('2017-01-24 14:44:51','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 24/01/2017 14h45min13s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Val_Rule SET EntityType='LBRA',Updated=TO_TIMESTAMP('2017-01-24 14:45:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=1120130
;

-- 24/01/2017 14h45min17s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET AD_Val_Rule_ID=1120130,Updated=TO_TIMESTAMP('2017-01-24 14:45:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000486
;

-- 24/01/2017 14h47min27s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Val_Rule (AD_Client_ID,AD_Org_ID,AD_Val_Rule_ID,Code,Created,CreatedBy,EntityType,IsActive,Name,Type,Updated,UpdatedBy) VALUES (0,0,1120131,'M_InOut.DocStatus IN (''CO'', ''CL'') AND M_InOut.AD_Org_ID = @AD_Org_ID@',TO_TIMESTAMP('2017-01-24 14:47:25','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','M_InOut By Org  Complete','S',TO_TIMESTAMP('2017-01-24 14:47:25','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 24/01/2017 14h50min29s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Val_Rule SET Name='M_InOut By Org and Complete',Updated=TO_TIMESTAMP('2017-01-24 14:50:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Val_Rule_ID=1120131
;

-- 24/01/2017 14h50min32s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET AD_Val_Rule_ID=1120131,Updated=TO_TIMESTAMP('2017-01-24 14:50:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000488
;

SELECT Register_Migration_Script ('249-CorrecoesJanelaNF.sql') FROM DUAL
;