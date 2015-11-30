/******************************************************************************
 * Copyright (C) 2011 Ricardo Santana                                         *
 * Copyright (C) 2011 Kenos Assessoria e Consultoria de Sistemas Ltda         *
 * This program is free software; you can redistribute it and/or modify it    *
 * under the terms version 2 of the GNU General Public License as published   *
 * by the Free Software Foundation. This program is distributed in the hope   *
 * that it will be useful, but WITHOUT ANY WARRANTY; without even the implied *
 * warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.           *
 * See the GNU General Public License for more details.                       *
 * You should have received a copy of the GNU General Public License along    *
 * with this program; if not, write to the Free Software Foundation, Inc.,    *
 * 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA.                     *
 *****************************************************************************/
-- 02/02/2012 15h4min7s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,1106005,0,'lbr_Brand',TO_TIMESTAMP('2012-02-02 15:04:06','YYYY-MM-DD HH24:MI:SS'),100,'Brand Products of the document','U','Brand Proucts of the documento','Y','Brand','Brand',TO_TIMESTAMP('2012-02-02 15:04:06','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 02/02/2012 15h4min7s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1106005 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 02/02/2012 15h4min38s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Element_Trl SET Name='Marca',PrintName='Marca',Description='Marca dos Produtos da Nota Fiscal',Help='Marca dos Produtos da Nota Fiscal',Updated=TO_TIMESTAMP('2012-02-02 15:04:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1106005 AND AD_Language='pt_BR'
;

-- 02/02/2012 15h5min13s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1106073,1106005,0,10,1000027,'lbr_Brand',TO_TIMESTAMP('2012-02-02 15:05:13','YYYY-MM-DD HH24:MI:SS'),100,'Brand Products of the document','U',60,'Brand Proucts of the documento','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Brand',0,TO_TIMESTAMP('2012-02-02 15:05:13','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 02/02/2012 15h5min13s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1106073 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 02/02/2012 15h6min49s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Element SET Description='Brand transport volumes', Help='Brand transport volumes',Updated=TO_TIMESTAMP('2012-02-02 15:06:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1106005
;

-- 02/02/2012 15h6min50s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Element_Trl SET IsTranslated='N' WHERE AD_Element_ID=1106005
;

-- 02/02/2012 15h6min50s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Element_Trl SET Description='Brand transport volumes',Help='Brand transport volumes',Name='Brand',PO_Description=NULL,PO_Help=NULL,PO_Name=NULL,PO_PrintName=NULL,PrintName='Brand',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Element_ID=1106005
;

-- 02/02/2012 15h6min50s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET ColumnName='lbr_Brand', Name='Brand', Description='Brand transport volumes', Help='Brand transport volumes' WHERE AD_Element_ID=1106005
;

-- 02/02/2012 15h6min50s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Process_Para SET ColumnName='lbr_Brand', Name='Brand', Description='Brand transport volumes', Help='Brand transport volumes', AD_Element_ID=1106005 WHERE UPPER(ColumnName)='LBR_BRAND' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 02/02/2012 15h6min50s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Process_Para SET ColumnName='lbr_Brand', Name='Brand', Description='Brand transport volumes', Help='Brand transport volumes' WHERE AD_Element_ID=1106005 AND IsCentrallyMaintained='Y'
;

-- 02/02/2012 15h6min50s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET Name='Brand', Description='Brand transport volumes', Help='Brand transport volumes' WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=1106005) AND IsCentrallyMaintained='Y'
;

-- 02/02/2012 15h7min11s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Element_Trl SET Description='Marca dos Volumes transportados',Help='Marca dos Volumes transportados',Updated=TO_TIMESTAMP('2012-02-02 15:07:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1106005 AND AD_Language='pt_BR'
;

-- 02/02/2012 15h7min45s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
ALTER TABLE LBR_NotaFiscal ADD COLUMN lbr_Brand VARCHAR(60) DEFAULT NULL 
;

