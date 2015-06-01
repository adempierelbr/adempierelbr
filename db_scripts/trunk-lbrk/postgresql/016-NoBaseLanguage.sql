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
-- 30/11/2011 12h29min51s BRST
-- Remove Base Language
UPDATE AD_Ref_Table SET WhereClause='(AD_Language.IsSystemLanguage=''Y'')',Updated=TO_TIMESTAMP('2011-11-30 12:29:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Reference_ID=327
;

-- 30/11/2011 12h32min27s BRST
-- Remove Base Language
INSERT INTO AD_Language (AD_Client_ID,AD_Language,AD_Language_ID,AD_Org_ID,CountryCode,Created,CreatedBy,IsActive,IsBaseLanguage,IsDecimalPoint,IsSystemLanguage,LanguageISO,Name,Processing,Updated,UpdatedBy) VALUES (0,'xx_XX',51000,0,'XX',TO_TIMESTAMP('2011-11-30 12:32:27','YYYY-MM-DD HH24:MI:SS'),100,'Y','Y','Y','N','xx','Base Language - ** Do Not Change **','N',TO_TIMESTAMP('2011-11-30 12:32:27','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 30/11/2011 12h36min27s BRST
-- Remove Base Language
UPDATE AD_Language SET IsBaseLanguage='N', IsSystemLanguage='Y' WHERE AD_Language_ID=192
;

-- 30/11/2011 17h19min45s BRST
-- Campo para indicar se a tabela deve ser mantida com o mesmo idioma do Sistema
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1120482,417,0,20,100,'IsSystemLanguage',TO_TIMESTAMP('2011-11-30 17:19:44','YYYY-MM-DD HH24:MI:SS'),100,'N','The screens, etc. are maintained in this Language','LBRA',1,'Select, if you want to have translated screens available in this language.  Please notify your system administrator to run the language maintenance scripts to enable the use of this language.  If the language is not supplied, you can translate the terms yourself.','Y','Y','N','N','N','N','N','Y','N','N','N','N','Y','System Language',0,TO_TIMESTAMP('2011-11-30 17:19:44','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 30/11/2011 17h19min45s BRST
-- Campo para indicar se a tabela deve ser mantida com o mesmo idioma do Sistema
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1120482 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 30/11/2011 17h19min52s BRST
-- Campo para indicar se a tabela deve ser mantida com o mesmo idioma do Sistema
ALTER TABLE AD_Table ADD COLUMN IsSystemLanguage CHAR(1) DEFAULT 'N' CHECK (IsSystemLanguage IN ('Y','N')) NOT NULL
;

-- 30/11/2011 17h20min17s BRST
-- Campo para indicar se a tabela deve ser mantida com o mesmo idioma do Sistema
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1120482,1120338,0,100,TO_TIMESTAMP('2011-11-30 17:20:17','YYYY-MM-DD HH24:MI:SS'),100,'The screens, etc. are maintained in this Language',1,'LBRA','Select, if you want to have translated screens available in this language.  Please notify your system administrator to run the language maintenance scripts to enable the use of this language.  If the language is not supplied, you can translate the terms yourself.','Y','Y','Y','N','N','N','N','N','System Language',TO_TIMESTAMP('2011-11-30 17:20:17','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 30/11/2011 17h20min17s BRST
-- Campo para indicar se a tabela deve ser mantida com o mesmo idioma do Sistema
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1120338 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 30/11/2011 17h45min38s BRST
-- Rule para setar o Idioma
INSERT INTO AD_Rule (AD_Client_ID,AD_Org_ID,AD_Rule_ID,Created,CreatedBy,EntityType,EventType,Help,IsActive,Name,RuleType,Script,Updated,UpdatedBy,Value) VALUES (0,0,1120000,TO_TIMESTAMP('2011-11-30 17:45:37','YYYY-MM-DD HH24:MI:SS'),100,'U','L','Set Base Language after Login','Y','beanshell:SetLanguage','S','org.compiere.util.Language.setLanguageAfterLogin ();

return "";',TO_TIMESTAMP('2011-11-30 17:45:37','YYYY-MM-DD HH24:MI:SS'),100,'beanshell:SetLanguage')
;

