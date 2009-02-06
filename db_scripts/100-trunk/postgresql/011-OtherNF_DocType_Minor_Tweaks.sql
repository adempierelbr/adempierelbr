-- 03/02/2009 10h51min7s BRST
-- Default comment for updating dictionary
UPDATE C_DocType SET lbr_DocBaseType='OVEC', lbr_IsAutomaticInvoice='Y', lbr_IsAutomaticShipment='Y',Updated=TO_TIMESTAMP('2009-02-03 10:51:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE C_DocType_ID=1000002
;

-- 03/02/2009 10h52min45s BRST
-- Default comment for updating dictionary
INSERT INTO C_DocType (AD_Client_ID,AD_Org_ID,C_DocType_ID,Created,CreatedBy,DocBaseType,DocNoSequence_ID,DocumentCopies,DocumentNote,GL_Category_ID,HasCharges,HasProforma,IsActive,IsCreateCounter,IsDefault,IsDefaultCounterDoc,IsDocNoControlled,IsInTransit,IsIndexed,IsOverwriteDateOnComplete,IsOverwriteSeqOnComplete,IsPickQAConfirm,IsSOTrx,IsShipConfirm,IsSplitWhenDifference,Name,PrintName,Updated,UpdatedBy,lbr_DocBaseType,lbr_GenerateMovement,lbr_HasFiscalDocument,lbr_HasOpenItems,lbr_IsAutomaticInvoice,lbr_IsAutomaticShipment,lbr_IsManufactured,lbr_IsOwnDocument,lbr_IsReturn) VALUES (11,0,1000032,TO_TIMESTAMP('2009-02-03 10:52:45','YYYY-MM-DD HH24:MI:SS'),100,'ARI',374,0,'Tipo de documento para envio de consignação',109,'N','N','Y','Y','N','Y','Y','N','Y','N','N','N','Y','N','N','Fatura de Envio de Consignação','Fatura de Envio de Consignação',TO_TIMESTAMP('2009-02-03 10:52:45','YYYY-MM-DD HH24:MI:SS'),100,'FAEC','N','Y','N','N','N','N','Y','N')
;

-- 03/02/2009 10h52min45s BRST
-- Default comment for updating dictionary
INSERT INTO C_DocType_Trl (AD_Language,C_DocType_ID, DocumentNote,Name,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.C_DocType_ID, t.DocumentNote,t.Name,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, C_DocType t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.C_DocType_ID=1000032 AND EXISTS (SELECT * FROM C_DocType_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.C_DocType_ID!=t.C_DocType_ID)
;

-- 03/02/2009 10h52min45s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Document_Action_Access (AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,C_DocType_ID , AD_Ref_List_ID, AD_Role_ID) (SELECT 11,0,'Y', CURRENT_TIMESTAMP,100, CURRENT_TIMESTAMP,100, doctype.C_DocType_ID, "action".AD_Ref_List_ID, rol.AD_Role_ID FROM AD_Client client INNER JOIN C_DocType doctype ON (doctype.AD_Client_ID=client.AD_Client_ID) INNER JOIN AD_Ref_List "action" ON ("action".AD_Reference_ID=135) INNER JOIN AD_Role rol ON (rol.AD_Client_ID=client.AD_Client_ID) WHERE client.AD_Client_ID=11 AND doctype.C_DocType_ID=1000032 AND rol.IsManual='N')
;

-- 03/02/2009 10h54min37s BRST
-- Default comment for updating dictionary
INSERT INTO C_Location (AD_Client_ID,AD_Org_ID,Address1,Address2,Address3,Address4,C_Country_ID,C_Location_ID,C_Region_ID,Created,CreatedBy,IsActive,Postal,Postal_Add,Updated,UpdatedBy) VALUES (11,0,NULL,NULL,NULL,NULL,100,1000000,126,TO_TIMESTAMP('2009-02-03 10:54:34','YYYY-MM-DD HH24:MI:SS'),100,'Y',NULL,NULL,TO_TIMESTAMP('2009-02-03 10:54:34','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 03/02/2009 10h54min39s BRST
-- Default comment for updating dictionary
INSERT INTO M_Warehouse (AD_Client_ID,AD_Org_ID,C_Location_ID,Created,CreatedBy,IsActive,M_Warehouse_ID,Name,Separator,Updated,UpdatedBy,Value) VALUES (11,11,1000000,TO_TIMESTAMP('2009-02-03 10:54:39','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000000,'Third Party','*',TO_TIMESTAMP('2009-02-03 10:54:39','YYYY-MM-DD HH24:MI:SS'),100,'10000000')
;

-- 03/02/2009 10h54min39s BRST
-- Default comment for updating dictionary
INSERT INTO M_Warehouse_Acct (M_Warehouse_ID, C_AcctSchema_ID, AD_Client_ID,AD_Org_ID,IsActive, Created,CreatedBy,Updated,UpdatedBy ,W_Differences_Acct,W_InvActualAdjust_Acct,W_Inventory_Acct,W_Revaluation_Acct) SELECT 1000000, p.C_AcctSchema_ID, p.AD_Client_ID,0,'Y', CURRENT_TIMESTAMP,100,CURRENT_TIMESTAMP,100,p.W_Differences_Acct,p.W_InvActualAdjust_Acct,p.W_Inventory_Acct,p.W_Revaluation_Acct FROM C_AcctSchema_Default p WHERE p.AD_Client_ID=11 AND NOT EXISTS (SELECT * FROM M_Warehouse_Acct e WHERE e.C_AcctSchema_ID=p.C_AcctSchema_ID AND e.M_Warehouse_ID=1000000)
;

-- 03/02/2009 10h54min46s BRST
-- Default comment for updating dictionary
UPDATE M_Warehouse SET Value='Third Party',Updated=TO_TIMESTAMP('2009-02-03 10:54:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE M_Warehouse_ID=1000000
;

-- 03/02/2009 10h54min54s BRST
-- Default comment for updating dictionary
INSERT INTO C_DocType (AD_Client_ID,AD_Org_ID,C_DocType_ID,Created,CreatedBy,DocBaseType,DocNoSequence_ID,DocumentCopies,GL_Category_ID,HasCharges,HasProforma,IsActive,IsCreateCounter,IsDefault,IsDefaultCounterDoc,IsDocNoControlled,IsInTransit,IsIndexed,IsOverwriteDateOnComplete,IsOverwriteSeqOnComplete,IsPickQAConfirm,IsSOTrx,IsShipConfirm,IsSplitWhenDifference,LBR_DocTypeMovement_ID,M_Warehouse_ID,Name,PrintName,Updated,UpdatedBy,lbr_DocBaseType,lbr_GenerateMovement,lbr_HasFiscalDocument,lbr_HasOpenItems,lbr_IsAutomaticInvoice,lbr_IsAutomaticShipment,lbr_IsManufactured,lbr_IsOwnDocument,lbr_IsReturn) VALUES (11,0,1000033,TO_TIMESTAMP('2009-02-03 10:54:54','YYYY-MM-DD HH24:MI:SS'),100,'MMS',378,0,111,'N','N','Y','Y','N','Y','Y','N','Y','N','N','N','Y','N','N',143,1000000,'MM Envio de Consignação','MM Envio de Consignação',TO_TIMESTAMP('2009-02-03 10:54:54','YYYY-MM-DD HH24:MI:SS'),100,'EXEC','Y','Y','Y','N','N','N','Y','N')
;

-- 03/02/2009 10h54min54s BRST
-- Default comment for updating dictionary
INSERT INTO C_DocType_Trl (AD_Language,C_DocType_ID, DocumentNote,Name,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.C_DocType_ID, t.DocumentNote,t.Name,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, C_DocType t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.C_DocType_ID=1000033 AND EXISTS (SELECT * FROM C_DocType_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.C_DocType_ID!=t.C_DocType_ID)
;

-- 03/02/2009 10h54min54s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Document_Action_Access (AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,C_DocType_ID , AD_Ref_List_ID, AD_Role_ID) (SELECT 11,0,'Y', CURRENT_TIMESTAMP,100, CURRENT_TIMESTAMP,100, doctype.C_DocType_ID, "action".AD_Ref_List_ID, rol.AD_Role_ID FROM AD_Client client INNER JOIN C_DocType doctype ON (doctype.AD_Client_ID=client.AD_Client_ID) INNER JOIN AD_Ref_List "action" ON ("action".AD_Reference_ID=135) INNER JOIN AD_Role rol ON (rol.AD_Client_ID=client.AD_Client_ID) WHERE client.AD_Client_ID=11 AND doctype.C_DocType_ID=1000033 AND rol.IsManual='N')
;

-- 03/02/2009 10h55min36s BRST
-- Default comment for updating dictionary
UPDATE C_DocType SET C_DocTypeInvoice_ID=1000032, C_DocTypeShipment_ID=1000033,Updated=TO_TIMESTAMP('2009-02-03 10:55:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE C_DocType_ID=1000002
;

-- 03/02/2009 10h57min3s BRST
-- Default comment for updating dictionary
INSERT INTO C_DocType (AD_Client_ID,AD_Org_ID,C_DocType_ID,Created,CreatedBy,DocBaseType,DocNoSequence_ID,DocumentCopies,DocumentNote,GL_Category_ID,HasCharges,HasProforma,IsActive,IsCreateCounter,IsDefault,IsDefaultCounterDoc,IsDocNoControlled,IsInTransit,IsIndexed,IsOverwriteDateOnComplete,IsOverwriteSeqOnComplete,IsPickQAConfirm,IsSOTrx,IsShipConfirm,IsSplitWhenDifference,Name,PrintName,Updated,UpdatedBy,lbr_DocBaseType,lbr_GenerateMovement,lbr_HasFiscalDocument,lbr_HasOpenItems,lbr_IsAutomaticInvoice,lbr_IsAutomaticShipment,lbr_IsManufactured,lbr_IsOwnDocument,lbr_IsReturn) VALUES (11,0,1000034,TO_TIMESTAMP('2009-02-03 10:57:03','YYYY-MM-DD HH24:MI:SS'),100,'ARI',374,0,'Tipo de documento para retorno de consignação',109,'N','N','Y','Y','N','Y','Y','N','Y','N','N','N','Y','N','N','Fatura de Retorno de Consignação','Fatura de Retorno de Consignação',TO_TIMESTAMP('2009-02-03 10:57:03','YYYY-MM-DD HH24:MI:SS'),100,'FAEC','N','Y','N','N','N','N','Y','N')
;

-- 03/02/2009 10h57min3s BRST
-- Default comment for updating dictionary
INSERT INTO C_DocType_Trl (AD_Language,C_DocType_ID, DocumentNote,Name,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.C_DocType_ID, t.DocumentNote,t.Name,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, C_DocType t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.C_DocType_ID=1000034 AND EXISTS (SELECT * FROM C_DocType_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.C_DocType_ID!=t.C_DocType_ID)
;

-- 03/02/2009 10h57min3s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Document_Action_Access (AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,C_DocType_ID , AD_Ref_List_ID, AD_Role_ID) (SELECT 11,0,'Y', CURRENT_TIMESTAMP,100, CURRENT_TIMESTAMP,100, doctype.C_DocType_ID, "action".AD_Ref_List_ID, rol.AD_Role_ID FROM AD_Client client INNER JOIN C_DocType doctype ON (doctype.AD_Client_ID=client.AD_Client_ID) INNER JOIN AD_Ref_List "action" ON ("action".AD_Reference_ID=135) INNER JOIN AD_Role rol ON (rol.AD_Client_ID=client.AD_Client_ID) WHERE client.AD_Client_ID=11 AND doctype.C_DocType_ID=1000034 AND rol.IsManual='N')
;

-- 03/02/2009 10h57min10s BRST
-- Default comment for updating dictionary
UPDATE C_DocType SET lbr_DocBaseType='FARC',Updated=TO_TIMESTAMP('2009-02-03 10:57:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE C_DocType_ID=1000034
;

-- 03/02/2009 10h58min56s BRST
-- Default comment for updating dictionary
INSERT INTO C_DocType (AD_Client_ID,AD_Org_ID,C_DocType_ID,Created,CreatedBy,DocBaseType,DocNoSequence_ID,DocumentCopies,GL_Category_ID,HasCharges,HasProforma,IsActive,IsCreateCounter,IsDefault,IsDefaultCounterDoc,IsDocNoControlled,IsInTransit,IsIndexed,IsOverwriteDateOnComplete,IsOverwriteSeqOnComplete,IsPickQAConfirm,IsSOTrx,IsShipConfirm,IsSplitWhenDifference,LBR_DocTypeMovement_ID,M_Warehouse_ID,Name,PrintName,Updated,UpdatedBy,lbr_DocBaseType,lbr_GenerateMovement,lbr_HasFiscalDocument,lbr_HasOpenItems,lbr_IsAutomaticInvoice,lbr_IsAutomaticShipment,lbr_IsManufactured,lbr_IsOwnDocument,lbr_IsReturn) VALUES (11,0,1000035,TO_TIMESTAMP('2009-02-03 10:58:56','YYYY-MM-DD HH24:MI:SS'),100,'MMR',378,0,111,'N','N','Y','Y','N','Y','Y','N','Y','N','N','N','Y','N','N',143,104,'MM Retorno de Consignação','MM Retorno de Consignação',TO_TIMESTAMP('2009-02-03 10:58:56','YYYY-MM-DD HH24:MI:SS'),100,'EXEC','Y','Y','Y','N','N','N','Y','Y')
;

-- 03/02/2009 10h58min56s BRST
-- Default comment for updating dictionary
INSERT INTO C_DocType_Trl (AD_Language,C_DocType_ID, DocumentNote,Name,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.C_DocType_ID, t.DocumentNote,t.Name,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, C_DocType t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.C_DocType_ID=1000035 AND EXISTS (SELECT * FROM C_DocType_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.C_DocType_ID!=t.C_DocType_ID)
;

-- 03/02/2009 10h58min56s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Document_Action_Access (AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,C_DocType_ID , AD_Ref_List_ID, AD_Role_ID) (SELECT 11,0,'Y', CURRENT_TIMESTAMP,100, CURRENT_TIMESTAMP,100, doctype.C_DocType_ID, "action".AD_Ref_List_ID, rol.AD_Role_ID FROM AD_Client client INNER JOIN C_DocType doctype ON (doctype.AD_Client_ID=client.AD_Client_ID) INNER JOIN AD_Ref_List "action" ON ("action".AD_Reference_ID=135) INNER JOIN AD_Role rol ON (rol.AD_Client_ID=client.AD_Client_ID) WHERE client.AD_Client_ID=11 AND doctype.C_DocType_ID=1000035 AND rol.IsManual='N')
;

-- 03/02/2009 10h59min15s BRST
-- Default comment for updating dictionary
INSERT INTO C_DocType (AD_Client_ID,AD_Org_ID,C_DocTypeInvoice_ID,C_DocTypeShipment_ID,C_DocType_ID,Created,CreatedBy,DocBaseType,DocNoSequence_ID,DocSubTypeSO,DocumentCopies,GL_Category_ID,HasCharges,HasProforma,IsActive,IsCreateCounter,IsDefault,IsDefaultCounterDoc,IsDocNoControlled,IsInTransit,IsIndexed,IsOverwriteDateOnComplete,IsOverwriteSeqOnComplete,IsPickQAConfirm,IsSOTrx,IsShipConfirm,IsSplitWhenDifference,Name,PrintName,Updated,UpdatedBy,lbr_DocBaseType,lbr_GenerateMovement,lbr_HasFiscalDocument,lbr_HasOpenItems,lbr_IsAutomaticInvoice,lbr_IsAutomaticShipment,lbr_IsManufactured,lbr_IsOwnDocument,lbr_IsReturn) VALUES (11,0,1000034,1000035,1000036,TO_TIMESTAMP('2009-02-03 10:59:15','YYYY-MM-DD HH24:MI:SS'),100,'SOO',387,'SO',0,0,'N','N','Y','Y','N','Y','Y','N','Y','N','N','N','Y','N','N','Retorno de Consignação','Retorno de Consignação',TO_TIMESTAMP('2009-02-03 10:59:15','YYYY-MM-DD HH24:MI:SS'),100,'OVRC','N','Y','Y','Y','Y','N','Y','N')
;

-- 03/02/2009 10h59min15s BRST
-- Default comment for updating dictionary
INSERT INTO C_DocType_Trl (AD_Language,C_DocType_ID, DocumentNote,Name,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.C_DocType_ID, t.DocumentNote,t.Name,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, C_DocType t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.C_DocType_ID=1000036 AND EXISTS (SELECT * FROM C_DocType_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.C_DocType_ID!=t.C_DocType_ID)
;

-- 03/02/2009 10h59min15s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Document_Action_Access (AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,C_DocType_ID , AD_Ref_List_ID, AD_Role_ID) (SELECT 11,0,'Y', CURRENT_TIMESTAMP,100, CURRENT_TIMESTAMP,100, doctype.C_DocType_ID, "action".AD_Ref_List_ID, rol.AD_Role_ID FROM AD_Client client INNER JOIN C_DocType doctype ON (doctype.AD_Client_ID=client.AD_Client_ID) INNER JOIN AD_Ref_List "action" ON ("action".AD_Reference_ID=135) INNER JOIN AD_Role rol ON (rol.AD_Client_ID=client.AD_Client_ID) WHERE client.AD_Client_ID=11 AND doctype.C_DocType_ID=1000036 AND rol.IsManual='N')
;

-- 03/02/2009 11h0min6s BRST
-- Default comment for updating dictionary
INSERT INTO C_DocType (AD_Client_ID,AD_Org_ID,C_DocType_ID,Created,CreatedBy,DocBaseType,DocNoSequence_ID,DocumentCopies,DocumentNote,GL_Category_ID,HasCharges,HasProforma,IsActive,IsCreateCounter,IsDefault,IsDefaultCounterDoc,IsDocNoControlled,IsInTransit,IsIndexed,IsOverwriteDateOnComplete,IsOverwriteSeqOnComplete,IsPickQAConfirm,IsSOTrx,IsShipConfirm,IsSplitWhenDifference,Name,PrintName,Updated,UpdatedBy,lbr_DocBaseType,lbr_GenerateMovement,lbr_HasFiscalDocument,lbr_HasOpenItems,lbr_IsAutomaticInvoice,lbr_IsAutomaticShipment,lbr_IsManufactured,lbr_IsOwnDocument,lbr_IsReturn) VALUES (11,0,1000037,TO_TIMESTAMP('2009-02-03 11:00:06','YYYY-MM-DD HH24:MI:SS'),100,'ARI',374,0,'Tipo de documento para faturamento de consignação',109,'N','N','Y','Y','N','Y','Y','N','Y','N','N','N','Y','N','N','Fatura de Faturamento de Consignação','Fatura de Faturamento de Consignação',TO_TIMESTAMP('2009-02-03 11:00:06','YYYY-MM-DD HH24:MI:SS'),100,'FAFC','N','Y','Y','N','N','N','Y','N')
;

-- 03/02/2009 11h0min6s BRST
-- Default comment for updating dictionary
INSERT INTO C_DocType_Trl (AD_Language,C_DocType_ID, DocumentNote,Name,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.C_DocType_ID, t.DocumentNote,t.Name,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, C_DocType t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.C_DocType_ID=1000037 AND EXISTS (SELECT * FROM C_DocType_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.C_DocType_ID!=t.C_DocType_ID)
;

-- 03/02/2009 11h0min6s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Document_Action_Access (AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,C_DocType_ID , AD_Ref_List_ID, AD_Role_ID) (SELECT 11,0,'Y', CURRENT_TIMESTAMP,100, CURRENT_TIMESTAMP,100, doctype.C_DocType_ID, "action".AD_Ref_List_ID, rol.AD_Role_ID FROM AD_Client client INNER JOIN C_DocType doctype ON (doctype.AD_Client_ID=client.AD_Client_ID) INNER JOIN AD_Ref_List "action" ON ("action".AD_Reference_ID=135) INNER JOIN AD_Role rol ON (rol.AD_Client_ID=client.AD_Client_ID) WHERE client.AD_Client_ID=11 AND doctype.C_DocType_ID=1000037 AND rol.IsManual='N')
;

-- 03/02/2009 11h2min16s BRST
-- Default comment for updating dictionary
INSERT INTO C_DocType (AD_Client_ID,AD_Org_ID,C_DocType_ID,Created,CreatedBy,DocBaseType,DocNoSequence_ID,DocumentCopies,GL_Category_ID,HasCharges,HasProforma,IsActive,IsCreateCounter,IsDefault,IsDefaultCounterDoc,IsDocNoControlled,IsInTransit,IsIndexed,IsOverwriteDateOnComplete,IsOverwriteSeqOnComplete,IsPickQAConfirm,IsSOTrx,IsShipConfirm,IsSplitWhenDifference,Name,PrintName,Updated,UpdatedBy,lbr_DocBaseType,lbr_GenerateMovement,lbr_HasFiscalDocument,lbr_HasOpenItems,lbr_IsAutomaticInvoice,lbr_IsAutomaticShipment,lbr_IsManufactured,lbr_IsOwnDocument,lbr_IsReturn) VALUES (11,0,1000038,TO_TIMESTAMP('2009-02-03 11:02:16','YYYY-MM-DD HH24:MI:SS'),100,'MMS',378,0,111,'N','N','Y','Y','N','Y','Y','N','Y','N','N','N','Y','N','N','MM Faturamento de Consignação','MM Faturamento de Consignação',TO_TIMESTAMP('2009-02-03 11:02:16','YYYY-MM-DD HH24:MI:SS'),100,'EXFC','N','Y','Y','N','N','N','Y','N')
;

-- 03/02/2009 11h2min16s BRST
-- Default comment for updating dictionary
INSERT INTO C_DocType_Trl (AD_Language,C_DocType_ID, DocumentNote,Name,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.C_DocType_ID, t.DocumentNote,t.Name,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, C_DocType t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.C_DocType_ID=1000038 AND EXISTS (SELECT * FROM C_DocType_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.C_DocType_ID!=t.C_DocType_ID)
;

-- 03/02/2009 11h2min16s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Document_Action_Access (AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,C_DocType_ID , AD_Ref_List_ID, AD_Role_ID) (SELECT 11,0,'Y', CURRENT_TIMESTAMP,100, CURRENT_TIMESTAMP,100, doctype.C_DocType_ID, "action".AD_Ref_List_ID, rol.AD_Role_ID FROM AD_Client client INNER JOIN C_DocType doctype ON (doctype.AD_Client_ID=client.AD_Client_ID) INNER JOIN AD_Ref_List "action" ON ("action".AD_Reference_ID=135) INNER JOIN AD_Role rol ON (rol.AD_Client_ID=client.AD_Client_ID) WHERE client.AD_Client_ID=11 AND doctype.C_DocType_ID=1000038 AND rol.IsManual='N')
;

-- 03/02/2009 11h2min29s BRST
-- Default comment for updating dictionary
INSERT INTO C_DocType (AD_Client_ID,AD_Org_ID,C_DocTypeInvoice_ID,C_DocTypeShipment_ID,C_DocType_ID,Created,CreatedBy,DocBaseType,DocNoSequence_ID,DocSubTypeSO,DocumentCopies,GL_Category_ID,HasCharges,HasProforma,IsActive,IsCreateCounter,IsDefault,IsDefaultCounterDoc,IsDocNoControlled,IsInTransit,IsIndexed,IsOverwriteDateOnComplete,IsOverwriteSeqOnComplete,IsPickQAConfirm,IsSOTrx,IsShipConfirm,IsSplitWhenDifference,Name,PrintName,Updated,UpdatedBy,lbr_DocBaseType,lbr_GenerateMovement,lbr_HasFiscalDocument,lbr_HasOpenItems,lbr_IsAutomaticInvoice,lbr_IsAutomaticShipment,lbr_IsManufactured,lbr_IsOwnDocument,lbr_IsReturn) VALUES (11,0,1000037,1000038,1000039,TO_TIMESTAMP('2009-02-03 11:02:29','YYYY-MM-DD HH24:MI:SS'),100,'SOO',387,'SO',0,0,'N','N','Y','Y','N','Y','Y','N','Y','N','N','N','Y','N','N','Faturamento de Consignação','Faturamento de Consignação',TO_TIMESTAMP('2009-02-03 11:02:29','YYYY-MM-DD HH24:MI:SS'),100,'OVRC','N','Y','Y','Y','Y','N','Y','N')
;

-- 03/02/2009 11h2min29s BRST
-- Default comment for updating dictionary
INSERT INTO C_DocType_Trl (AD_Language,C_DocType_ID, DocumentNote,Name,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.C_DocType_ID, t.DocumentNote,t.Name,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, C_DocType t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.C_DocType_ID=1000039 AND EXISTS (SELECT * FROM C_DocType_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.C_DocType_ID!=t.C_DocType_ID)
;

-- 03/02/2009 11h2min29s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Document_Action_Access (AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,C_DocType_ID , AD_Ref_List_ID, AD_Role_ID) (SELECT 11,0,'Y', CURRENT_TIMESTAMP,100, CURRENT_TIMESTAMP,100, doctype.C_DocType_ID, "action".AD_Ref_List_ID, rol.AD_Role_ID FROM AD_Client client INNER JOIN C_DocType doctype ON (doctype.AD_Client_ID=client.AD_Client_ID) INNER JOIN AD_Ref_List "action" ON ("action".AD_Reference_ID=135) INNER JOIN AD_Role rol ON (rol.AD_Client_ID=client.AD_Client_ID) WHERE client.AD_Client_ID=11 AND doctype.C_DocType_ID=1000039 AND rol.IsManual='N')
;

-- 03/02/2009 11h2min47s BRST
-- Default comment for updating dictionary
UPDATE C_DocType SET lbr_DocBaseType='OVFC',Updated=TO_TIMESTAMP('2009-02-03 11:02:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE C_DocType_ID=1000039
;

-- 03/02/2009 14h27min24s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Val_Rule (AD_Client_ID,AD_Org_ID,AD_Val_Rule_ID,Code,Created,CreatedBy,EntityType,IsActive,Name,Type,Updated,UpdatedBy) VALUES (0,0,1000012,'C_DocType.LBR_DocBaseType=''OVRC''',TO_TIMESTAMP('2009-02-03 14:27:24','YYYY-MM-DD HH24:MI:SS'),100,'U','Y','LBR_OtherNFReturn','S',TO_TIMESTAMP('2009-02-03 14:27:24','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 03/02/2009 14h28min0s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Val_Rule (AD_Client_ID,AD_Org_ID,AD_Val_Rule_ID,Code,Created,CreatedBy,EntityType,IsActive,Name,Type,Updated,UpdatedBy) VALUES (0,0,1000013,'C_DocType.LBR_DocBaseType=''OVFC''',TO_TIMESTAMP('2009-02-03 14:28:00','YYYY-MM-DD HH24:MI:SS'),100,'U','Y','LBR_OtherNFInvoice','S',TO_TIMESTAMP('2009-02-03 14:28:00','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 03/02/2009 14h28min18s BRST
-- Default comment for updating dictionary
UPDATE AD_Column SET AD_Val_Rule_ID=1000013,Updated=TO_TIMESTAMP('2009-02-03 14:28:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000973
;

-- 03/02/2009 14h28min39s BRST
-- Default comment for updating dictionary
UPDATE AD_Column SET AD_Reference_Value_ID=170, AD_Val_Rule_ID=1000012,Updated=TO_TIMESTAMP('2009-02-03 14:28:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000972
;

-- 03/02/2009 14h31min16s BRST
-- Default comment for updating dictionary
UPDATE AD_Column SET IsUpdateable='N',Updated=TO_TIMESTAMP('2009-02-03 14:31:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000991
;

-- 03/02/2009 14h31min23s BRST
-- Default comment for updating dictionary
UPDATE AD_Column SET IsUpdateable='N',Updated=TO_TIMESTAMP('2009-02-03 14:31:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000996
;

-- 03/02/2009 14h31min26s BRST
-- Default comment for updating dictionary
UPDATE AD_Column SET IsUpdateable='N',Updated=TO_TIMESTAMP('2009-02-03 14:31:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000994
;

-- 03/02/2009 14h31min33s BRST
-- Default comment for updating dictionary
UPDATE AD_Column SET IsUpdateable='N',Updated=TO_TIMESTAMP('2009-02-03 14:31:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000990
;

-- 03/02/2009 14h31min52s BRST
-- Default comment for updating dictionary
UPDATE AD_Column SET IsUpdateable='N',Updated=TO_TIMESTAMP('2009-02-03 14:31:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000995
;

-- 03/02/2009 14h32min15s BRST
-- Default comment for updating dictionary
UPDATE AD_Column SET IsUpdateable='N',Updated=TO_TIMESTAMP('2009-02-03 14:32:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000974
;

-- 03/02/2009 14h32min22s BRST
-- Default comment for updating dictionary
UPDATE AD_Column SET IsUpdateable='N',Updated=TO_TIMESTAMP('2009-02-03 14:32:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000975
;

-- 03/02/2009 18h0min8s BRST
-- Default comment for updating dictionary
UPDATE C_DocType SET lbr_DocBaseType='EXRC',Updated=TO_TIMESTAMP('2009-02-03 18:00:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE C_DocType_ID=1000035
;

-- 03/02/2009 19h21min37s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1001030 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 03/02/2009 19h21min38s BRST
-- Default comment for updating dictionary
insert into t_alter_column values('lbr_processlink','lbr_Ori_C_InvoiceLine_ID','NUMERIC(10)',null,'NULL')
;

-- 04/02/2009 10h27min28s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,1000347,0,'LBR_ProcessLink_ID',TO_TIMESTAMP('2009-02-04 10:27:28','YYYY-MM-DD HH24:MI:SS'),100,'LBR_ProcessLink_ID','LBRA','LBR_ProcessLink_ID','Y','LBR_ProcessLink_ID','LBR_ProcessLink_ID',TO_TIMESTAMP('2009-02-04 10:27:28','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 04/02/2009 10h27min28s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1000347 AND EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Element_ID!=t.AD_Element_ID)
;


-- 04/02/2009 10h29min16s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1001030,1000347,0,13,1000037,'LBR_ProcessLink_ID',TO_TIMESTAMP('2009-02-04 10:29:16','YYYY-MM-DD HH24:MI:SS'),100,'LBR_ProcessLink_ID','LBRA',22,'LBR_ProcessLink_ID','Y','N','N','Y','Y','N','N','N','N','N','N','LBR_ProcessLink_ID',0,TO_TIMESTAMP('2009-02-04 10:29:16','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 04/02/2009 10h29min16s BRST
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1001030 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 04/02/2009 10h29min28s BRST
-- Default comment for updating dictionary
UPDATE AD_Column SET IsParent='N',Updated=TO_TIMESTAMP('2009-02-04 10:29:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1001025
;

-- 04/02/2009 10h29min32s BRST
-- Default comment for updating dictionary
UPDATE AD_Column SET IsParent='N',Updated=TO_TIMESTAMP('2009-02-04 10:29:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1001024
;

-- 04/02/2009 10h29min35s BRST
-- Default comment for updating dictionary
insert into t_alter_column values('lbr_processlink','lbr_Ori_C_InvoiceLine_ID','NUMERIC(10)',null,'NULL')
;

-- 04/02/2009 10h29min41s BRST
-- Default comment for updating dictionary
insert into t_alter_column values('lbr_processlink','lbr_Dest_C_InvoiceLine_ID','NUMERIC(10)',null,'NULL')
;

DROP TABLE adempiere.lbr_processlink
;

CREATE TABLE adempiere.lbr_processlink ( 
    lbr_processlink_id       	numeric(10,0) NOT NULL,
    ad_client_id             	numeric(10,0) NOT NULL,
    ad_org_id                	numeric(10,0) NOT NULL,
    isactive                 	char(1) NOT NULL DEFAULT 'Y'::bpchar,
    created                  	timestamp NOT NULL,
    createdby                	numeric(10,0) NOT NULL,
    updated                  	timestamp NOT NULL,
    updatedby                	numeric(10,0) NOT NULL,
    lbr_ori_c_invoiceline_id 	numeric(10,0) NULL,
    lbr_dest_c_invoiceline_id	numeric(10,0) NULL,
    m_product_id             	numeric(10,0) NULL,
    movementtype             	varchar(2) NULL,
    movementqty              	numeric NULL,
    m_attributesetinstance_id	numeric(10,0) NULL,
    PRIMARY KEY(lbr_processlink_id)
)
WITHOUT OIDS 
TABLESPACE pg_default
;
ALTER TABLE adempiere.lbr_processlink
    ADD CONSTRAINT lbr_processlink_isactive_check
	CHECK (isactive = ANY (ARRAY['Y'::bpchar, 'N'::bpchar]))
;


-- 04/02/2009 11h44min32s BRST
-- Default comment for updating dictionary
--UPDATE AD_Column SET AD_Element_ID=1000347, ColumnName='lbr_Ref_C_InvoiceLine_ID', Description='Reference Invoice Line', Help='Reference Invoice Line', Name='lbr_Ref_C_InvoiceLine_ID',Updated=TO_TIMESTAMP('2009-02-04 11:44:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1001022
;

-- 04/02/2009 11h44min32s BRST
-- Default comment for updating dictionary
--UPDATE AD_Column_Trl SET IsTranslated='N' WHERE AD_Column_ID=1001022
;

-- 04/02/2009 11h44min32s BRST
-- Default comment for updating dictionary
--UPDATE AD_Field SET Name='lbr_Ref_C_InvoiceLine_ID', Description='Reference Invoice Line', Help='Reference Invoice Line' WHERE AD_Column_ID=1001022 AND IsCentrallyMaintained='Y'
;

-- 04/02/2009 11h47min40s BRST
-- Default comment for updating dictionary
--insert into t_alter_column values('c_orderline','lbr_Ref_C_InvoiceLine_ID','NUMERIC(10)',null,'NULL')
;

-- 04/02/2009 11h51min36s BRST
-- Default comment for updating dictionary
UPDATE AD_Column SET AD_Element_ID=1000346, ColumnName='lbr_Ori_C_InvoiceLine_ID', Description='Origin Invoice Line', Help='Origin Invoice Line', Name='lbr_Ori_C_InvoiceLine_ID',Updated=TO_TIMESTAMP('2009-02-04 11:51:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1001024
;

-- 04/02/2009 11h51min36s BRST
-- Default comment for updating dictionary
UPDATE AD_Column_Trl SET IsTranslated='N' WHERE AD_Column_ID=1001024
;

-- 04/02/2009 11h51min36s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET Name='lbr_Ori_C_InvoiceLine_ID', Description='Origin Invoice Line', Help='Origin Invoice Line' WHERE AD_Column_ID=1001024 AND IsCentrallyMaintained='Y'
;

-- 04/02/2009 11h51min38s BRST
-- Default comment for updating dictionary
insert into t_alter_column values('lbr_processlink','lbr_Ori_C_InvoiceLine_ID','NUMERIC(10)',null,'NULL')
;

-- 04/02/2009 11h54min3s BRST
-- Default comment for updating dictionary
UPDATE C_DocType SET M_Warehouse_ID=1000000,Updated=TO_TIMESTAMP('2009-02-04 11:54:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE C_DocType_ID=1000035
;

-- 06/02/2009 17h54min37s BRST
-- Default comment for updating dictionary
UPDATE C_DocType SET DocBaseType='API',Updated=TO_TIMESTAMP('2009-02-06 17:54:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE C_DocType_ID=1000034
;

-- 06/02/2009 17h58min9s BRST
-- Default comment for updating dictionary
UPDATE AD_Tab SET WhereClause='lbr_OtherNF_RequestType = ''MR''',Updated=TO_TIMESTAMP('2009-02-06 17:58:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=1000042
;

-- 06/02/2009 17h58min16s BRST
-- Default comment for updating dictionary
UPDATE AD_Tab SET WhereClause='lbr_OtherNF_RequestType = ''MI'' ',Updated=TO_TIMESTAMP('2009-02-06 17:58:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=1000044
;

-- 06/02/2009 17h58min39s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2009-02-06 17:58:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001028
;

-- 06/02/2009 17h58min42s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2009-02-06 17:58:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001033
;

-- 06/02/2009 17h58min55s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2009-02-06 17:58:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001002
;

-- 06/02/2009 17h59min0s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_TIMESTAMP('2009-02-06 17:59:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001007
;



-- 26/01/2009 11h50min7s BRST
-- Default comment for updating dictionary
UPDATE AD_SysConfig SET Value='100-trunk/011-OtherNF_DocType_Minor_Tweaks.sql',Updated=TO_TIMESTAMP('2009-01-21 11:22:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_SysConfig_ID=1100006
