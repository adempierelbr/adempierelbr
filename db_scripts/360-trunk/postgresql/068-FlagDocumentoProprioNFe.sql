/******************************************************************************
 * Copyright (C) 2013 Kenos Assessoria e Consultoria de Sistemas Ltda         *
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
-- 03/01/2013 16h38min26s BRST
-- Default comment for updating dictionary
UPDATE AD_Field SET DisplayLogic='@lbr_HasFiscalDocument@=''Y'' & @DocBaseType@=''API'' | @DocBaseType@=''ARC'' | @DocBaseType@=''NFB''',Updated=TO_TIMESTAMP('2013-01-03 16:38:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000460
;
--	Atualiza o ultimo script
UPDATE AD_SysConfig SET Value='360-trunk/068-FlagDocumentoProprioNFe.sql' WHERE AD_SysConfig_ID=1100006
;
-- 17/01/2013 15h38min50s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Val_Rule (AD_Client_ID,AD_Org_ID,AD_Val_Rule_ID,Code,Created,CreatedBy,EntityType,IsActive,Name,Type,Updated,UpdatedBy) 
VALUES (0,0,1120092,'C_DocType.DocBaseType=''NFB'' and C_DocType.IsSoTrx=(CASE WHEN ''@DocBaseType@''=''API'' OR ''@DocBaseType@''=''ARC'' THEN ''N'' ELSE ''Y'' END)',TO_TIMESTAMP('2013-01-17 15:38:49','YYYY-MM-DD HH24:MI:SS'),100,'U','Y','C_DocType NF','S',TO_TIMESTAMP('2013-01-17 15:38:49','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 17/01/2013 15h39min10s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET AD_Val_Rule_ID=1120092,Updated=TO_TIMESTAMP('2013-01-17 15:39:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1100022
;
-- 17/01/2013 15h57min37s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET DisplayLogic='@lbr_HasFiscalDocument@=''Y'' & @DocBaseType@=''API'' | @DocBaseType@=''ARC'' | @DocBaseType@=''ARI'' | @DocBaseType@=''APC''',Updated=TO_TIMESTAMP('2013-01-17 15:57:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1100004
;

