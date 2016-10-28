-- 25/10/2016 18h33min25s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Reference (AD_Client_ID,AD_Org_ID,AD_Reference_ID,Created,CreatedBy,Description,EntityType,IsActive,IsOrderByValue,Name,Updated,UpdatedBy,ValidationType) VALUES (0,0,1120251,TO_DATE('2016-10-25 18:33:23','YYYY-MM-DD HH24:MI:SS'),100,'Finds C_Order_IDs for a given Quote','LBRA','Y','N','RelType C_Order (Sales) <= Quote (Sales)',TO_DATE('2016-10-25 18:33:23','YYYY-MM-DD HH24:MI:SS'),100,'T')
;

-- 25/10/2016 18h33min25s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Reference_Trl (AD_Language,AD_Reference_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Reference_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Reference t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Reference_ID=1120251 AND NOT EXISTS (SELECT * FROM AD_Reference_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Reference_ID=t.AD_Reference_ID)
;

-- 25/10/2016 18h36min53s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Ref_Table (AD_Client_ID,AD_Display,AD_Key,AD_Org_ID,AD_Reference_ID,AD_Table_ID,Created,CreatedBy,EntityType,IsActive,IsValueDisplayed,Updated,UpdatedBy,WhereClause) VALUES (0,2169,2161,0,1120251,259,TO_DATE('2016-10-25 18:36:53','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','N',TO_DATE('2016-10-25 18:36:53','YYYY-MM-DD HH24:MI:SS'),100,'C_Order_ID IN (
  select o.c_order_id from c_order o
    left join c_orderline ol on o.c_order_id = ol.c_order_id
    left join c_invoiceline il on ol.c_orderline_id = il.c_orderline_id
  where il.C_Invoice_ID=@C_Invoice_ID@ AND o.isSOTrx=''Y''
)')
;

-- 25/10/2016 18h46min47s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Ref_Table SET WhereClause='C_Order_ID IN (
  select o.c_order_id from c_order o where C_Order_ID=@Ref_Order_ID@ AND o.isSOTrx=''Y''
)',Updated=TO_DATE('2016-10-25 18:46:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=1120251
;

-- 25/10/2016 18h47min31s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Reference (AD_Client_ID,AD_Org_ID,AD_Reference_ID,Created,CreatedBy,Description,EntityType,IsActive,IsOrderByValue,Name,Updated,UpdatedBy,ValidationType) VALUES (0,0,1120252,TO_DATE('2016-10-25 18:47:31','YYYY-MM-DD HH24:MI:SS'),100,'Finds Quote for a given C_C_Order_ID','LBRA','Y','N','RelType Quote (Sales) <= C_Order_ID (Sales)',TO_DATE('2016-10-25 18:47:31','YYYY-MM-DD HH24:MI:SS'),100,'T')
;

-- 25/10/2016 18h47min31s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Reference_Trl (AD_Language,AD_Reference_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Reference_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Reference t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Reference_ID=1120252 AND NOT EXISTS (SELECT * FROM AD_Reference_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Reference_ID=t.AD_Reference_ID)
;

-- 25/10/2016 18h48min24s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Ref_Table (AD_Client_ID,AD_Display,AD_Key,AD_Org_ID,AD_Reference_ID,AD_Table_ID,Created,CreatedBy,EntityType,IsActive,IsValueDisplayed,OrderByClause,Updated,UpdatedBy,WhereClause) VALUES (0,2169,2161,0,1120252,259,TO_DATE('2016-10-25 18:48:24','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','N','DocumentNo',TO_DATE('2016-10-25 18:48:24','YYYY-MM-DD HH24:MI:SS'),100,'C_Invoice_ID IN (
  select i.C_Invoice_ID from C_Invoice i
    left join C_InvoiceLine il on il.C_Invoice_ID = i.C_Invoice_ID
    left join C_OrderLine ol on ol.C_OrderLine_ID = il.C_OrderLine_ID
  where ol.C_Order_ID=@C_Order_ID@ AND i.isSOTrx=''Y''
)')
;

-- 25/10/2016 18h51min4s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Ref_Table SET WhereClause='C_Order_ID IN (
  SELECT C_Order_ID FROM C_Order o where o.Ref_Order_ID=@C_Order_ID@ AND o.isSOTrx=''Y''
)',Updated=TO_DATE('2016-10-25 18:51:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=1120252
;

-- 25/10/2016 18h55min28s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Ref_Table SET WhereClause='C_Order_ID IN (
  select o.c_order_id from c_order o where o.C_Order_ID=@Ref_Order_ID@ AND o.isSOTrx=''Y''
)',Updated=TO_DATE('2016-10-25 18:55:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=1120251
;

-- 25/10/2016 18h59min55s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Ref_Table SET WhereClause='C_Order_ID IN (
  SELECT o.C_Order_ID FROM C_Order o where o.Ref_Order_ID=@C_Order_ID@ AND o.isSOTrx=''Y''
)',Updated=TO_DATE('2016-10-25 18:59:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=1120252
;

