-- 13/04/2009 19h10min28s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Element (AD_Element_ID,ColumnName,AD_Client_ID,Name,Created,Updated,PrintName,IsActive,EntityType,AD_Org_ID,CreatedBy,UpdatedBy) VALUES (1100005,'lbr_LegalEntity',0,'Legal Entity',TO_TIMESTAMP('2009-04-13 19:10:27','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2009-04-13 19:10:27','YYYY-MM-DD HH24:MI:SS'),'Legal Entity','Y','LBRA',0,100,100)
;

-- 13/04/2009 19h10min28s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Name,Description,PrintName,Help,PO_PrintName,PO_Description,PO_Help,PO_Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Name,t.Description,t.PrintName,t.Help,t.PO_PrintName,t.PO_Description,t.PO_Help,t.PO_Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1100005 AND EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Element_ID!=t.AD_Element_ID)
;

-- 13/04/2009 19h11min52s BRT
-- Default comment for updating dictionary
UPDATE AD_Element_Trl SET Name='Raz‹o Social',PrintName='Raz‹o Social',Description='Nome da Raz‹o Social da Empresa',Help='Esta Raz‹o Social estar‡ presente em todos os documentos fiscais e cont‡beis, como por exemplo o SPED e o SINTEGRA.',Updated=TO_TIMESTAMP('2009-04-13 19:11:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1100005 AND AD_Language='pt_BR'
;

-- 13/04/2009 19h15min48s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Column_ID,AD_Table_ID,EntityType,Version,IsMandatory,IsTranslated,IsIdentifier,SeqNo,CreatedBy,Updated,ColumnName,IsParent,AD_Client_ID,AD_Org_ID,Name,IsActive,FieldLength,IsSelectionColumn,AD_Reference_ID,IsSyncDatabase,Created,IsUpdateable,IsKey,AD_Element_ID,UpdatedBy,IsEncrypted,IsAlwaysUpdateable) VALUES (1100015,228,'U',0,'N','N','N',0,100,TO_TIMESTAMP('2009-04-13 19:15:48','YYYY-MM-DD HH24:MI:SS'),'lbr_LegalEntity','N',0,0,'Legal Entity','Y',60,'N',10,'N',TO_TIMESTAMP('2009-04-13 19:15:48','YYYY-MM-DD HH24:MI:SS'),'Y','N',1100005,100,'N','N')
;

-- 13/04/2009 19h15min49s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1100015 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 13/04/2009 19h15min56s BRT
-- Default comment for updating dictionary
UPDATE AD_Column SET EntityType='LBRA',Updated=TO_TIMESTAMP('2009-04-13 19:15:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1100015
;

-- 13/04/2009 19h16min7s BRT
-- Default comment for updating dictionary
ALTER TABLE AD_OrgInfo ADD COLUMN lbr_LegalEntity VARCHAR(60)
;

-- 13/04/2009 19h16min33s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Column_ID,AD_Table_ID,EntityType,Version,IsMandatory,IsTranslated,IsIdentifier,SeqNo,CreatedBy,Updated,ColumnName,IsParent,AD_Client_ID,AD_Org_ID,Description,Name,IsActive,FieldLength,IsSelectionColumn,AD_Reference_ID,IsSyncDatabase,Created,IsUpdateable,IsKey,AD_Element_ID,UpdatedBy,IsEncrypted,IsAlwaysUpdateable) VALUES (1100016,228,'LBRA',0,'N','N','N',0,100,TO_TIMESTAMP('2009-04-13 19:16:32','YYYY-MM-DD HH24:MI:SS'),'ContactName','N',0,0,'Business Partner Contact Name','Contact Name','Y',60,'N',10,'N',TO_TIMESTAMP('2009-04-13 19:16:32','YYYY-MM-DD HH24:MI:SS'),'Y','N',1839,100,'N','N')
;

