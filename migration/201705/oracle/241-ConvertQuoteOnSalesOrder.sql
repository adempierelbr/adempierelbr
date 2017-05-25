-- 25/10/2016 16h38min57s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Process (AccessLevel,AD_Client_ID,AD_Org_ID,AD_Process_ID,Classname,Created,CreatedBy,Description,EntityType,Help,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value) VALUES ('1',0,0,1120183,'org.compiere.process.CopyOrder',TO_DATE('2016-10-25 16:38:55','YYYY-MM-DD HH24:MI:SS'),100,'Convert open Proposal or Quotation to Order from an Button on Order''s Window','LBRA','You can convert a Proposal or Quotation to any other Order document type. You would use this process, if you want to maintain/keep the Proposal or Quotation. The document status needs to be In Process.','Y','N','N','N','N','Quote convert (Button on Order)','Y',0,0,TO_DATE('2016-10-25 16:38:55','YYYY-MM-DD HH24:MI:SS'),100,'LBR_C_Order QuoteCopy')
;

-- 25/10/2016 16h38min57s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Process_Trl (AD_Language,AD_Process_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_ID=1120183 AND NOT EXISTS (SELECT * FROM AD_Process_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_ID=t.AD_Process_ID)
;

-- 25/10/2016 16h42min16s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Process SET AccessLevel='1', AD_Form_ID=NULL, AD_PrintFormat_ID=NULL, AD_ReportView_ID=NULL, AD_Workflow_ID=NULL, Classname='org.compiere.process.CopyOrder', Description='Convert open Proposal or Quotation to Order', Help='You can convert a Proposal or Quotation to any other Order document type. You would use this process, if you want to maintain/keep the Proposal or Quotation. The document status needs to be In Process.', IsBetaFunctionality='N', IsDirectPrint='N', IsReport='N', IsServerProcess='N', JasperReport=NULL, ProcedureName=NULL, ShowHelp='Y',Updated=TO_DATE('2016-10-25 16:42:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=1120183
;

-- 25/10/2016 16h42min16s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Process_Trl SET IsTranslated='N' WHERE AD_Process_ID=1120183
;

-- 25/10/2016 16h42min16s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Process_Trl SET Description='Convert open Proposal or Quotation to Order',Help='You can convert a Proposal or Quotation to any other Order document type. You would use this process, if you want to maintain/keep the Proposal or Quotation. The document status needs to be In Process.',Name='Quote convert (Button on Order)',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Process_ID=1120183
;

-- 25/10/2016 16h42min17s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,558,0,1120183,1120313,19,179,'C_Order_ID',TO_DATE('2016-10-25 16:42:16','YYYY-MM-DD HH24:MI:SS'),100,'Order','LBRA',0,'The Order is a control document.  The  Order is complete when the quantity ordered is the same as the quantity shipped and invoiced.  When you close an order, unshipped (backordered) quantities are cancelled.','Y','Y','Y','N','Order',10,TO_DATE('2016-10-25 16:42:16','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 25/10/2016 16h42min17s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=1120313 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 25/10/2016 16h42min17s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,196,0,1120183,1120314,19,172,'C_DocType_ID',TO_DATE('2016-10-25 16:42:17','YYYY-MM-DD HH24:MI:SS'),100,'Document type or rules','LBRA',0,'The Document Type determines document sequence and processing rules','Y','Y','Y','N','Document Type',20,TO_DATE('2016-10-25 16:42:17','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 25/10/2016 16h42min17s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=1120314 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 25/10/2016 16h42min18s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,265,0,1120183,1120315,15,'DateDoc',TO_DATE('2016-10-25 16:42:17','YYYY-MM-DD HH24:MI:SS'),100,'Date of the Document','LBRA',0,'The Document Date indicates the date the document was generated.  It may or may not be the same as the accounting date.','Y','Y','N','N','Document Date',30,TO_DATE('2016-10-25 16:42:17','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 25/10/2016 16h42min18s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=1120315 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 25/10/2016 16h42min18s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Process_Para (AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) VALUES (0,2186,0,1120183,1120316,20,'IsCloseDocument',TO_DATE('2016-10-25 16:42:18','YYYY-MM-DD HH24:MI:SS'),100,'Close Document (process)','LBRA',0,'Y','Y','N','N','Close Document',40,TO_DATE('2016-10-25 16:42:18','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 25/10/2016 16h42min18s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Process_Para_Trl (AD_Language,AD_Process_Para_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Process_Para_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Process_Para t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Process_Para_ID=1120316 AND NOT EXISTS (SELECT * FROM AD_Process_Para_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Process_Para_ID=t.AD_Process_Para_ID)
;

-- 25/10/2016 16h43min49s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Process SET Description='Convert Complete Proposal or Quotation to Order by Button on Order''s Window',Updated=TO_DATE('2016-10-25 16:43:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=1120183
;

-- 25/10/2016 16h43min49s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Process_Trl SET IsTranslated='N' WHERE AD_Process_ID=1120183
;

-- 25/10/2016 16h43min49s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Process_Trl SET Description='Convert Complete Proposal or Quotation to Order by Button on Order''s Window',Help='You can convert a Proposal or Quotation to any other Order document type. You would use this process, if you want to maintain/keep the Proposal or Quotation. The document status needs to be In Process.',Name='Quote convert (Button on Order)',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Process_ID=1120183
;

-- 25/10/2016 16h45min18s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Process_Para SET DefaultValue='@C_Order_ID@',Updated=TO_DATE('2016-10-25 16:45:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=1120313
;

-- 25/10/2016 16h45min27s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Process_Para SET ReadOnlyLogic='1=1',Updated=TO_DATE('2016-10-25 16:45:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=1120313
;

-- 25/10/2016 16h45min45s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Process_Para SET DefaultValue='@Date@', ReadOnlyLogic='1=1',Updated=TO_DATE('2016-10-25 16:45:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=1120315
;

-- 25/10/2016 16h45min53s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Process_Para SET DefaultValue='Y', ReadOnlyLogic='1=1',Updated=TO_DATE('2016-10-25 16:45:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=1120316
;

-- 25/10/2016 16h50min37s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,1122313,0,'LBR_ConvertQuote',TO_DATE('2016-10-25 16:50:35','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Convert Quote','Convert Quote',TO_DATE('2016-10-25 16:50:35','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 25/10/2016 16h50min37s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1122313 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 25/10/2016 16h50min45s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Element_Trl SET IsTranslated='Y',Name='Converter Cotação',PrintName='Converter Cotação',Updated=TO_DATE('2016-10-25 16:50:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1122313 AND AD_Language='pt_BR'
;

-- 25/10/2016 16h50min58s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1129507,1122313,0,28,259,'LBR_ConvertQuote',TO_DATE('2016-10-25 16:50:57','YYYY-MM-DD HH24:MI:SS'),100,'U',1,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Convert Quote',0,TO_DATE('2016-10-25 16:50:57','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 25/10/2016 16h50min58s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1129507 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 25/10/2016 16h51min11s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET AD_Process_ID=1120183,Updated=TO_DATE('2016-10-25 16:51:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1129507
;

-- 25/10/2016 16h51min17s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET EntityType='LBRA',Updated=TO_DATE('2016-10-25 16:51:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1129507
;

-- 25/10/2016 16h51min28s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
ALTER TABLE C_Order ADD LBR_ConvertQuote CHAR(1) DEFAULT NULL 
;

-- 25/10/2016 16h52min41s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_FieldGroup_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1129507,101,1127053,0,186,TO_DATE('2016-10-25 16:52:40','YYYY-MM-DD HH24:MI:SS'),100,23,'LBRA','Y','Y','Y','N','N','N','N','Y','Convert Quote',455,TO_DATE('2016-10-25 16:52:40','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 25/10/2016 16h52min41s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1127053 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 25/10/2016 16h53min59s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET DisplayLogic='@DocSubTypeSO@=''ON''',Updated=TO_DATE('2016-10-25 16:53:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127053
;

-- 25/10/2016 17h2min39s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET DisplayLogic='@DocSubTypeSO@=ON',Updated=TO_DATE('2016-10-25 17:02:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127053
;

-- 25/10/2016 17h6min39s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET DisplayLogic='@DocSubTypeSO@=''ON''',Updated=TO_DATE('2016-10-25 17:06:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127053
;

-- 25/10/2016 17h7min50s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET DisplayLogic='@OrderTyp@=''ON''',Updated=TO_DATE('2016-10-25 17:07:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127053
;

-- 25/10/2016 17h10min12s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET DisplayLogic='@OrderType@=''ON'' & @DocStatus@=''CO''',Updated=TO_DATE('2016-10-25 17:10:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127053
;

-- 25/10/2016 17h12min50s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Process_Para SET DefaultValue='@#C_Order_ID@',Updated=TO_DATE('2016-10-25 17:12:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=1120313
;

-- 25/10/2016 17h14min1s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Process_Para SET DefaultValue='@Record_ID@',Updated=TO_DATE('2016-10-25 17:14:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=1120313
;

-- 25/10/2016 17h14min57s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Process_Para SET DefaultValue='@C_Order_ID@',Updated=TO_DATE('2016-10-25 17:14:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=1120313
;

-- 26/10/2016 14h25min5s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET IsAlwaysUpdateable='Y',Updated=TO_DATE('2016-10-26 14:25:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1129507
;

-- 26/10/2016 14h31min15s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Process_Trl SET IsTranslated='Y',Name='Converter Cotação',Description='Converter Cotação com Estado Completado a partir do Botão na Janela Pedido de Venda',Help='Converter Cotação com Estado Completado a partir do Botão na Janela Pedido de Venda',Updated=TO_DATE('2016-10-26 14:31:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=1120183 AND AD_Language='pt_BR'
;

-- 26/10/2016 14h31min31s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Process SET Name='Quote convert',Updated=TO_DATE('2016-10-26 14:31:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=1120183
;

-- 26/10/2016 14h31min31s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Process_Trl SET IsTranslated='N' WHERE AD_Process_ID=1120183
;

-- 26/10/2016 14h31min31s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Process_Trl SET Description='Convert Complete Proposal or Quotation to Order by Button on Order''s Window',Help='You can convert a Proposal or Quotation to any other Order document type. You would use this process, if you want to maintain/keep the Proposal or Quotation. The document status needs to be In Process.',Name='Quote convert',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Process_ID=1120183
;

-- 26/10/2016 14h31min38s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Process_Trl SET IsTranslated='Y',Updated=TO_DATE('2016-10-26 14:31:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=1120183 AND AD_Language='pt_BR'
;

-- 26/10/2016 14h31min58s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Process_Para SET DisplayLogic='1=2',Updated=TO_DATE('2016-10-26 14:31:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=1120313
;

-- 26/10/2016 14h32min5s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Process_Para SET DisplayLogic='1=2',Updated=TO_DATE('2016-10-26 14:32:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=1120315
;

-- 26/10/2016 14h32min9s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Process_Para SET DisplayLogic='1=2',Updated=TO_DATE('2016-10-26 14:32:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_Para_ID=1120316
;

-- 26/10/2016 14h32min35s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Process_Trl SET Help='Converter Cotação com Estado Completado a partir do Botão na Janela Pedido de Venda. Ao converter a cotação em um Pedido de Venda, a mesma será fechada automaticamente.',Updated=TO_DATE('2016-10-26 14:32:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=1120183 AND AD_Language='pt_BR'
;

-- 26/10/2016 14h32min9s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
SELECT Register_Migration_Script ('241-ConvertQuoteOnSalesOrder.sql') FROM DUAL
;

EXIT