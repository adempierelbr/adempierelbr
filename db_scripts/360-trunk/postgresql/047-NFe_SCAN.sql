-- 12/08/2011 14h35min50s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Element (Name,CreatedBy,UpdatedBy,AD_Element_ID,ColumnName,Updated,PrintName,Created,AD_Client_ID,AD_Org_ID,IsActive,EntityType) VALUES ('Tipo de Emissão NFe',100,100,1120102,'lbr_NFeTpEmi',TO_TIMESTAMP('2011-08-12 14:35:49','YYYY-MM-DD HH24:MI:SS'),'Tipo de Emissão NFe',TO_TIMESTAMP('2011-08-12 14:35:49','YYYY-MM-DD HH24:MI:SS'),0,0,'Y','LBRA')
;

-- 12/08/2011 14h35min50s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Name,Description,PrintName,Help,PO_PrintName,PO_Help,PO_Name,PO_Description, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Name,t.Description,t.PrintName,t.Help,t.PO_PrintName,t.PO_Help,t.PO_Name,t.PO_Description, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1120102 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

INSERT INTO AD_REFERENCE (AD_REFERENCE_ID,AD_CLIENT_ID,AD_ORG_ID,ISACTIVE,CREATED,CREATEDBY,UPDATED,UPDATEDBY,NAME,DESCRIPTION,HELP,VALIDATIONTYPE,VFORMAT,ENTITYTYPE,ISORDERBYVALUE) VALUES (1120035,0,0,'Y',TO_TIMESTAMP('2011-08-12 14:36:49','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2011-08-12 14:36:49','YYYY-MM-DD HH24:MI:SS'),100,'lbr_NFeTpEmi',null,null,'L',null,'LBRA','N');
INSERT INTO AD_REF_LIST (AD_REF_LIST_ID,AD_CLIENT_ID,AD_ORG_ID,ISACTIVE,CREATED,CREATEDBY,UPDATED,UPDATEDBY,VALUE,NAME,DESCRIPTION,AD_REFERENCE_ID,VALIDFROM,VALIDTO,ENTITYTYPE) VALUES (1120408,0,0,'Y',TO_TIMESTAMP('2011-08-12 14:36:49','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2011-08-12 14:36:49','YYYY-MM-DD HH24:MI:SS'),100,'1','Normal',null,1120035,null,null,'LBRA');
INSERT INTO AD_REF_LIST (AD_REF_LIST_ID,AD_CLIENT_ID,AD_ORG_ID,ISACTIVE,CREATED,CREATEDBY,UPDATED,UPDATEDBY,VALUE,NAME,DESCRIPTION,AD_REFERENCE_ID,VALIDFROM,VALIDTO,ENTITYTYPE) VALUES (1120409,0,0,'Y',TO_TIMESTAMP('2011-08-12 14:36:49','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2011-08-12 14:36:49','YYYY-MM-DD HH24:MI:SS'),100,'2','Contingência FS',null,1120035,null,null,'LBRA');
INSERT INTO AD_REF_LIST (AD_REF_LIST_ID,AD_CLIENT_ID,AD_ORG_ID,ISACTIVE,CREATED,CREATEDBY,UPDATED,UPDATEDBY,VALUE,NAME,DESCRIPTION,AD_REFERENCE_ID,VALIDFROM,VALIDTO,ENTITYTYPE) VALUES (1120410,0,0,'Y',TO_TIMESTAMP('2011-08-12 14:36:49','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2011-08-12 14:36:49','YYYY-MM-DD HH24:MI:SS'),100,'3','Contingência SCAN',null,1120035,null,null,'LBRA');
INSERT INTO AD_REF_LIST (AD_REF_LIST_ID,AD_CLIENT_ID,AD_ORG_ID,ISACTIVE,CREATED,CREATEDBY,UPDATED,UPDATEDBY,VALUE,NAME,DESCRIPTION,AD_REFERENCE_ID,VALIDFROM,VALIDTO,ENTITYTYPE) VALUES (1120411,0,0,'Y',TO_TIMESTAMP('2011-08-12 14:36:49','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2011-08-12 14:36:49','YYYY-MM-DD HH24:MI:SS'),100,'4','Contingência DPEC',null,1120035,null,null,'LBRA');
INSERT INTO AD_REF_LIST (AD_REF_LIST_ID,AD_CLIENT_ID,AD_ORG_ID,ISACTIVE,CREATED,CREATEDBY,UPDATED,UPDATEDBY,VALUE,NAME,DESCRIPTION,AD_REFERENCE_ID,VALIDFROM,VALIDTO,ENTITYTYPE) VALUES (1120412,0,0,'Y',TO_TIMESTAMP('2011-08-12 14:36:49','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2011-08-12 14:36:49','YYYY-MM-DD HH24:MI:SS'),100,'5','Contingência FSDA',null,1120035,null,null,'LBRA');