-- 13/04/2009 19h16min33s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1100016 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 13/04/2009 19h16min35s BRT
-- Default comment for updating dictionary
ALTER TABLE AD_OrgInfo ADD COLUMN ContactName VARCHAR(60)
;

-- 13/04/2009 19h17min15s BRT
-- Default comment for updating dictionary
-- INSERT INTO AD_Column (AD_Column_ID,AD_Table_ID,EntityType,Version,IsMandatory,IsTranslated,IsIdentifier,SeqNo,CreatedBy,Updated,ColumnName,Help,IsParent,AD_Client_ID,AD_Org_ID,Description,Name,IsActive,FieldLength,IsSelectionColumn,AD_Reference_ID,IsSyncDatabase,Created,IsUpdateable,IsKey,AD_Element_ID,UpdatedBy,IsEncrypted,IsAlwaysUpdateable) VALUES (1100017,228,'LBRA',0,'N','N','N',0,100,TO_TIMESTAMP('2009-04-13 19:17:14','YYYY-MM-DD HH24:MI:SS'),'Phone','The Phone field identifies a telephone number','N',0,0,'Identifies a telephone number','Phone','Y',22,'N',10,'N',TO_TIMESTAMP('2009-04-13 19:17:14','YYYY-MM-DD HH24:MI:SS'),'Y','N',505,100,'N','N')
-- ;

-- 13/04/2009 19h17min15s BRT
-- Default comment for updating dictionary
-- INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1100017 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
-- ;

-- 13/04/2009 19h17min16s BRT
-- Default comment for updating dictionary
-- ALTER TABLE AD_OrgInfo ADD COLUMN Phone VARCHAR(22)
-- ;

-- 13/04/2009 19h17min39s BRT
-- Default comment for updating dictionary
-- INSERT INTO AD_Column (AD_Column_ID,AD_Table_ID,EntityType,Version,IsMandatory,IsTranslated,IsIdentifier,SeqNo,CreatedBy,Updated,ColumnName,Help,IsParent,AD_Client_ID,AD_Org_ID,Description,Name,IsActive,FieldLength,IsSelectionColumn,AD_Reference_ID,IsSyncDatabase,Created,IsUpdateable,IsKey,AD_Element_ID,UpdatedBy,IsEncrypted,IsAlwaysUpdateable) VALUES (1100018,228,'U',0,'N','N','N',0,100,TO_TIMESTAMP('2009-04-13 19:17:37','YYYY-MM-DD HH24:MI:SS'),'Fax','The Fax identifies a facsimile number for this Business Partner or  Location','N',0,0,'Facsimile number','Fax','Y',22,'N',10,'N',TO_TIMESTAMP('2009-04-13 19:17:37','YYYY-MM-DD HH24:MI:SS'),'Y','N',301,100,'N','N')
-- ;

-- 13/04/2009 19h17min39s BRT
-- Default comment for updating dictionary
-- INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1100018 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
-- ;

-- 13/04/2009 19h17min42s BRT
-- Default comment for updating dictionary
-- ALTER TABLE AD_OrgInfo ADD COLUMN Fax VARCHAR(22)
-- ;

-- 13/04/2009 19h18min9s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (IsEncrypted,UpdatedBy,AD_Org_ID,Description,IsActive,Created,AD_Client_ID,DisplayLength,Name,IsDisplayed,IsSameLine,IsHeading,AD_Column_ID,IsFieldOnly,IsCentrallyMaintained,AD_Tab_ID,AD_Field_ID,CreatedBy,Updated,IsReadOnly,EntityType) VALUES ('N',100,0,'Business Partner Contact Name','Y',TO_TIMESTAMP('2009-04-13 19:18:08','YYYY-MM-DD HH24:MI:SS'),0,60,'Contact Name','Y','N','N',1100016,'N','Y',170,1100000,100,TO_TIMESTAMP('2009-04-13 19:18:08','YYYY-MM-DD HH24:MI:SS'),'N','LBRA')
;

