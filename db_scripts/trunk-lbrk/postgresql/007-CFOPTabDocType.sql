-- 10/11/2011 16h51min22s BRST
-- Aba de CFOP no Tipo de Documento
INSERT INTO AD_Tab (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_Tab_ID,AD_Table_ID,AD_Window_ID,Created,CreatedBy,EntityType,HasTree,ImportFields,IsActive,IsAdvancedTab,IsInfoTab,IsInsertRecord,IsReadOnly,IsSingleRow,IsSortTab,IsTranslationTab,Name,Processing,SeqNo,TabLevel,Updated,UpdatedBy) VALUES (0,1000298,0,1106001,1000012,135,TO_TIMESTAMP('2011-11-10 16:51:22','YYYY-MM-DD HH24:MI:SS'),100,'U','N','N','Y','N','N','Y','N','N','N','N','CFOP','N',25,1,TO_TIMESTAMP('2011-11-10 16:51:22','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/11/2011 16h51min22s BRST
-- Aba de CFOP no Tipo de Documento
INSERT INTO AD_Tab_Trl (AD_Language,AD_Tab_ID, CommitWarning,Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Tab_ID, t.CommitWarning,t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Tab t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Tab_ID=1106001 AND NOT EXISTS (SELECT * FROM AD_Tab_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Tab_ID=t.AD_Tab_ID)
;

-- 10/11/2011 16h51min33s BRST
-- Aba de CFOP no Tipo de Documento
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1000278,1106015,0,1106001,TO_TIMESTAMP('2011-11-10 16:51:32','YYYY-MM-DD HH24:MI:SS'),100,'Client/Tenant for this installation.',22,'U','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Y','Y','Y','N','N','N','N','N','Client',10,TO_TIMESTAMP('2011-11-10 16:51:32','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/11/2011 16h51min33s BRST
-- Aba de CFOP no Tipo de Documento
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1106015 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 10/11/2011 16h51min33s BRST
-- Aba de CFOP no Tipo de Documento
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1000277,1106016,0,1106001,TO_TIMESTAMP('2011-11-10 16:51:33','YYYY-MM-DD HH24:MI:SS'),100,'Organizational entity within client',22,'U','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Y','Y','Y','N','N','N','N','Y','Organization',20,TO_TIMESTAMP('2011-11-10 16:51:33','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/11/2011 16h51min33s BRST
-- Aba de CFOP no Tipo de Documento
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1106016 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 10/11/2011 16h51min33s BRST
-- Aba de CFOP no Tipo de Documento
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1000284,1106017,0,1106001,TO_TIMESTAMP('2011-11-10 16:51:33','YYYY-MM-DD HH24:MI:SS'),100,'Primary key table LBR_CFOP',22,'U','Primary key table LBR_CFOP','Y','Y','Y','N','N','N','N','N','CFOP',30,TO_TIMESTAMP('2011-11-10 16:51:33','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/11/2011 16h51min33s BRST
-- Aba de CFOP no Tipo de Documento
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1106017 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 10/11/2011 16h51min33s BRST
-- Aba de CFOP no Tipo de Documento
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1000279,1106018,0,1106001,TO_TIMESTAMP('2011-11-10 16:51:33','YYYY-MM-DD HH24:MI:SS'),100,'The record is active in the system',1,'U','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Y','Y','Y','N','N','N','N','Y','Active',40,TO_TIMESTAMP('2011-11-10 16:51:33','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/11/2011 16h51min33s BRST
-- Aba de CFOP no Tipo de Documento
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1106018 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 10/11/2011 16h51min33s BRST
-- Aba de CFOP no Tipo de Documento
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_FieldGroup_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1000298,125,1106019,0,1106001,TO_TIMESTAMP('2011-11-10 16:51:33','YYYY-MM-DD HH24:MI:SS'),100,'Document type or rules',22,'U','The Document Type determines document sequence and processing rules','Y','Y','Y','N','N','N','N','N','Document Type',50,TO_TIMESTAMP('2011-11-10 16:51:33','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/11/2011 16h51min33s BRST
-- Aba de CFOP no Tipo de Documento
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1106019 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 10/11/2011 16h51min33s BRST
-- Aba de CFOP no Tipo de Documento
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_FieldGroup_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1000300,125,1106020,0,1106001,TO_TIMESTAMP('2011-11-10 16:51:33','YYYY-MM-DD HH24:MI:SS'),100,'Defines the Transaction Type',3,'U','Defines the Transaction Type','Y','Y','Y','N','N','N','N','Y','Transaction Type',60,TO_TIMESTAMP('2011-11-10 16:51:33','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/11/2011 16h51min33s BRST
-- Aba de CFOP no Tipo de Documento
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1106020 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 10/11/2011 16h51min34s BRST
-- Aba de CFOP no Tipo de Documento
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_FieldGroup_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1000286,125,1106021,0,1106001,TO_TIMESTAMP('2011-11-10 16:51:33','YYYY-MM-DD HH24:MI:SS'),100,'Defines the Destination Type',1,'U','Defines the Destination Type','Y','Y','Y','N','N','N','N','N','Destination Type',70,TO_TIMESTAMP('2011-11-10 16:51:33','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/11/2011 16h51min34s BRST
-- Aba de CFOP no Tipo de Documento
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1106021 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 10/11/2011 16h51min34s BRST
-- Aba de CFOP no Tipo de Documento
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_FieldGroup_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1000299,125,1106022,0,1106001,TO_TIMESTAMP('2011-11-10 16:51:34','YYYY-MM-DD HH24:MI:SS'),100,'Defines the Is Substituicao Tributaria Status',1,'U','Defines the Is Substituicao Tributaria Status','Y','Y','Y','N','N','N','N','Y','Is Substituicao Tributaria',80,TO_TIMESTAMP('2011-11-10 16:51:34','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/11/2011 16h51min34s BRST
-- Aba de CFOP no Tipo de Documento
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1106022 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 10/11/2011 16h51min34s BRST
-- Aba de CFOP no Tipo de Documento
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_FieldGroup_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1000287,106,1106023,0,1106001,TO_TIMESTAMP('2011-11-10 16:51:34','YYYY-MM-DD HH24:MI:SS'),100,'Primary key table LBR_ProductCategory',22,'U','Primary key table LBR_ProductCategory','Y','Y','Y','N','N','N','N','N','Product Category',90,TO_TIMESTAMP('2011-11-10 16:51:34','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/11/2011 16h51min34s BRST
-- Aba de CFOP no Tipo de Documento
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1106023 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 10/11/2011 16h51min34s BRST
-- Aba de CFOP no Tipo de Documento
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_FieldGroup_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1000301,106,1106024,0,1106001,TO_TIMESTAMP('2011-11-10 16:51:34','YYYY-MM-DD HH24:MI:SS'),100,'Defines if the Product is Manufactured',1,'U','Defines if the Product is Manufactured','Y','Y','Y','N','N','N','N','Y','Is Manufactured',100,TO_TIMESTAMP('2011-11-10 16:51:34','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/11/2011 16h51min34s BRST
-- Aba de CFOP no Tipo de Documento
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1106024 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 10/11/2011 16h51min34s BRST
-- Aba de CFOP no Tipo de Documento
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_FieldGroup_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1000312,107,1106025,0,1106001,TO_TIMESTAMP('2011-11-10 16:51:34','YYYY-MM-DD HH24:MI:SS'),100,'Primary key table LBR_BPartnerCategory',10,'U','Primary key table LBR_BPartnerCategory','Y','Y','Y','N','N','N','N','N','BPartner Category',110,TO_TIMESTAMP('2011-11-10 16:51:34','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/11/2011 16h51min34s BRST
-- Aba de CFOP no Tipo de Documento
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1106025 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 10/11/2011 16h51min35s BRST
-- Aba de CFOP no Tipo de Documento
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_FieldGroup_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1000317,111,1106026,0,1106001,TO_TIMESTAMP('2011-11-10 16:51:34','YYYY-MM-DD HH24:MI:SS'),100,'Primary key table LBR_Tax',22,'U','Primary key table LBR_Tax','Y','Y','Y','N','N','N','N','N','Brazilian Tax',120,TO_TIMESTAMP('2011-11-10 16:51:34','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/11/2011 16h51min35s BRST
-- Aba de CFOP no Tipo de Documento
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1106026 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 10/11/2011 16h51min35s BRST
-- Aba de CFOP no Tipo de Documento
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1000632,1106027,0,1106001,TO_TIMESTAMP('2011-11-10 16:51:35','YYYY-MM-DD HH24:MI:SS'),100,'Defines the Tax Status',2,'U','Defines the Tax Status','Y','Y','Y','N','N','N','N','Y','Tax Status',130,TO_TIMESTAMP('2011-11-10 16:51:35','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/11/2011 16h51min35s BRST
-- Aba de CFOP no Tipo de Documento
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1106027 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 10/11/2011 16h51min35s BRST
-- Aba de CFOP no Tipo de Documento
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1000642,1106028,0,1106001,TO_TIMESTAMP('2011-11-10 16:51:35','YYYY-MM-DD HH24:MI:SS'),100,'Defines the Legal Message',22,'U','Primary key table LBR_LegalMessage','Y','Y','Y','N','N','N','N','N','Legal Message',140,TO_TIMESTAMP('2011-11-10 16:51:35','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/11/2011 16h51min35s BRST
-- Aba de CFOP no Tipo de Documento
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1106028 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 10/11/2011 16h51min35s BRST
-- Aba de CFOP no Tipo de Documento
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1000276,1106029,0,1106001,TO_TIMESTAMP('2011-11-10 16:51:35','YYYY-MM-DD HH24:MI:SS'),100,'Primary key table LBR_CFOPLine',22,'U','Primary key table LBR_CFOPLine','Y','Y','N','N','N','N','N','N','CFOP Line',TO_TIMESTAMP('2011-11-10 16:51:35','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/11/2011 16h51min35s BRST
-- Aba de CFOP no Tipo de Documento
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1106029 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 10/11/2011 16h52min17s BRST
-- Aba de CFOP no Tipo de Documento
UPDATE AD_Field SET SeqNo=51,Updated=TO_TIMESTAMP('2011-11-10 16:52:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1106017
;

-- 10/11/2011 16h52min23s BRST
-- Aba de CFOP no Tipo de Documento
UPDATE AD_Field SET SeqNo=30,Updated=TO_TIMESTAMP('2011-11-10 16:52:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1106019
;

-- 10/11/2011 17h2min54s BRST
-- Aba de CFOP no Tipo de Documento
UPDATE AD_Ref_Table SET AD_Display=1000269, IsValueDisplayed='Y',Updated=TO_TIMESTAMP('2011-11-10 17:02:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=1000016
;

-- 10/11/2011 17h5min33s BRST
-- Aba de CFOP no Tipo de Documento
UPDATE AD_Column SET AD_Reference_ID=30, IsUpdateable='N',Updated=TO_TIMESTAMP('2011-11-10 17:05:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000284
;

