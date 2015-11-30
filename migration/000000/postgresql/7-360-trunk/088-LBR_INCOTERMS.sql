-- 28/10/2013 12h0min34s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,1121432,0,'LBR_INCOTERMS',TO_TIMESTAMP('2013-10-28 12:00:33','YYYY-MM-DD HH24:MI:SS'),100,'International Commercial Terms','U','The Incoterms rules or International Commercial Terms are a series of pre-defined commercial terms published by the International Chamber of Commerce (ICC) that are widely used in International commercial transactions or Procurement processes. A series of three-letter trade terms related to common contractual sales practices, the Incoterms rules are intended primarily to clearly communicate the tasks, costs, and risks associated with the transportation and delivery of goods.
The Incoterms rules are accepted by governments, legal authorities, and practitioners worldwide for the interpretation of most commonly used terms in international trade. They are intended to reduce or remove altogether uncertainties arising from different interpretation of the rules in different countries. ','Y','INCOTERMS','INCOTERMS',TO_TIMESTAMP('2013-10-28 12:00:33','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 28/10/2013 12h0min34s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1121432 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 28/10/2013 12h0min41s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Element_Trl SET IsTranslated='Y',Help='As regras Incoterms ou International Commercial Terms são uma série de condições comerciais pré-definidos publicados pela Câmara Internacional de Comércio (ICC), que são amplamente utilizados nas transacções comerciais internacionais ou processos de aquisição. As regras Incoterms são destinados principalmente para se comunicar claramente as taxas, os custos e os riscos associados com o transporte e entrega de mercadorias.
As regras Incoterms são aceitas pelos governos, autoridades jurídicas e profissionais em todo o mundo para a interpretação dos termos mais utilizados no comércio internacional. Eles são destinados a reduzir ou eliminar um total de incertezas decorrentes da diferente interpretação das regras em diferentes países.',Updated=TO_TIMESTAMP('2013-10-28 12:00:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1121432 AND AD_Language='pt_BR'
;

-- 28/10/2013 12h1min57s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Reference (AD_Client_ID,AD_Org_ID,AD_Reference_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,IsOrderByValue,Name,Updated,UpdatedBy,ValidationType) VALUES (0,0,1120170,TO_TIMESTAMP('2013-10-28 12:01:55','YYYY-MM-DD HH24:MI:SS'),100,'International Commercial Terms','U','International Commercial Terms','Y','Y','C_Order - LBR_INCOTERMS',TO_TIMESTAMP('2013-10-28 12:01:55','YYYY-MM-DD HH24:MI:SS'),100,'L')
;

-- 28/10/2013 12h1min57s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Reference_Trl (AD_Language,AD_Reference_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Reference_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Reference t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Reference_ID=1120170 AND NOT EXISTS (SELECT * FROM AD_Reference_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Reference_ID=t.AD_Reference_ID)
;

-- 28/10/2013 12h3min13s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121434,1120170,TO_TIMESTAMP('2013-10-28 12:03:12','YYYY-MM-DD HH24:MI:SS'),100,'U','Y','EXW - Ex Works',TO_TIMESTAMP('2013-10-28 12:03:12','YYYY-MM-DD HH24:MI:SS'),100,'EXW')
;

-- 28/10/2013 12h3min13s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121434 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 28/10/2013 12h3min22s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Description='Mercadoria entregue ao comprador no estabelecimento do vendedor.',Updated=TO_TIMESTAMP('2013-10-28 12:03:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121434 AND AD_Language='pt_BR'
;

-- 28/10/2013 12h3min39s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121435,1120170,TO_TIMESTAMP('2013-10-28 12:03:38','YYYY-MM-DD HH24:MI:SS'),100,'U','Y','FCA - Free Carrier',TO_TIMESTAMP('2013-10-28 12:03:38','YYYY-MM-DD HH24:MI:SS'),100,'FCA')
;