-- 13/04/2009 19h18min9s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Name,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Name,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1100000 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 13/04/2009 19h18min10s BRT
-- Default comment for updating dictionary
-- INSERT INTO AD_Field (IsEncrypted,UpdatedBy,AD_Org_ID,Description,IsActive,Created,AD_Client_ID,DisplayLength,Name,IsDisplayed,IsSameLine,IsHeading,AD_Column_ID,IsFieldOnly,IsCentrallyMaintained,AD_Tab_ID,AD_Field_ID,CreatedBy,Updated,IsReadOnly,Help,EntityType) VALUES ('N',100,0,'Facsimile number','Y',TO_TIMESTAMP('2009-04-13 19:18:09','YYYY-MM-DD HH24:MI:SS'),0,22,'Fax','Y','N','N',1100018,'N','Y',170,1100001,100,TO_TIMESTAMP('2009-04-13 19:18:09','YYYY-MM-DD HH24:MI:SS'),'N','The Fax identifies a facsimile number for this Business Partner or  Location','U')
-- ;

-- 13/04/2009 19h18min10s BRT
-- Default comment for updating dictionary
-- INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Name,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Name,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1100001 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
-- ;

-- 13/04/2009 19h18min10s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (IsEncrypted,UpdatedBy,AD_Org_ID,IsActive,Created,AD_Client_ID,DisplayLength,Name,IsDisplayed,IsSameLine,IsHeading,AD_Column_ID,IsFieldOnly,IsCentrallyMaintained,AD_Tab_ID,AD_Field_ID,CreatedBy,Updated,IsReadOnly,EntityType) VALUES ('N',100,0,'Y',TO_TIMESTAMP('2009-04-13 19:18:10','YYYY-MM-DD HH24:MI:SS'),0,60,'Legal Entity','Y','N','N',1100015,'N','Y',170,1100002,100,TO_TIMESTAMP('2009-04-13 19:18:10','YYYY-MM-DD HH24:MI:SS'),'N','LBRA')
;

-- 13/04/2009 19h18min10s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Name,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Name,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1100002 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
;

-- 13/04/2009 19h18min10s BRT
-- Default comment for updating dictionary
-- INSERT INTO AD_Field (IsEncrypted,UpdatedBy,AD_Org_ID,Description,IsActive,Created,AD_Client_ID,DisplayLength,Name,IsDisplayed,IsSameLine,IsHeading,AD_Column_ID,IsFieldOnly,IsCentrallyMaintained,AD_Tab_ID,AD_Field_ID,CreatedBy,Updated,IsReadOnly,Help,EntityType) VALUES ('N',100,0,'Identifies a telephone number','Y',TO_TIMESTAMP('2009-04-13 19:18:10','YYYY-MM-DD HH24:MI:SS'),0,22,'Phone','Y','N','N',1100017,'N','Y',170,1100003,100,TO_TIMESTAMP('2009-04-13 19:18:10','YYYY-MM-DD HH24:MI:SS'),'N','The Phone field identifies a telephone number','LBRA')
-- ;

-- 13/04/2009 19h18min10s BRT
-- Default comment for updating dictionary
-- INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Name,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Name,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1100003 AND EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Field_ID!=t.AD_Field_ID)
-- ;

