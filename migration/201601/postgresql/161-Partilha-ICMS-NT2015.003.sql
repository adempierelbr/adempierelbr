-- 11/12/2015 17h34min59s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,1122211,0,'LBR_ICMSInterPartRate',TO_TIMESTAMP('2015-12-11 17:34:57','YYYY-MM-DD HH24:MI:SS'),100,'Percentual provisório de partilha do ICMS Interestadual','LBRA','Percentual de ICMS Interestadual para a UF de destino: - 40% em 2016;
- 60% em 2017;
- 80% em 2018;
- 100% a partir de 2019. [NA11]','Y','Partilha (%)','Partilha (%)',TO_TIMESTAMP('2015-12-11 17:34:57','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/12/2015 17h34min59s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1122211 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 11/12/2015 19h12min29s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,1122212,0,'LBR_ICMSDestAmt',TO_TIMESTAMP('2015-12-11 19:12:27','YYYY-MM-DD HH24:MI:SS'),100,'Valor do ICMS Interestadual partilhado para a UF de destino','LBRA','Valor do ICMS Interestadual partilhado para a UF de destino, já considerando o valor do ICMS relativo ao Fundo de Combate à Pobreza naquela UF.','Y','ICMS Part. Dest.','ICMS Part. Dest.',TO_TIMESTAMP('2015-12-11 19:12:27','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/12/2015 19h12min29s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1122212 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 11/12/2015 19h13min18s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,1122213,0,'LBR_ICMSIssuerAmt',TO_TIMESTAMP('2015-12-11 19:13:17','YYYY-MM-DD HH24:MI:SS'),100,'Valor do ICMS Interestadual partilhado para a UF de destino','LBRA','Valor do ICMS Interestadual partilhado para a UF remetente. Nota: A partir de 2019, este valor será zero.','Y','ICMS Part. Rem.','ICMS Part. Rem.',TO_TIMESTAMP('2015-12-11 19:13:17','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/12/2015 19h13min18s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1122213 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 11/12/2015 19h15min21s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,ValueMax,ValueMin,Version) VALUES (0,1128610,1122211,0,12,1000028,'LBR_ICMSInterPartRate',TO_TIMESTAMP('2015-12-11 19:15:20','YYYY-MM-DD HH24:MI:SS'),100,'0','Percentual provisório de partilha do ICMS Interestadual','LBRA',10,'Percentual de ICMS Interestadual para a UF de destino: - 40% em 2016;
- 60% em 2017;
- 80% em 2018;
- 100% a partir de 2019. [NA11]','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Partilha (%)',0,TO_TIMESTAMP('2015-12-11 19:15:20','YYYY-MM-DD HH24:MI:SS'),100,'100','0',0)
;

-- 11/12/2015 19h15min21s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1128610 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 11/12/2015 19h15min22s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
ALTER TABLE LBR_NotaFiscalLine ADD COLUMN LBR_ICMSInterPartRate NUMERIC DEFAULT '0' 
;

-- 11/12/2015 19h15min59s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,ValueMax,ValueMin,Version) VALUES (0,1128611,1122212,0,12,1000028,'LBR_ICMSDestAmt',TO_TIMESTAMP('2015-12-11 19:15:58','YYYY-MM-DD HH24:MI:SS'),100,'0','Valor do ICMS Interestadual partilhado para a UF de destino','LBRA',10,'Valor do ICMS Interestadual partilhado para a UF de destino, já considerando o valor do ICMS relativo ao Fundo de Combate à Pobreza naquela UF.','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','ICMS Part. Dest.',0,TO_TIMESTAMP('2015-12-11 19:15:58','YYYY-MM-DD HH24:MI:SS'),100,NULL,NULL,0)
;

-- 11/12/2015 19h15min59s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1128611 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 11/12/2015 19h16min0s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
ALTER TABLE LBR_NotaFiscalLine ADD COLUMN LBR_ICMSDestAmt NUMERIC DEFAULT '0' 
;

