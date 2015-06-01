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
--	Remove o registro que não é mais necessário
DELETE FROM AD_Rule WHERE AD_Rule_ID=1120000
;

--	Remove o idioma xx_XX que servia como base, não é mais necessário
DELETE FROM AD_Language WHERE AD_Language_ID=51000
;

--	Atualiza as abas de tradução para não aparecer o idioma do sistema
UPDATE AD_Tab SET WhereClause='AD_Language NOT IN (SELECT AD_Language FROM AD_Client WHERE AD_Client_ID=@#AD_Client_ID@)' WHERE IsTranslationTab='Y' AND WhereClause IS NULL
;

--	Atualiza o ultimo script
UPDATE AD_SysConfig SET Value='trunk-lbrk/023-FixNoBaseLanguage.sql' WHERE AD_SysConfig_ID=1100006
;