INSERT INTO AD_Column (AD_COLUMN_ID,AD_CLIENT_ID,AD_ORG_ID,ISACTIVE,CREATED,UPDATED,CREATEDBY,UPDATEDBY,NAME,DESCRIPTION,HELP,VERSION,ENTITYTYPE,COLUMNNAME,AD_TABLE_ID,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,FIELDLENGTH,DEFAULTVALUE,ISKEY,ISPARENT,ISMANDATORY,ISUPDATEABLE,READONLYLOGIC,ISIDENTIFIER,SEQNO,ISTRANSLATED,ISENCRYPTED,CALLOUT,VFORMAT,VALUEMIN,VALUEMAX,ISSELECTIONCOLUMN,AD_ELEMENT_ID,AD_PROCESS_ID,ISSYNCDATABASE,ISALWAYSUPDATEABLE,COLUMNSQL,MANDATORYLOGIC,INFOFACTORYCLASS,ISAUTOCOMPLETE,ISALLOWLOGGING,FORMATPATTERN) VALUES (1120453,0,0,'Y',TO_TIMESTAMP('2011-08-12 14:36:49','YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2011-08-12 14:36:49','YYYY-MM-DD HH24:MI:SS'),100,100,'Tipo de Emissão NFe',null,null,0,'LBRA','lbr_NFeTpEmi',217,17,1120035,null,1,'1','N','N','Y','Y',null,'N',0,'N','N',null,null,null,null,'N',1120102,null,'N','N',null,null,null,'N','Y',null);

-- 15/09/2011 14h55min41s BRT
-- BF # 3410066
ALTER TABLE C_DocType ADD COLUMN lbr_NFeTpEmi VARCHAR(1) DEFAULT NULL 
;

-- 12/08/2011 14h36min39s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1120453 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 12/08/2011 14h54min50s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Element (Name,CreatedBy,UpdatedBy,AD_Element_ID,ColumnName,Updated,PrintName,Created,AD_Client_ID,AD_Org_ID,IsActive,EntityType) VALUES ('Motivo contingência',100,100,1120103,'lbr_MotivoScan',TO_TIMESTAMP('2011-08-12 14:54:49','YYYY-MM-DD HH24:MI:SS'),'Justificativa da entrada em contingência',TO_TIMESTAMP('2011-08-12 14:54:49','YYYY-MM-DD HH24:MI:SS'),0,0,'Y','LBRA')
;

-- 12/08/2011 14h54min50s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Name,Description,PrintName,Help,PO_PrintName,PO_Help,PO_Name,PO_Description, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Name,t.Description,t.PrintName,t.Help,t.PO_PrintName,t.PO_Help,t.PO_Name,t.PO_Description, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1120103 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 12/08/2011 14h55min18s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Element (Name,CreatedBy,UpdatedBy,AD_Element_ID,ColumnName,Updated,PrintName,Created,AD_Client_ID,AD_Org_ID,IsActive,EntityType) VALUES ('Data contingência',100,100,1120104,'lbr_DateScan',TO_TIMESTAMP('2011-08-12 14:55:18','YYYY-MM-DD HH24:MI:SS'),'Data e Hora da entrada em contingência',TO_TIMESTAMP('2011-08-12 14:55:18','YYYY-MM-DD HH24:MI:SS'),0,0,'Y','LBRA')
;