-- 28/10/2013 12h3min39s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121435 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 28/10/2013 12h3min57s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121436,1120170,TO_TIMESTAMP('2013-10-28 12:03:55','YYYY-MM-DD HH24:MI:SS'),100,'U','Y','FAS - Free Alongside Ship',TO_TIMESTAMP('2013-10-28 12:03:55','YYYY-MM-DD HH24:MI:SS'),100,'FAS')
;

-- 28/10/2013 12h3min57s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121436 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 28/10/2013 12h4min9s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121437,1120170,TO_TIMESTAMP('2013-10-28 12:04:08','YYYY-MM-DD HH24:MI:SS'),100,'U','Y','FOB - Free on Board',TO_TIMESTAMP('2013-10-28 12:04:08','YYYY-MM-DD HH24:MI:SS'),100,'FOB')
;

-- 28/10/2013 12h4min9s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121437 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 28/10/2013 12h4min28s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121438,1120170,TO_TIMESTAMP('2013-10-28 12:04:27','YYYY-MM-DD HH24:MI:SS'),100,'U','Y','CFR - Cost and Freight',TO_TIMESTAMP('2013-10-28 12:04:27','YYYY-MM-DD HH24:MI:SS'),100,'CFR')
;

-- 28/10/2013 12h4min28s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121438 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 28/10/2013 12h4min45s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121439,1120170,TO_TIMESTAMP('2013-10-28 12:04:44','YYYY-MM-DD HH24:MI:SS'),100,'U','Y','CIF - Cost, Insurance and Freight',TO_TIMESTAMP('2013-10-28 12:04:44','YYYY-MM-DD HH24:MI:SS'),100,'CIF')
;

-- 28/10/2013 12h4min45s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121439 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 28/10/2013 12h4min49s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121440,1120170,TO_TIMESTAMP('2013-10-28 12:04:48','YYYY-MM-DD HH24:MI:SS'),100,'U','Y','CPT - Carriage Paid To',TO_TIMESTAMP('2013-10-28 12:04:48','YYYY-MM-DD HH24:MI:SS'),100,'CPT')
;

-- 28/10/2013 12h4min49s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121440 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 28/10/2013 12h5min2s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121441,1120170,TO_TIMESTAMP('2013-10-28 12:05:02','YYYY-MM-DD HH24:MI:SS'),100,'U','Y','CIP - Carriage and Insurance Paid to',TO_TIMESTAMP('2013-10-28 12:05:02','YYYY-MM-DD HH24:MI:SS'),100,'CIP')
;

-- 28/10/2013 12h5min2s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121441 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 28/10/2013 12h5min13s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121442,1120170,TO_TIMESTAMP('2013-10-28 12:05:13','YYYY-MM-DD HH24:MI:SS'),100,'U','Y','DAF - Delivered At Frontier',TO_TIMESTAMP('2013-10-28 12:05:13','YYYY-MM-DD HH24:MI:SS'),100,'DAF')
;

-- 28/10/2013 12h5min13s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121442 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 28/10/2013 12h5min22s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121443,1120170,TO_TIMESTAMP('2013-10-28 12:05:21','YYYY-MM-DD HH24:MI:SS'),100,'U','Y','DES - Delivered Ex-Ship',TO_TIMESTAMP('2013-10-28 12:05:21','YYYY-MM-DD HH24:MI:SS'),100,'DES')
;

-- 28/10/2013 12h5min22s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121443 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 28/10/2013 12h5min30s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121444,1120170,TO_TIMESTAMP('2013-10-28 12:05:29','YYYY-MM-DD HH24:MI:SS'),100,'U','Y','DEQ - Delivered Ex-Quay',TO_TIMESTAMP('2013-10-28 12:05:29','YYYY-MM-DD HH24:MI:SS'),100,'DEQ')
;

-- 28/10/2013 12h5min30s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121444 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 28/10/2013 12h5min39s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121445,1120170,TO_TIMESTAMP('2013-10-28 12:05:38','YYYY-MM-DD HH24:MI:SS'),100,'U','Y','DDU - Delivered Duty Unpaid',TO_TIMESTAMP('2013-10-28 12:05:38','YYYY-MM-DD HH24:MI:SS'),100,'DDU')
;

