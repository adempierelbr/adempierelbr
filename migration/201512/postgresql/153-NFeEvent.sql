-- 21/10/2015 0h45min11s BRST
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) 
SELECT 0,1121791,0,'LBR_EventType',TO_TIMESTAMP('2015-10-21 00:45:06','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Event Type','Event Type',TO_TIMESTAMP('2015-10-21 00:45:06','YYYY-MM-DD HH24:MI:SS'),100
FROM Dual WHERE NOT EXISTS (SELECT '1' FROM AD_Element e WHERE e.AD_Element_ID=1121791)
;


-- 21/10/2015 0h35min36s BRST
INSERT INTO AD_Reference (AD_Client_ID,AD_Org_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,IsOrderByValue,Name,Updated,UpdatedBy,ValidationType)
SELECT 0,0,1120220,TO_TIMESTAMP('2015-10-21 00:35:35','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','N','LBR_EventType',TO_TIMESTAMP('2015-10-21 00:35:35','YYYY-MM-DD HH24:MI:SS'),100,'L'
FROM Dual WHERE NOT EXISTS (SELECT '1' FROM AD_Reference e WHERE e.AD_Reference_ID=1120220)
;

-- 21/10/2015 0h35min36s BRST
INSERT INTO AD_Reference_Trl (AD_Language,AD_Reference_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Reference_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Reference t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Reference_ID=1120220 AND NOT EXISTS (SELECT * FROM AD_Reference_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Reference_ID=t.AD_Reference_ID)
;

-- 21/10/2015 0h35min48s BRST
UPDATE AD_Reference SET Description='Type of Events',Updated=TO_TIMESTAMP('2015-10-21 00:35:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=1120220
;

-- 21/10/2015 0h35min48s BRST
UPDATE AD_Reference_Trl SET IsTranslated='N' WHERE AD_Reference_ID=1120220
;

-- 21/10/2015 0h35min48s BRST
UPDATE AD_Reference_Trl SET Description='Type of Events',Help=NULL,Name='LBR_EventType',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Reference_ID=1120220
;

-- 21/10/2015 0h38min22s BRST
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value)
SELECT 0,0,1121588,1120220,TO_TIMESTAMP('2015-10-21 00:38:20','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Carta de Correção',TO_TIMESTAMP('2015-10-21 00:38:20','YYYY-MM-DD HH24:MI:SS'),100,'110110'
FROM Dual WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List e WHERE e.AD_Ref_List_ID=1121588)
;

-- 21/10/2015 0h38min22s BRST
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121588 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 21/10/2015 0h38min41s BRST
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value)
SELECT 0,0,1121589,1120220,TO_TIMESTAMP('2015-10-21 00:38:40','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Cancelamento',TO_TIMESTAMP('2015-10-21 00:38:40','YYYY-MM-DD HH24:MI:SS'),100,'110111'
FROM Dual WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List e WHERE e.AD_Ref_List_ID=1121589)
;

-- 21/10/2015 0h38min41s BRST
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121589 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 21/10/2015 0h39min0s BRST
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value)
SELECT 0,0,1121590,1120220,TO_TIMESTAMP('2015-10-21 00:38:59','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Encerramento Homologado',TO_TIMESTAMP('2015-10-21 00:38:59','YYYY-MM-DD HH24:MI:SS'),100,'110112'
FROM Dual WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List e WHERE e.AD_Ref_List_ID=1121590)
;

-- 21/10/2015 0h39min0s BRST
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121590 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 21/10/2015 0h39min17s BRST
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value)
SELECT 0,0,1121591,1120220,TO_TIMESTAMP('2015-10-21 00:39:17','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','EPEC CT-e',TO_TIMESTAMP('2015-10-21 00:39:17','YYYY-MM-DD HH24:MI:SS'),100,'110113'
FROM Dual WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List e WHERE e.AD_Ref_List_ID=1121591)
;

-- 21/10/2015 0h39min17s BRST
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121591 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 21/10/2015 0h39min35s BRST
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value)
SELECT 0,0,1121592,1120220,TO_TIMESTAMP('2015-10-21 00:39:33','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Inclusão de Condutor',TO_TIMESTAMP('2015-10-21 00:39:33','YYYY-MM-DD HH24:MI:SS'),100,'110114'
FROM Dual WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List e WHERE e.AD_Ref_List_ID=1121592)
;

-- 21/10/2015 0h39min35s BRST
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121592 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 21/10/2015 0h39min50s BRST
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value)
SELECT 0,0,1121593,1120220,TO_TIMESTAMP('2015-10-21 00:39:49','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','EPEC NF-e',TO_TIMESTAMP('2015-10-21 00:39:49','YYYY-MM-DD HH24:MI:SS'),100,'110140'
FROM Dual WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List e WHERE e.AD_Ref_List_ID=1121593)
;

-- 21/10/2015 0h39min50s BRST
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121593 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 21/10/2015 0h40min5s BRST
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value)
SELECT 0,0,1121594,1120220,TO_TIMESTAMP('2015-10-21 00:40:04','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Registro Multimodal',TO_TIMESTAMP('2015-10-21 00:40:04','YYYY-MM-DD HH24:MI:SS'),100,'110160'
FROM Dual WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List e WHERE e.AD_Ref_List_ID=1121594)
;