-- 12/08/2011 14h55min18s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Name,Description,PrintName,Help,PO_PrintName,PO_Help,PO_Name,PO_Description, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Name,t.Description,t.PrintName,t.Help,t.PO_PrintName,t.PO_Help,t.PO_Name,t.PO_Description, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1120104 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 12/08/2011 14h55min39s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (SeqNo,AD_Column_ID,IsTranslated,Name,ColumnName,AD_Client_ID,AD_Org_ID,IsActive,EntityType,IsIdentifier,IsMandatory,AD_Table_ID,Version,AD_Element_ID,AD_Reference_ID,IsSyncDatabase,FieldLength,Created,CreatedBy,Updated,IsParent,IsUpdateable,IsKey,IsSelectionColumn,UpdatedBy,IsAlwaysUpdateable,IsEncrypted,IsAutocomplete,IsAllowLogging) VALUES (0,1120454,'N','Motivo contingência','lbr_MotivoScan',0,0,'Y','LBRA','N','N',1000027,0,1120103,10,'N',256,TO_TIMESTAMP('2011-08-12 14:55:38','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2011-08-12 14:55:38','YYYY-MM-DD HH24:MI:SS'),'N','Y','N','N',100,'N','N','N','Y')
;

-- 12/08/2011 14h55min39s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1120454 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 12/08/2011 14h55min41s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
ALTER TABLE LBR_NotaFiscal ADD COLUMN lbr_MotivoScan VARCHAR(256) DEFAULT NULL 
;

-- 12/08/2011 14h56min7s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (SeqNo,AD_Column_ID,IsTranslated,Name,ColumnName,AD_Client_ID,AD_Org_ID,IsActive,EntityType,IsIdentifier,IsMandatory,AD_Table_ID,Version,AD_Element_ID,AD_Reference_ID,IsSyncDatabase,FieldLength,Created,CreatedBy,Updated,IsParent,IsUpdateable,IsKey,IsSelectionColumn,UpdatedBy,IsAlwaysUpdateable,IsEncrypted,IsAutocomplete,IsAllowLogging) VALUES (0,1120455,'N','Data contingência','lbr_DateScan',0,0,'Y','LBRA','N','N',1000027,0,1120104,16,'N',7,TO_TIMESTAMP('2011-08-12 14:56:06','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2011-08-12 14:56:06','YYYY-MM-DD HH24:MI:SS'),'N','Y','N','N',100,'N','N','N','Y')
;

-- 12/08/2011 14h56min7s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1120455 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 12/08/2011 14h56min8s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
ALTER TABLE LBR_NotaFiscal ADD COLUMN lbr_DateScan TIMESTAMP DEFAULT NULL 
;

