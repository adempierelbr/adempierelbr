-- 28/08/2015 10h7min4s BRT
INSERT INTO AD_Message (AD_Client_ID,AD_Message_ID,AD_Org_ID,Created,CreatedBy,EntityType,IsActive,MsgText,MsgType,Updated,UpdatedBy,Value) VALUES (0,1120034,0,TO_TIMESTAMP('2015-08-28 10:07:00','YYYY-MM-DD HH24:MI:SS'),100,'U','Y','Save Error - No Change','I',TO_TIMESTAMP('2015-08-28 10:07:00','YYYY-MM-DD HH24:MI:SS'),100,'SaveErrorNoChange')
;

-- 28/08/2015 10h7min4s BRT
INSERT INTO AD_Message_Trl (AD_Language,AD_Message_ID, MsgText,MsgTip, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Message_ID, t.MsgText,t.MsgTip, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Message t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Message_ID=1120034 AND NOT EXISTS (SELECT * FROM AD_Message_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Message_ID=t.AD_Message_ID)
;

-- 28/08/2015 10h7min7s BRT
UPDATE AD_Message SET EntityType='LBRA',Updated=TO_TIMESTAMP('2015-08-28 10:07:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Message_ID=1120034
;

-- 28/08/2015 10h7min21s BRT
UPDATE AD_Message_Trl SET MsgText='Erro ao Salvar Registro - Sem modificações',Updated=TO_TIMESTAMP('2015-08-28 10:07:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Message_ID=1120034 AND AD_Language='pt_BR'
;

-- 28/08/2015 10h30min39s BRT
INSERT INTO AD_Sequence (AD_Client_ID,AD_Org_ID,AD_Sequence_ID,Created,CreatedBy,CurrentNext,CurrentNextSys,IncrementNo,IsActive,IsAudited,IsAutoSequence,IsRange,IsTableID,Name,StartNewYear,StartNo,Updated,UpdatedBy,ValueMax,ValueMin) VALUES (11,0,1153250,TO_TIMESTAMP('2015-08-28 10:30:33','YYYY-MM-DD HH24:MI:SS'),100,1,100,1,'Y','N','Y','N','N','Nota Fiscal (Saída)','N',1000000,TO_TIMESTAMP('2015-08-28 10:30:33','YYYY-MM-DD HH24:MI:SS'),100,0,0)
;

-- 28/08/2015 10h30min51s BRT
INSERT INTO AD_Sequence (AD_Client_ID,AD_Org_ID,AD_Sequence_ID,Created,CreatedBy,CurrentNext,CurrentNextSys,IncrementNo,IsActive,IsAudited,IsAutoSequence,IsRange,IsTableID,Name,StartNewYear,StartNo,Updated,UpdatedBy,ValueMax,ValueMin) VALUES (11,0,1153251,TO_TIMESTAMP('2015-08-28 10:30:45','YYYY-MM-DD HH24:MI:SS'),100,1,100,1,'Y','N','Y','N','N','Nota Fiscal (Entrada)','N',1000000,TO_TIMESTAMP('2015-08-28 10:30:45','YYYY-MM-DD HH24:MI:SS'),100,0,0)
;

-- 28/08/2015 10h32min6s BRT
INSERT INTO C_DocType (AD_Client_ID,AD_Org_ID,C_DocType_ID,Created,CreatedBy,DocBaseType,DocNoSequence_ID,DocumentCopies,GL_Category_ID,HasCharges,HasProforma,IsActive,IsCreateCounter,IsDefault,IsDefaultCounterDoc,IsDocNoControlled,IsInTransit,IsIndexed,IsOverwriteDateOnComplete,IsOverwriteSeqOnComplete,IsPickQAConfirm,IsPrepareSplitDocument,IsSOTrx,IsShipConfirm,IsSplitWhenDifference,M_Warehouse_ID,Name,PrintName,Updated,UpdatedBy,lbr_DANFEFormat,lbr_GenerateMovement,lbr_HasFiscalDocument,lbr_HasOpenItems,lbr_IsAutomaticInvoice,lbr_IsAutomaticShipment,lbr_IsManufactured,lbr_IsOwnDocument,lbr_IsReturn,lbr_NFModel,lbr_NFSerie) VALUES (11,0,1120000,TO_TIMESTAMP('2015-08-28 10:32:06','YYYY-MM-DD HH24:MI:SS'),100,'NFB',1153250,1,108,'N','N','Y','Y','N','N','Y','N','N','N','N','N','Y','Y','N','N',50002,'Nota Fiscal (Saída)','Nota Fiscal (Saída)',TO_TIMESTAMP('2015-08-28 10:32:06','YYYY-MM-DD HH24:MI:SS'),100,'1','N','Y','Y','N','N','N','Y','N','55','1')
;

-- 28/08/2015 10h32min6s BRT
INSERT INTO C_DocType_Trl (AD_Language,C_DocType_ID, DocumentNote,Name,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.C_DocType_ID, t.DocumentNote,t.Name,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, C_DocType t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.C_DocType_ID=1120000 AND NOT EXISTS (SELECT * FROM C_DocType_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.C_DocType_ID=t.C_DocType_ID)
;

-- 28/08/2015 10h32min6s BRT
INSERT INTO AD_Document_Action_Access (AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,C_DocType_ID , AD_Ref_List_ID, AD_Role_ID) (SELECT 11,0,'Y', CURRENT_TIMESTAMP,100, CURRENT_TIMESTAMP,100, doctype.C_DocType_ID, "action".AD_Ref_List_ID, rol.AD_Role_ID FROM AD_Client client INNER JOIN C_DocType doctype ON (doctype.AD_Client_ID=client.AD_Client_ID) INNER JOIN AD_Ref_List "action" ON ("action".AD_Reference_ID=135) INNER JOIN AD_Role rol ON (rol.AD_Client_ID=client.AD_Client_ID) WHERE client.AD_Client_ID=11 AND doctype.C_DocType_ID=1120000 AND rol.IsManual='N')
;

-- 28/08/2015 10h32min42s BRT
INSERT INTO C_DocType (AD_Client_ID,AD_Org_ID,C_DocType_ID,Created,CreatedBy,DocBaseType,DocNoSequence_ID,DocumentCopies,GL_Category_ID,HasCharges,HasProforma,IsActive,IsCreateCounter,IsDefault,IsDefaultCounterDoc,IsDocNoControlled,IsInTransit,IsIndexed,IsOverwriteDateOnComplete,IsOverwriteSeqOnComplete,IsPickQAConfirm,IsPrepareSplitDocument,IsSOTrx,IsShipConfirm,IsSplitWhenDifference,M_Warehouse_ID,Name,PrintName,Updated,UpdatedBy,lbr_DANFEFormat,lbr_GenerateMovement,lbr_HasFiscalDocument,lbr_HasOpenItems,lbr_IsAutomaticInvoice,lbr_IsAutomaticShipment,lbr_IsManufactured,lbr_IsOwnDocument,lbr_IsReturn,lbr_NFModel,lbr_NFSerie) VALUES (11,0,1120001,TO_TIMESTAMP('2015-08-28 10:32:42','YYYY-MM-DD HH24:MI:SS'),100,'NFB',1153251,1,108,'N','N','Y','Y','N','N','Y','N','N','N','N','N','Y','N','N','N',50002,'Nota Fiscal (Entrada)','Nota Fiscal (Entrada)',TO_TIMESTAMP('2015-08-28 10:32:42','YYYY-MM-DD HH24:MI:SS'),100,'1','N','Y','Y','N','N','N','Y','N','55','2')
;

-- 28/08/2015 10h32min42s BRT
INSERT INTO C_DocType_Trl (AD_Language,C_DocType_ID, DocumentNote,Name,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.C_DocType_ID, t.DocumentNote,t.Name,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, C_DocType t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.C_DocType_ID=1120001 AND NOT EXISTS (SELECT * FROM C_DocType_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.C_DocType_ID=t.C_DocType_ID)
;

-- 28/08/2015 10h32min42s BRT
INSERT INTO AD_Document_Action_Access (AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,C_DocType_ID , AD_Ref_List_ID, AD_Role_ID) (SELECT 11,0,'Y', CURRENT_TIMESTAMP,100, CURRENT_TIMESTAMP,100, doctype.C_DocType_ID, "action".AD_Ref_List_ID, rol.AD_Role_ID FROM AD_Client client INNER JOIN C_DocType doctype ON (doctype.AD_Client_ID=client.AD_Client_ID) INNER JOIN AD_Ref_List "action" ON ("action".AD_Reference_ID=135) INNER JOIN AD_Role rol ON (rol.AD_Client_ID=client.AD_Client_ID) WHERE client.AD_Client_ID=11 AND doctype.C_DocType_ID=1120001 AND rol.IsManual='N')
;

-- 28/08/2015 10h32min42s BRT
SELECT Register_Migration_Script ('132-DocumentTypeForGW.sql') FROM DUAL
;