-- 21/10/2015 0h40min5s BRST
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121594 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 21/10/2015 0h40min20s BRST
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value)
SELECT 0,0,1121595,1120220,TO_TIMESTAMP('2015-10-21 00:40:18','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Confirmação da Operação',TO_TIMESTAMP('2015-10-21 00:40:18','YYYY-MM-DD HH24:MI:SS'),100,'210200'
FROM Dual WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List e WHERE e.AD_Ref_List_ID=1121595)
;

-- 21/10/2015 0h40min20s BRST
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121595 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 21/10/2015 0h40min32s BRST
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value)
SELECT 0,0,1121596,1120220,TO_TIMESTAMP('2015-10-21 00:40:31','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Ciência da Operação',TO_TIMESTAMP('2015-10-21 00:40:31','YYYY-MM-DD HH24:MI:SS'),100,'210210'
FROM Dual WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List e WHERE e.AD_Ref_List_ID=1121596)
;

-- 21/10/2015 0h40min32s BRST
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121596 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 21/10/2015 0h40min50s BRST
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value)
SELECT 0,0,1121597,1120220,TO_TIMESTAMP('2015-10-21 00:40:49','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Desconhecimento da Operação',TO_TIMESTAMP('2015-10-21 00:40:49','YYYY-MM-DD HH24:MI:SS'),100,'210220'
FROM Dual WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List e WHERE e.AD_Ref_List_ID=1121597)
;

-- 21/10/2015 0h40min50s BRST
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121597 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 21/10/2015 0h41min36s BRST
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value)
SELECT 0,0,1121598,1120220,TO_TIMESTAMP('2015-10-21 00:41:35','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Operação não Realizada',TO_TIMESTAMP('2015-10-21 00:41:35','YYYY-MM-DD HH24:MI:SS'),100,'210240'
FROM Dual WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List e WHERE e.AD_Ref_List_ID=1121598)
;

-- 21/10/2015 0h41min36s BRST
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121598 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 21/10/2015 0h41min51s BRST
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value)
SELECT 0,0,1121599,1120220,TO_TIMESTAMP('2015-10-21 00:41:50','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Registro de Passagem',TO_TIMESTAMP('2015-10-21 00:41:50','YYYY-MM-DD HH24:MI:SS'),100,'310620'
FROM Dual WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List e WHERE e.AD_Ref_List_ID=1121599)
;

-- 21/10/2015 0h41min51s BRST
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121599 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 21/10/2015 0h42min5s BRST
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value)
SELECT 0,0,1121600,1120220,TO_TIMESTAMP('2015-10-21 00:42:04','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Registro de Passagem BRID',TO_TIMESTAMP('2015-10-21 00:42:04','YYYY-MM-DD HH24:MI:SS'),100,'510620'
FROM Dual WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List e WHERE e.AD_Ref_List_ID=1121600)
;

-- 21/10/2015 0h42min5s BRST
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121600 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 21/10/2015 0h42min17s BRST
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value)
SELECT 0,0,1121601,1120220,TO_TIMESTAMP('2015-10-21 00:42:16','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','CT-e Autorizado para NF-e',TO_TIMESTAMP('2015-10-21 00:42:16','YYYY-MM-DD HH24:MI:SS'),100,'610600'
FROM Dual WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List e WHERE e.AD_Ref_List_ID=1121601)
;

-- 21/10/2015 0h42min17s BRST
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121601 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 21/10/2015 0h42min31s BRST
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value)
SELECT 0,0,1121602,1120220,TO_TIMESTAMP('2015-10-21 00:42:31','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Registro de Passagem para NF-e Cancelado',TO_TIMESTAMP('2015-10-21 00:42:31','YYYY-MM-DD HH24:MI:SS'),100,'610501'
FROM Dual WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List e WHERE e.AD_Ref_List_ID=1121602)
;

-- 21/10/2015 0h42min31s BRST
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121602 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 21/10/2015 0h42min45s BRST
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value)
SELECT 0,0,1121603,1120220,TO_TIMESTAMP('2015-10-21 00:42:45','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Registro de Passagem para NF-e RFID',TO_TIMESTAMP('2015-10-21 00:42:45','YYYY-MM-DD HH24:MI:SS'),100,'610550'
FROM Dual WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List e WHERE e.AD_Ref_List_ID=1121603)
;

-- 21/10/2015 0h42min45s BRST
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121603 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 21/10/2015 0h42min59s BRST
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value)
SELECT 0,0,1121604,1120220,TO_TIMESTAMP('2015-10-21 00:42:58','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','CT-e Cancelado',TO_TIMESTAMP('2015-10-21 00:42:58','YYYY-MM-DD HH24:MI:SS'),100,'610601'
FROM Dual WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List e WHERE e.AD_Ref_List_ID=1121604)
;