-- 12/08/2011 14h56min34s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (AD_Field_ID,DisplayLength,IsEncrypted,AD_Org_ID,IsActive,AD_Column_ID,Updated,Name,AD_Client_ID,IsDisplayed,Created,UpdatedBy,EntityType,IsReadOnly,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,CreatedBy,IsSameLine,IsHeading) VALUES (1120313,7,'N',0,'Y',1120455,TO_TIMESTAMP('2011-08-12 14:56:33','YYYY-MM-DD HH24:MI:SS'),'Data contingência',0,'Y',TO_TIMESTAMP('2011-08-12 14:56:33','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','N',1000020,'N','Y',100,'N','N')
;

-- 12/08/2011 14h56min34s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1120313 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 12/08/2011 14h56min34s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (AD_Field_ID,DisplayLength,IsEncrypted,AD_Org_ID,IsActive,AD_Column_ID,Updated,Name,AD_Client_ID,IsDisplayed,Created,UpdatedBy,EntityType,IsReadOnly,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,CreatedBy,IsSameLine,IsHeading) VALUES (1120314,256,'N',0,'Y',1120454,TO_TIMESTAMP('2011-08-12 14:56:34','YYYY-MM-DD HH24:MI:SS'),'Motivo contingência',0,'Y',TO_TIMESTAMP('2011-08-12 14:56:34','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','N',1000020,'N','Y',100,'N','N')
;

-- 12/08/2011 14h56min34s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1120314 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 12/08/2011 14h56min57s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET DisplayLength=22, SeqNo=141,Updated=TO_TIMESTAMP('2011-08-12 14:56:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1120314
;

-- 12/08/2011 14h57min1s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=142,Updated=TO_TIMESTAMP('2011-08-12 14:57:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1120313
;

-- 12/08/2011 14h57min15s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2011-08-12 14:57:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1120313
;

-- 12/08/2011 14h57min41s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET AD_FieldGroup_ID=1100002,Updated=TO_TIMESTAMP('2011-08-12 14:57:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1120314
;

-- 12/08/2011 14h58min4s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET AD_FieldGroup_ID=1100002,Updated=TO_TIMESTAMP('2011-08-12 14:58:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1120313
;

-- 16/08/2011 9h41min49s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET IsMandatory='N',Updated=TO_TIMESTAMP('2011-08-16 09:41:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1120010
;

-- 16/08/2011 9h41min50s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO t_alter_column values('lbr_nfewebservice','C_Region_ID','NUMERIC(10)',null,'NULL')
;

-- 16/08/2011 9h41min50s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO t_alter_column values('lbr_nfewebservice','C_Region_ID',null,'NULL',null)
;

-- 16/08/2011 9h43min41s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Element (Name,CreatedBy,UpdatedBy,AD_Element_ID,ColumnName,Updated,PrintName,Created,AD_Client_ID,AD_Org_ID,IsActive,EntityType) VALUES ('Enable Scan',100,100,1120105,'lbr_IsScan',TO_TIMESTAMP('2011-08-16 09:43:40','YYYY-MM-DD HH24:MI:SS'),'Enable Scan',TO_TIMESTAMP('2011-08-16 09:43:40','YYYY-MM-DD HH24:MI:SS'),0,0,'Y','LBRA')
;

-- 16/08/2011 9h43min41s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Name,Description,PrintName,Help,PO_PrintName,PO_Help,PO_Name,PO_Description, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Name,t.Description,t.PrintName,t.Help,t.PO_PrintName,t.PO_Help,t.PO_Name,t.PO_Description, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1120105 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 16/08/2011 9h43min55s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Element_Trl SET IsTranslated='Y',Name='Habilitar Scan',PrintName='Habilitar Scan',Updated=TO_TIMESTAMP('2011-08-16 09:43:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1120105 AND AD_Language='pt_BR'
;

-- 16/08/2011 9h44min13s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (SeqNo,AD_Column_ID,IsTranslated,Name,ColumnName,AD_Client_ID,AD_Org_ID,IsActive,EntityType,IsIdentifier,DefaultValue,IsMandatory,AD_Table_ID,Version,AD_Element_ID,AD_Reference_ID,IsSyncDatabase,FieldLength,Created,CreatedBy,Updated,IsParent,IsUpdateable,IsKey,IsSelectionColumn,UpdatedBy,IsAlwaysUpdateable,IsEncrypted,IsAutocomplete,IsAllowLogging) VALUES (0,1120464,'N','Enable Scan','lbr_IsScan',0,0,'Y','LBRA','N','N','Y',228,0,1120105,20,'N',1,TO_TIMESTAMP('2011-08-16 09:44:12','YYYY-MM-DD HH24:MI:SS'),100,TO_TIMESTAMP('2011-08-16 09:44:12','YYYY-MM-DD HH24:MI:SS'),'N','Y','N','N',100,'N','N','N','Y')
;

-- 16/08/2011 9h44min13s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1120464 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 16/08/2011 9h44min15s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
ALTER TABLE AD_OrgInfo ADD COLUMN lbr_IsScan CHAR(1) DEFAULT 'N' CHECK (lbr_IsScan IN ('Y','N')) NOT NULL
;

-- 16/08/2011 9h54min35s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (AD_Field_ID,DisplayLength,IsEncrypted,AD_Org_ID,IsActive,AD_Column_ID,Updated,Name,AD_Client_ID,IsDisplayed,Created,UpdatedBy,EntityType,IsReadOnly,AD_Tab_ID,IsFieldOnly,IsCentrallyMaintained,CreatedBy,IsSameLine,IsHeading) VALUES (1120323,1,'N',0,'Y',1120464,TO_TIMESTAMP('2011-08-16 09:54:34','YYYY-MM-DD HH24:MI:SS'),'Enable Scan',0,'Y',TO_TIMESTAMP('2011-08-16 09:54:34','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','N',170,'N','Y',100,'N','N')
;

-- 16/08/2011 9h54min35s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Name,Description,Help, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Name,t.Description,t.Help, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1120323 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 16/08/2011 10h22min30s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET DefaultValue='1', IsMandatory='Y',Updated=TO_TIMESTAMP('2011-08-16 10:22:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1120453
;

-- 16/08/2011 10h22min31s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO t_alter_column values('c_doctype','lbr_NFeTpEmi','CHAR(1)',null,'1')
;

-- 16/08/2011 10h22min31s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE C_DocType SET lbr_NFeTpEmi='1' WHERE lbr_NFeTpEmi IS NULL
;

-- 16/08/2011 10h22min32s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO t_alter_column values('c_doctype','lbr_NFeTpEmi',null,'NOT NULL',null)
;

INSERT INTO LBR_NFeWebService (LBR_NFEWEBSERVICE_ID,AD_CLIENT_ID,AD_ORG_ID,ISACTIVE,CREATED,CREATEDBY,UPDATED,UPDATEDBY,NAME,C_REGION_ID,LBR_NFEENV,VERSIONNO,URL) VALUES (1000181,0,0,'Y',now(),100,now(),100,'NfeRecepcao',null,'1','2.00','https://www.scan.fazenda.gov.br/NfeRecepcao2/NfeRecepcao2.asmx');
INSERT INTO LBR_NFeWebService (LBR_NFEWEBSERVICE_ID,AD_CLIENT_ID,AD_ORG_ID,ISACTIVE,CREATED,CREATEDBY,UPDATED,UPDATEDBY,NAME,C_REGION_ID,LBR_NFEENV,VERSIONNO,URL) VALUES (1000183,0,0,'Y',now(),100,now(),100,'NfeCancelamento',null,'1','2.00','https://www.scan.fazenda.gov.br/NfeCancelamento2/NfeCancelamento2.asmx');
INSERT INTO LBR_NFeWebService (LBR_NFEWEBSERVICE_ID,AD_CLIENT_ID,AD_ORG_ID,ISACTIVE,CREATED,CREATEDBY,UPDATED,UPDATEDBY,NAME,C_REGION_ID,LBR_NFEENV,VERSIONNO,URL) VALUES (1000185,0,0,'Y',now(),100,now(),100,'NfeConsultaProtocolo',null,'1','2.00','https://www.scan.fazenda.gov.br/NfeConsulta2/NfeConsulta2.asmx');
INSERT INTO LBR_NFeWebService (LBR_NFEWEBSERVICE_ID,AD_CLIENT_ID,AD_ORG_ID,ISACTIVE,CREATED,CREATEDBY,UPDATED,UPDATEDBY,NAME,C_REGION_ID,LBR_NFEENV,VERSIONNO,URL) VALUES (1000186,0,0,'Y',now(),100,now(),100,'NfeStatusServico',null,'1','2.00','https://www.scan.fazenda.gov.br/NfeStatusServico2/NfeStatusServico2.asmx');
INSERT INTO LBR_NFeWebService (LBR_NFEWEBSERVICE_ID,AD_CLIENT_ID,AD_ORG_ID,ISACTIVE,CREATED,CREATEDBY,UPDATED,UPDATEDBY,NAME,C_REGION_ID,LBR_NFEENV,VERSIONNO,URL) VALUES (1000182,0,0,'Y',now(),100,now(),100,'NfeRetRecepcao',null,'1','2.00','https://www.scan.fazenda.gov.br/NfeRetRecepcao2/NfeRetRecepcao2.asmx');
INSERT INTO LBR_NFeWebService (LBR_NFEWEBSERVICE_ID,AD_CLIENT_ID,AD_ORG_ID,ISACTIVE,CREATED,CREATEDBY,UPDATED,UPDATEDBY,NAME,C_REGION_ID,LBR_NFEENV,VERSIONNO,URL) VALUES (1000184,0,0,'Y',now(),100,now(),100,'NfeInutilizacao',null,'1','2.00','https://www.scan.fazenda.gov.br/NfeInutilizacao2/NfeInutilizacao2.asmx');

UPDATE AD_SysConfig SET Value='360-trunk/047-NFe_SCAN.sql' WHERE AD_SysConfig_ID=1100006;
