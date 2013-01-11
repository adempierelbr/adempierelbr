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