-- 11/12/2015 19h16min18s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1128612,1122213,0,12,1000028,'LBR_ICMSIssuerAmt',TO_TIMESTAMP('2015-12-11 19:16:17','YYYY-MM-DD HH24:MI:SS'),100,'0','Valor do ICMS Interestadual partilhado para a UF de destino','LBRA',10,'Valor do ICMS Interestadual partilhado para a UF remetente. Nota: A partir de 2019, este valor será zero.','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','ICMS Part. Rem.',0,TO_TIMESTAMP('2015-12-11 19:16:17','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 11/12/2015 19h16min18s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1128612 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 11/12/2015 19h16min19s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
ALTER TABLE LBR_NotaFiscalLine ADD COLUMN LBR_ICMSIssuerAmt NUMERIC DEFAULT '0' 
;

-- 11/12/2015 19h18min31s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_FieldGroup (AD_Client_ID,AD_FieldGroup_ID,AD_Org_ID,Created,CreatedBy,EntityType,FieldGroupType,IsActive,IsCollapsedByDefault,Name,Updated,UpdatedBy) VALUES (0,1120057,0,TO_TIMESTAMP('2015-12-11 19:18:29','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','C','Y','N','Taxes',TO_TIMESTAMP('2015-12-11 19:18:29','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/12/2015 19h18min31s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_FieldGroup_Trl (AD_Language,AD_FieldGroup_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_FieldGroup_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_FieldGroup t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_FieldGroup_ID=1120057 AND NOT EXISTS (SELECT * FROM AD_FieldGroup_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_FieldGroup_ID=t.AD_FieldGroup_ID)
;

-- 11/12/2015 19h18min36s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_FieldGroup_Trl SET IsTranslated='Y',Name='Impostos',Updated=TO_TIMESTAMP('2015-12-11 19:18:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_FieldGroup_ID=1120057 AND AD_Language='pt_BR'
;

-- 11/12/2015 19h18min50s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_FieldGroup_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,SortNo,Updated,UpdatedBy) VALUES (0,1128610,1120057,1125610,0,1000021,TO_TIMESTAMP('2015-12-11 19:18:49','YYYY-MM-DD HH24:MI:SS'),100,'Percentual provisório de partilha do ICMS Interestadual',22,'LBRA','Percentual de ICMS Interestadual para a UF de destino: - 40% em 2016;
- 60% em 2017;
- 80% em 2018;
- 100% a partir de 2019. [NA11]','Y','Y','Y','N','N','N','N','N','Partilha (%)',320,0,TO_TIMESTAMP('2015-12-11 19:18:49','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/12/2015 19h18min50s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1125610 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 11/12/2015 19h19min27s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_FieldGroup_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,SortNo,Updated,UpdatedBy) VALUES (0,1128612,1120057,1125611,0,1000021,TO_TIMESTAMP('2015-12-11 19:19:26','YYYY-MM-DD HH24:MI:SS'),100,'Valor do ICMS Interestadual partilhado para a UF de destino',22,'LBRA','Valor do ICMS Interestadual partilhado para a UF remetente. Nota: A partir de 2019, este valor será zero.','Y','Y','Y','N','N','N','N','N','ICMS Part. Rem.',330,0,TO_TIMESTAMP('2015-12-11 19:19:26','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/12/2015 19h19min27s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1125611 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 11/12/2015 19h19min43s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_FieldGroup_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,SortNo,Updated,UpdatedBy) VALUES (0,1128611,1120057,1125612,0,1000021,TO_TIMESTAMP('2015-12-11 19:19:41','YYYY-MM-DD HH24:MI:SS'),100,'Valor do ICMS Interestadual partilhado para a UF de destino',22,'LBRA','Valor do ICMS Interestadual partilhado para a UF de destino, já considerando o valor do ICMS relativo ao Fundo de Combate à Pobreza naquela UF.','Y','Y','Y','N','N','N','N','Y','ICMS Part. Dest.',340,0,TO_TIMESTAMP('2015-12-11 19:19:41','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/12/2015 19h19min43s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1125612 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 18/12/2015 13h43min30s BRST
SELECT Register_Migration_Script ('161-Partilha-ICMS-NT2015.003.sql') FROM DUAL
;