-- 13/04/2009 19h21min3s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET DisplayLength=22, SeqNo=180, AD_FieldGroup_ID=1000000, DisplayLogic='@AD_Language@=''pt_BR''',Updated=TO_TIMESTAMP('2009-04-13 19:21:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1100000
;

-- 13/04/2009 19h21min29s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET DisplayLength=22, SeqNo=175, AD_FieldGroup_ID=1000000, DisplayLogic='@AD_Language@=''pt_BR''',Updated=TO_TIMESTAMP('2009-04-13 19:21:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1100002
;

-- 13/04/2009 19h21min35s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2009-04-13 19:21:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1100000
;

-- 13/04/2009 19h21min51s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=190, AD_FieldGroup_ID=1000000, DisplayLogic='@AD_Language@=''pt_BR''',Updated=TO_TIMESTAMP('2009-04-13 19:21:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1100003
;

-- 13/04/2009 19h22min3s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET IsSameLine='Y', SeqNo=200, AD_FieldGroup_ID=1000000, DisplayLogic='@AD_Language@=''pt_BR''',Updated=TO_TIMESTAMP('2009-04-13 19:22:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1100001
;

-- 13/04/2009 19h45min41s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column (AD_Column_ID,AD_Table_ID,EntityType,Version,IsMandatory,IsTranslated,IsIdentifier,SeqNo,CreatedBy,Updated,ColumnName,Help,IsParent,AD_Client_ID,AD_Org_ID,Description,Name,IsActive,FieldLength,IsSelectionColumn,AD_Reference_ID,IsSyncDatabase,Created,IsUpdateable,IsKey,AD_Element_ID,UpdatedBy,IsEncrypted,IsAlwaysUpdateable) VALUES (1100019,1000027,'LBRA',0,'N','N','N',0,100,TO_TIMESTAMP('2009-04-13 19:45:40','YYYY-MM-DD HH24:MI:SS'),'lbr_IsOwnDocument','Identifies this is an own document','N',0,0,'Identifies this is an own document','Is Own Document','Y',1,'N',20,'N',TO_TIMESTAMP('2009-04-13 19:45:40','YYYY-MM-DD HH24:MI:SS'),'Y','N',1000256,100,'N','N')
;

-- 13/04/2009 19h45min41s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1100019 AND EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Column_ID!=t.AD_Column_ID)
;

-- 13/04/2009 19h46min1s BRT
-- Default comment for updating dictionary
ALTER TABLE LBR_NotaFiscal ADD COLUMN lbr_IsOwnDocument CHAR(1) CHECK (lbr_IsOwnDocument IN ('Y','N'))
;

-- 13/04/2009 19h46min8s BRT
-- Default comment for updating dictionary
UPDATE AD_Column SET DefaultValue='N', IsMandatory='Y',Updated=TO_TIMESTAMP('2009-04-13 19:46:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1100019
;

-- 13/04/2009 19h46min9s BRT
-- Default comment for updating dictionary
insert into t_alter_column values('lbr_notafiscal','lbr_IsOwnDocument','CHAR(1)',null,'N')
;

-- 13/04/2009 19h46min12s BRT
-- Default comment for updating dictionary
UPDATE LBR_NotaFiscal SET lbr_IsOwnDocument='N' WHERE lbr_IsOwnDocument IS NULL
;

-- 13/04/2009 19h46min12s BRT
-- Default comment for updating dictionary
insert into t_alter_column values('lbr_notafiscal','lbr_IsOwnDocument',null,'NOT NULL',null)
;

--  Altera??o para deixar compativel com o passado
UPDATE LBR_NotaFiscal SET lbr_IsOwnDocument = COALESCE((SELECT dt.lbr_IsOwnDocument FROM C_DocType dt, C_Invoice i WHERE i.C_Invoice_ID=LBR_NotaFiscal.C_Invoice_ID AND i.C_DocTypeTarget_ID=dt.C_DocType_ID), (CASE WHEN IsSOTrx='Y' THEN 'Y' ELSE 'N' END))
;
UPDATE LBR_NotaFiscal SET lbr_IsOwnDocument = 'Y' WHERE IsSOTrx='Y'
;

-- Mar 28, 2009 2:29:01 PM BRT
-- Default comment for updating dictionary
UPDATE AD_SysConfig SET Value='100-branches/028-SINTEGRA.sql',Updated=TO_TIMESTAMP('2009-05-07 14:29:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_SysConfig_ID=1100006
;