-- 28/10/2013 12h5min39s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121445 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 28/10/2013 12h5min49s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121446,1120170,TO_TIMESTAMP('2013-10-28 12:05:49','YYYY-MM-DD HH24:MI:SS'),100,'U','Y','DDP - Delivered Duty Paid',TO_TIMESTAMP('2013-10-28 12:05:49','YYYY-MM-DD HH24:MI:SS'),100,'DDP')
;

-- 28/10/2013 12h5min49s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121446 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 28/10/2013 12h6min41s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1125125,1121432,0,17,1120170,259,'LBR_INCOTERMS',TO_TIMESTAMP('2013-10-28 12:06:40','YYYY-MM-DD HH24:MI:SS'),100,'International Commercial Terms','U',3,'The Incoterms rules or International Commercial Terms are a series of pre-defined commercial terms published by the International Chamber of Commerce (ICC) that are widely used in International commercial transactions or Procurement processes. A series of three-letter trade terms related to common contractual sales practices, the Incoterms rules are intended primarily to clearly communicate the tasks, costs, and risks associated with the transportation and delivery of goods.
The Incoterms rules are accepted by governments, legal authorities, and practitioners worldwide for the interpretation of most commonly used terms in international trade. They are intended to reduce or remove altogether uncertainties arising from different interpretation of the rules in different countries. ','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','INCOTERMS',0,TO_TIMESTAMP('2013-10-28 12:06:40','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 28/10/2013 12h6min41s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1125125 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 28/10/2013 12h6min48s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
ALTER TABLE C_Order ADD COLUMN LBR_INCOTERMS VARCHAR(3) DEFAULT NULL 
;

-- 28/10/2013 12h10min57s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_FieldGroup_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1125125,130,1123910,0,294,TO_TIMESTAMP('2013-10-28 12:10:56','YYYY-MM-DD HH24:MI:SS'),100,'International Commercial Terms',14,'U','The Incoterms rules or International Commercial Terms are a series of pre-defined commercial terms published by the International Chamber of Commerce (ICC) that are widely used in International commercial transactions or Procurement processes. A series of three-letter trade terms related to common contractual sales practices, the Incoterms rules are intended primarily to clearly communicate the tasks, costs, and risks associated with the transportation and delivery of goods.
The Incoterms rules are accepted by governments, legal authorities, and practitioners worldwide for the interpretation of most commonly used terms in international trade. They are intended to reduce or remove altogether uncertainties arising from different interpretation of the rules in different countries. ','Y','Y','Y','N','N','N','N','Y','INCOTERMS',225,TO_TIMESTAMP('2013-10-28 12:10:56','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 28/10/2013 12h10min57s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1123910 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 28/10/2013 12h11min17s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field_Trl SET IsTranslated='Y',Help='As regras Incoterms ou International Commercial Terms são uma série de condições comerciais pré-definidos publicados pela Câmara Internacional de Comércio (ICC), que são amplamente utilizados nas transacções comerciais internacionais ou processos de aquisição. As regras Incoterms são destinados principalmente para se comunicar claramente as taxas, os custos e os riscos associados com o transporte e entrega de mercadorias.
As regras Incoterms são aceitas pelos governos, autoridades jurídicas e profissionais em todo o mundo para a interpretação dos termos mais utilizados no comércio internacional. Eles são destinados a reduzir ou eliminar um total de incertezas decorrentes da diferente interpretação das regras em diferentes países.',Updated=TO_TIMESTAMP('2013-10-28 12:11:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1123910 AND AD_Language='pt_BR'
;

-- 28/10/2013 12h11min55s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET DisplayLogic='@lbr_TransactionType@=''IMP''',Updated=TO_TIMESTAMP('2013-10-28 12:11:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1123910
;

-- 28/10/2013 12h22min14s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET IsSameLine='Y', SeqNo=75,Updated=TO_TIMESTAMP('2013-10-28 12:22:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000284
;