-- 25/10/2016 19h4min3s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Ref_Table SET OrderByClause='DocumentNo', WhereClause='C_Order_ID  = C_Order.Ref_Order_ID',Updated=TO_DATE('2016-10-25 19:04:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=1120251
;

-- 25/10/2016 19h7min31s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Ref_Table SET WhereClause='C_Order_ID  IN ( SELECT Ref_Order_ID FROM C_Order o WHERE o.C_Order_ID = @C_Order_ID)',Updated=TO_DATE('2016-10-25 19:07:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=1120251
;

-- 25/10/2016 19h8min38s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Ref_Table SET WhereClause='C_Order_ID  IN ( SELECT Ref_Order_ID FROM C_Order o WHERE o.C_Order_ID = @C_Order_ID@)',Updated=TO_DATE('2016-10-25 19:08:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=1120251
;

-- 25/10/2016 19h12min24s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Ref_Table SET AD_Key=10926,Updated=TO_DATE('2016-10-25 19:12:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=1120251
;

-- 25/10/2016 19h13min39s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Ref_Table SET AD_Key=2161,Updated=TO_DATE('2016-10-25 19:13:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=1120251
;

-- 25/10/2016 19h14min25s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Ref_Table SET WhereClause='C_Order_ID  IN (SELECT Ref_Order_ID FROM C_Order q WHERE q.C_Order_ID = @C_Order_ID@)',Updated=TO_DATE('2016-10-25 19:14:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=1120251
;

-- 25/10/2016 19h14min32s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Ref_Table SET WhereClause='C_Order_ID IN (SELECT Ref_Order_ID FROM C_Order q WHERE q.C_Order_ID = @C_Order_ID@)',Updated=TO_DATE('2016-10-25 19:14:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=1120251
;

-- 25/10/2016 19h14min47s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Ref_Table SET WhereClause='C_Order_ID IN (SELECT q.Ref_Order_ID FROM C_Order q WHERE q.C_Order_ID = @C_Order_ID@)',Updated=TO_DATE('2016-10-25 19:14:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=1120251
;

-- 26/10/2016 10h48min34s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_RelationType (AD_Client_ID,AD_Org_ID,AD_RelationType_ID,Created,CreatedBy,IsActive,IsDirected,Name,Type,Updated,UpdatedBy) VALUES (0,0,1120000,TO_DATE('2016-10-26 10:48:34','YYYY-MM-DD HH24:MI:SS'),100,'Y','N','Order (Sales) <-> Quote (Sales)','I',TO_DATE('2016-10-26 10:48:34','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 26/10/2016 10h48min54s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_RelationType SET AD_Reference_Source_ID=1120251,Updated=TO_DATE('2016-10-26 10:48:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_RelationType_ID=1120000
;

-- 26/10/2016 10h49min0s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_RelationType SET AD_Reference_Target_ID=1120252,Updated=TO_DATE('2016-10-26 10:49:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_RelationType_ID=1120000
;

-- 26/10/2016 13h44min33s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Ref_Table SET WhereClause='C_Order_ID IN ( 
CASE WHEN 
(SELECT Ref_Order_ID FROM C_Order where C_Order_ID=@C_Order_ID@) IS NULL
THEN
(SELECT o.C_Order_ID FROM C_Order o where o.Ref_Order_ID=@C_Order_ID@ AND o.isSOTrx=''Y'')
ELSE
(SELECT o.Ref_Order_ID FROM C_Order o where o.C_Order_ID=@C_Order_ID@ AND o.isSOTrx=''Y'')
END
)',Updated=TO_DATE('2016-10-26 13:44:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=1120252
;

-- 26/10/2016 13h51min6s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_RelationType SET AD_Reference_Target_ID=1120251,Updated=TO_DATE('2016-10-26 13:51:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_RelationType_ID=1120000
;

-- 26/10/2016 13h51min42s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_RelationType SET AD_Reference_Target_ID=1120252,Updated=TO_DATE('2016-10-26 13:51:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_RelationType_ID=1120000
;

-- 26/10/2016 14h32min9s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
SELECT Register_Migration_Script ('242-ZoomTransversalPedidoCotacao.sql') FROM DUAL
;

EXIT