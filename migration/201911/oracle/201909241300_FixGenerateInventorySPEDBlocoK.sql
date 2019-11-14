SET SQLBLANKLINES ON
SET DEFINE OFF

DELETE FROM adempiere.AD_Field_trl WHERE AD_Field_ID = (SELECT AD_Field_ID FROM adempiere.AD_Field WHERE AD_Column_ID = 1131411 AND Name = 'Generate Book Inventory' AND AD_Field_ID = 200001);

UPDATE adempiere.AD_Field SET AD_Field_ID = 1128207 WHERE AD_Column_ID = 1131411 AND Name = 'Generate Book Inventory' AND AD_Field_ID = 200001;

-- 13/02/2019 15h29min51s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1128207 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 25/09/2019 10h20min25s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET IsCentrallyMaintained='N',Updated=TO_DATE('2019-09-25 10:20:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1128207
;

-- 25/09/2019 10h33min16s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field_Trl SET IsTranslated='Y',Name='Gerar Estoque Escriturado',Description='Gerar Estoque Escriturado para o Bloco K',Help='Gerar Estoque Escriturado para o Bloco K',Updated=TO_DATE('2019-09-25 10:33:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1128207 AND AD_Language='pt_BR'
;

SELECT Register_Migration_Script ('201909241300_FixGenerateInventorySPEDBlocoK.sql') FROM DUAL
;
