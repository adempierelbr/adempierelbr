-- 10/03/2009 14h48min45s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,1000364,0,'lbr_NFEntrada',TO_DATE('2009-03-10 14:48:45','YYYY-MM-DD HH24:MI:SS'),100,'Number of the receipt NF','LBRA','Number of the receipt NF','Y','Receipt NF Number','Receipt NF Number',TO_DATE('2009-03-10 14:48:45','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 10/03/2009 14h48min45s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1000364 AND EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Element_ID!=t.AD_Element_ID)
;

-- 10/03/2009 14h49min38s BRT
-- Default comment for updating dictionary
UPDATE AD_Element_Trl SET IsTranslated='Y',Name='Nota Fiscal de Entrada',PrintName='Nota Fiscal de Entrada',Description='Número da Nota Fiscal de Entrada',Help='Campo para preencher o número da nota fiscal de entrada que será copiado para a nota fiscal.',Updated=TO_DATE('2009-03-10 14:49:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1000364 AND AD_Language='pt_BR'
;

-- 10/03/2009 14h50min32s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1001053,1000364,0,10,259,'lbr_NFEntrada',TO_DATE('2009-03-10 14:50:32','YYYY-MM-DD HH24:MI:SS'),100,'Number of the receipt NF','LBRA',25,'Number of the receipt NF','Y','N','N','N','N','N','N','N','N','N','Y','Receipt NF Number',0,TO_DATE('2009-03-10 14:50:32','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 10/03/2009 14h50min32s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1001053 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 10/03/2009 14h50min34s BRT
-- Default comment for updating dictionary
ALTER TABLE C_Order ADD lbr_NFEntrada NVARCHAR2(25)
;

-- 10/03/2009 14h51min5s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1001054,1000364,0,10,319,'lbr_NFEntrada',TO_DATE('2009-03-10 14:51:05','YYYY-MM-DD HH24:MI:SS'),100,'Number of the receipt NF','LBRA',20,'Number of the receipt NF','Y','N','N','N','N','N','N','N','N','N','Y','Receipt NF Number',0,TO_DATE('2009-03-10 14:51:05','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 10/03/2009 14h51min5s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1001054 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 10/03/2009 14h51min7s BRT
-- Default comment for updating dictionary
ALTER TABLE M_InOut ADD lbr_NFEntrada NVARCHAR2(20)
;

-- 10/03/2009 14h51min48s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1001055,1000364,0,10,318,'lbr_NFEntrada',TO_DATE('2009-03-10 14:51:48','YYYY-MM-DD HH24:MI:SS'),100,'Number of the receipt NF','LBRA',25,'Number of the receipt NF','Y','N','N','N','N','N','N','N','N','N','Y','Receipt NF Number',0,TO_DATE('2009-03-10 14:51:48','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 10/03/2009 14h51min48s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1001055 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 10/03/2009 14h51min49s BRT
-- Default comment for updating dictionary
ALTER TABLE C_Invoice ADD lbr_NFEntrada NVARCHAR2(25)
;

exit