-- 21/10/2015 0h42min59s BRST
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121604 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 21/10/2015 0h43min12s BRST
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value)
SELECT 0,0,1121605,1120220,TO_TIMESTAMP('2015-10-21 00:43:11','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','MDF-e Cancelado',TO_TIMESTAMP('2015-10-21 00:43:11','YYYY-MM-DD HH24:MI:SS'),100,'610611'
FROM Dual WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List e WHERE e.AD_Ref_List_ID=1121605)
;

-- 21/10/2015 0h43min12s BRST
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121605 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 21/10/2015 0h43min36s BRST
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value)
SELECT 0,0,1121606,1120220,TO_TIMESTAMP('2015-10-21 00:43:34','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Vistoria SUFRAMA',TO_TIMESTAMP('2015-10-21 00:43:34','YYYY-MM-DD HH24:MI:SS'),100,'990900'
FROM Dual WHERE NOT EXISTS (SELECT '1' FROM AD_Ref_List e WHERE e.AD_Ref_List_ID=1121606)
;

-- 21/10/2015 0h43min36s BRST
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121606 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 21/10/2015 0h45min11s BRST
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1121791 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;


-- 21/10/2015 0h43min51s BRST
UPDATE AD_Ref_List SET Name='Operacao nao Realizada',Updated=TO_TIMESTAMP('2015-10-21 00:43:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121598
;

-- 21/10/2015 0h43min51s BRST
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=1121598
;

-- 21/10/2015 0h43min51s BRST
UPDATE AD_Ref_List_Trl SET Description=NULL,Name='Operacao nao Realizada',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Ref_List_ID=1121598
;

-- 21/10/2015 0h43min56s BRST
UPDATE AD_Ref_List SET Name='Desconhecimento da Operacao',Updated=TO_TIMESTAMP('2015-10-21 00:43:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121597
;

-- 21/10/2015 0h43min56s BRST
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=1121597
;

-- 21/10/2015 0h43min56s BRST
UPDATE AD_Ref_List_Trl SET Description=NULL,Name='Desconhecimento da Operacao',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Ref_List_ID=1121597
;

-- 21/10/2015 0h44min2s BRST
UPDATE AD_Ref_List SET Name='Ciencia da Operacao',Updated=TO_TIMESTAMP('2015-10-21 00:44:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121596
;

-- 21/10/2015 0h44min2s BRST
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=1121596
;

-- 21/10/2015 0h44min2s BRST
UPDATE AD_Ref_List_Trl SET Description=NULL,Name='Ciencia da Operacao',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Ref_List_ID=1121596
;

-- 21/10/2015 0h44min9s BRST
UPDATE AD_Ref_List SET Name='Confirmacao da Operacao',Updated=TO_TIMESTAMP('2015-10-21 00:44:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121595
;

-- 21/10/2015 0h44min9s BRST
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=1121595
;

-- 21/10/2015 0h44min9s BRST
UPDATE AD_Ref_List_Trl SET Description=NULL,Name='Confirmacao da Operacao',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Ref_List_ID=1121595
;

-- 21/10/2015 0h44min14s BRST
UPDATE AD_Ref_List SET Name='Inclusao de Condutor',Updated=TO_TIMESTAMP('2015-10-21 00:44:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121592
;

-- 21/10/2015 0h44min14s BRST
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=1121592
;

-- 21/10/2015 0h44min14s BRST
UPDATE AD_Ref_List_Trl SET Description=NULL,Name='Inclusao de Condutor',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Ref_List_ID=1121592
;

-- 21/10/2015 0h44min23s BRST
UPDATE AD_Ref_List SET Name='Carta de Correcao',Updated=TO_TIMESTAMP('2015-10-21 00:44:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121588
;

-- 21/10/2015 0h44min23s BRST
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=1121588
;

-- 21/10/2015 0h44min23s BRST
UPDATE AD_Ref_List_Trl SET Description=NULL,Name='Carta de Correcao',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Ref_List_ID=1121588
;

-- 30/10/2015 16h16min25s BRST
UPDATE AD_Table SET Description='NFe Event', Name='NFe Event', TableName='LBR_NFeEvent',Updated=TO_TIMESTAMP('2015-10-30 16:16:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=1120247
;

-- 30/10/2015 16h16min25s BRST
UPDATE AD_Table_Trl SET IsTranslated='N' WHERE AD_Table_ID=1120247
;

-- 30/10/2015 16h16min25s BRST
UPDATE AD_Table_Trl SET Name='NFe Event',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Table_ID=1120247
;

-- 30/10/2015 16h16min26s BRST
INSERT INTO AD_Sequence (AD_Client_ID,AD_Org_ID,AD_Sequence_ID,Created,CreatedBy,CurrentNext,CurrentNextSys,Description,IncrementNo,IsActive,IsAudited,IsAutoSequence,IsTableID,Name,StartNewYear,StartNo,Updated,UpdatedBy) VALUES (0,0,1153271,TO_TIMESTAMP('2015-10-30 16:16:25','YYYY-MM-DD HH24:MI:SS'),100,1000000,50000,'Table LBR_NFeEvent',1,'Y','N','Y','Y','LBR_NFeEvent','N',1000000,TO_TIMESTAMP('2015-10-30 16:16:25','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 30/10/2015 16h16min46s BRST
UPDATE AD_Element SET ColumnName='LBR_NFeEvent_ID', Name='NFe Event', PrintName='NFe Event',Updated=TO_TIMESTAMP('2015-10-30 16:16:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1120496
;

-- 30/10/2015 16h16min46s BRST
UPDATE AD_Element_Trl SET IsTranslated='N' WHERE AD_Element_ID=1120496
;

-- 30/10/2015 16h16min46s BRST
UPDATE AD_Element_Trl SET Description=NULL,Help=NULL,Name='NFe Event',PO_Description=NULL,PO_Help=NULL,PO_Name=NULL,PO_PrintName=NULL,PrintName='NFe Event',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Element_ID=1120496
;

-- 30/10/2015 16h16min46s BRST
UPDATE AD_Column SET ColumnName='LBR_NFeEvent_ID', Name='NFe Event', Description=NULL, Help=NULL WHERE AD_Element_ID=1120496
;

-- 30/10/2015 16h16min46s BRST
UPDATE AD_Process_Para SET ColumnName='LBR_NFeEvent_ID', Name='NFe Event', Description=NULL, Help=NULL, AD_Element_ID=1120496 WHERE UPPER(ColumnName)='LBR_NFEEVENT_ID' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 30/10/2015 16h16min46s BRST
UPDATE AD_Process_Para SET ColumnName='LBR_NFeEvent_ID', Name='NFe Event', Description=NULL, Help=NULL WHERE AD_Element_ID=1120496 AND IsCentrallyMaintained='Y'
;

-- 30/10/2015 16h16min46s BRST
UPDATE AD_Field SET Name='NFe Event', Description=NULL, Help=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=1120496) AND IsCentrallyMaintained='Y'
;

-- 30/10/2015 16h16min46s BRST
UPDATE AD_PrintFormatItem SET PrintName='NFe Event', Name='NFe Event' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=AD_PrintFormatItem.AD_Column_ID AND c.AD_Element_ID=1120496)
;

-- 30/10/2015 16h16min56s BRST
UPDATE AD_Element_Trl SET IsTranslated='Y',Name='Evento da NFe',PrintName='Evento da NFe',Updated=TO_TIMESTAMP('2015-10-30 16:16:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1120496 AND AD_Language='es_MX'
;

-- 30/10/2015 16h17min3s BRST
UPDATE AD_Element_Trl SET IsTranslated='Y',Name='Evento da NFe',PrintName='Evento da NFe',Updated=TO_TIMESTAMP('2015-10-30 16:17:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1120496 AND AD_Language='pt_BR'
;

-- 30/10/2015 16h17min57s BRST
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1126821,1121791,0,17,1120220,1120247,'LBR_EventType',TO_TIMESTAMP('2015-10-30 16:17:55','YYYY-MM-DD HH24:MI:SS'),100,'LBRA',6,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Event Type',0,TO_TIMESTAMP('2015-10-30 16:17:55','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 30/10/2015 16h17min57s BRST
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1126821 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 30/10/2015 16h18min22s BRST
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1126822,1100017,0,10,1120247,'lbr_NFeID',TO_TIMESTAMP('2015-10-30 16:18:21','YYYY-MM-DD HH24:MI:SS'),100,'Identification of NFe','LBRA',44,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','NFe ID',0,TO_TIMESTAMP('2015-10-30 16:18:21','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 30/10/2015 16h18min22s BRST
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1126822 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 30/10/2015 16h18min24s BRST
UPDATE AD_Column SET IsMandatory='Y',Updated=TO_TIMESTAMP('2015-10-30 16:18:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1126822
;

-- 30/10/2015 16h18min37s BRST
UPDATE AD_Column SET IsMandatory='N',Updated=TO_TIMESTAMP('2015-10-30 16:18:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1122476
;

-- 30/10/2015 16h21min6s BRST
INSERT INTO AD_Val_Rule (AD_Client_ID,AD_Org_ID,AD_Val_Rule_ID,Code,Created,CreatedBy,EntityType,IsActive,Name,Type,Updated,UpdatedBy) VALUES (0,0,1120116,'LBR_PartnerDFe.DocumentType=''0''',TO_TIMESTAMP('2015-10-30 16:21:04','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','LBR_PartnerDFe (NFe Only)','S',TO_TIMESTAMP('2015-10-30 16:21:04','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 30/10/2015 16h23min45s BRST
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1126821,1125561,0,1120049,TO_TIMESTAMP('2015-10-30 16:23:43','YYYY-MM-DD HH24:MI:SS'),100,6,'LBRA','Y','Y','Y','N','N','N','N','N','Event Type',TO_TIMESTAMP('2015-10-30 16:23:43','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 30/10/2015 16h23min45s BRST
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1125561 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 30/10/2015 16h23min46s BRST
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1126822,1125562,0,1120049,TO_TIMESTAMP('2015-10-30 16:23:45','YYYY-MM-DD HH24:MI:SS'),100,'Identification of NFe',44,'LBRA','Y','Y','Y','N','N','N','N','N','NFe ID',TO_TIMESTAMP('2015-10-30 16:23:45','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 30/10/2015 16h23min46s BRST
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1125562 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 30/10/2015 16h26min2s BRST
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1121192
;

-- 30/10/2015 16h26min2s BRST
UPDATE AD_Field SET SeqNo=30,IsDisplayed='Y' WHERE AD_Field_ID=1121210
;

-- 30/10/2015 16h26min2s BRST
UPDATE AD_Field SET SeqNo=40,IsDisplayed='Y' WHERE AD_Field_ID=1125561
;

-- 30/10/2015 16h26min2s BRST
UPDATE AD_Field SET SeqNo=50,IsDisplayed='Y' WHERE AD_Field_ID=1121203
;

-- 30/10/2015 16h26min2s BRST
UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y' WHERE AD_Field_ID=1121199
;

-- 30/10/2015 16h26min2s BRST
UPDATE AD_Field SET SeqNo=80,IsDisplayed='Y' WHERE AD_Field_ID=1121206
;

-- 30/10/2015 16h26min2s BRST
UPDATE AD_Field SET SeqNo=90,IsDisplayed='Y' WHERE AD_Field_ID=1125562
;

-- 30/10/2015 16h26min2s BRST
UPDATE AD_Field SET SeqNo=100,IsDisplayed='Y' WHERE AD_Field_ID=1121197
;

-- 30/10/2015 16h26min2s BRST
UPDATE AD_Field SET SeqNo=110,IsDisplayed='Y' WHERE AD_Field_ID=1121200
;

-- 30/10/2015 16h26min2s BRST
UPDATE AD_Field SET SeqNo=120,IsDisplayed='Y' WHERE AD_Field_ID=1121198
;

-- 30/10/2015 16h26min2s BRST
UPDATE AD_Field SET SeqNo=130,IsDisplayed='Y' WHERE AD_Field_ID=1121208
;

-- 30/10/2015 16h26min2s BRST
UPDATE AD_Field SET SeqNo=140,IsDisplayed='Y' WHERE AD_Field_ID=1121201
;

-- 30/10/2015 16h26min2s BRST
UPDATE AD_Field SET SeqNo=150,IsDisplayed='Y' WHERE AD_Field_ID=1121202
;

-- 30/10/2015 16h26min2s BRST
UPDATE AD_Field SET SeqNo=160,IsDisplayed='Y' WHERE AD_Field_ID=1121193
;

-- 30/10/2015 16h26min2s BRST
UPDATE AD_Field SET SeqNo=170,IsDisplayed='Y' WHERE AD_Field_ID=1121194
;

-- 30/10/2015 16h26min2s BRST
UPDATE AD_Field SET SeqNo=180,IsDisplayed='Y' WHERE AD_Field_ID=1121207
;

-- 30/10/2015 16h26min2s BRST
UPDATE AD_Field SET SeqNo=190,IsDisplayed='Y' WHERE AD_Field_ID=1121205
;

-- 30/10/2015 16h26min8s BRST
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2015-10-30 16:26:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125561
;

-- 30/10/2015 16h26min22s BRST
CREATE TABLE LBR_NFeEvent (AD_Client_ID NUMERIC(10) NOT NULL, AD_Org_ID NUMERIC(10) NOT NULL, Created TIMESTAMP NOT NULL, CreatedBy NUMERIC(10) NOT NULL, DateDoc TIMESTAMP NOT NULL, DateTrx TIMESTAMP DEFAULT NULL , Description VARCHAR(255) NOT NULL, DocAction CHAR(2) DEFAULT 'CO' NOT NULL, DocStatus VARCHAR(2) DEFAULT 'DR' NOT NULL, DocumentNo VARCHAR(10) NOT NULL, EMail VARCHAR(60) DEFAULT NULL , IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, LBR_EventType VARCHAR(6) DEFAULT NULL , LBR_NFeEvent_ID NUMERIC(10) NOT NULL, LBR_NotaFiscal_ID NUMERIC(10) DEFAULT NULL , LBR_PartnerDFe_ID NUMERIC(10) DEFAULT NULL , Processed CHAR(1) DEFAULT 'N' CHECK (Processed IN ('Y','N')) NOT NULL, SeqNo NUMERIC(10) DEFAULT 1 NOT NULL, Status VARCHAR(255) DEFAULT NULL , Updated TIMESTAMP NOT NULL, UpdatedBy NUMERIC(10) NOT NULL, lbr_CNPJ VARCHAR(30) DEFAULT NULL , lbr_CPF VARCHAR(30) DEFAULT NULL , lbr_NFeID VARCHAR(44) NOT NULL, lbr_NFeProt VARCHAR(60) DEFAULT NULL , lbr_NFeStatus VARCHAR(3) DEFAULT NULL , CONSTRAINT LBR_NFeEvent_Key PRIMARY KEY (LBR_NFeEvent_ID))
;

-- 30/10/2015 16h27min2s BRST
UPDATE AD_Field SET IsReadOnly='N', IsSameLine='Y',Updated=TO_TIMESTAMP('2015-10-30 16:27:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125561
;

-- 30/10/2015 16h27min37s BRST
UPDATE AD_Field SET DefaultValue='110111', IsReadOnly='Y',Updated=TO_TIMESTAMP('2015-10-30 16:27:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125561
;

-- 30/10/2015 16h28min12s BRST
UPDATE AD_Field SET IsMandatory='Y',Updated=TO_TIMESTAMP('2015-10-30 16:28:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1121203
;

-- 30/10/2015 16h29min32s BRST
UPDATE AD_Column SET FieldLength=44, IsMandatory='Y',Updated=TO_TIMESTAMP('2015-10-30 16:29:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1126791
;

-- 30/10/2015 16h29min36s BRST
UPDATE AD_Column SET IsIdentifier='Y',Updated=TO_TIMESTAMP('2015-10-30 16:29:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1126791
;

-- 30/10/2015 16h29min40s BRST
UPDATE AD_Column SET SeqNo=1,Updated=TO_TIMESTAMP('2015-10-30 16:29:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1126791
;

-- 30/10/2015 16h35min32s BRST
UPDATE AD_Field SET IsReadOnly='N',Updated=TO_TIMESTAMP('2015-10-30 16:35:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125561
;

-- 30/10/2015 16h35min50s BRST
UPDATE AD_Tab SET Name='Event',Updated=TO_TIMESTAMP('2015-10-30 16:35:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=1120049
;

-- 30/10/2015 16h35min50s BRST
UPDATE AD_Tab_Trl SET IsTranslated='N' WHERE AD_Tab_ID=1120049
;

-- 30/10/2015 16h35min50s BRST
UPDATE AD_Tab_Trl SET CommitWarning=NULL,Description=NULL,Help=NULL,Name='Event',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Tab_ID=1120049
;

-- 30/10/2015 16h35min59s BRST
UPDATE AD_Tab_Trl SET IsTranslated='Y',Name='Evento',Updated=TO_TIMESTAMP('2015-10-30 16:35:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=1120049 AND AD_Language='pt_BR'
;

-- 30/10/2015 16h36min12s BRST
UPDATE AD_Window_Trl SET Name='Eventos da NF-e',Updated=TO_TIMESTAMP('2015-10-30 16:36:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Window_ID=1120053 AND AD_Language='pt_BR'
;

-- 30/10/2015 16h36min20s BRST
UPDATE AD_Window SET Name='NFe Event',Updated=TO_TIMESTAMP('2015-10-30 16:36:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Window_ID=1120053
;

-- 30/10/2015 16h36min20s BRST
UPDATE AD_Window_Trl SET IsTranslated='N' WHERE AD_Window_ID=1120053
;

-- 30/10/2015 16h36min20s BRST
UPDATE AD_Window_Trl SET Description=NULL,Help=NULL,Name='NFe Event',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Window_ID=1120053
;

-- 30/10/2015 16h36min20s BRST
UPDATE AD_Menu SET Description=NULL, IsActive='Y', Name='NFe Event',Updated=TO_TIMESTAMP('2015-10-30 16:36:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=1120051
;

-- 30/10/2015 16h36min20s BRST
UPDATE AD_Menu_Trl SET IsTranslated='N' WHERE AD_Menu_ID=1120051
;

-- 30/10/2015 16h36min20s BRST
UPDATE AD_Menu_Trl SET Description=NULL,Name='NFe Event',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Menu_ID=1120051
;

-- 30/10/2015 16h36min59s BRST
UPDATE AD_Field SET IsMandatory=NULL,Updated=TO_TIMESTAMP('2015-10-30 16:36:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1121203
;

-- 30/10/2015 16h37min38s BRST
UPDATE AD_Column SET IsMandatory='Y',Updated=TO_TIMESTAMP('2015-10-30 16:37:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1126821
;

-- 30/10/2015 16h37min40s BRST
INSERT INTO t_alter_column values('lbr_nfeevent','LBR_EventType','VARCHAR(6)',null,null)
;

-- 30/10/2015 16h37min40s BRST
INSERT INTO t_alter_column values('lbr_nfeevent','LBR_EventType',null,'NOT NULL',null)
;

-- 30/10/2015 16h38min10s BRST
UPDATE AD_Column SET IsMandatory='N',Updated=TO_TIMESTAMP('2015-10-30 16:38:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1122478
;

-- 30/10/2015 16h38min12s BRST
INSERT INTO t_alter_column values('lbr_nfeevent','Description','VARCHAR(255)',null,'NULL')
;

-- 30/10/2015 16h38min12s BRST
INSERT INTO t_alter_column values('lbr_nfeevent','Description',null,'NULL',null)
;

-- 30/10/2015 16h40min36s BRST
UPDATE AD_Field SET DisplayLogic='@LBR_EventType@=''210240'' | @LBR_EventType@=''110111''',Updated=TO_TIMESTAMP('2015-10-30 16:40:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1121197
;

-- 30/10/2015 16h41min5s BRST
UPDATE AD_Field SET DisplayLogic='@LBR_EventType@=''210240'' | @LBR_EventType@=''110110'' | @LBR_EventType@=''110111''',Updated=TO_TIMESTAMP('2015-10-30 16:41:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1121197
;

-- 30/10/2015 17h25min51s BRST
UPDATE AD_Window_Trl SET IsTranslated='Y',Description='Lançamento de Eventos da NF-e',Help='Nesta janela é possível registrar eventos para uma NF-e emitida por você (Carta de Correção ou Cancelamento) ou por terceiros (Manifestação).',Updated=TO_TIMESTAMP('2015-10-30 17:25:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Window_ID=1120053 AND AD_Language='pt_BR'
;

-- 30/10/2015 17h26min39s BRST
UPDATE AD_Reference SET Name='LBR_EventType (All)',Updated=TO_TIMESTAMP('2015-10-30 17:26:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=1120220
;

-- 30/10/2015 17h26min39s BRST
UPDATE AD_Reference_Trl SET IsTranslated='N' WHERE AD_Reference_ID=1120220
;

-- 30/10/2015 17h26min39s BRST
UPDATE AD_Reference_Trl SET Description='Type of Events',Help=NULL,Name='LBR_EventType (All)',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Reference_ID=1120220
;

-- 30/10/2015 17h26min45s BRST
UPDATE AD_Reference_Trl SET IsTranslated='Y',Name='LBR_EventType (All)',Updated=TO_TIMESTAMP('2015-10-30 17:26:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=1120220 AND AD_Language='pt_BR'
;

-- 30/10/2015 17h26min56s BRST
INSERT INTO AD_Reference (AD_Client_ID,AD_Org_ID,AD_Reference_ID,Created,CreatedBy,Description,EntityType,IsActive,IsOrderByValue,Name,Updated,UpdatedBy,ValidationType) VALUES (0,0,1120225,TO_TIMESTAMP('2015-10-30 17:26:56','YYYY-MM-DD HH24:MI:SS'),100,'Type of Events','LBRA','Y','N','LBR_EventType',TO_TIMESTAMP('2015-10-30 17:26:56','YYYY-MM-DD HH24:MI:SS'),100,'L')
;

-- 30/10/2015 17h26min56s BRST
INSERT INTO AD_Reference_Trl (AD_Language,AD_Reference_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Reference_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Reference t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Reference_ID=1120225 AND NOT EXISTS (SELECT * FROM AD_Reference_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Reference_ID=t.AD_Reference_ID)
;

-- 30/10/2015 17h27min21s BRST
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121628,1120225,TO_TIMESTAMP('2015-10-30 17:27:19','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Carta de Correcao',TO_TIMESTAMP('2015-10-30 17:27:19','YYYY-MM-DD HH24:MI:SS'),100,'110110')
;

-- 30/10/2015 17h27min21s BRST
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121628 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 30/10/2015 17h27min30s BRST
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Name='Carta de Correção',Updated=TO_TIMESTAMP('2015-10-30 17:27:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121628 AND AD_Language='pt_BR'
;

-- 30/10/2015 17h27min44s BRST
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121629,1120225,TO_TIMESTAMP('2015-10-30 17:27:43','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Cancelamento',TO_TIMESTAMP('2015-10-30 17:27:43','YYYY-MM-DD HH24:MI:SS'),100,'110111')
;

-- 30/10/2015 17h27min44s BRST
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121629 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 30/10/2015 17h28min26s BRST
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121630,1120225,TO_TIMESTAMP('2015-10-30 17:28:24','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Confirmacao da Operacao',TO_TIMESTAMP('2015-10-30 17:28:24','YYYY-MM-DD HH24:MI:SS'),100,'210200')
;

-- 30/10/2015 17h28min26s BRST
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121630 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 30/10/2015 17h28min38s BRST
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Name='Confirmação da Operação',Updated=TO_TIMESTAMP('2015-10-30 17:28:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121630 AND AD_Language='pt_BR'
;

-- 30/10/2015 17h28min52s BRST
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121631,1120225,TO_TIMESTAMP('2015-10-30 17:28:51','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Ciencia da Operacao',TO_TIMESTAMP('2015-10-30 17:28:51','YYYY-MM-DD HH24:MI:SS'),100,'210210')
;

-- 30/10/2015 17h28min52s BRST
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121631 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 30/10/2015 17h29min1s BRST
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Name='Ciência da Operação',Updated=TO_TIMESTAMP('2015-10-30 17:29:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121631 AND AD_Language='pt_BR'
;

-- 30/10/2015 17h29min15s BRST
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121632,1120225,TO_TIMESTAMP('2015-10-30 17:29:14','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Desconhecimento da Operacao',TO_TIMESTAMP('2015-10-30 17:29:14','YYYY-MM-DD HH24:MI:SS'),100,'210220')
;

-- 30/10/2015 17h29min15s BRST
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121632 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 30/10/2015 17h29min21s BRST
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Name='Desconhecimento da Operação',Updated=TO_TIMESTAMP('2015-10-30 17:29:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121632 AND AD_Language='pt_BR'
;

-- 30/10/2015 17h29min39s BRST
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121633,1120225,TO_TIMESTAMP('2015-10-30 17:29:38','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Operacao nao Realizada',TO_TIMESTAMP('2015-10-30 17:29:38','YYYY-MM-DD HH24:MI:SS'),100,'210240')
;

-- 30/10/2015 17h29min39s BRST
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121633 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 30/10/2015 17h29min49s BRST
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Name='Operação não Realizada',Updated=TO_TIMESTAMP('2015-10-30 17:29:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121633 AND AD_Language='pt_BR'
;

-- 30/10/2015 17h30min26s BRST
UPDATE AD_Column SET AD_Reference_Value_ID=1120225,Updated=TO_TIMESTAMP('2015-10-30 17:30:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1126821
;

-- 30/10/2015 17h31min0s BRST
UPDATE AD_Field SET DefaultValue='110110',Updated=TO_TIMESTAMP('2015-10-30 17:31:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125561
;

-- 30/10/2015 18h17min30s BRST
UPDATE AD_Column SET Callout='org.adempierelbr.callout.CalloutNFe.EventFillNFeID',Updated=TO_TIMESTAMP('2015-10-30 18:17:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1122476
;

-- 30/10/2015 18h17min43s BRST
UPDATE AD_Column SET Callout='org.adempierelbr.callout.CalloutNFe.EventFillNFeID',Updated=TO_TIMESTAMP('2015-10-30 18:17:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1126823
;

-- 30/10/2015 18h18min4s BRST
UPDATE AD_Column SET ReadOnlyLogic='@LBR_NotaFiscal_ID@ > 0 | @LBR_PartnerDFe_ID@ > 0',Updated=TO_TIMESTAMP('2015-10-30 18:18:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1126822
;

-- 30/10/2015 18h23min52s BRST
UPDATE AD_Process SET Name='Process NFeEvent', Value='LBR_NFeEvent Process',Updated=TO_TIMESTAMP('2015-10-30 18:23:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=1120037
;

-- 30/10/2015 18h23min52s BRST
UPDATE AD_Process_Trl SET IsTranslated='N' WHERE AD_Process_ID=1120037
;

-- 30/10/2015 18h23min52s BRST
UPDATE AD_Process_Trl SET Description=NULL,Help=NULL,Name='Process NFeEvent',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Process_ID=1120037
;

-- 30/10/2015 18h24min0s BRST
UPDATE AD_Process_Trl SET IsTranslated='Y',Name='Process NFeEvent',Updated=TO_TIMESTAMP('2015-10-30 18:24:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=1120037 AND AD_Language='pt_BR'
;

-- 30/10/2015 18h24min24s BRST
UPDATE AD_Workflow SET Description='(Standard Process NFeEvent)', IsValid='Y', Name='Process_LBR_NFeEvent', Value='Process_LBR_NFeEvent',Updated=TO_TIMESTAMP('2015-10-30 18:24:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Workflow_ID=1120007
;

-- 30/10/2015 18h24min24s BRST
UPDATE AD_Workflow_Trl SET IsTranslated='N' WHERE AD_Workflow_ID=1120007
;

-- 30/10/2015 18h24min24s BRST
UPDATE AD_Workflow_Trl SET Description='(Standard Process NFeEvent)',Help=NULL,Name='Process_LBR_NFeEvent',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Workflow_ID=1120007
;

-- 30/10/2015 18h24min38s BRST
UPDATE AD_Table_Trl SET Name='Evento da NF-e',IsTranslated='Y',Updated=TO_TIMESTAMP('2015-10-30 18:24:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=1120247 AND AD_Language='pt_BR'
;

--	Atualiza nova tabela
INSERT INTO LBR_NFeEvent
(AD_Client_ID, AD_Org_ID, Created, CreatedBy, DateDoc, DateTrx, Description, DocAction, DocStatus, DocumentNo, EMail, IsActive, LBR_EventType, LBR_NFeEvent_ID, 
LBR_NotaFiscal_ID, LBR_PartnerDFe_ID, Processed, SeqNo, Status, Updated, UpdatedBy, LBR_CNPJ, LBR_CPF, LBR_NFeID, LBR_NFeProt, LBR_NFeStatus)
SELECT AD_Client_ID, AD_Org_ID, Created, CreatedBy, DateDoc, DateTrx, Description, DocAction, DocStatus, DocumentNo, EMail, IsActive, '110110' AS LBR_EventType, LBR_CCe_ID AS LBR_NFeEvent_ID, 
LBR_NotaFiscal_ID, NULL AS LBR_PartnerDFe_ID, Processed, SeqNo, Status, Updated, UpdatedBy, LBR_CNPJ, LBR_CPF, (SELECT LBR_NFeID FROM LBR_NotaFiscal WHERE LBR_NotaFiscal.LBR_NotaFiscal_ID=LBR_CCe.LBR_NotaFiscal_ID) AS LBR_NFeID, LBR_NFeProt, LBR_NFeStatus
FROM LBR_CCe
;

-- 04/11/2015 12h10min4s BRST
SELECT Register_Migration_Script ('153-NFeEvent.sql') FROM DUAL
;
