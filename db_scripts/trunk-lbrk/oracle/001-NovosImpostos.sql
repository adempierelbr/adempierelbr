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
-- 27/07/2011 16h17min20s BRT
-- Novos Impostos - Kenos - www.kenos.com.br
INSERT INTO AD_Element(ad_element_id, ad_client_id, ad_org_id, isactive, created, createdby, updated, updatedby, columnname, entitytype, name, printname, description, help, po_name, po_printname, po_description, po_help)
  VALUES(1120076, 0, 0, 'Y', TO_DATE('2011-04-05 21:12:45','YYYY-MM-DD HH24:MI:SS'), 100, TO_DATE('2011-04-05 21:12:45','YYYY-MM-DD HH24:MI:SS'), 100, 'LBR_Formula_ID', 'LBRA', 'Formula (BR)', 'Formula (BR)', NULL, NULL, NULL, NULL, NULL, NULL)
;

-- 27/07/2011 16h17min20s BRT
-- Novos Impostos - Kenos - www.kenos.com.br
INSERT INTO AD_Element(ad_element_id, ad_client_id, ad_org_id, isactive, created, createdby, updated, updatedby, columnname, entitytype, name, printname, description, help, po_name, po_printname, po_description, po_help)
  VALUES(1120077, 0, 0, 'Y', TO_DATE('2011-04-05 21:40:55','YYYY-MM-DD HH24:MI:SS'), 100, TO_DATE('2011-04-05 21:40:55','YYYY-MM-DD HH24:MI:SS'), 100, 'LBR_FormulaNet_ID', 'U', 'Formula Net (BR)', 'Formula Net (BR)', NULL, NULL, NULL, NULL, NULL, NULL)
;

-- 27/07/2011 16h17min20s BRT
-- Novos Impostos - Kenos - www.kenos.com.br
INSERT INTO AD_Element(ad_element_id, ad_client_id, ad_org_id, isactive, created, createdby, updated, updatedby, columnname, entitytype, name, printname, description, help, po_name, po_printname, po_description, po_help)
  VALUES(1120088, 0, 0, 'Y', TO_DATE('2011-05-17 16:16:55','YYYY-MM-DD HH24:MI:SS'), 100, TO_DATE('2011-05-17 16:16:55','YYYY-MM-DD HH24:MI:SS'), 100, 'LBR_FormulaAdd_ID', 'LBRA', 'Additional Formula', 'Additional Formula', NULL, NULL, NULL, NULL, NULL, NULL)
;

-- 27/07/2011 16h17min20s BRT
-- Novos Impostos - Kenos - www.kenos.com.br
INSERT INTO AD_Element(ad_element_id, ad_client_id, ad_org_id, isactive, created, createdby, updated, updatedby, columnname, entitytype, name, printname, description, help, po_name, po_printname, po_description, po_help)
  VALUES(1120090, 0, 0, 'Y', TO_DATE('2011-05-17 17:11:05','YYYY-MM-DD HH24:MI:SS'), 100, TO_DATE('2011-05-17 17:11:05','YYYY-MM-DD HH24:MI:SS'), 100, 'LBR_FormulaBase_ID', 'LBRA', 'Formula Base', 'Formula Base', NULL, NULL, NULL, NULL, NULL, NULL)
;

-- 27/07/2011 16h17min20s BRT
-- Novos Impostos - Kenos - www.kenos.com.br
INSERT INTO AD_Element(ad_element_id, ad_client_id, ad_org_id, isactive, created, createdby, updated, updatedby, columnname, entitytype, name, printname, description, help, po_name, po_printname, po_description, po_help)
  VALUES(1120091, 0, 0, 'Y', TO_DATE('2011-05-30 10:32:27','YYYY-MM-DD HH24:MI:SS'), 100, TO_DATE('2011-05-30 10:32:27','YYYY-MM-DD HH24:MI:SS'), 100, 'lbr_RPSStatus', 'LBRA', 'RPS Status', 'RPS Status', NULL, NULL, NULL, NULL, NULL, NULL)
;

-- 27/07/2011 16h17min20s BRT
-- Novos Impostos - Kenos - www.kenos.com.br
INSERT INTO AD_Element_Trl(ad_element_id, ad_language, ad_client_id, ad_org_id, isactive, created, createdby, updated, updatedby, name, printname, description, help, po_name, po_printname, po_description, po_help, istranslated)
  VALUES(1120076, 'pt_BR', 0, 0, 'Y', TO_DATE('2011-04-05 21:12:45','YYYY-MM-DD HH24:MI:SS'), 100, TO_DATE('2011-04-05 21:12:45','YYYY-MM-DD HH24:MI:SS'), 100, 'Formula (BR)', 'Formula (BR)', NULL, NULL, NULL, NULL, NULL, NULL, 'N')
;

-- 27/07/2011 16h17min20s BRT
-- Novos Impostos - Kenos - www.kenos.com.br
INSERT INTO AD_Element_Trl(ad_element_id, ad_language, ad_client_id, ad_org_id, isactive, created, createdby, updated, updatedby, name, printname, description, help, po_name, po_printname, po_description, po_help, istranslated)
  VALUES(1120077, 'pt_BR', 0, 0, 'Y', TO_DATE('2011-04-05 21:40:55','YYYY-MM-DD HH24:MI:SS'), 100, TO_DATE('2011-04-05 21:40:55','YYYY-MM-DD HH24:MI:SS'), 100, 'Formula Net (BR)', 'Formula Net (BR)', NULL, NULL, NULL, NULL, NULL, NULL, 'N')
;

-- 27/07/2011 16h17min20s BRT
-- Novos Impostos - Kenos - www.kenos.com.br
INSERT INTO AD_Element_Trl(ad_element_id, ad_language, ad_client_id, ad_org_id, isactive, created, createdby, updated, updatedby, name, printname, description, help, po_name, po_printname, po_description, po_help, istranslated)
  VALUES(1120088, 'pt_BR', 0, 0, 'Y', TO_DATE('2011-05-17 16:16:55','YYYY-MM-DD HH24:MI:SS'), 100, TO_DATE('2011-05-17 16:19:39','YYYY-MM-DD HH24:MI:SS'), 100, 'Fórmula Adicional', 'Fórmula Adicional', 'Formula adicional para inclusão de despesas na B.C. (ex. Frete, SISCOMEX, etc.)', 'Utilize a fórmula adicional para incluir o valor do resultado da fórmula na base de cáclulo do impostos. Você pode usar para facilmente adicionar taxas ao cálculo de imposto, como por exemplo Frete, Seguro, SISCOMEX, etc. Note que esta fórmula tem um comportamento diferente, o valor do resultado será somado a B.C. do imposto e a fórmula não irá gerar um fator.', NULL, NULL, NULL, NULL, 'N')
;

-- 27/07/2011 16h17min20s BRT
-- Novos Impostos - Kenos - www.kenos.com.br
INSERT INTO AD_Element_Trl(ad_element_id, ad_language, ad_client_id, ad_org_id, isactive, created, createdby, updated, updatedby, name, printname, description, help, po_name, po_printname, po_description, po_help, istranslated)
  VALUES(1120090, 'pt_BR', 0, 0, 'Y', TO_DATE('2011-05-17 17:11:05','YYYY-MM-DD HH24:MI:SS'), 100, TO_DATE('2011-05-17 17:15:16','YYYY-MM-DD HH24:MI:SS'), 100, 'Fórmula Base', 'Fórmula Base', 'Este fórmula é usada para encontrar o valor que será usado no cálculo dos impostos', NULL, NULL, NULL, NULL, NULL, 'N')
;

-- 27/07/2011 16h17min20s BRT
-- Novos Impostos - Kenos - www.kenos.com.br
INSERT INTO AD_Element_Trl(ad_element_id, ad_language, ad_client_id, ad_org_id, isactive, created, createdby, updated, updatedby, name, printname, description, help, po_name, po_printname, po_description, po_help, istranslated)
  VALUES(1120091, 'pt_BR', 0, 0, 'Y', TO_DATE('2011-05-30 10:32:27','YYYY-MM-DD HH24:MI:SS'), 100, TO_DATE('2011-05-30 10:32:55','YYYY-MM-DD HH24:MI:SS'), 100, 'Situação do RPS', 'Situação do RPS', 'Indica a situação do RPS (Normal, Isento, Cancelado, Extraviado ou Suspenso) ', 'Indica a situação do RPS (Normal, Isento ou Não Tributado, Cancelado, Extraviado ou Suspenso)', NULL, NULL, NULL, NULL, 'N')
;

-- 27/07/2011 16h17min20s BRT
-- Novos Impostos - Kenos - www.kenos.com.br
INSERT INTO AD_Reference(ad_reference_id, ad_client_id, ad_org_id, isactive, created, createdby, updated, updatedby, name, description, help, validationtype, vformat, entitytype, isorderbyvalue)
  VALUES(1120031, 0, 0, 'Y', TO_DATE('2011-04-05 21:41:35','YYYY-MM-DD HH24:MI:SS'), 100, TO_DATE('2011-04-05 21:41:35','YYYY-MM-DD HH24:MI:SS'), 100, 'LBR_Formula', NULL, NULL, 'T', NULL, 'U', 'N')
;

-- 27/07/2011 16h17min20s BRT
-- Novos Impostos - Kenos - www.kenos.com.br
INSERT INTO AD_Reference(ad_reference_id, ad_client_id, ad_org_id, isactive, created, createdby, updated, updatedby, name, description, help, validationtype, vformat, entitytype, isorderbyvalue)
  VALUES(1120034, 0, 0, 'Y', TO_DATE('2011-05-30 11:02:27','YYYY-MM-DD HH24:MI:SS'), 100, TO_DATE('2011-05-30 11:02:27','YYYY-MM-DD HH24:MI:SS'), 100, 'LBR_NotaFiscal - lbr_RPSStatus', NULL, NULL, 'L', NULL, 'LBRA', 'N')
;

-- 27/07/2011 16h17min20s BRT
-- Novos Impostos - Kenos - www.kenos.com.br
INSERT INTO AD_Reference_Trl(ad_reference_id, ad_language, ad_client_id, ad_org_id, isactive, created, createdby, updated, updatedby, name, description, help, istranslated)
  VALUES(1120031, 'pt_BR', 0, 0, 'Y', TO_DATE('2011-04-05 21:41:35','YYYY-MM-DD HH24:MI:SS'), 100, TO_DATE('2011-04-05 21:41:35','YYYY-MM-DD HH24:MI:SS'), 100, 'LBR_Formula', NULL, NULL, 'N')
;

-- 27/07/2011 16h17min20s BRT
-- Novos Impostos - Kenos - www.kenos.com.br
INSERT INTO AD_Reference_Trl(ad_reference_id, ad_language, ad_client_id, ad_org_id, isactive, created, createdby, updated, updatedby, name, description, help, istranslated)
  VALUES(1120034, 'pt_BR', 0, 0, 'Y', TO_DATE('2011-05-30 11:02:27','YYYY-MM-DD HH24:MI:SS'), 100, TO_DATE('2011-05-30 11:02:27','YYYY-MM-DD HH24:MI:SS'), 100, 'LBR_NotaFiscal - lbr_RPSStatus', NULL, NULL, 'N')
;

-- 27/07/2011 16h17min20s BRT
-- Novos Impostos - Kenos - www.kenos.com.br
INSERT INTO AD_Ref_List(ad_ref_list_id, ad_client_id, ad_org_id, isactive, created, createdby, updated, updatedby, value, name, description, ad_reference_id, validfrom, validto, entitytype)
  VALUES(1120402, 0, 0, 'Y', TO_DATE('2011-05-30 11:05:36','YYYY-MM-DD HH24:MI:SS'), 100, TO_DATE('2011-05-30 11:05:46','YYYY-MM-DD HH24:MI:SS'), 100, 'T', 'Operacao normal', NULL, 1120034, NULL, NULL, 'LBRA')
;

-- 27/07/2011 16h17min20s BRT
-- Novos Impostos - Kenos - www.kenos.com.br
INSERT INTO AD_Ref_List(ad_ref_list_id, ad_client_id, ad_org_id, isactive, created, createdby, updated, updatedby, value, name, description, ad_reference_id, validfrom, validto, entitytype)
  VALUES(1120403, 0, 0, 'Y', TO_DATE('2011-05-30 11:06:11','YYYY-MM-DD HH24:MI:SS'), 100, TO_DATE('2011-05-30 11:06:29','YYYY-MM-DD HH24:MI:SS'), 100, 'I', 'Operacao isenta ou nao tributavel', NULL, 1120034, NULL, NULL, 'LBRA')
;

-- 27/07/2011 16h17min20s BRT
-- Novos Impostos - Kenos - www.kenos.com.br
INSERT INTO AD_Ref_List(ad_ref_list_id, ad_client_id, ad_org_id, isactive, created, createdby, updated, updatedby, value, name, description, ad_reference_id, validfrom, validto, entitytype)
  VALUES(1120404, 0, 0, 'Y', TO_DATE('2011-05-30 11:07:48','YYYY-MM-DD HH24:MI:SS'), 100, TO_DATE('2011-05-30 11:08:06','YYYY-MM-DD HH24:MI:SS'), 100, 'F', 'Operacao isenta ou nao tributavel executada em outro Municipio', NULL, 1120034, NULL, NULL, 'LBRA')
;

-- 27/07/2011 16h17min20s BRT
-- Novos Impostos - Kenos - www.kenos.com.br
INSERT INTO AD_Ref_List(ad_ref_list_id, ad_client_id, ad_org_id, isactive, created, createdby, updated, updatedby, value, name, description, ad_reference_id, validfrom, validto, entitytype)
  VALUES(1120405, 0, 0, 'Y', TO_DATE('2011-05-30 11:08:57','YYYY-MM-DD HH24:MI:SS'), 100, TO_DATE('2011-05-30 11:08:57','YYYY-MM-DD HH24:MI:SS'), 100, 'C', 'Cancelado', NULL, 1120034, NULL, NULL, 'LBRA')
;

-- 27/07/2011 16h17min20s BRT
-- Novos Impostos - Kenos - www.kenos.com.br
INSERT INTO AD_Ref_List(ad_ref_list_id, ad_client_id, ad_org_id, isactive, created, createdby, updated, updatedby, value, name, description, ad_reference_id, validfrom, validto, entitytype)
  VALUES(1120406, 0, 0, 'Y', TO_DATE('2011-05-30 11:09:09','YYYY-MM-DD HH24:MI:SS'), 100, TO_DATE('2011-05-30 11:09:09','YYYY-MM-DD HH24:MI:SS'), 100, 'E', 'Extraviado', NULL, 1120034, NULL, NULL, 'LBRA')
;

-- 27/07/2011 16h17min20s BRT
-- Novos Impostos - Kenos - www.kenos.com.br
INSERT INTO AD_Ref_List(ad_ref_list_id, ad_client_id, ad_org_id, isactive, created, createdby, updated, updatedby, value, name, description, ad_reference_id, validfrom, validto, entitytype)
  VALUES(1120407, 0, 0, 'Y', TO_DATE('2011-05-30 11:09:27','YYYY-MM-DD HH24:MI:SS'), 100, TO_DATE('2011-05-30 11:09:33','YYYY-MM-DD HH24:MI:SS'), 100, 'J', 'ISS Suspenso por Decisao Judicial', NULL, 1120034, NULL, NULL, 'LBRA')
;

-- 27/07/2011 16h17min20s BRT
-- Novos Impostos - Kenos - www.kenos.com.br
INSERT INTO AD_Ref_List_Trl(ad_ref_list_id, ad_language, ad_client_id, ad_org_id, isactive, created, createdby, updated, updatedby, name, description, istranslated)
  VALUES(1120402, 'pt_BR', 0, 0, 'Y', TO_DATE('2011-05-30 11:05:36','YYYY-MM-DD HH24:MI:SS'), 100, TO_DATE('2011-05-30 11:05:36','YYYY-MM-DD HH24:MI:SS'), 100, 'Operação normal', NULL, 'N')
;

-- 27/07/2011 16h17min20s BRT
-- Novos Impostos - Kenos - www.kenos.com.br
INSERT INTO AD_Ref_List_Trl(ad_ref_list_id, ad_language, ad_client_id, ad_org_id, isactive, created, createdby, updated, updatedby, name, description, istranslated)
  VALUES(1120403, 'pt_BR', 0, 0, 'Y', TO_DATE('2011-05-30 11:06:11','YYYY-MM-DD HH24:MI:SS'), 100, TO_DATE('2011-05-30 11:06:11','YYYY-MM-DD HH24:MI:SS'), 100, 'Operação isenta ou não tributável', NULL, 'N')
;

-- 27/07/2011 16h17min20s BRT
-- Novos Impostos - Kenos - www.kenos.com.br
INSERT INTO AD_Ref_List_Trl(ad_ref_list_id, ad_language, ad_client_id, ad_org_id, isactive, created, createdby, updated, updatedby, name, description, istranslated)
  VALUES(1120404, 'pt_BR', 0, 0, 'Y', TO_DATE('2011-05-30 11:07:48','YYYY-MM-DD HH24:MI:SS'), 100, TO_DATE('2011-05-30 11:07:48','YYYY-MM-DD HH24:MI:SS'), 100, 'Operação isenta ou não tributável executada em outro Município', NULL, 'N')
;

-- 27/07/2011 16h17min20s BRT
-- Novos Impostos - Kenos - www.kenos.com.br
INSERT INTO AD_Ref_List_Trl(ad_ref_list_id, ad_language, ad_client_id, ad_org_id, isactive, created, createdby, updated, updatedby, name, description, istranslated)
  VALUES(1120405, 'pt_BR', 0, 0, 'Y', TO_DATE('2011-05-30 11:08:57','YYYY-MM-DD HH24:MI:SS'), 100, TO_DATE('2011-05-30 11:08:57','YYYY-MM-DD HH24:MI:SS'), 100, 'Cancelado', NULL, 'N')
;

-- 27/07/2011 16h17min20s BRT
-- Novos Impostos - Kenos - www.kenos.com.br
INSERT INTO AD_Ref_List_Trl(ad_ref_list_id, ad_language, ad_client_id, ad_org_id, isactive, created, createdby, updated, updatedby, name, description, istranslated)
  VALUES(1120406, 'pt_BR', 0, 0, 'Y', TO_DATE('2011-05-30 11:09:09','YYYY-MM-DD HH24:MI:SS'), 100, TO_DATE('2011-05-30 11:09:09','YYYY-MM-DD HH24:MI:SS'), 100, 'Extraviado', NULL, 'N')
;

-- 27/07/2011 16h17min20s BRT
-- Novos Impostos - Kenos - www.kenos.com.br
INSERT INTO AD_Ref_List_Trl(ad_ref_list_id, ad_language, ad_client_id, ad_org_id, isactive, created, createdby, updated, updatedby, name, description, istranslated)
  VALUES(1120407, 'pt_BR', 0, 0, 'Y', TO_DATE('2011-05-30 11:09:27','YYYY-MM-DD HH24:MI:SS'), 100, TO_DATE('2011-05-30 11:09:27','YYYY-MM-DD HH24:MI:SS'), 100, 'ISS Suspenso por Decisão Judicial', NULL, 'N')
;

-- 27/07/2011 16h17min20s BRT
-- Novos Impostos - Kenos - www.kenos.com.br
INSERT INTO AD_Window(ad_window_id, ad_client_id, ad_org_id, isactive, created, createdby, updated, updatedby, name, description, help, windowtype, issotrx, entitytype, processing, ad_image_id, ad_color_id, isdefault, winheight, winwidth, isbetafunctionality)
  VALUES(1120010, 0, 0, 'Y', TO_DATE('2011-04-05 21:16:10','YYYY-MM-DD HH24:MI:SS'), 100, TO_DATE('2011-04-05 21:16:10','YYYY-MM-DD HH24:MI:SS'), 100, 'Formula', NULL, NULL, 'M', 'Y', 'LBRA', 'N', NULL, NULL, 'N', 0, 0, 'N')
;

-- 27/07/2011 16h17min20s BRT
-- Novos Impostos - Kenos - www.kenos.com.br
INSERT INTO AD_Window_Trl(ad_window_id, ad_language, ad_client_id, ad_org_id, isactive, created, createdby, updated, updatedby, name, description, help, istranslated)
  VALUES(1120010, 'pt_BR', 0, 0, 'Y', TO_DATE('2011-04-05 21:16:10','YYYY-MM-DD HH24:MI:SS'), 100, TO_DATE('2011-04-05 21:16:10','YYYY-MM-DD HH24:MI:SS'), 100, 'Formula', NULL, NULL, 'N')
;

-- 27/07/2011 16h17min20s BRT
-- Novos Impostos - Kenos - www.kenos.com.br
INSERT INTO AD_Table(ad_table_id, ad_client_id, ad_org_id, isactive, created, createdby, updated, updatedby, name, description, help, tablename, isview, accesslevel, entitytype, ad_window_id, ad_val_rule_id, loadseq, issecurityenabled, isdeleteable, ishighvolume, importtable, ischangelog, replicationtype, po_window_id, copycolumnsfromtable, iscentrallymaintained, ispersonallock)
  VALUES(1120021, 0, 0, 'Y', TO_DATE('2011-04-05 21:11:52','YYYY-MM-DD HH24:MI:SS'), 100, TO_DATE('2011-04-05 21:17:45','YYYY-MM-DD HH24:MI:SS'), 100, 'Formula (BR)', NULL, NULL, 'LBR_Formula', 'N', '6', 'LBRA', 1120010, NULL, 0, 'N', 'Y', 'N', 'N', 'N', 'L', NULL, 'N', 'Y', NULL)
;

-- 27/07/2011 16h17min20s BRT
-- Novos Impostos - Kenos - www.kenos.com.br
INSERT INTO AD_Table_Trl(ad_table_id, ad_language, ad_client_id, ad_org_id, isactive, created, createdby, updated, updatedby, name, istranslated)
  VALUES(1120021, 'pt_BR', 0, 0, 'Y', TO_DATE('2011-04-05 21:11:52','YYYY-MM-DD HH24:MI:SS'), 100, TO_DATE('2011-04-05 21:11:52','YYYY-MM-DD HH24:MI:SS'), 100, 'Formula (BR)', 'N')
;

-- 27/07/2011 16h17min20s BRT
-- Novos Impostos - Kenos - www.kenos.com.br
INSERT INTO AD_Column(ad_column_id, ad_client_id, ad_org_id, isactive, created, updated, createdby, updatedby, name, description, help, version, entitytype, columnname, ad_table_id, ad_reference_id, ad_reference_value_id, ad_val_rule_id, fieldlength, defaultvalue, iskey, isparent, ismandatory, isupdateable, readonlylogic, isidentifier, seqno, istranslated, isencrypted, callout, vformat, valuemin, valuemax, isselectioncolumn, ad_element_id, ad_process_id, issyncdatabase, isalwaysupdateable, columnsql, mandatorylogic, infofactoryclass, isautocomplete, isallowlogging, formatpattern)
  VALUES(1120319, 0, 0, 'Y', TO_DATE('2011-04-05 21:12:45','YYYY-MM-DD HH24:MI:SS'), TO_DATE('2011-04-05 21:12:45','YYYY-MM-DD HH24:MI:SS'), 100, 100, 'Formula (BR)', NULL, NULL, 1, 'LBRA', 'LBR_Formula_ID', 1120021, 13, NULL, NULL, 22, NULL, 'Y', 'N', 'Y', 'N', NULL, 'N', 0, 'N', 'N', NULL, NULL, NULL, NULL, 'N', 1120076, NULL, 'Y', 'N', NULL, NULL, NULL, 'N', 'Y', NULL)
;

-- 27/07/2011 16h17min20s BRT
-- Novos Impostos - Kenos - www.kenos.com.br
INSERT INTO AD_Column(ad_column_id, ad_client_id, ad_org_id, isactive, created, updated, createdby, updatedby, name, description, help, version, entitytype, columnname, ad_table_id, ad_reference_id, ad_reference_value_id, ad_val_rule_id, fieldlength, defaultvalue, iskey, isparent, ismandatory, isupdateable, readonlylogic, isidentifier, seqno, istranslated, isencrypted, callout, vformat, valuemin, valuemax, isselectioncolumn, ad_element_id, ad_process_id, issyncdatabase, isalwaysupdateable, columnsql, mandatorylogic, infofactoryclass, isautocomplete, isallowlogging, formatpattern)
  VALUES(1120320, 0, 0, 'Y', TO_DATE('2011-04-05 21:12:47','YYYY-MM-DD HH24:MI:SS'), TO_DATE('2011-04-05 21:12:47','YYYY-MM-DD HH24:MI:SS'), 100, 100, 'Client', 'Client/Tenant for this installation.', 'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.', 1, 'LBRA', 'AD_Client_ID', 1120021, 19, NULL, NULL, 22, '@#AD_Client_ID@', 'N', 'N', 'Y', 'N', NULL, 'N', 0, 'N', 'N', NULL, NULL, NULL, NULL, 'N', 102, NULL, 'Y', 'N', NULL, NULL, NULL, 'N', 'Y', NULL)
;

-- 27/07/2011 16h17min20s BRT
-- Novos Impostos - Kenos - www.kenos.com.br
INSERT INTO AD_Column(ad_column_id, ad_client_id, ad_org_id, isactive, created, updated, createdby, updatedby, name, description, help, version, entitytype, columnname, ad_table_id, ad_reference_id, ad_reference_value_id, ad_val_rule_id, fieldlength, defaultvalue, iskey, isparent, ismandatory, isupdateable, readonlylogic, isidentifier, seqno, istranslated, isencrypted, callout, vformat, valuemin, valuemax, isselectioncolumn, ad_element_id, ad_process_id, issyncdatabase, isalwaysupdateable, columnsql, mandatorylogic, infofactoryclass, isautocomplete, isallowlogging, formatpattern)
  VALUES(1120321, 0, 0, 'Y', TO_DATE('2011-04-05 21:12:47','YYYY-MM-DD HH24:MI:SS'), TO_DATE('2011-04-05 21:12:47','YYYY-MM-DD HH24:MI:SS'), 100, 100, 'Organization', 'Organizational entity within client', 'An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.', 1, 'LBRA', 'AD_Org_ID', 1120021, 19, NULL, 104, 22, '@#AD_Org_ID@', 'N', 'N', 'Y', 'N', NULL, 'N', 0, 'N', 'N', NULL, NULL, NULL, NULL, 'N', 113, NULL, 'Y', 'N', NULL, NULL, NULL, 'N', 'Y', NULL)
;

-- 27/07/2011 16h17min20s BRT
-- Novos Impostos - Kenos - www.kenos.com.br
INSERT INTO AD_Column(ad_column_id, ad_client_id, ad_org_id, isactive, created, updated, createdby, updatedby, name, description, help, version, entitytype, columnname, ad_table_id, ad_reference_id, ad_reference_value_id, ad_val_rule_id, fieldlength, defaultvalue, iskey, isparent, ismandatory, isupdateable, readonlylogic, isidentifier, seqno, istranslated, isencrypted, callout, vformat, valuemin, valuemax, isselectioncolumn, ad_element_id, ad_process_id, issyncdatabase, isalwaysupdateable, columnsql, mandatorylogic, infofactoryclass, isautocomplete, isallowlogging, formatpattern)
  VALUES(1120322, 0, 0, 'Y', TO_DATE('2011-04-05 21:12:48','YYYY-MM-DD HH24:MI:SS'), TO_DATE('2011-04-05 21:12:48','YYYY-MM-DD HH24:MI:SS'), 100, 100, 'Created', 'Date this record was created', 'The Created field indicates the date that this record was created.', 1, 'LBRA', 'Created', 1120021, 16, NULL, NULL, 7, NULL, 'N', 'N', 'Y', 'N', NULL, 'N', 0, 'N', 'N', NULL, NULL, NULL, NULL, 'N', 245, NULL, 'Y', 'N', NULL, NULL, NULL, 'N', 'Y', NULL)
;

-- 27/07/2011 16h17min20s BRT
-- Novos Impostos - Kenos - www.kenos.com.br
INSERT INTO AD_Column(ad_column_id, ad_client_id, ad_org_id, isactive, created, updated, createdby, updatedby, name, description, help, version, entitytype, columnname, ad_table_id, ad_reference_id, ad_reference_value_id, ad_val_rule_id, fieldlength, defaultvalue, iskey, isparent, ismandatory, isupdateable, readonlylogic, isidentifier, seqno, istranslated, isencrypted, callout, vformat, valuemin, valuemax, isselectioncolumn, ad_element_id, ad_process_id, issyncdatabase, isalwaysupdateable, columnsql, mandatorylogic, infofactoryclass, isautocomplete, isallowlogging, formatpattern)
  VALUES(1120323, 0, 0, 'Y', TO_DATE('2011-04-05 21:12:49','YYYY-MM-DD HH24:MI:SS'), TO_DATE('2011-04-05 21:12:49','YYYY-MM-DD HH24:MI:SS'), 100, 100, 'Created By', 'User who created this records', 'The Created By field indicates the user who created this record.', 1, 'LBRA', 'CreatedBy', 1120021, 18, 110, NULL, 22, NULL, 'N', 'N', 'Y', 'N', NULL, 'N', 0, 'N', 'N', NULL, NULL, NULL, NULL, 'N', 246, NULL, 'Y', 'N', NULL, NULL, NULL, 'N', 'Y', NULL)
;

-- 27/07/2011 16h17min20s BRT
-- Novos Impostos - Kenos - www.kenos.com.br
INSERT INTO AD_Column(ad_column_id, ad_client_id, ad_org_id, isactive, created, updated, createdby, updatedby, name, description, help, version, entitytype, columnname, ad_table_id, ad_reference_id, ad_reference_value_id, ad_val_rule_id, fieldlength, defaultvalue, iskey, isparent, ismandatory, isupdateable, readonlylogic, isidentifier, seqno, istranslated, isencrypted, callout, vformat, valuemin, valuemax, isselectioncolumn, ad_element_id, ad_process_id, issyncdatabase, isalwaysupdateable, columnsql, mandatorylogic, infofactoryclass, isautocomplete, isallowlogging, formatpattern)
  VALUES(1120324, 0, 0, 'Y', TO_DATE('2011-04-05 21:12:49','YYYY-MM-DD HH24:MI:SS'), TO_DATE('2011-04-05 21:12:49','YYYY-MM-DD HH24:MI:SS'), 100, 100, 'Active', 'The record is active in the system', 'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.', 1, 'LBRA', 'IsActive', 1120021, 20, NULL, NULL, 1, 'Y', 'N', 'N', 'Y', 'Y', NULL, 'N', 0, 'N', 'N', NULL, NULL, NULL, NULL, 'N', 348, NULL, 'Y', 'N', NULL, NULL, NULL, 'N', 'Y', NULL)
;

-- 27/07/2011 16h17min20s BRT
-- Novos Impostos - Kenos - www.kenos.com.br
INSERT INTO AD_Column(ad_column_id, ad_client_id, ad_org_id, isactive, created, updated, createdby, updatedby, name, description, help, version, entitytype, columnname, ad_table_id, ad_reference_id, ad_reference_value_id, ad_val_rule_id, fieldlength, defaultvalue, iskey, isparent, ismandatory, isupdateable, readonlylogic, isidentifier, seqno, istranslated, isencrypted, callout, vformat, valuemin, valuemax, isselectioncolumn, ad_element_id, ad_process_id, issyncdatabase, isalwaysupdateable, columnsql, mandatorylogic, infofactoryclass, isautocomplete, isallowlogging, formatpattern)
  VALUES(1120325, 0, 0, 'Y', TO_DATE('2011-04-05 21:12:50','YYYY-MM-DD HH24:MI:SS'), TO_DATE('2011-04-05 21:12:50','YYYY-MM-DD HH24:MI:SS'), 100, 100, 'Updated', 'Date this record was updated', 'The Updated field indicates the date that this record was updated.', 1, 'LBRA', 'Updated', 1120021, 16, NULL, NULL, 7, NULL, 'N', 'N', 'Y', 'N', NULL, 'N', 0, 'N', 'N', NULL, NULL, NULL, NULL, 'N', 607, NULL, 'Y', 'N', NULL, NULL, NULL, 'N', 'Y', NULL)
;

-- 27/07/2011 16h17min20s BRT
-- Novos Impostos - Kenos - www.kenos.com.br
INSERT INTO AD_Column(ad_column_id, ad_client_id, ad_org_id, isactive, created, updated, createdby, updatedby, name, description, help, version, entitytype, columnname, ad_table_id, ad_reference_id, ad_reference_value_id, ad_val_rule_id, fieldlength, defaultvalue, iskey, isparent, ismandatory, isupdateable, readonlylogic, isidentifier, seqno, istranslated, isencrypted, callout, vformat, valuemin, valuemax, isselectioncolumn, ad_element_id, ad_process_id, issyncdatabase, isalwaysupdateable, columnsql, mandatorylogic, infofactoryclass, isautocomplete, isallowlogging, formatpattern)
  VALUES(1120326, 0, 0, 'Y', TO_DATE('2011-04-05 21:12:51','YYYY-MM-DD HH24:MI:SS'), TO_DATE('2011-04-05 21:12:51','YYYY-MM-DD HH24:MI:SS'), 100, 100, 'Updated By', 'User who updated this records', 'The Updated By field indicates the user who updated this record.', 1, 'LBRA', 'UpdatedBy', 1120021, 18, 110, NULL, 22, NULL, 'N', 'N', 'Y', 'N', NULL, 'N', 0, 'N', 'N', NULL, NULL, NULL, NULL, 'N', 608, NULL, 'Y', 'N', NULL, NULL, NULL, 'N', 'Y', NULL)
;

-- 27/07/2011 16h17min20s BRT
-- Novos Impostos - Kenos - www.kenos.com.br
INSERT INTO AD_Column(ad_column_id, ad_client_id, ad_org_id, isactive, created, updated, createdby, updatedby, name, description, help, version, entitytype, columnname, ad_table_id, ad_reference_id, ad_reference_value_id, ad_val_rule_id, fieldlength, defaultvalue, iskey, isparent, ismandatory, isupdateable, readonlylogic, isidentifier, seqno, istranslated, isencrypted, callout, vformat, valuemin, valuemax, isselectioncolumn, ad_element_id, ad_process_id, issyncdatabase, isalwaysupdateable, columnsql, mandatorylogic, infofactoryclass, isautocomplete, isallowlogging, formatpattern)
  VALUES(1120327, 0, 0, 'Y', TO_DATE('2011-04-05 21:13:34','YYYY-MM-DD HH24:MI:SS'), TO_DATE('2011-04-05 21:19:44','YYYY-MM-DD HH24:MI:SS'), 100, 100, 'Description', 'Optional short description of the record', 'A description is limited to 255 characters.', 0, 'U', 'Description', 1120021, 14, NULL, NULL, 512, NULL, 'N', 'N', 'N', 'Y', NULL, 'N', 0, 'N', 'N', NULL, NULL, NULL, NULL, 'N', 275, NULL, 'N', 'N', NULL, NULL, NULL, 'N', 'Y', NULL)
;

-- 27/07/2011 16h17min20s BRT
-- Novos Impostos - Kenos - www.kenos.com.br
INSERT INTO AD_Column(ad_column_id, ad_client_id, ad_org_id, isactive, created, updated, createdby, updatedby, name, description, help, version, entitytype, columnname, ad_table_id, ad_reference_id, ad_reference_value_id, ad_val_rule_id, fieldlength, defaultvalue, iskey, isparent, ismandatory, isupdateable, readonlylogic, isidentifier, seqno, istranslated, isencrypted, callout, vformat, valuemin, valuemax, isselectioncolumn, ad_element_id, ad_process_id, issyncdatabase, isalwaysupdateable, columnsql, mandatorylogic, infofactoryclass, isautocomplete, isallowlogging, formatpattern)
  VALUES(1120328, 0, 0, 'Y', TO_DATE('2011-04-05 21:14:20','YYYY-MM-DD HH24:MI:SS'), TO_DATE('2011-04-05 21:23:07','YYYY-MM-DD HH24:MI:SS'), 100, 100, 'Formula', 'Defines the Tax Formula', 'Defines the Tax Formula', 0, 'U', 'lbr_Formula', 1120021, 34, NULL, NULL, 512, NULL, 'N', 'N', 'Y', 'Y', NULL, 'N', 0, 'N', 'N', NULL, NULL, NULL, NULL, 'N', 1000174, NULL, 'N', 'N', NULL, NULL, NULL, 'N', 'Y', NULL)
;

-- 27/07/2011 16h17min20s BRT
-- Novos Impostos - Kenos - www.kenos.com.br
INSERT INTO AD_Column(ad_column_id, ad_client_id, ad_org_id, isactive, created, updated, createdby, updatedby, name, description, help, version, entitytype, columnname, ad_table_id, ad_reference_id, ad_reference_value_id, ad_val_rule_id, fieldlength, defaultvalue, iskey, isparent, ismandatory, isupdateable, readonlylogic, isidentifier, seqno, istranslated, isencrypted, callout, vformat, valuemin, valuemax, isselectioncolumn, ad_element_id, ad_process_id, issyncdatabase, isalwaysupdateable, columnsql, mandatorylogic, infofactoryclass, isautocomplete, isallowlogging, formatpattern)
  VALUES(1120331, 0, 0, 'Y', TO_DATE('2011-04-05 21:40:05','YYYY-MM-DD HH24:MI:SS'), TO_DATE('2011-04-05 21:40:05','YYYY-MM-DD HH24:MI:SS'), 100, 100, 'Formula (BR)', NULL, NULL, 0, 'U', 'LBR_Formula_ID', 1000026, 19, NULL, NULL, 10, NULL, 'N', 'N', 'N', 'Y', NULL, 'N', 0, 'N', 'N', NULL, NULL, NULL, NULL, 'N', 1120076, NULL, 'N', 'N', NULL, NULL, NULL, 'N', 'Y', NULL)
;

-- 27/07/2011 16h17min20s BRT
-- Novos Impostos - Kenos - www.kenos.com.br
INSERT INTO AD_Column(ad_column_id, ad_client_id, ad_org_id, isactive, created, updated, createdby, updatedby, name, description, help, version, entitytype, columnname, ad_table_id, ad_reference_id, ad_reference_value_id, ad_val_rule_id, fieldlength, defaultvalue, iskey, isparent, ismandatory, isupdateable, readonlylogic, isidentifier, seqno, istranslated, isencrypted, callout, vformat, valuemin, valuemax, isselectioncolumn, ad_element_id, ad_process_id, issyncdatabase, isalwaysupdateable, columnsql, mandatorylogic, infofactoryclass, isautocomplete, isallowlogging, formatpattern)
  VALUES(1120329, 0, 0, 'Y', TO_DATE('2011-04-05 21:21:05','YYYY-MM-DD HH24:MI:SS'), TO_DATE('2011-04-05 21:41:58','YYYY-MM-DD HH24:MI:SS'), 100, 100, 'Name', 'Alphanumeric identifier of the entity', 'The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.', 0, 'U', 'Name', 1120021, 10, NULL, NULL, 40, NULL, 'N', 'N', 'Y', 'Y', NULL, 'Y', 0, 'N', 'N', NULL, NULL, NULL, NULL, 'N', 469, NULL, 'N', 'N', NULL, NULL, NULL, 'N', 'Y', NULL)
;

-- 27/07/2011 16h17min20s BRT
-- Novos Impostos - Kenos - www.kenos.com.br
INSERT INTO AD_Ref_Table(ad_reference_id, ad_client_id, ad_org_id, isactive, created, createdby, updated, updatedby, ad_table_id, ad_key, ad_display, isvaluedisplayed, whereclause, orderbyclause, entitytype, ad_window_id)
  VALUES(1120031, 0, 0, 'Y', TO_DATE('2011-04-05 21:42:02','YYYY-MM-DD HH24:MI:SS'), 100, TO_DATE('2011-04-05 21:42:02','YYYY-MM-DD HH24:MI:SS'), 100, 1120021, 1120319, 1120329, 'N', NULL, NULL, 'U', NULL)
;

-- 27/07/2011 16h17min20s BRT
-- Novos Impostos - Kenos - www.kenos.com.br
INSERT INTO AD_Column(ad_column_id, ad_client_id, ad_org_id, isactive, created, updated, createdby, updatedby, name, description, help, version, entitytype, columnname, ad_table_id, ad_reference_id, ad_reference_value_id, ad_val_rule_id, fieldlength, defaultvalue, iskey, isparent, ismandatory, isupdateable, readonlylogic, isidentifier, seqno, istranslated, isencrypted, callout, vformat, valuemin, valuemax, isselectioncolumn, ad_element_id, ad_process_id, issyncdatabase, isalwaysupdateable, columnsql, mandatorylogic, infofactoryclass, isautocomplete, isallowlogging, formatpattern)
  VALUES(1120332, 0, 0, 'Y', TO_DATE('2011-04-05 21:42:13','YYYY-MM-DD HH24:MI:SS'), TO_DATE('2011-04-05 21:42:13','YYYY-MM-DD HH24:MI:SS'), 100, 100, 'Formula Net (BR)', NULL, NULL, 0, 'U', 'LBR_FormulaNet_ID', 1000026, 18, 1120031, NULL, 10, NULL, 'N', 'N', 'N', 'Y', NULL, 'N', 0, 'N', 'N', NULL, NULL, NULL, NULL, 'N', 1120077, NULL, 'N', 'N', NULL, NULL, NULL, 'N', 'Y', NULL)
;

-- 27/07/2011 16h17min20s BRT
-- Novos Impostos - Kenos - www.kenos.com.br
INSERT INTO AD_Column(ad_column_id, ad_client_id, ad_org_id, isactive, created, updated, createdby, updatedby, name, description, help, version, entitytype, columnname, ad_table_id, ad_reference_id, ad_reference_value_id, ad_val_rule_id, fieldlength, defaultvalue, iskey, isparent, ismandatory, isupdateable, readonlylogic, isidentifier, seqno, istranslated, isencrypted, callout, vformat, valuemin, valuemax, isselectioncolumn, ad_element_id, ad_process_id, issyncdatabase, isalwaysupdateable, columnsql, mandatorylogic, infofactoryclass, isautocomplete, isallowlogging, formatpattern)
  VALUES(1120333, 0, 0, 'Y', TO_DATE('2011-04-05 21:42:54','YYYY-MM-DD HH24:MI:SS'), TO_DATE('2011-04-05 21:43:13','YYYY-MM-DD HH24:MI:SS'), 100, 100, 'Valid from', 'Valid from including this date (first day)', 'The Valid From date indicates the first day of a date range', 0, 'U', 'ValidFrom', 1000026, 15, NULL, NULL, 7, NULL, 'N', 'N', 'Y', 'Y', NULL, 'N', 0, 'N', 'N', NULL, NULL, NULL, NULL, 'N', 617, NULL, 'N', 'N', NULL, NULL, NULL, 'N', 'Y', NULL)
;

-- 27/07/2011 16h17min20s BRT
-- Novos Impostos - Kenos - www.kenos.com.br
INSERT INTO AD_Column(ad_column_id, ad_client_id, ad_org_id, isactive, created, updated, createdby, updatedby, name, description, help, version, entitytype, columnname, ad_table_id, ad_reference_id, ad_reference_value_id, ad_val_rule_id, fieldlength, defaultvalue, iskey, isparent, ismandatory, isupdateable, readonlylogic, isidentifier, seqno, istranslated, isencrypted, callout, vformat, valuemin, valuemax, isselectioncolumn, ad_element_id, ad_process_id, issyncdatabase, isalwaysupdateable, columnsql, mandatorylogic, infofactoryclass, isautocomplete, isallowlogging, formatpattern)
  VALUES(1120387, 0, 0, 'Y', TO_DATE('2011-05-13 13:38:57','YYYY-MM-DD HH24:MI:SS'), TO_DATE('2011-05-13 13:38:57','YYYY-MM-DD HH24:MI:SS'), 100, 100, 'Tax Amount', 'Tax Amount for a document', 'The Tax Amount displays the total tax amount for a document.', 0, 'LBRA', 'TaxAmt', 260, 12, NULL, NULL, 10, '0', 'N', 'N', 'N', 'Y', NULL, 'N', 0, 'N', 'N', NULL, NULL, NULL, NULL, 'N', 1133, NULL, 'N', 'N', NULL, NULL, NULL, 'N', 'Y', NULL)
;

-- 27/07/2011 16h17min20s BRT
-- Novos Impostos - Kenos - www.kenos.com.br
INSERT INTO AD_Column(ad_column_id, ad_client_id, ad_org_id, isactive, created, updated, createdby, updatedby, name, description, help, version, entitytype, columnname, ad_table_id, ad_reference_id, ad_reference_value_id, ad_val_rule_id, fieldlength, defaultvalue, iskey, isparent, ismandatory, isupdateable, readonlylogic, isidentifier, seqno, istranslated, isencrypted, callout, vformat, valuemin, valuemax, isselectioncolumn, ad_element_id, ad_process_id, issyncdatabase, isalwaysupdateable, columnsql, mandatorylogic, infofactoryclass, isautocomplete, isallowlogging, formatpattern)
  VALUES(1120388, 0, 0, 'Y', TO_DATE('2011-05-17 16:20:43','YYYY-MM-DD HH24:MI:SS'), TO_DATE('2011-05-17 16:20:43','YYYY-MM-DD HH24:MI:SS'), 100, 100, 'Additional Formula', NULL, NULL, 0, 'U', 'LBR_FormulaAdd_ID', 1000026, 18, 1120031, NULL, 10, NULL, 'N', 'N', 'N', 'Y', NULL, 'N', 0, 'N', 'N', NULL, NULL, NULL, NULL, 'N', 1120088, NULL, 'N', 'N', NULL, NULL, NULL, 'N', 'Y', NULL)
;

-- 27/07/2011 16h17min20s BRT
-- Novos Impostos - Kenos - www.kenos.com.br
INSERT INTO AD_Column(ad_column_id, ad_client_id, ad_org_id, isactive, created, updated, createdby, updatedby, name, description, help, version, entitytype, columnname, ad_table_id, ad_reference_id, ad_reference_value_id, ad_val_rule_id, fieldlength, defaultvalue, iskey, isparent, ismandatory, isupdateable, readonlylogic, isidentifier, seqno, istranslated, isencrypted, callout, vformat, valuemin, valuemax, isselectioncolumn, ad_element_id, ad_process_id, issyncdatabase, isalwaysupdateable, columnsql, mandatorylogic, infofactoryclass, isautocomplete, isallowlogging, formatpattern)
  VALUES(1120389, 0, 0, 'Y', TO_DATE('2011-05-17 17:15:31','YYYY-MM-DD HH24:MI:SS'), TO_DATE('2011-05-17 17:15:31','YYYY-MM-DD HH24:MI:SS'), 100, 100, 'Formula Base', NULL, NULL, 0, 'U', 'LBR_FormulaBase_ID', 1000026, 18, 1120031, NULL, 10, NULL, 'N', 'N', 'N', 'Y', NULL, 'N', 0, 'N', 'N', NULL, NULL, NULL, NULL, 'N', 1120090, NULL, 'N', 'N', NULL, NULL, NULL, 'N', 'Y', NULL)
;

-- 27/07/2011 16h17min20s BRT
-- Novos Impostos - Kenos - www.kenos.com.br
INSERT INTO AD_Column(ad_column_id, ad_client_id, ad_org_id, isactive, created, updated, createdby, updatedby, name, description, help, version, entitytype, columnname, ad_table_id, ad_reference_id, ad_reference_value_id, ad_val_rule_id, fieldlength, defaultvalue, iskey, isparent, ismandatory, isupdateable, readonlylogic, isidentifier, seqno, istranslated, isencrypted, callout, vformat, valuemin, valuemax, isselectioncolumn, ad_element_id, ad_process_id, issyncdatabase, isalwaysupdateable, columnsql, mandatorylogic, infofactoryclass, isautocomplete, isallowlogging, formatpattern)
  VALUES(1120390, 0, 0, 'Y', TO_DATE('2011-05-30 11:00:40','YYYY-MM-DD HH24:MI:SS'), TO_DATE('2011-05-30 11:10:25','YYYY-MM-DD HH24:MI:SS'), 100, 100, 'RPS Status', NULL, NULL, 0, 'LBRA', 'lbr_RPSStatus', 1000027, 17, 1120034, NULL, 1, NULL, 'N', 'N', 'N', 'Y', NULL, 'N', 0, 'N', 'N', NULL, NULL, NULL, NULL, 'N', 1120091, NULL, 'N', 'N', NULL, NULL, NULL, 'N', 'Y', NULL)
;

-- 27/07/2011 16h17min20s BRT
-- Novos Impostos - Kenos - www.kenos.com.br
INSERT INTO AD_Column_Trl(ad_column_id, ad_language, ad_client_id, ad_org_id, isactive, created, createdby, updated, updatedby, name, istranslated)
  VALUES(1120319, 'pt_BR', 0, 0, 'Y', TO_DATE('2011-04-05 21:12:45','YYYY-MM-DD HH24:MI:SS'), 100, TO_DATE('2011-04-05 21:12:45','YYYY-MM-DD HH24:MI:SS'), 100, 'Formula (BR)', 'N')
;

-- 27/07/2011 16h17min20s BRT
-- Novos Impostos - Kenos - www.kenos.com.br
INSERT INTO AD_Column_Trl(ad_column_id, ad_language, ad_client_id, ad_org_id, isactive, created, createdby, updated, updatedby, name, istranslated)
  VALUES(1120320, 'pt_BR', 0, 0, 'Y', TO_DATE('2011-04-05 21:12:47','YYYY-MM-DD HH24:MI:SS'), 100, TO_DATE('2011-04-05 21:12:47','YYYY-MM-DD HH24:MI:SS'), 100, 'Client', 'N')
;

-- 27/07/2011 16h17min20s BRT
-- Novos Impostos - Kenos - www.kenos.com.br
INSERT INTO AD_Column_Trl(ad_column_id, ad_language, ad_client_id, ad_org_id, isactive, created, createdby, updated, updatedby, name, istranslated)
  VALUES(1120321, 'pt_BR', 0, 0, 'Y', TO_DATE('2011-04-05 21:12:47','YYYY-MM-DD HH24:MI:SS'), 100, TO_DATE('2011-04-05 21:12:47','YYYY-MM-DD HH24:MI:SS'), 100, 'Organization', 'N')
;

-- 27/07/2011 16h17min20s BRT
-- Novos Impostos - Kenos - www.kenos.com.br
INSERT INTO AD_Column_Trl(ad_column_id, ad_language, ad_client_id, ad_org_id, isactive, created, createdby, updated, updatedby, name, istranslated)
  VALUES(1120322, 'pt_BR', 0, 0, 'Y', TO_DATE('2011-04-05 21:12:48','YYYY-MM-DD HH24:MI:SS'), 100, TO_DATE('2011-04-05 21:12:48','YYYY-MM-DD HH24:MI:SS'), 100, 'Created', 'N')
;

-- 27/07/2011 16h17min20s BRT
-- Novos Impostos - Kenos - www.kenos.com.br
INSERT INTO AD_Column_Trl(ad_column_id, ad_language, ad_client_id, ad_org_id, isactive, created, createdby, updated, updatedby, name, istranslated)
  VALUES(1120323, 'pt_BR', 0, 0, 'Y', TO_DATE('2011-04-05 21:12:49','YYYY-MM-DD HH24:MI:SS'), 100, TO_DATE('2011-04-05 21:12:49','YYYY-MM-DD HH24:MI:SS'), 100, 'Created By', 'N')
;

-- 27/07/2011 16h17min20s BRT
-- Novos Impostos - Kenos - www.kenos.com.br
INSERT INTO AD_Column_Trl(ad_column_id, ad_language, ad_client_id, ad_org_id, isactive, created, createdby, updated, updatedby, name, istranslated)
  VALUES(1120324, 'pt_BR', 0, 0, 'Y', TO_DATE('2011-04-05 21:12:49','YYYY-MM-DD HH24:MI:SS'), 100, TO_DATE('2011-04-05 21:12:49','YYYY-MM-DD HH24:MI:SS'), 100, 'Active', 'N')
;

-- 27/07/2011 16h17min20s BRT
-- Novos Impostos - Kenos - www.kenos.com.br
INSERT INTO AD_Column_Trl(ad_column_id, ad_language, ad_client_id, ad_org_id, isactive, created, createdby, updated, updatedby, name, istranslated)
  VALUES(1120325, 'pt_BR', 0, 0, 'Y', TO_DATE('2011-04-05 21:12:50','YYYY-MM-DD HH24:MI:SS'), 100, TO_DATE('2011-04-05 21:12:50','YYYY-MM-DD HH24:MI:SS'), 100, 'Updated', 'N')
;

-- 27/07/2011 16h17min20s BRT
-- Novos Impostos - Kenos - www.kenos.com.br
INSERT INTO AD_Column_Trl(ad_column_id, ad_language, ad_client_id, ad_org_id, isactive, created, createdby, updated, updatedby, name, istranslated)
  VALUES(1120326, 'pt_BR', 0, 0, 'Y', TO_DATE('2011-04-05 21:12:51','YYYY-MM-DD HH24:MI:SS'), 100, TO_DATE('2011-04-05 21:12:51','YYYY-MM-DD HH24:MI:SS'), 100, 'Updated By', 'N')
;

-- 27/07/2011 16h17min20s BRT
-- Novos Impostos - Kenos - www.kenos.com.br
INSERT INTO AD_Column_Trl(ad_column_id, ad_language, ad_client_id, ad_org_id, isactive, created, createdby, updated, updatedby, name, istranslated)
  VALUES(1120327, 'pt_BR', 0, 0, 'Y', TO_DATE('2011-04-05 21:13:34','YYYY-MM-DD HH24:MI:SS'), 100, TO_DATE('2011-04-05 21:13:34','YYYY-MM-DD HH24:MI:SS'), 100, 'Description', 'N')
;

-- 27/07/2011 16h17min20s BRT
-- Novos Impostos - Kenos - www.kenos.com.br
INSERT INTO AD_Column_Trl(ad_column_id, ad_language, ad_client_id, ad_org_id, isactive, created, createdby, updated, updatedby, name, istranslated)
  VALUES(1120328, 'pt_BR', 0, 0, 'Y', TO_DATE('2011-04-05 21:14:20','YYYY-MM-DD HH24:MI:SS'), 100, TO_DATE('2011-04-05 21:14:20','YYYY-MM-DD HH24:MI:SS'), 100, 'Formula', 'N')
;

-- 27/07/2011 16h17min20s BRT
-- Novos Impostos - Kenos - www.kenos.com.br
INSERT INTO AD_Column_Trl(ad_column_id, ad_language, ad_client_id, ad_org_id, isactive, created, createdby, updated, updatedby, name, istranslated)
  VALUES(1120329, 'pt_BR', 0, 0, 'Y', TO_DATE('2011-04-05 21:21:05','YYYY-MM-DD HH24:MI:SS'), 100, TO_DATE('2011-04-05 21:21:05','YYYY-MM-DD HH24:MI:SS'), 100, 'Name', 'N')
;

-- 27/07/2011 16h17min20s BRT
-- Novos Impostos - Kenos - www.kenos.com.br
INSERT INTO AD_Column_Trl(ad_column_id, ad_language, ad_client_id, ad_org_id, isactive, created, createdby, updated, updatedby, name, istranslated)
  VALUES(1120331, 'pt_BR', 0, 0, 'Y', TO_DATE('2011-04-05 21:40:05','YYYY-MM-DD HH24:MI:SS'), 100, TO_DATE('2011-04-05 21:40:05','YYYY-MM-DD HH24:MI:SS'), 100, 'Formula (BR)', 'N')
;

-- 27/07/2011 16h17min20s BRT
-- Novos Impostos - Kenos - www.kenos.com.br
INSERT INTO AD_Column_Trl(ad_column_id, ad_language, ad_client_id, ad_org_id, isactive, created, createdby, updated, updatedby, name, istranslated)
  VALUES(1120332, 'pt_BR', 0, 0, 'Y', TO_DATE('2011-04-05 21:42:13','YYYY-MM-DD HH24:MI:SS'), 100, TO_DATE('2011-04-05 21:42:13','YYYY-MM-DD HH24:MI:SS'), 100, 'Formula Net (BR)', 'N')
;

-- 27/07/2011 16h17min20s BRT
-- Novos Impostos - Kenos - www.kenos.com.br
INSERT INTO AD_Column_Trl(ad_column_id, ad_language, ad_client_id, ad_org_id, isactive, created, createdby, updated, updatedby, name, istranslated)
  VALUES(1120333, 'pt_BR', 0, 0, 'Y', TO_DATE('2011-04-05 21:42:54','YYYY-MM-DD HH24:MI:SS'), 100, TO_DATE('2011-04-05 21:42:54','YYYY-MM-DD HH24:MI:SS'), 100, 'Valid from', 'N')
;

-- 27/07/2011 16h17min20s BRT
-- Novos Impostos - Kenos - www.kenos.com.br
INSERT INTO AD_Column_Trl(ad_column_id, ad_language, ad_client_id, ad_org_id, isactive, created, createdby, updated, updatedby, name, istranslated)
  VALUES(1120387, 'pt_BR', 0, 0, 'Y', TO_DATE('2011-05-13 13:38:57','YYYY-MM-DD HH24:MI:SS'), 100, TO_DATE('2011-05-13 13:38:57','YYYY-MM-DD HH24:MI:SS'), 100, 'Tax Amount', 'N')
;

-- 27/07/2011 16h17min20s BRT
-- Novos Impostos - Kenos - www.kenos.com.br
INSERT INTO AD_Column_Trl(ad_column_id, ad_language, ad_client_id, ad_org_id, isactive, created, createdby, updated, updatedby, name, istranslated)
  VALUES(1120388, 'pt_BR', 0, 0, 'Y', TO_DATE('2011-05-17 16:20:43','YYYY-MM-DD HH24:MI:SS'), 100, TO_DATE('2011-05-17 16:20:43','YYYY-MM-DD HH24:MI:SS'), 100, 'Additional Formula', 'N')
;

-- 27/07/2011 16h17min20s BRT
-- Novos Impostos - Kenos - www.kenos.com.br
INSERT INTO AD_Column_Trl(ad_column_id, ad_language, ad_client_id, ad_org_id, isactive, created, createdby, updated, updatedby, name, istranslated)
  VALUES(1120389, 'pt_BR', 0, 0, 'Y', TO_DATE('2011-05-17 17:15:31','YYYY-MM-DD HH24:MI:SS'), 100, TO_DATE('2011-05-17 17:15:31','YYYY-MM-DD HH24:MI:SS'), 100, 'Formula Base', 'N')
;

-- 27/07/2011 16h17min20s BRT
-- Novos Impostos - Kenos - www.kenos.com.br
INSERT INTO AD_Column_Trl(ad_column_id, ad_language, ad_client_id, ad_org_id, isactive, created, createdby, updated, updatedby, name, istranslated)
  VALUES(1120390, 'pt_BR', 0, 0, 'Y', TO_DATE('2011-05-30 11:00:40','YYYY-MM-DD HH24:MI:SS'), 100, TO_DATE('2011-05-30 11:00:40','YYYY-MM-DD HH24:MI:SS'), 100, 'RPS Status', 'N')
;

-- 27/07/2011 16h17min20s BRT
-- Novos Impostos - Kenos - www.kenos.com.br
INSERT INTO AD_Window_Access(ad_window_id, ad_role_id, ad_client_id, ad_org_id, isactive, created, createdby, updated, updatedby, isreadwrite)
  VALUES(1120010, 50002, 0, 0, 'Y', TO_DATE('2011-04-05 21:16:11','YYYY-MM-DD HH24:MI:SS'), 100, TO_DATE('2011-04-05 21:16:11','YYYY-MM-DD HH24:MI:SS'), 100, 'Y')
;

-- 27/07/2011 16h17min20s BRT
-- Novos Impostos - Kenos - www.kenos.com.br
INSERT INTO AD_Window_Access(ad_window_id, ad_role_id, ad_client_id, ad_org_id, isactive, created, createdby, updated, updatedby, isreadwrite)
  VALUES(1120010, 0, 0, 0, 'Y', TO_DATE('2011-04-05 21:16:11','YYYY-MM-DD HH24:MI:SS'), 100, TO_DATE('2011-04-05 21:16:11','YYYY-MM-DD HH24:MI:SS'), 100, 'Y')
;

-- 27/07/2011 16h17min20s BRT
-- Novos Impostos - Kenos - www.kenos.com.br
INSERT INTO AD_Window_Access(ad_window_id, ad_role_id, ad_client_id, ad_org_id, isactive, created, createdby, updated, updatedby, isreadwrite)
  VALUES(1120010, 102, 11, 0, 'Y', TO_DATE('2011-04-05 21:16:11','YYYY-MM-DD HH24:MI:SS'), 100, TO_DATE('2011-04-05 21:16:11','YYYY-MM-DD HH24:MI:SS'), 100, 'Y')
;

-- 27/07/2011 16h17min20s BRT
-- Novos Impostos - Kenos - www.kenos.com.br
INSERT INTO AD_Window_Access(ad_window_id, ad_role_id, ad_client_id, ad_org_id, isactive, created, createdby, updated, updatedby, isreadwrite)
  VALUES(1120010, 103, 11, 0, 'Y', TO_DATE('2011-04-05 21:16:11','YYYY-MM-DD HH24:MI:SS'), 100, TO_DATE('2011-04-05 21:16:11','YYYY-MM-DD HH24:MI:SS'), 100, 'Y')
;

-- 27/07/2011 16h17min20s BRT
-- Novos Impostos - Kenos - www.kenos.com.br
INSERT INTO AD_Window_Access(ad_window_id, ad_role_id, ad_client_id, ad_org_id, isactive, created, createdby, updated, updatedby, isreadwrite)
  VALUES(1120010, 50001, 0, 0, 'Y', TO_DATE('2011-04-05 21:16:11','YYYY-MM-DD HH24:MI:SS'), 100, TO_DATE('2011-04-05 21:16:11','YYYY-MM-DD HH24:MI:SS'), 100, 'Y')
;

-- 27/07/2011 16h17min20s BRT
-- Novos Impostos - Kenos - www.kenos.com.br
INSERT INTO AD_Tab(ad_tab_id, ad_client_id, ad_org_id, isactive, created, createdby, updated, updatedby, name, description, help, ad_table_id, ad_window_id, seqno, tablevel, issinglerow, isinfotab, istranslationtab, isreadonly, ad_column_id, hastree, whereclause, orderbyclause, commitwarning, ad_process_id, processing, ad_image_id, importfields, ad_columnsortorder_id, ad_columnsortyesno_id, issorttab, entitytype, included_tab_id, readonlylogic, displaylogic, isinsertrecord, isadvancedtab, parent_column_id)
  VALUES(1120018, 0, 0, 'Y', TO_DATE('2011-04-05 21:16:40','YYYY-MM-DD HH24:MI:SS'), 100, TO_DATE('2011-04-05 21:16:40','YYYY-MM-DD HH24:MI:SS'), 100, 'Formulas', NULL, NULL, 1120021, 1120010, 10, 0, 'N', 'N', 'N', 'N', NULL, 'N', NULL, NULL, NULL, NULL, 'N', NULL, 'N', NULL, NULL, 'N', 'U', NULL, NULL, NULL, 'Y', 'N', NULL)
;

-- 27/07/2011 16h17min20s BRT
-- Novos Impostos - Kenos - www.kenos.com.br
INSERT INTO AD_Tab_Trl(ad_tab_id, ad_language, ad_client_id, ad_org_id, isactive, created, createdby, updated, updatedby, name, description, help, commitwarning, istranslated)
  VALUES(1120018, 'pt_BR', 0, 0, 'Y', TO_DATE('2011-04-05 21:16:40','YYYY-MM-DD HH24:MI:SS'), 100, TO_DATE('2011-04-05 21:16:40','YYYY-MM-DD HH24:MI:SS'), 100, 'Formulas', NULL, NULL, NULL, 'N')
;

-- 27/07/2011 16h17min20s BRT
-- Novos Impostos - Kenos - www.kenos.com.br
INSERT INTO AD_Field(ad_field_id, ad_client_id, ad_org_id, isactive, created, createdby, updated, updatedby, name, description, help, iscentrallymaintained, ad_tab_id, ad_column_id, ad_fieldgroup_id, isdisplayed, displaylogic, displaylength, isreadonly, seqno, sortno, issameline, isheading, isfieldonly, isencrypted, entitytype, obscuretype, ad_reference_id, ismandatory, included_tab_id, defaultvalue, ad_reference_value_id, ad_val_rule_id, infofactoryclass)
  VALUES(1120255, 0, 0, 'Y', TO_DATE('2011-04-05 21:16:48','YYYY-MM-DD HH24:MI:SS'), 100, TO_DATE('2011-04-05 21:16:48','YYYY-MM-DD HH24:MI:SS'), 100, 'Formula (BR)', NULL, NULL, 'Y', 1120018, 1120319, NULL, 'N', NULL, 22, 'N', NULL, NULL, 'N', 'N', 'N', 'N', 'LBRA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
;

-- 27/07/2011 16h17min20s BRT
-- Novos Impostos - Kenos - www.kenos.com.br
INSERT INTO AD_Field(ad_field_id, ad_client_id, ad_org_id, isactive, created, createdby, updated, updatedby, name, description, help, iscentrallymaintained, ad_tab_id, ad_column_id, ad_fieldgroup_id, isdisplayed, displaylogic, displaylength, isreadonly, seqno, sortno, issameline, isheading, isfieldonly, isencrypted, entitytype, obscuretype, ad_reference_id, ismandatory, included_tab_id, defaultvalue, ad_reference_value_id, ad_val_rule_id, infofactoryclass)
  VALUES(1120252, 0, 0, 'Y', TO_DATE('2011-04-05 21:16:46','YYYY-MM-DD HH24:MI:SS'), 100, TO_DATE('2011-04-05 21:16:46','YYYY-MM-DD HH24:MI:SS'), 100, 'Client', 'Client/Tenant for this installation.', 'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.', 'Y', 1120018, 1120320, NULL, 'Y', NULL, 22, 'N', 10, NULL, 'N', 'N', 'N', 'N', 'LBRA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
;

-- 27/07/2011 16h17min20s BRT
-- Novos Impostos - Kenos - www.kenos.com.br
INSERT INTO AD_Field(ad_field_id, ad_client_id, ad_org_id, isactive, created, createdby, updated, updatedby, name, description, help, iscentrallymaintained, ad_tab_id, ad_column_id, ad_fieldgroup_id, isdisplayed, displaylogic, displaylength, isreadonly, seqno, sortno, issameline, isheading, isfieldonly, isencrypted, entitytype, obscuretype, ad_reference_id, ismandatory, included_tab_id, defaultvalue, ad_reference_value_id, ad_val_rule_id, infofactoryclass)
  VALUES(1120257, 0, 0, 'Y', TO_DATE('2011-04-05 21:21:29','YYYY-MM-DD HH24:MI:SS'), 100, TO_DATE('2011-04-05 21:22:32','YYYY-MM-DD HH24:MI:SS'), 100, 'Name', 'Alphanumeric identifier of the entity', 'The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.', 'Y', 1120018, 1120329, NULL, 'Y', NULL, 22, 'N', 25, NULL, 'N', 'N', 'N', 'N', 'U', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
;

-- 27/07/2011 16h17min20s BRT
-- Novos Impostos - Kenos - www.kenos.com.br
INSERT INTO AD_Field(ad_field_id, ad_client_id, ad_org_id, isactive, created, createdby, updated, updatedby, name, description, help, iscentrallymaintained, ad_tab_id, ad_column_id, ad_fieldgroup_id, isdisplayed, displaylogic, displaylength, isreadonly, seqno, sortno, issameline, isheading, isfieldonly, isencrypted, entitytype, obscuretype, ad_reference_id, ismandatory, included_tab_id, defaultvalue, ad_reference_value_id, ad_val_rule_id, infofactoryclass)
  VALUES(1120253, 0, 0, 'Y', TO_DATE('2011-04-05 21:16:46','YYYY-MM-DD HH24:MI:SS'), 100, TO_DATE('2011-04-05 21:16:46','YYYY-MM-DD HH24:MI:SS'), 100, 'Description', 'Optional short description of the record', 'A description is limited to 255 characters.', 'Y', 1120018, 1120327, NULL, 'Y', NULL, 512, 'N', 40, NULL, 'N', 'N', 'N', 'N', 'U', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
;

-- 27/07/2011 16h17min20s BRT
-- Novos Impostos - Kenos - www.kenos.com.br
INSERT INTO AD_Field(ad_field_id, ad_client_id, ad_org_id, isactive, created, createdby, updated, updatedby, name, description, help, iscentrallymaintained, ad_tab_id, ad_column_id, ad_fieldgroup_id, isdisplayed, displaylogic, displaylength, isreadonly, seqno, sortno, issameline, isheading, isfieldonly, isencrypted, entitytype, obscuretype, ad_reference_id, ismandatory, included_tab_id, defaultvalue, ad_reference_value_id, ad_val_rule_id, infofactoryclass)
  VALUES(1120254, 0, 0, 'Y', TO_DATE('2011-04-05 21:16:47','YYYY-MM-DD HH24:MI:SS'), 100, TO_DATE('2011-04-05 21:16:47','YYYY-MM-DD HH24:MI:SS'), 100, 'Formula', 'Defines the Tax Formula', 'Defines the Tax Formula', 'Y', 1120018, 1120328, NULL, 'Y', NULL, 512, 'N', 50, NULL, 'N', 'N', 'N', 'N', 'U', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
;

-- 27/07/2011 16h17min20s BRT
-- Novos Impostos - Kenos - www.kenos.com.br
INSERT INTO AD_Field(ad_field_id, ad_client_id, ad_org_id, isactive, created, createdby, updated, updatedby, name, description, help, iscentrallymaintained, ad_tab_id, ad_column_id, ad_fieldgroup_id, isdisplayed, displaylogic, displaylength, isreadonly, seqno, sortno, issameline, isheading, isfieldonly, isencrypted, entitytype, obscuretype, ad_reference_id, ismandatory, included_tab_id, defaultvalue, ad_reference_value_id, ad_val_rule_id, infofactoryclass)
  VALUES(1120256, 0, 0, 'Y', TO_DATE('2011-04-05 21:16:48','YYYY-MM-DD HH24:MI:SS'), 100, TO_DATE('2011-04-05 21:17:10','YYYY-MM-DD HH24:MI:SS'), 100, 'Organization', 'Organizational entity within client', 'An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.', 'Y', 1120018, 1120321, NULL, 'Y', NULL, 22, 'N', 20, NULL, 'Y', 'N', 'N', 'N', 'LBRA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
;

-- 27/07/2011 16h17min20s BRT
-- Novos Impostos - Kenos - www.kenos.com.br
INSERT INTO AD_Field(ad_field_id, ad_client_id, ad_org_id, isactive, created, createdby, updated, updatedby, name, description, help, iscentrallymaintained, ad_tab_id, ad_column_id, ad_fieldgroup_id, isdisplayed, displaylogic, displaylength, isreadonly, seqno, sortno, issameline, isheading, isfieldonly, isencrypted, entitytype, obscuretype, ad_reference_id, ismandatory, included_tab_id, defaultvalue, ad_reference_value_id, ad_val_rule_id, infofactoryclass)
  VALUES(1120251, 0, 0, 'Y', TO_DATE('2011-04-05 21:16:44','YYYY-MM-DD HH24:MI:SS'), 100, TO_DATE('2011-04-05 21:21:41','YYYY-MM-DD HH24:MI:SS'), 100, 'Active', 'The record is active in the system', 'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.', 'Y', 1120018, 1120324, NULL, 'Y', NULL, 22, 'N', 30, NULL, 'Y', 'N', 'N', 'N', 'LBRA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
;

-- 27/07/2011 16h17min20s BRT
-- Novos Impostos - Kenos - www.kenos.com.br
INSERT INTO AD_Field(ad_field_id, ad_client_id, ad_org_id, isactive, created, createdby, updated, updatedby, name, description, help, iscentrallymaintained, ad_tab_id, ad_column_id, ad_fieldgroup_id, isdisplayed, displaylogic, displaylength, isreadonly, seqno, sortno, issameline, isheading, isfieldonly, isencrypted, entitytype, obscuretype, ad_reference_id, ismandatory, included_tab_id, defaultvalue, ad_reference_value_id, ad_val_rule_id, infofactoryclass)
  VALUES(1120258, 0, 0, 'Y', TO_DATE('2011-04-05 21:45:05','YYYY-MM-DD HH24:MI:SS'), 100, TO_DATE('2011-04-05 21:45:05','YYYY-MM-DD HH24:MI:SS'), 100, 'Formula (BR)', NULL, NULL, 'Y', 1000019, 1120331, NULL, 'Y', NULL, 10, 'N', 70, NULL, 'N', 'N', 'N', 'N', 'U', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
;

-- 27/07/2011 16h17min20s BRT
-- Novos Impostos - Kenos - www.kenos.com.br
INSERT INTO AD_Field(ad_field_id, ad_client_id, ad_org_id, isactive, created, createdby, updated, updatedby, name, description, help, iscentrallymaintained, ad_tab_id, ad_column_id, ad_fieldgroup_id, isdisplayed, displaylogic, displaylength, isreadonly, seqno, sortno, issameline, isheading, isfieldonly, isencrypted, entitytype, obscuretype, ad_reference_id, ismandatory, included_tab_id, defaultvalue, ad_reference_value_id, ad_val_rule_id, infofactoryclass)
  VALUES(1120259, 0, 0, 'Y', TO_DATE('2011-04-05 21:45:07','YYYY-MM-DD HH24:MI:SS'), 100, TO_DATE('2011-04-05 21:45:47','YYYY-MM-DD HH24:MI:SS'), 100, 'Formula Net (BR)', NULL, NULL, 'Y', 1000019, 1120332, NULL, 'Y', NULL, 10, 'N', 80, NULL, 'Y', 'N', 'N', 'N', 'U', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
;

-- 27/07/2011 16h17min20s BRT
-- Novos Impostos - Kenos - www.kenos.com.br
INSERT INTO AD_Field(ad_field_id, ad_client_id, ad_org_id, isactive, created, createdby, updated, updatedby, name, description, help, iscentrallymaintained, ad_tab_id, ad_column_id, ad_fieldgroup_id, isdisplayed, displaylogic, displaylength, isreadonly, seqno, sortno, issameline, isheading, isfieldonly, isencrypted, entitytype, obscuretype, ad_reference_id, ismandatory, included_tab_id, defaultvalue, ad_reference_value_id, ad_val_rule_id, infofactoryclass)
  VALUES(1120260, 0, 0, 'Y', TO_DATE('2011-04-05 21:45:08','YYYY-MM-DD HH24:MI:SS'), 100, TO_DATE('2011-05-17 16:21:30','YYYY-MM-DD HH24:MI:SS'), 100, 'Valid from', 'Valid from including this date (first day)', 'The Valid From date indicates the first day of a date range', 'Y', 1000019, 1120333, NULL, 'Y', NULL, 7, 'N', 65, NULL, 'Y', 'N', 'N', 'N', 'U', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
;

-- 27/07/2011 16h17min20s BRT
-- Novos Impostos - Kenos - www.kenos.com.br
INSERT INTO AD_Field(ad_field_id, ad_client_id, ad_org_id, isactive, created, createdby, updated, updatedby, name, description, help, iscentrallymaintained, ad_tab_id, ad_column_id, ad_fieldgroup_id, isdisplayed, displaylogic, displaylength, isreadonly, seqno, sortno, issameline, isheading, isfieldonly, isencrypted, entitytype, obscuretype, ad_reference_id, ismandatory, included_tab_id, defaultvalue, ad_reference_value_id, ad_val_rule_id, infofactoryclass)
  VALUES(1120263, 0, 0, 'Y', TO_DATE('2011-05-17 17:18:20','YYYY-MM-DD HH24:MI:SS'), 100, TO_DATE('2011-05-17 17:19:09','YYYY-MM-DD HH24:MI:SS'), 100, 'Formula Base', NULL, NULL, 'Y', 1000019, 1120389, NULL, 'Y', NULL, 10, 'N', 100, NULL, 'Y', 'N', 'N', 'N', 'U', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
;

-- 27/07/2011 16h17min20s BRT
-- Novos Impostos - Kenos - www.kenos.com.br
INSERT INTO AD_Field(ad_field_id, ad_client_id, ad_org_id, isactive, created, createdby, updated, updatedby, name, description, help, iscentrallymaintained, ad_tab_id, ad_column_id, ad_fieldgroup_id, isdisplayed, displaylogic, displaylength, isreadonly, seqno, sortno, issameline, isheading, isfieldonly, isencrypted, entitytype, obscuretype, ad_reference_id, ismandatory, included_tab_id, defaultvalue, ad_reference_value_id, ad_val_rule_id, infofactoryclass)
  VALUES(1120262, 0, 0, 'Y', TO_DATE('2011-05-17 16:21:08','YYYY-MM-DD HH24:MI:SS'), 100, TO_DATE('2011-05-17 17:19:12','YYYY-MM-DD HH24:MI:SS'), 100, 'Additional Formula', NULL, NULL, 'Y', 1000019, 1120388, NULL, 'Y', NULL, 10, 'N', 90, NULL, 'N', 'N', 'N', 'N', 'U', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
;

-- 27/07/2011 16h17min20s BRT
-- Novos Impostos - Kenos - www.kenos.com.br
INSERT INTO AD_Field(ad_field_id, ad_client_id, ad_org_id, isactive, created, createdby, updated, updatedby, name, description, help, iscentrallymaintained, ad_tab_id, ad_column_id, ad_fieldgroup_id, isdisplayed, displaylogic, displaylength, isreadonly, seqno, sortno, issameline, isheading, isfieldonly, isencrypted, entitytype, obscuretype, ad_reference_id, ismandatory, included_tab_id, defaultvalue, ad_reference_value_id, ad_val_rule_id, infofactoryclass)
  VALUES(1120264, 0, 0, 'Y', TO_DATE('2011-05-30 11:13:34','YYYY-MM-DD HH24:MI:SS'), 100, TO_DATE('2011-05-30 11:13:34','YYYY-MM-DD HH24:MI:SS'), 100, 'RPS Status', NULL, NULL, 'Y', 1000020, 1120390, 131, 'Y', NULL, 22, 'N', 715, NULL, 'Y', 'N', 'N', 'N', 'LBRA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
;

-- 27/07/2011 16h17min20s BRT
-- Novos Impostos - Kenos - www.kenos.com.br
INSERT INTO AD_Field_Trl(ad_field_id, ad_language, ad_client_id, ad_org_id, isactive, created, createdby, updated, updatedby, name, description, help, istranslated)
  VALUES(1120251, 'pt_BR', 0, 0, 'Y', TO_DATE('2011-04-05 21:16:44','YYYY-MM-DD HH24:MI:SS'), 100, TO_DATE('2011-04-05 21:16:44','YYYY-MM-DD HH24:MI:SS'), 100, 'Active', 'The record is active in the system', 'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.', 'N')
;

-- 27/07/2011 16h17min20s BRT
-- Novos Impostos - Kenos - www.kenos.com.br
INSERT INTO AD_Field_Trl(ad_field_id, ad_language, ad_client_id, ad_org_id, isactive, created, createdby, updated, updatedby, name, description, help, istranslated)
  VALUES(1120252, 'pt_BR', 0, 0, 'Y', TO_DATE('2011-04-05 21:16:46','YYYY-MM-DD HH24:MI:SS'), 100, TO_DATE('2011-04-05 21:16:46','YYYY-MM-DD HH24:MI:SS'), 100, 'Client', 'Client/Tenant for this installation.', 'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.', 'N')
;

-- 27/07/2011 16h17min20s BRT
-- Novos Impostos - Kenos - www.kenos.com.br
INSERT INTO AD_Field_Trl(ad_field_id, ad_language, ad_client_id, ad_org_id, isactive, created, createdby, updated, updatedby, name, description, help, istranslated)
  VALUES(1120253, 'pt_BR', 0, 0, 'Y', TO_DATE('2011-04-05 21:16:46','YYYY-MM-DD HH24:MI:SS'), 100, TO_DATE('2011-04-05 21:16:46','YYYY-MM-DD HH24:MI:SS'), 100, 'Description', 'Optional short description of the record', 'A description is limited to 255 characters.', 'N')
;

-- 27/07/2011 16h17min20s BRT
-- Novos Impostos - Kenos - www.kenos.com.br
INSERT INTO AD_Field_Trl(ad_field_id, ad_language, ad_client_id, ad_org_id, isactive, created, createdby, updated, updatedby, name, description, help, istranslated)
  VALUES(1120254, 'pt_BR', 0, 0, 'Y', TO_DATE('2011-04-05 21:16:47','YYYY-MM-DD HH24:MI:SS'), 100, TO_DATE('2011-04-05 21:16:47','YYYY-MM-DD HH24:MI:SS'), 100, 'Formula', 'Defines the Tax Formula', 'Defines the Tax Formula', 'N')
;

-- 27/07/2011 16h17min20s BRT
-- Novos Impostos - Kenos - www.kenos.com.br
INSERT INTO AD_Field_Trl(ad_field_id, ad_language, ad_client_id, ad_org_id, isactive, created, createdby, updated, updatedby, name, description, help, istranslated)
  VALUES(1120255, 'pt_BR', 0, 0, 'Y', TO_DATE('2011-04-05 21:16:48','YYYY-MM-DD HH24:MI:SS'), 100, TO_DATE('2011-04-05 21:16:48','YYYY-MM-DD HH24:MI:SS'), 100, 'Formula (BR)', NULL, NULL, 'N')
;

-- 27/07/2011 16h17min20s BRT
-- Novos Impostos - Kenos - www.kenos.com.br
INSERT INTO AD_Field_Trl(ad_field_id, ad_language, ad_client_id, ad_org_id, isactive, created, createdby, updated, updatedby, name, description, help, istranslated)
  VALUES(1120256, 'pt_BR', 0, 0, 'Y', TO_DATE('2011-04-05 21:16:48','YYYY-MM-DD HH24:MI:SS'), 100, TO_DATE('2011-04-05 21:16:48','YYYY-MM-DD HH24:MI:SS'), 100, 'Organization', 'Organizational entity within client', 'An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.', 'N')
;

-- 27/07/2011 16h17min20s BRT
-- Novos Impostos - Kenos - www.kenos.com.br
INSERT INTO AD_Field_Trl(ad_field_id, ad_language, ad_client_id, ad_org_id, isactive, created, createdby, updated, updatedby, name, description, help, istranslated)
  VALUES(1120257, 'pt_BR', 0, 0, 'Y', TO_DATE('2011-04-05 21:21:29','YYYY-MM-DD HH24:MI:SS'), 100, TO_DATE('2011-04-05 21:21:29','YYYY-MM-DD HH24:MI:SS'), 100, 'Name', 'Alphanumeric identifier of the entity', 'The name of an entity (record) is used as an default search option in addition to the search key. The name is up to 60 characters in length.', 'N')
;

-- 27/07/2011 16h17min20s BRT
-- Novos Impostos - Kenos - www.kenos.com.br
INSERT INTO AD_Field_Trl(ad_field_id, ad_language, ad_client_id, ad_org_id, isactive, created, createdby, updated, updatedby, name, description, help, istranslated)
  VALUES(1120258, 'pt_BR', 0, 0, 'Y', TO_DATE('2011-04-05 21:45:05','YYYY-MM-DD HH24:MI:SS'), 100, TO_DATE('2011-04-05 21:45:05','YYYY-MM-DD HH24:MI:SS'), 100, 'Formula (BR)', NULL, NULL, 'N')
;

-- 27/07/2011 16h17min20s BRT
-- Novos Impostos - Kenos - www.kenos.com.br
INSERT INTO AD_Field_Trl(ad_field_id, ad_language, ad_client_id, ad_org_id, isactive, created, createdby, updated, updatedby, name, description, help, istranslated)
  VALUES(1120259, 'pt_BR', 0, 0, 'Y', TO_DATE('2011-04-05 21:45:07','YYYY-MM-DD HH24:MI:SS'), 100, TO_DATE('2011-04-05 21:45:07','YYYY-MM-DD HH24:MI:SS'), 100, 'Formula Net (BR)', NULL, NULL, 'N')
;

-- 27/07/2011 16h17min20s BRT
-- Novos Impostos - Kenos - www.kenos.com.br
INSERT INTO AD_Field_Trl(ad_field_id, ad_language, ad_client_id, ad_org_id, isactive, created, createdby, updated, updatedby, name, description, help, istranslated)
  VALUES(1120260, 'pt_BR', 0, 0, 'Y', TO_DATE('2011-04-05 21:45:08','YYYY-MM-DD HH24:MI:SS'), 100, TO_DATE('2011-04-05 21:45:08','YYYY-MM-DD HH24:MI:SS'), 100, 'Valid from', 'Valid from including this date (first day)', 'The Valid From date indicates the first day of a date range', 'N')
;

-- 27/07/2011 16h17min20s BRT
-- Novos Impostos - Kenos - www.kenos.com.br
INSERT INTO AD_Field_Trl(ad_field_id, ad_language, ad_client_id, ad_org_id, isactive, created, createdby, updated, updatedby, name, description, help, istranslated)
  VALUES(1120262, 'pt_BR', 0, 0, 'Y', TO_DATE('2011-05-17 16:21:08','YYYY-MM-DD HH24:MI:SS'), 100, TO_DATE('2011-05-17 16:21:08','YYYY-MM-DD HH24:MI:SS'), 100, 'Additional Formula', NULL, NULL, 'N')
;

-- 27/07/2011 16h17min20s BRT
-- Novos Impostos - Kenos - www.kenos.com.br
INSERT INTO AD_Field_Trl(ad_field_id, ad_language, ad_client_id, ad_org_id, isactive, created, createdby, updated, updatedby, name, description, help, istranslated)
  VALUES(1120263, 'pt_BR', 0, 0, 'Y', TO_DATE('2011-05-17 17:18:20','YYYY-MM-DD HH24:MI:SS'), 100, TO_DATE('2011-05-17 17:18:20','YYYY-MM-DD HH24:MI:SS'), 100, 'Formula Base', NULL, NULL, 'N')
;

-- 27/07/2011 16h17min20s BRT
-- Novos Impostos - Kenos - www.kenos.com.br
INSERT INTO AD_Field_Trl(ad_field_id, ad_language, ad_client_id, ad_org_id, isactive, created, createdby, updated, updatedby, name, description, help, istranslated)
  VALUES(1120264, 'pt_BR', 0, 0, 'Y', TO_DATE('2011-05-30 11:13:34','YYYY-MM-DD HH24:MI:SS'), 100, TO_DATE('2011-05-30 11:13:34','YYYY-MM-DD HH24:MI:SS'), 100, 'RPS Status', NULL, NULL, 'N')
;

-- 27/07/2011 16h17min20s BRT
-- Novos Impostos - Kenos - www.kenos.com.br
INSERT INTO AD_Menu(ad_menu_id, ad_client_id, ad_org_id, isactive, created, createdby, updated, name, updatedby, description, issummary, issotrx, isreadonly, action, ad_window_id, ad_workflow_id, ad_task_id, ad_process_id, ad_form_id, ad_workbench_id, entitytype, iscentrallymaintained)
  VALUES(1120018, 0, 0, 'Y', TO_DATE('2011-04-05 21:18:10','YYYY-MM-DD HH24:MI:SS'), 100, TO_DATE('2011-04-05 21:18:10','YYYY-MM-DD HH24:MI:SS'), 'Formula', 100, NULL, 'N', 'N', 'N', 'W', 1120010, NULL, NULL, NULL, NULL, NULL, 'U', 'Y')
;

-- 27/07/2011 16h17min20s BRT
-- Novos Impostos - Kenos - www.kenos.com.br
INSERT INTO AD_Menu_Trl(ad_menu_id, ad_language, ad_client_id, ad_org_id, isactive, created, createdby, updated, updatedby, name, description, istranslated)
  VALUES(1120018, 'pt_BR', 0, 0, 'Y', TO_DATE('2011-04-05 21:18:10','YYYY-MM-DD HH24:MI:SS'), 100, TO_DATE('2011-04-05 21:18:10','YYYY-MM-DD HH24:MI:SS'), 100, 'Formula', NULL, 'N')
;

-- 27/07/2011 16h17min20s BRT
-- Novos Impostos - Kenos - www.kenos.com.br
INSERT INTO AD_ModelValidator(ad_client_id, ad_modelvalidator_id, ad_org_id, created, createdby, updated, updatedby, isactive, name, description, help, entitytype, modelvalidationclass, seqno)
  VALUES(0, 1120000, 0, TO_DATE('2011-05-13 13:48:11','YYYY-MM-DD HH24:MI:SS'), 100, TO_DATE('2011-05-13 13:48:11','YYYY-MM-DD HH24:MI:SS'), 100, 'Y', 'New Validator Order', 'New Validator Order', NULL, 'LBRA', 'org.adempierelbr.validator.VLBROrder', 1)
;

-- 27/07/2011 16h17min20s BRT
-- Novos Impostos - Kenos - www.kenos.com.br
INSERT INTO AD_ModelValidator(ad_client_id, ad_modelvalidator_id, ad_org_id, created, createdby, updated, updatedby, isactive, name, description, help, entitytype, modelvalidationclass, seqno)
  VALUES(0, 1120001, 0, TO_DATE('2011-05-13 13:48:11','YYYY-MM-DD HH24:MI:SS'), 100, TO_DATE('2011-05-13 13:48:11','YYYY-MM-DD HH24:MI:SS'), 100, 'Y', 'New Validator Tax', 'New Validator Tax', NULL, 'LBRA', 'org.adempierelbr.validator.VLBRTax', 2)
;

-- 28/07/2011 16h58min18s BRT
-- Novos Impostos - Kenos - www.kenos.com.br
CREATE TABLE LBR_Formula (AD_Client_ID NUMBER(10) NOT NULL, AD_Org_ID NUMBER(10) NOT NULL, Created DATE NOT NULL, CreatedBy NUMBER(10) NOT NULL, Description NVARCHAR2(512) DEFAULT NULL , IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, LBR_Formula_ID NUMBER(10) NOT NULL, Name NVARCHAR2(40) NOT NULL, Updated DATE NOT NULL, UpdatedBy NUMBER(10) NOT NULL, lbr_Formula NVARCHAR2(512) NOT NULL, CONSTRAINT LBR_Formula_Key PRIMARY KEY (LBR_Formula_ID))
;

-- 28/07/2011 17h26min19s BRT
-- Novos Impostos - Kenos - www.kenos.com.br
ALTER TABLE LBR_TaxFormula ADD LBR_FormulaAdd_ID NUMBER(10) DEFAULT NULL 
;

-- 28/07/2011 17h26min23s BRT
-- Novos Impostos - Kenos - www.kenos.com.br
ALTER TABLE LBR_TaxFormula ADD LBR_FormulaBase_ID NUMBER(10) DEFAULT NULL 
;

-- 28/07/2011 17h26min30s BRT
-- Novos Impostos - Kenos - www.kenos.com.br
ALTER TABLE LBR_TaxFormula ADD LBR_FormulaNet_ID NUMBER(10) DEFAULT NULL 
;

-- 28/07/2011 17h26min36s BRT
-- Novos Impostos - Kenos - www.kenos.com.br
ALTER TABLE LBR_TaxFormula ADD LBR_Formula_ID NUMBER(10) DEFAULT NULL 
;

-- 28/07/2011 21h33min7s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
ALTER TABLE LBR_TaxFormula ADD ValidFrom DATE DEFAULT NULL
;

-- 28/07/2011 17h48min26s BRT
-- Novos Impostos - Kenos - www.kenos.com.br
UPDATE AD_Column SET IsMandatory='N',Updated=TO_DATE('2011-07-28 17:48:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000465
;

-- 28/07/2011 17h49min3s BRT
-- Novos Impostos - Kenos - www.kenos.com.br
UPDATE AD_Column SET IsMandatory='N',Updated=TO_DATE('2011-07-28 17:49:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000472
;

-- 28/07/2011 17h50min27s BRT
-- Novos Impostos - Kenos - www.kenos.com.br
ALTER TABLE LBR_TaxFormula MODIFY lbr_Formula NVARCHAR2(2000) DEFAULT NULL 
;

-- 28/07/2011 17h50min33s BRT
-- Novos Impostos - Kenos - www.kenos.com.br
ALTER TABLE LBR_TaxFormula MODIFY lbr_FormulaNetWorth NVARCHAR2(2000) DEFAULT NULL 
;

-- 28/07/2011 17h51min50s BRT
-- Novos Impostos - Kenos - www.kenos.com.br
UPDATE AD_Column SET IsIdentifier='Y',Updated=TO_DATE('2011-07-28 17:51:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000450
;

-- 28/07/2011 17h56min52s BRT
-- Novos Impostos - Kenos - www.kenos.com.br
UPDATE AD_Field SET IsDisplayed='N',Updated=TO_DATE('2011-07-28 17:56:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000269
;

-- 28/07/2011 17h56min55s BRT
-- Novos Impostos - Kenos - www.kenos.com.br
UPDATE AD_Field SET IsDisplayed='N',Updated=TO_DATE('2011-07-28 17:56:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000297
;

-- 28/07/2011 17h56min59s BRT
-- Novos Impostos - Kenos - www.kenos.com.br
UPDATE AD_Field SET IsDisplayed='N',Updated=TO_DATE('2011-07-28 17:56:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000639
;

-- 28/07/2011 17h58min46s BRT
-- Novos Impostos - Kenos - www.kenos.com.br
UPDATE AD_Ref_List SET IsActive='N',Updated=TO_DATE('2011-07-28 17:58:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1000119
;

-- 28/07/2011 17h58min48s BRT
-- Novos Impostos - Kenos - www.kenos.com.br
UPDATE AD_Ref_List SET IsActive='Y',Updated=TO_DATE('2011-07-28 17:58:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=226
;

-- 28/07/2011 17h58min51s BRT
-- Novos Impostos - Kenos - www.kenos.com.br
UPDATE AD_Ref_List SET IsActive='Y',Updated=TO_DATE('2011-07-28 17:58:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=228
;

-- 28/07/2011 18h2min43s BRT
-- Novos Impostos - Kenos - www.kenos.com.br
UPDATE AD_Table SET AccessLevel='6',Updated=TO_DATE('2011-07-28 18:02:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=1000025
;

-- 28/07/2011 18h2min49s BRT
-- Novos Impostos - Kenos - www.kenos.com.br
UPDATE AD_Table SET AccessLevel='6',Updated=TO_DATE('2011-07-28 18:02:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=1000026
;

INSERT INTO lbr_formula(ad_client_id, ad_org_id, created, createdby, description, isactive, lbr_formula_id, updated, updatedby, lbr_formula, name)
  VALUES(0, 0, TO_DATE('2011-04-15 18:33:44','YYYY-MM-DD HH24:MI:SS'), 100, 'Fórmula para cálculo de imposto de produto, levando em consideração o valor líquido teremos um fator para chegar no valor com PIS, COFINS, ICMS com o IVA. Para operações onde o IPI não entra na Base de Cálculo do ICMS (ICMSPROD).', 'Y', 1000005, TO_DATE('2011-04-16 16:10:45','YYYY-MM-DD HH24:MI:SS'), 100, '(((1+(PISPROD+COFINSPROD)/(1-(PISPROD+COFINSPROD)-ICMSPROD)))/(1-ICMSPROD))*(1+IPI)*(1+IVA)', 'FLBR06')
;
INSERT INTO lbr_formula(ad_client_id, ad_org_id, created, createdby, description, isactive, lbr_formula_id, updated, updatedby, lbr_formula, name)
  VALUES(0, 0, TO_DATE('2011-04-05 21:27:19','YYYY-MM-DD HH24:MI:SS'), 100, 'Fórmula para cálculo de imposto de produto, levando em consideração o valor líquido teremos um fator para chegar no valor com PIS, COFINS e ICMS. Para operações onde o IPI entra na base de cálculo do ICMS.', 'Y', 1000000, TO_DATE('2011-04-16 16:10:22','YYYY-MM-DD HH24:MI:SS'), 100, '(1+(PISPROD+COFINSPROD)/(1-(PISPROD+COFINSPROD)-ICMSPROD*(1+IPI)))/(1-ICMSPROD*(1+IPI))', 'FLBR01')
;
INSERT INTO lbr_formula(ad_client_id, ad_org_id, created, createdby, description, isactive, lbr_formula_id, updated, updatedby, lbr_formula, name)
  VALUES(0, 0, TO_DATE('2011-04-15 18:34:12','YYYY-MM-DD HH24:MI:SS'), 100, 'Fórmula para cálculo de imposto de produto, levando em consideração o valor líquido teremos um fator para chegar no valor com PIS, COFINS, ICMS com o IVA e Diferencial de Alíquota. Para operações onde o IPI não entra na Base de Cálculo do ICMS (ICMSPROD).', 'Y', 1000006, TO_DATE('2011-04-16 16:12:38','YYYY-MM-DD HH24:MI:SS'), 100, '(((1+(PISPROD+COFINSPROD)/(1-(PISPROD+COFINSPROD)-ICMSPROD)))/(1-ICMSPROD))*(1+IPI)*((1+IVA)*((1-ICMSPROD)/(1-ICMSINTERNO)))-FLBR06', 'FLBR07')
;
INSERT INTO lbr_formula(ad_client_id, ad_org_id, created, createdby, description, isactive, lbr_formula_id, updated, updatedby, lbr_formula, name)
  VALUES(0, 0, TO_DATE('2011-04-15 16:42:04','YYYY-MM-DD HH24:MI:SS'), 100, 'Fórmula para cálculo de imposto de produto, levando em consideração o valor líquido teremos um fator para chegar no valor com PIS, COFINS, ICMS com o IVA e Diferencial de Alíquota. Para operações onde o IPI entra na Base de Cálculo do ICMS.', 'Y', 1000004, TO_DATE('2011-04-16 16:12:43','YYYY-MM-DD HH24:MI:SS'), 100, '(((1+(PISPROD+COFINSPROD)/(1-(PISPROD+COFINSPROD)-ICMSPROD*(1+IPI)))/(1-ICMSPROD*(1+IPI)))*(1+IPI))*((1+IVA)*((1-ICMSPROD)/(1-ICMSINTERNO)))-FLBR04', 'FLBR05')
;
INSERT INTO lbr_formula(ad_client_id, ad_org_id, created, createdby, description, isactive, lbr_formula_id, updated, updatedby, lbr_formula, name)
  VALUES(0, 0, TO_DATE('2011-04-05 21:28:41','YYYY-MM-DD HH24:MI:SS'), 100, 'Fórmula para cálculo de imposto de produto, levando em consideração o valor líquido teremos um fator para chegar no valor com PIS, COFINS, ICMS e IPI. Para operações onde o IPI entra na base de cálculo do ICMS.', 'Y', 1000001, TO_DATE('2011-04-16 16:10:29','YYYY-MM-DD HH24:MI:SS'), 100, '((1+(PISPROD+COFINSPROD)/(1-(PISPROD+COFINSPROD)-ICMSPROD*(1+IPI)))/(1-ICMSPROD*(1+IPI)))*(1+IPI)', 'FLBR02')
;
INSERT INTO lbr_formula(ad_client_id, ad_org_id, created, createdby, description, isactive, lbr_formula_id, updated, updatedby, lbr_formula, name)
  VALUES(0, 0, TO_DATE('2011-04-05 21:32:24','YYYY-MM-DD HH24:MI:SS'), 100, 'Fórmula para cálculo de imposto de produto, levando em consideração o valor líquido teremos um fator para chegar no valor com PIS, COFINS e ICMS. Para operações onde o IPI não entra na Base de Cálculo do ICMS.', 'Y', 1000002, TO_DATE('2011-04-16 16:10:34','YYYY-MM-DD HH24:MI:SS'), 100, '((1+(PISPROD+COFINSPROD)/(1-(PISPROD+COFINSPROD)-ICMSPROD)))/(1-ICMSPROD)', 'FLBR03')
;
INSERT INTO lbr_formula(ad_client_id, ad_org_id, created, createdby, description, isactive, lbr_formula_id, updated, updatedby, lbr_formula, name)
  VALUES(0, 0, TO_DATE('2011-04-15 16:41:27','YYYY-MM-DD HH24:MI:SS'), 100, 'Fórmula para cálculo de imposto de produto, levando em consideração o valor líquido teremos um fator para chegar no valor com PIS, COFINS, ICMS com o IVA. Para operações onde o IPI entra na Base de Cálculo do ICMS.', 'Y', 1000003, TO_DATE('2011-04-16 16:10:38','YYYY-MM-DD HH24:MI:SS'), 100, '(((1+(PISPROD+COFINSPROD)/(1-(PISPROD+COFINSPROD)-ICMSPROD*(1+IPI)))/(1-ICMSPROD*(1+IPI)))*(1+IPI))*(1+IVA)', 'FLBR04')
;
INSERT INTO lbr_formula(ad_client_id, ad_org_id, created, createdby, description, isactive, lbr_formula_id, updated, updatedby, lbr_formula, name)
  VALUES(0, 0, TO_DATE('2011-05-17 16:47:31','YYYY-MM-DD HH24:MI:SS'), 100, 'Valor do Frete + Valor', 'Y', 1000014, TO_DATE('2011-05-17 17:20:56','YYYY-MM-DD HH24:MI:SS'), 100, '(AMT + FREIGHT)', 'Frete + Valor')
;
INSERT INTO lbr_formula(ad_client_id, ad_org_id, created, createdby, description, isactive, lbr_formula_id, updated, updatedby, lbr_formula, name)
  VALUES(0, 0, TO_DATE('2011-04-20 23:52:17','YYYY-MM-DD HH24:MI:SS'), 100, 'Fator 1, ou seja, o próprio valor é a base.', 'Y', 1000007, TO_DATE('2011-08-05 17:26:20','YYYY-MM-DD HH24:MI:SS'), 100, '(1.0)', 'FLBR08')
;
INSERT INTO lbr_formula(ad_client_id, ad_org_id, created, createdby, description, isactive, lbr_formula_id, updated, updatedby, lbr_formula, name)
  VALUES(0, 0, TO_DATE('2011-04-20 23:52:39','YYYY-MM-DD HH24:MI:SS'), 100, 'Fórmula para cálculo de imposto de produto, levando em consideração o valor líquido teremos um fator para chegar no valor com PIS, COFINS. Para operações de Importação.', 'Y', 1000008, TO_DATE('2011-08-05 17:27:23','YYYY-MM-DD HH24:MI:SS'), 100, '(1/(1+II))*((((1+ICMSPROD*(II+IPI*(1+II)))/((1-PISPROD-COFINSPROD)*(1-ICMSPROD)))))', 'FLBR09')
;
INSERT INTO lbr_formula(ad_client_id, ad_org_id, created, createdby, description, isactive, lbr_formula_id, updated, updatedby, lbr_formula, name)
  VALUES(0, 0, TO_DATE('2011-04-20 23:53:16','YYYY-MM-DD HH24:MI:SS'), 100, 'Fórmula para cálculo de imposto de produto, levando em consideração o valor CIF+II teremos um fator para chegar no valor CIF. Para operações de Importação.', 'Y', 1000010, TO_DATE('2011-08-05 17:28:35','YYYY-MM-DD HH24:MI:SS'), 100, '1/(1+II)', 'FLBR11')
;
INSERT INTO lbr_formula(ad_client_id, ad_org_id, created, createdby, description, isactive, lbr_formula_id, updated, updatedby, lbr_formula, name)
  VALUES(0, 0, TO_DATE('2011-04-20 23:53:00','YYYY-MM-DD HH24:MI:SS'), 100, 'Fórmula para cálculo de imposto de produto, levando em consideração o CIF+II teremos um fator para chegar no valor com PIS, COFINS e ICMS. Para operações de Importação.', 'Y', 1000009, TO_DATE('2011-08-05 17:29:02','YYYY-MM-DD HH24:MI:SS'), 100, '((1+((FLBR09*(PISPROD+COFINSPROD))+(IPI)))/(1-ICMSPROD))', 'FLBR10')
;
INSERT INTO lbr_formula(ad_client_id, ad_org_id, created, createdby, description, isactive, lbr_formula_id, updated, updatedby, lbr_formula, name)
  VALUES(0, 0, TO_DATE('2011-05-06 14:07:38','YYYY-MM-DD HH24:MI:SS'), 100, 'Fórmula para cálculo de imposto de produto, levando em consideração o valor CIF+II teremos um fator para chegar no valor do Imposto sobre SISCOMEX. Para operações de Importação.', 'Y', 1000011, TO_DATE('2011-08-05 17:29:50','YYYY-MM-DD HH24:MI:SS'), 100, 'SISCOMEX/(1-ICMSPROD)', 'FLBR12')
;
INSERT INTO lbr_formula(ad_client_id, ad_org_id, created, createdby, description, isactive, lbr_formula_id, updated, updatedby, lbr_formula, name)
  VALUES(0, 0, TO_DATE('2011-05-12 00:35:10','YYYY-MM-DD HH24:MI:SS'), 100, 'Fator de Serviço', 'Y', 1000013, TO_DATE('2011-08-05 17:30:17','YYYY-MM-DD HH24:MI:SS'), 100, '1/(1-(PISSERV+COFINSSERV+IR+ISS+CSLL))', 'FLBR13')
;
INSERT INTO lbr_formula(ad_client_id, ad_org_id, created, createdby, description, isactive, lbr_formula_id, updated, updatedby, lbr_formula, name)
  VALUES(0, 0, TO_DATE('2011-08-05 17:30:46','YYYY-MM-DD HH24:MI:SS'), 100, 'Fórmula para cálculo de imposto de produto, levando em consideração o valor com PIS, COFINS e ICMS, adiciona o IPI e o IVA.', 'Y', 1000015, TO_DATE('2011-08-05 17:32:20','YYYY-MM-DD HH24:MI:SS'), 100, '(1+IPI)*(1+IVA)', 'FLBR14')
;
INSERT INTO lbr_formula(ad_client_id, ad_org_id, created, createdby, description, isactive, lbr_formula_id, updated, updatedby, lbr_formula, name)
  VALUES(0, 0, TO_DATE('2011-08-05 17:36:02','YYYY-MM-DD HH24:MI:SS'), 100, 'Fórmula para cálculo de imposto de produto, levando em consideração o valor com PIS, COFINS e ICMS, adiciona o IPI.', 'Y', 1000016, TO_DATE('2011-08-05 17:36:02','YYYY-MM-DD HH24:MI:SS'), 100, '(1+IPI)', 'FLBR15')
;

-- 28/07/2011 21h40min15s BRT
-- Novos Impostos - Kenos - www.kenos.com.br
INSERT INTO LBR_TaxName (AD_Client_ID,AD_Org_ID,Created,CreatedBy,HasWithHold,IsActive,LBR_TaxName_ID,Name,Updated,UpdatedBy,WithHoldThreshold,lbr_TaxType,lbr_WithholdFrequency) VALUES (0,0,TO_DATE('2011-07-28 21:40:14','YYYY-MM-DD HH24:MI:SS'),100,'N','Y',1106000,'ICMSPROD',TO_DATE('2011-07-28 21:40:14','YYYY-MM-DD HH24:MI:SS'),100,0,'P','M')
;

-- 28/07/2011 21h40min57s BRT
-- Novos Impostos - Kenos - www.kenos.com.br
INSERT INTO LBR_TaxName (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,HasWithHold,IsActive,LBR_TaxName_ID,Name,Updated,UpdatedBy,WithHoldThreshold,lbr_TaxType,lbr_WithholdFrequency) VALUES (0,0,TO_DATE('2011-07-28 21:40:57','YYYY-MM-DD HH24:MI:SS'),100,'Programa de Integração Social','N','Y',1106001,'PISPROD',TO_DATE('2011-07-28 21:40:57','YYYY-MM-DD HH24:MI:SS'),100,0,'P','M')
;

-- 28/07/2011 21h42min33s BRT
-- Novos Impostos - Kenos - www.kenos.com.br
INSERT INTO LBR_TaxName (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,HasWithHold,IsActive,LBR_TaxName_ID,Name,Updated,UpdatedBy,WithHoldThreshold,lbr_TaxType,lbr_WithholdFrequency) VALUES (0,0,TO_DATE('2011-07-28 21:42:32','YYYY-MM-DD HH24:MI:SS'),100,'Contribuição para o Financiamento da Seguridade Social (COFINS) é uma contribuição federal, de natureza tributária, incidente sobre a receita bruta das empresas em geral, destinada a financiar a seguridade social.','N','Y',1106002,'COFINSPROD',TO_DATE('2011-07-28 21:42:32','YYYY-MM-DD HH24:MI:SS'),100,0,'P','M')
;

-- 28/07/2011 21h42min50s BRT
-- Novos Impostos - Kenos - www.kenos.com.br
UPDATE LBR_TaxName SET Description='Programa de Integração Social, mais conhecido como PIS/PASEP ou PIS, é uma contribuição social de natureza tributária, devida pelas pessoas jurídicas, com objetivo de financiar o pagamento do seguro-desemprego e do abono para os trabalhadores que ganham a',Updated=TO_DATE('2011-07-28 21:42:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_TaxName_ID=1106001
;

-- 28/07/2011 21h43min43s BRT
-- Novos Impostos - Kenos - www.kenos.com.br
UPDATE LBR_TaxName SET Description='O Imposto sobre Operações relativas à Circulação de Mercadorias e Prestação de Serviços de Transporte Interestadual e Intermunicipal e de Comunicação (ICMS) é um imposto estadual.',Updated=TO_DATE('2011-07-28 21:43:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_TaxName_ID=1106000
;

-- 28/07/2011 21h44min14s BRT
-- Novos Impostos - Kenos - www.kenos.com.br
UPDATE LBR_TaxName SET Description='Programa de Integração Social, mais conhecido como PIS/PASEP ou PIS, é uma contribuição social de natureza tributária, devida pelas pessoas jurídicas, com objetivo de financiar o pagamento do seguro-desemprego e do abono.',Updated=TO_DATE('2011-07-28 21:44:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_TaxName_ID=1106001
;

-- 28/07/2011 21h45min12s BRT
-- Novos Impostos - Kenos - www.kenos.com.br
INSERT INTO LBR_TaxName (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,HasWithHold,IsActive,LBR_TaxName_ID,Name,Updated,UpdatedBy,WithHoldThreshold,lbr_TaxType,lbr_WithholdFrequency) VALUES (0,0,TO_DATE('2011-07-28 21:45:11','YYYY-MM-DD HH24:MI:SS'),100,'Imposto sobre produtos industrializados','N','Y',1106003,'IPI',TO_DATE('2011-07-28 21:45:11','YYYY-MM-DD HH24:MI:SS'),100,0,'P','M')
;

-- 28/07/2011 21h45min28s BRT
-- Novos Impostos - Kenos - www.kenos.com.br
INSERT INTO LBR_TaxName (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,HasWithHold,IsActive,LBR_TaxName_ID,Name,Updated,UpdatedBy,WithHoldThreshold,lbr_TaxType,lbr_WithholdFrequency) VALUES (0,0,TO_DATE('2011-07-28 21:45:28','YYYY-MM-DD HH24:MI:SS'),100,'Imposto de Importação','N','Y',1106004,'II',TO_DATE('2011-07-28 21:45:28','YYYY-MM-DD HH24:MI:SS'),100,0,'P','M')
;

-- 28/07/2011 21h47min53s BRT
-- Novos Impostos - Kenos - www.kenos.com.br
INSERT INTO LBR_TaxName (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,HasWithHold,IsActive,LBR_TaxName_ID,Name,Updated,UpdatedBy,WithHoldThreshold,lbr_TaxType,lbr_WithholdFrequency) VALUES (0,0,TO_DATE('2011-07-28 21:47:53','YYYY-MM-DD HH24:MI:SS'),100,'O Imposto sobre Operações relativas à Circulação de Mercadorias e Prestação de Serviços de Transporte Interestadual e Intermunicipal e de Comunicação (ICMS) é um imposto estadual.','N','Y',1106005,'ICMSSERV',TO_DATE('2011-07-28 21:47:53','YYYY-MM-DD HH24:MI:SS'),100,0,'P','M')
;

-- 28/07/2011 21h48min53s BRT
-- Novos Impostos - Kenos - www.kenos.com.br
INSERT INTO LBR_TaxName (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,HasWithHold,IsActive,LBR_TaxName_ID,Name,Updated,UpdatedBy,WithHoldThreshold,lbr_TaxType,lbr_WithholdFrequency) VALUES (0,0,TO_DATE('2011-07-28 21:48:53','YYYY-MM-DD HH24:MI:SS'),100,'Programa de Integração Social, mais conhecido como PIS/PASEP ou PIS, é uma contribuição social de natureza tributária, devida pelas pessoas jurídicas, com objetivo de financiar o pagamento do seguro-desemprego e do abono.','Y','Y',1106006,'PISSERV ',TO_DATE('2011-07-28 21:48:53','YYYY-MM-DD HH24:MI:SS'),100,5000.000000000000,'S','M')
;

-- 28/07/2011 21h49min16s BRT
-- Novos Impostos - Kenos - www.kenos.com.br
INSERT INTO LBR_TaxName (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,HasWithHold,IsActive,LBR_TaxName_ID,Name,Updated,UpdatedBy,WithHoldThreshold,lbr_TaxType,lbr_WithholdFrequency) VALUES (0,0,TO_DATE('2011-07-28 21:49:16','YYYY-MM-DD HH24:MI:SS'),100,'Contribuição para o Financiamento da Seguridade Social (COFINS) é uma contribuição federal, de natureza tributária, incidente sobre a receita bruta das empresas em geral, destinada a financiar a seguridade social.','Y','Y',1106007,'COFINSSERV',TO_DATE('2011-07-28 21:49:16','YYYY-MM-DD HH24:MI:SS'),100,5000.000000000000,'S','M')
;

-- 28/07/2011 21h49min56s BRT
-- Novos Impostos - Kenos - www.kenos.com.br
INSERT INTO LBR_TaxName (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,HasWithHold,IsActive,LBR_TaxName_ID,Name,Updated,UpdatedBy,WithHoldThreshold,lbr_TaxType,lbr_WithholdFrequency) VALUES (0,0,TO_DATE('2011-07-28 21:49:55','YYYY-MM-DD HH24:MI:SS'),100,'Imposto de Renda','Y','Y',1106008,'IR',TO_DATE('2011-07-28 21:49:55','YYYY-MM-DD HH24:MI:SS'),100,666.670000000000,'S','M')
;

-- 28/07/2011 21h50min36s BRT
-- Novos Impostos - Kenos - www.kenos.com.br
INSERT INTO LBR_TaxName (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,HasWithHold,IsActive,LBR_TaxName_ID,Name,Updated,UpdatedBy,WithHoldThreshold,lbr_TaxType,lbr_WithholdFrequency) VALUES (0,0,TO_DATE('2011-07-28 21:50:35','YYYY-MM-DD HH24:MI:SS'),100,'Contribuição Social sobre o Lucro Líquido','Y','Y',1106009,'CSLL',TO_DATE('2011-07-28 21:50:35','YYYY-MM-DD HH24:MI:SS'),100,5000.000000000000,'S','M')
;

-- 28/07/2011 21h51min19s BRT
-- Novos Impostos - Kenos - www.kenos.com.br
INSERT INTO LBR_TaxName (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,HasWithHold,IsActive,LBR_TaxName_ID,Name,Updated,UpdatedBy,WithHoldThreshold,lbr_TaxType,lbr_WithholdFrequency) VALUES (0,0,TO_DATE('2011-07-28 21:51:19','YYYY-MM-DD HH24:MI:SS'),100,'Instituto Nacional de Seguro Social','N','Y',1106010,'INSS',TO_DATE('2011-07-28 21:51:19','YYYY-MM-DD HH24:MI:SS'),100,0,'S','M')
;

-- 28/07/2011 21h51min54s BRT
-- Novos Impostos - Kenos - www.kenos.com.br
INSERT INTO LBR_TaxName (AD_Client_ID,AD_Org_ID,Created,CreatedBy,HasWithHold,IsActive,LBR_TaxName_ID,Name,Updated,UpdatedBy,WithHoldThreshold,lbr_TaxType,lbr_WithholdFrequency) VALUES (0,0,TO_DATE('2011-07-28 21:51:54','YYYY-MM-DD HH24:MI:SS'),100,'N','Y',1106011,'ISS ',TO_DATE('2011-07-28 21:51:54','YYYY-MM-DD HH24:MI:SS'),100,0,'S','M')
;

-- 28/07/2011 21h52min9s BRT
-- Novos Impostos - Kenos - www.kenos.com.br
UPDATE LBR_TaxName SET Description='Imposto Sobre Serviços',Updated=TO_DATE('2011-07-28 21:52:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_TaxName_ID=1106011
;

-- 28/07/2011 21h53min13s BRT
-- Novos Impostos - Kenos - www.kenos.com.br
INSERT INTO LBR_TaxName (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,HasWithHold,IsActive,LBR_TaxName_ID,LBR_TaxSubstitution_ID,Name,Updated,UpdatedBy,WithHoldThreshold,lbr_TaxType,lbr_WithholdFrequency) VALUES (0,0,TO_DATE('2011-07-28 21:53:13','YYYY-MM-DD HH24:MI:SS'),100,'O Imposto sobre Operações relativas à Circulação de Mercadorias e Prestação de Serviços de Transporte Interestadual e Intermunicipal e de Comunicação (ICMS) é um imposto estadual. Para operações de Substituição Tributária','N','Y',1106012,1106000,'ICMSST',TO_DATE('2011-07-28 21:53:13','YYYY-MM-DD HH24:MI:SS'),100,0,'T','M')
;

-- 28/07/2011 21h55min1s BRT
-- Novos Impostos - Kenos - www.kenos.com.br
INSERT INTO LBR_TaxName (AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,HasWithHold,IsActive,LBR_TaxName_ID,Name,Updated,UpdatedBy,WithHoldThreshold,lbr_TaxType,lbr_WithholdFrequency) VALUES (0,0,TO_DATE('2011-07-28 21:55:00','YYYY-MM-DD HH24:MI:SS'),100,'Índice de Valor Agregado. *** Especial *** Não Alterar ***','N','Y',1106013,'IVA ',TO_DATE('2011-07-28 21:55:00','YYYY-MM-DD HH24:MI:SS'),100,0,'P','M')
;

-- 28/07/2011 22h6min52s BRT
-- Novos Impostos - Kenos - www.kenos.com.br
ALTER TABLE LBR_TaxFormula MODIFY lbr_Formula NVARCHAR2(2000) DEFAULT NULL 
;

-- 28/07/2011 22h6min52s BRT
-- Novos Impostos - Kenos - www.kenos.com.br
ALTER TABLE LBR_TaxFormula MODIFY lbr_Formula DEFAULT NULL
;

-- 28/07/2011 22h6min59s BRT
-- Novos Impostos - Kenos - www.kenos.com.br
ALTER TABLE LBR_TaxFormula MODIFY lbr_FormulaNetWorth NVARCHAR2(2000) DEFAULT NULL 
;

-- 28/07/2011 22h6min59s BRT
-- Novos Impostos - Kenos - www.kenos.com.br
ALTER TABLE LBR_TaxFormula MODIFY lbr_FormulaNetWorth DEFAULT NULL
;

-- 28/07/2011 22h8min15s BRT
-- Novos Impostos - Kenos - www.kenos.com.br
INSERT INTO LBR_TaxFormula (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,LBR_FormulaBase_ID,LBR_FormulaNet_ID,LBR_Formula_ID,LBR_TaxFormula_ID,LBR_TaxName_ID,Updated,UpdatedBy,ValidFrom,lbr_TransactionType) VALUES (0,0,TO_DATE('2011-07-28 22:08:04','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000014,1000002,1000002,1106001,1106000,TO_DATE('2011-07-28 22:08:04','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2000-01-01','YYYY-MM-DD'),'MAN')
;

-- 28/07/2011 22h10min8s BRT
-- Novos Impostos - Kenos - www.kenos.com.br
INSERT INTO LBR_TaxFormula (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,LBR_FormulaBase_ID,LBR_FormulaNet_ID,LBR_Formula_ID,LBR_TaxFormula_ID,LBR_TaxName_ID,Updated,UpdatedBy,ValidFrom,lbr_TransactionType) VALUES (0,0,TO_DATE('2011-07-28 22:10:07','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000014,1000000,1000001,1106002,1106000,TO_DATE('2011-07-28 22:10:07','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2000-01-01','YYYY-MM-DD'),'END')
;

-- 28/07/2011 22h12min7s BRT
-- Novos Impostos - Kenos - www.kenos.com.br
INSERT INTO LBR_TaxFormula (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,LBR_FormulaAdd_ID,LBR_FormulaBase_ID,LBR_FormulaNet_ID,LBR_Formula_ID,LBR_TaxFormula_ID,LBR_TaxName_ID,Updated,UpdatedBy,ValidFrom,lbr_TransactionType) VALUES (0,0,TO_DATE('2011-07-28 22:12:06','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000011,1000014,1000007,1000009,1106003,1106000,TO_DATE('2011-07-28 22:12:06','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2000-01-01','YYYY-MM-DD'),'IMP')
;

-- 28/07/2011 22h13min9s BRT
-- Novos Impostos - Kenos - www.kenos.com.br
INSERT INTO LBR_TaxFormula (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,LBR_FormulaBase_ID,LBR_FormulaNet_ID,LBR_Formula_ID,LBR_TaxFormula_ID,LBR_TaxName_ID,Updated,UpdatedBy,ValidFrom,lbr_TransactionType) VALUES (0,0,TO_DATE('2011-07-28 22:13:09','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000014,1000000,1000000,1106004,1106001,TO_DATE('2011-07-28 22:13:09','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2000-01-01','YYYY-MM-DD'),'END')
;

-- 28/07/2011 22h13min33s BRT
-- Novos Impostos - Kenos - www.kenos.com.br
INSERT INTO LBR_TaxFormula (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,LBR_FormulaBase_ID,LBR_FormulaNet_ID,LBR_Formula_ID,LBR_TaxFormula_ID,LBR_TaxName_ID,Updated,UpdatedBy,ValidFrom,lbr_TransactionType) VALUES (0,0,TO_DATE('2011-07-28 22:13:32','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000014,1000002,1000002,1106005,1106001,TO_DATE('2011-07-28 22:13:32','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2000-01-01','YYYY-MM-DD'),'MAN')
;

-- 28/07/2011 22h13min51s BRT
-- Novos Impostos - Kenos - www.kenos.com.br
INSERT INTO LBR_TaxFormula (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,LBR_FormulaBase_ID,LBR_FormulaNet_ID,LBR_Formula_ID,LBR_TaxFormula_ID,LBR_TaxName_ID,Updated,UpdatedBy,ValidFrom,lbr_TransactionType) VALUES (0,0,TO_DATE('2011-07-28 22:13:50','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000014,1000007,1000008,1106006,1106001,TO_DATE('2011-07-28 22:13:50','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2000-01-01','YYYY-MM-DD'),'IMP')
;

-- 28/07/2011 22h14min22s BRT
-- Novos Impostos - Kenos - www.kenos.com.br
INSERT INTO LBR_TaxFormula (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,LBR_FormulaBase_ID,LBR_FormulaNet_ID,LBR_Formula_ID,LBR_TaxFormula_ID,LBR_TaxName_ID,Updated,UpdatedBy,ValidFrom,lbr_TransactionType) VALUES (0,0,TO_DATE('2011-07-28 22:14:22','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000014,1000000,1000000,1106007,1106002,TO_DATE('2011-07-28 22:14:22','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2000-01-01','YYYY-MM-DD'),'END')
;

-- 28/07/2011 22h14min48s BRT
-- Novos Impostos - Kenos - www.kenos.com.br
INSERT INTO LBR_TaxFormula (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,LBR_FormulaBase_ID,LBR_FormulaNet_ID,LBR_Formula_ID,LBR_TaxFormula_ID,LBR_TaxName_ID,Updated,UpdatedBy,ValidFrom,lbr_TransactionType) VALUES (0,0,TO_DATE('2011-07-28 22:14:47','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000014,1000002,1000002,1106008,1106002,TO_DATE('2011-07-28 22:14:47','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2000-01-01','YYYY-MM-DD'),'MAN')
;

-- 28/07/2011 22h15min11s BRT
-- Novos Impostos - Kenos - www.kenos.com.br
INSERT INTO LBR_TaxFormula (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,LBR_FormulaBase_ID,LBR_FormulaNet_ID,LBR_Formula_ID,LBR_TaxFormula_ID,LBR_TaxName_ID,Updated,UpdatedBy,ValidFrom,lbr_TransactionType) VALUES (0,0,TO_DATE('2011-07-28 22:15:11','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000014,1000007,1000008,1106009,1106002,TO_DATE('2011-07-28 22:15:11','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2000-01-01','YYYY-MM-DD'),'IMP')
;

-- 28/07/2011 22h16min1s BRT
-- Novos Impostos - Kenos - www.kenos.com.br
INSERT INTO LBR_TaxFormula (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,LBR_FormulaBase_ID,LBR_FormulaNet_ID,LBR_Formula_ID,LBR_TaxFormula_ID,LBR_TaxName_ID,Updated,UpdatedBy,ValidFrom,lbr_TransactionType) VALUES (0,0,TO_DATE('2011-07-28 22:16:00','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000014,1000000,1000000,1106010,1106003,TO_DATE('2011-07-28 22:16:00','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2000-01-01','YYYY-MM-DD'),'END')
;

-- 28/07/2011 22h16min28s BRT
-- Novos Impostos - Kenos - www.kenos.com.br
INSERT INTO LBR_TaxFormula (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,LBR_FormulaBase_ID,LBR_FormulaNet_ID,LBR_Formula_ID,LBR_TaxFormula_ID,LBR_TaxName_ID,Updated,UpdatedBy,ValidFrom,lbr_TransactionType) VALUES (0,0,TO_DATE('2011-07-28 22:16:28','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000014,1000002,1000002,1106011,1106003,TO_DATE('2011-07-28 22:16:28','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2000-01-01','YYYY-MM-DD'),'MAN')
;

-- 28/07/2011 22h16min43s BRT
-- Novos Impostos - Kenos - www.kenos.com.br
INSERT INTO LBR_TaxFormula (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,LBR_FormulaBase_ID,LBR_FormulaNet_ID,LBR_Formula_ID,LBR_TaxFormula_ID,LBR_TaxName_ID,Updated,UpdatedBy,ValidFrom,lbr_TransactionType) VALUES (0,0,TO_DATE('2011-07-28 22:16:43','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000014,1000007,1000007,1106012,1106003,TO_DATE('2011-07-28 22:16:43','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2000-01-01','YYYY-MM-DD'),'IMP')
;

-- 28/07/2011 22h17min42s BRT
-- Novos Impostos - Kenos - www.kenos.com.br
INSERT INTO LBR_TaxFormula (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,LBR_FormulaBase_ID,LBR_FormulaNet_ID,LBR_Formula_ID,LBR_TaxFormula_ID,LBR_TaxName_ID,Updated,UpdatedBy,ValidFrom,lbr_TransactionType) VALUES (0,0,TO_DATE('2011-07-28 22:17:42','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000014,1000007,1000010,1106013,1106004,TO_DATE('2011-07-28 22:17:42','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2000-01-01','YYYY-MM-DD'),'IMP')
;

-- 28/07/2011 23h34min33s BRT
-- Novos Impostos - Kenos - www.kenos.com.br
ALTER TABLE C_OrderLine ADD TaxAmt NUMBER DEFAULT 0
;

-- 29/07/2011 14h51min6s BRT
-- Novos Impostos - Kenos - www.kenos.com.br
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1000639
;

-- 29/07/2011 14h51min6s BRT
-- Novos Impostos - Kenos - www.kenos.com.br
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1000269
;

-- 29/07/2011 14h51min6s BRT
-- Novos Impostos - Kenos - www.kenos.com.br
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1000297
;

-- 29/07/2011 14h51min6s BRT
-- Novos Impostos - Kenos - www.kenos.com.br
UPDATE AD_Field SET SeqNo=30,IsDisplayed='Y' WHERE AD_Field_ID=1000272
;

-- 29/07/2011 14h51min6s BRT
-- Novos Impostos - Kenos - www.kenos.com.br
UPDATE AD_Field SET SeqNo=40,IsDisplayed='Y' WHERE AD_Field_ID=1000267
;

-- 29/07/2011 14h51min6s BRT
-- Novos Impostos - Kenos - www.kenos.com.br
UPDATE AD_Field SET SeqNo=50,IsDisplayed='Y' WHERE AD_Field_ID=1000273
;

-- 29/07/2011 14h51min6s BRT
-- Novos Impostos - Kenos - www.kenos.com.br
UPDATE AD_Field SET SeqNo=60,IsDisplayed='Y' WHERE AD_Field_ID=1120260
;

-- 29/07/2011 14h51min16s BRT
-- Novos Impostos - Kenos - www.kenos.com.br
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2011-07-29 14:51:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000267
;

-- 29/07/2011 14h51min50s BRT
-- Novos Impostos - Kenos - www.kenos.com.br
UPDATE AD_Field SET AD_FieldGroup_ID=111,Updated=TO_DATE('2011-07-29 14:51:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000273
;

-- 29/07/2011 14h51min55s BRT
-- Novos Impostos - Kenos - www.kenos.com.br
UPDATE AD_Field SET AD_FieldGroup_ID=111,Updated=TO_DATE('2011-07-29 14:51:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1120260
;

-- 29/07/2011 14h51min58s BRT
-- Novos Impostos - Kenos - www.kenos.com.br
UPDATE AD_Field SET AD_FieldGroup_ID=111,Updated=TO_DATE('2011-07-29 14:51:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1120258
;

-- 29/07/2011 14h52min1s BRT
-- Novos Impostos - Kenos - www.kenos.com.br
UPDATE AD_Field SET AD_FieldGroup_ID=111,Updated=TO_DATE('2011-07-29 14:52:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1120259
;

-- 29/07/2011 14h52min4s BRT
-- Novos Impostos - Kenos - www.kenos.com.br
UPDATE AD_Field SET AD_FieldGroup_ID=111,Updated=TO_DATE('2011-07-29 14:52:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1120262
;

-- 29/07/2011 14h52min7s BRT
-- Novos Impostos - Kenos - www.kenos.com.br
UPDATE AD_Field SET AD_FieldGroup_ID=111,Updated=TO_DATE('2011-07-29 14:52:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1120263
;

-- 30/07/2011 15h15min55s BRT
-- New Tax
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,1106000,0,'lbr_RecalculateTax',TO_DATE('2011-07-30 15:15:06','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Recalculate Tax','Recalculate Tax',TO_DATE('2011-07-30 15:15:06','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 30/07/2011 15h15min55s BRT
-- New Tax
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1106000 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 30/07/2011 15h16min21s BRT
-- New Tax
UPDATE AD_Element_Trl SET Name='Recalcular Impostos',PrintName='Recalcular Impostos',Updated=TO_DATE('2011-07-30 15:16:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1106000 AND AD_Language='pt_BR'
;

-- 30/07/2011 15h17min21s BRT
-- New Tax
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1106001,1106000,0,20,260,'lbr_RecalculateTax',TO_DATE('2011-07-30 15:17:20','YYYY-MM-DD HH24:MI:SS'),100,'N','LBRA',1,'Y','Y','N','N','N','N','N','Y','N','N','N','N','Y','Recalculate Tax',0,TO_DATE('2011-07-30 15:17:20','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 30/07/2011 15h17min21s BRT
-- New Tax
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1106001 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 30/07/2011 15h17min27s BRT
-- New Tax
ALTER TABLE C_OrderLine ADD lbr_RecalculateTax CHAR(1) DEFAULT 'N' CHECK (lbr_RecalculateTax IN ('Y','N')) NOT NULL
;

-- 30/07/2011 15h18min15s BRT
-- New Tax
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1106002,1106000,0,20,333,'lbr_RecalculateTax',TO_DATE('2011-07-30 15:18:15','YYYY-MM-DD HH24:MI:SS'),100,'N','LBRA',1,'Y','Y','N','N','N','N','N','Y','N','N','N','N','Y','Recalculate Tax',0,TO_DATE('2011-07-30 15:18:15','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 30/07/2011 15h18min15s BRT
-- New Tax
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1106002 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 30/07/2011 15h18min19s BRT
-- New Tax
ALTER TABLE C_InvoiceLine ADD lbr_RecalculateTax CHAR(1) DEFAULT 'N' CHECK (lbr_RecalculateTax IN ('Y','N')) NOT NULL
;

-- 30/07/2011 15h24min4s BRT
-- New Tax
UPDATE AD_Column SET Callout='org.adempierelbr.callout.CalloutOrder.recalculateTaxes',Updated=TO_DATE('2011-07-30 15:24:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000422
;

-- 30/07/2011 15h24min56s BRT
-- New Tax
UPDATE AD_Column SET Callout='org.adempierelbr.callout.CalloutOrder.recalculateTaxes',Updated=TO_DATE('2011-07-30 15:24:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000420
;

-- 30/07/2011 15h28min21s BRT
-- New Tax
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,SortNo,Updated,UpdatedBy) VALUES (0,1106001,1106001,0,187,TO_DATE('2011-07-30 15:28:21','YYYY-MM-DD HH24:MI:SS'),100,0,'LBRA','Y','Y','N','N','N','N','N','N','Recalculate Tax',0,0,TO_DATE('2011-07-30 15:28:21','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 30/07/2011 15h28min21s BRT
-- New Tax
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1106001 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 30/07/2011 15h28min45s BRT
-- New Tax
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,SortNo,Updated,UpdatedBy) VALUES (0,1106001,1106002,0,293,TO_DATE('2011-07-30 15:28:44','YYYY-MM-DD HH24:MI:SS'),100,0,'LBRA','Y','Y','N','N','N','N','N','N','Recalculate Tax',0,0,TO_DATE('2011-07-30 15:28:44','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 30/07/2011 15h28min45s BRT
-- New Tax
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1106002 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 30/07/2011 15h29min17s BRT
-- New Tax
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,SortNo,Updated,UpdatedBy) VALUES (0,1106002,1106003,0,270,TO_DATE('2011-07-30 15:29:17','YYYY-MM-DD HH24:MI:SS'),100,0,'LBRA','Y','Y','N','N','N','N','N','N','Recalculate Tax',0,0,TO_DATE('2011-07-30 15:29:17','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 30/07/2011 15h29min17s BRT
-- New Tax
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1106003 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 30/07/2011 15h29min40s BRT
-- New Tax
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,SortNo,Updated,UpdatedBy) VALUES (0,1106002,1106004,0,291,TO_DATE('2011-07-30 15:29:39','YYYY-MM-DD HH24:MI:SS'),100,0,'LBRA','Y','Y','N','N','N','N','N','N','Recalculate Tax',0,0,TO_DATE('2011-07-30 15:29:39','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 30/07/2011 15h29min40s BRT
-- New Tax
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1106004 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 30/07/2011 20h11min33s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Tab SET IsActive='N',Updated=TO_DATE('2011-07-30 20:11:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=1000041
;

-- 30/07/2011 20h11min42s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET IsActive='N',Updated=TO_DATE('2011-07-30 20:11:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000980
;

-- 30/07/2011 20h14min43s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=225,Updated=TO_DATE('2011-07-30 20:14:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000274
;

-- 05/08/2011 17h46min1s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE LBR_TaxFormula SET LBR_Formula_ID=NULL,Updated=TO_DATE('2011-08-05 17:46:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_TaxFormula_ID=1106001
;

-- 05/08/2011 17h46min31s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE LBR_TaxFormula SET LBR_FormulaNet_ID=1000001, LBR_Formula_ID=1000016,Updated=TO_DATE('2011-08-05 17:46:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_TaxFormula_ID=1106002
;

-- 05/08/2011 17h46min43s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE LBR_TaxFormula SET LBR_FormulaNet_ID=1000009, LBR_Formula_ID=1000007,Updated=TO_DATE('2011-08-05 17:46:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_TaxFormula_ID=1106003
;

-- 05/08/2011 17h46min58s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE LBR_TaxFormula SET LBR_Formula_ID=NULL,Updated=TO_DATE('2011-08-05 17:46:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_TaxFormula_ID=1106004
;

-- 05/08/2011 17h47min0s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE LBR_TaxFormula SET LBR_Formula_ID=NULL,Updated=TO_DATE('2011-08-05 17:47:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_TaxFormula_ID=1106005
;

-- 05/08/2011 17h47min6s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE LBR_TaxFormula SET LBR_FormulaNet_ID=1000008, LBR_Formula_ID=1000007,Updated=TO_DATE('2011-08-05 17:47:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_TaxFormula_ID=1106006
;

-- 05/08/2011 17h47min13s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE LBR_TaxFormula SET LBR_Formula_ID=NULL,Updated=TO_DATE('2011-08-05 17:47:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_TaxFormula_ID=1106007
;

-- 05/08/2011 17h47min16s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE LBR_TaxFormula SET LBR_Formula_ID=NULL,Updated=TO_DATE('2011-08-05 17:47:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_TaxFormula_ID=1106008
;

-- 05/08/2011 17h47min22s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE LBR_TaxFormula SET LBR_FormulaNet_ID=1000008, LBR_Formula_ID=1000007,Updated=TO_DATE('2011-08-05 17:47:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_TaxFormula_ID=1106009
;

-- 05/08/2011 17h47min30s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE LBR_TaxFormula SET LBR_Formula_ID=NULL,Updated=TO_DATE('2011-08-05 17:47:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_TaxFormula_ID=1106010
;

-- 05/08/2011 17h47min33s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE LBR_TaxFormula SET LBR_Formula_ID=NULL,Updated=TO_DATE('2011-08-05 17:47:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_TaxFormula_ID=1106011
;

-- 05/08/2011 17h47min50s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE LBR_TaxFormula SET LBR_FormulaNet_ID=1000010, LBR_Formula_ID=1000007,Updated=TO_DATE('2011-08-05 17:47:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_TaxFormula_ID=1106013
;

-- 05/08/2011 17h52min9s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_TaxFormula (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,LBR_FormulaBase_ID,LBR_FormulaNet_ID,LBR_Formula_ID,LBR_TaxFormula_ID,LBR_TaxName_ID,Updated,UpdatedBy,ValidFrom,lbr_TransactionType) VALUES (0,0,TO_DATE('2011-08-05 17:52:09','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000014,1000003,1000015,1106023,1106012,TO_DATE('2011-08-05 17:52:09','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2000-01-01','YYYY-MM-DD'),'END')
;

-- 05/08/2011 17h52min20s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_TaxFormula (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,LBR_FormulaBase_ID,LBR_FormulaNet_ID,LBR_Formula_ID,LBR_TaxFormula_ID,LBR_TaxName_ID,Updated,UpdatedBy,ValidFrom,lbr_TransactionType) VALUES (0,0,TO_DATE('2011-08-05 17:52:20','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000014,1000005,1000015,1106024,1106012,TO_DATE('2011-08-05 17:52:20','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2000-01-01','YYYY-MM-DD'),'RES')
;

-- 05/08/2011 17h52min33s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_TaxFormula (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,LBR_FormulaBase_ID,LBR_FormulaNet_ID,LBR_Formula_ID,LBR_TaxFormula_ID,LBR_TaxName_ID,Updated,UpdatedBy,ValidFrom,lbr_TransactionType) VALUES (0,0,TO_DATE('2011-08-05 17:52:33','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000014,1000005,1000015,1106025,1106012,TO_DATE('2011-08-05 17:52:33','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2000-01-01','YYYY-MM-DD'),'MAN')
;

-- 05/08/2011 17h53min13s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_TaxFormula (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,LBR_FormulaBase_ID,LBR_FormulaNet_ID,LBR_TaxFormula_ID,LBR_TaxName_ID,Updated,UpdatedBy,ValidFrom,lbr_TransactionType) VALUES (0,0,TO_DATE('2011-08-05 17:53:13','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000014,1000002,1106026,1106000,TO_DATE('2011-08-05 17:53:13','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2000-01-01','YYYY-MM-DD'),'RES')
;

-- 05/08/2011 17h53min23s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_TaxFormula (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,LBR_FormulaBase_ID,LBR_FormulaNet_ID,LBR_TaxFormula_ID,LBR_TaxName_ID,Updated,UpdatedBy,ValidFrom,lbr_TransactionType) VALUES (0,0,TO_DATE('2011-08-05 17:53:23','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000014,1000002,1106027,1106001,TO_DATE('2011-08-05 17:53:23','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2000-01-01','YYYY-MM-DD'),'RES')
;

-- 05/08/2011 17h53min35s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_TaxFormula (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,LBR_FormulaBase_ID,LBR_FormulaNet_ID,LBR_TaxFormula_ID,LBR_TaxName_ID,Updated,UpdatedBy,ValidFrom,lbr_TransactionType) VALUES (0,0,TO_DATE('2011-08-05 17:53:35','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000014,1000002,1106028,1106002,TO_DATE('2011-08-05 17:53:35','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2000-01-01','YYYY-MM-DD'),'RES')
;

-- 05/08/2011 17h53min47s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_TaxFormula (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,LBR_FormulaBase_ID,LBR_FormulaNet_ID,LBR_TaxFormula_ID,LBR_TaxName_ID,Updated,UpdatedBy,ValidFrom,lbr_TransactionType) VALUES (0,0,TO_DATE('2011-08-05 17:53:47','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000014,1000002,1106029,1106003,TO_DATE('2011-08-05 17:53:47','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2000-01-01','YYYY-MM-DD'),'RES')
;

-- 05/08/2011 17h54min35s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_TaxFormula (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,LBR_FormulaNet_ID,LBR_TaxFormula_ID,LBR_TaxName_ID,Updated,UpdatedBy,ValidFrom,lbr_TransactionType) VALUES (0,0,TO_DATE('2011-08-05 17:54:35','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000013,1106030,1106005,TO_DATE('2011-08-05 17:54:35','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2000-01-01','YYYY-MM-DD'),'END')
;

-- 05/08/2011 17h54min45s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_TaxFormula (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,LBR_FormulaNet_ID,LBR_TaxFormula_ID,LBR_TaxName_ID,Updated,UpdatedBy,ValidFrom,lbr_TransactionType) VALUES (0,0,TO_DATE('2011-08-05 17:54:45','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000013,1106031,1106005,TO_DATE('2011-08-05 17:54:45','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2000-01-01','YYYY-MM-DD'),'MAN')
;

-- 05/08/2011 17h54min49s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_TaxFormula (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,LBR_FormulaNet_ID,LBR_TaxFormula_ID,LBR_TaxName_ID,Updated,UpdatedBy,ValidFrom,lbr_TransactionType) VALUES (0,0,TO_DATE('2011-08-05 17:54:49','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000013,1106032,1106005,TO_DATE('2011-08-05 17:54:49','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2000-01-01','YYYY-MM-DD'),'RES')
;

-- 05/08/2011 17h54min53s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_TaxFormula (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,LBR_FormulaNet_ID,LBR_TaxFormula_ID,LBR_TaxName_ID,Updated,UpdatedBy,ValidFrom,lbr_TransactionType) VALUES (0,0,TO_DATE('2011-08-05 17:54:53','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000013,1106033,1106005,TO_DATE('2011-08-05 17:54:53','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2000-01-01','YYYY-MM-DD'),'IMP')
;

-- 05/08/2011 17h55min27s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_TaxFormula (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,LBR_FormulaNet_ID,LBR_TaxFormula_ID,LBR_TaxName_ID,Updated,UpdatedBy,ValidFrom,lbr_TransactionType) VALUES (0,0,TO_DATE('2011-08-05 17:55:27','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000013,1106034,1106006,TO_DATE('2011-08-05 17:55:27','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2000-01-01','YYYY-MM-DD'),'END')
;

-- 05/08/2011 17h55min31s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_TaxFormula (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,LBR_FormulaNet_ID,LBR_TaxFormula_ID,LBR_TaxName_ID,Updated,UpdatedBy,ValidFrom,lbr_TransactionType) VALUES (0,0,TO_DATE('2011-08-05 17:55:31','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000013,1106035,1106006,TO_DATE('2011-08-05 17:55:31','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2000-01-01','YYYY-MM-DD'),'IMP')
;

-- 05/08/2011 17h55min34s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_TaxFormula (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,LBR_FormulaNet_ID,LBR_TaxFormula_ID,LBR_TaxName_ID,Updated,UpdatedBy,ValidFrom,lbr_TransactionType) VALUES (0,0,TO_DATE('2011-08-05 17:55:34','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000013,1106036,1106006,TO_DATE('2011-08-05 17:55:34','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2000-01-01','YYYY-MM-DD'),'MAN')
;

-- 05/08/2011 17h55min39s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_TaxFormula (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,LBR_FormulaNet_ID,LBR_TaxFormula_ID,LBR_TaxName_ID,Updated,UpdatedBy,ValidFrom,lbr_TransactionType) VALUES (0,0,TO_DATE('2011-08-05 17:55:39','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000013,1106037,1106006,TO_DATE('2011-08-05 17:55:39','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2000-01-01','YYYY-MM-DD'),'RES')
;

-- 05/08/2011 17h55min59s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_TaxFormula (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,LBR_FormulaNet_ID,LBR_TaxFormula_ID,LBR_TaxName_ID,Updated,UpdatedBy,ValidFrom,lbr_TransactionType) VALUES (0,0,TO_DATE('2011-08-05 17:55:59','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000013,1106038,1106007,TO_DATE('2011-08-05 17:55:59','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2000-01-01','YYYY-MM-DD'),'END')
;

-- 05/08/2011 17h56min3s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_TaxFormula (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,LBR_FormulaNet_ID,LBR_TaxFormula_ID,LBR_TaxName_ID,Updated,UpdatedBy,ValidFrom,lbr_TransactionType) VALUES (0,0,TO_DATE('2011-08-05 17:56:03','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000013,1106039,1106007,TO_DATE('2011-08-05 17:56:03','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2000-01-01','YYYY-MM-DD'),'IMP')
;

-- 05/08/2011 17h56min6s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_TaxFormula (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,LBR_FormulaNet_ID,LBR_TaxFormula_ID,LBR_TaxName_ID,Updated,UpdatedBy,ValidFrom,lbr_TransactionType) VALUES (0,0,TO_DATE('2011-08-05 17:56:06','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000013,1106040,1106007,TO_DATE('2011-08-05 17:56:06','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2000-01-01','YYYY-MM-DD'),'MAN')
;

-- 05/08/2011 17h56min9s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_TaxFormula (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,LBR_FormulaNet_ID,LBR_TaxFormula_ID,LBR_TaxName_ID,Updated,UpdatedBy,ValidFrom,lbr_TransactionType) VALUES (0,0,TO_DATE('2011-08-05 17:56:09','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000013,1106041,1106007,TO_DATE('2011-08-05 17:56:09','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2000-01-01','YYYY-MM-DD'),'RES')
;

-- 05/08/2011 17h56min21s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_TaxFormula (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,LBR_FormulaNet_ID,LBR_TaxFormula_ID,LBR_TaxName_ID,Updated,UpdatedBy,ValidFrom,lbr_TransactionType) VALUES (0,0,TO_DATE('2011-08-05 17:56:21','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000013,1106042,1106008,TO_DATE('2011-08-05 17:56:21','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2000-01-01','YYYY-MM-DD'),'END')
;

-- 05/08/2011 17h56min26s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_TaxFormula (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,LBR_FormulaNet_ID,LBR_TaxFormula_ID,LBR_TaxName_ID,Updated,UpdatedBy,ValidFrom,lbr_TransactionType) VALUES (0,0,TO_DATE('2011-08-05 17:56:26','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000013,1106043,1106008,TO_DATE('2011-08-05 17:56:26','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2000-01-01','YYYY-MM-DD'),'IMP')
;

-- 05/08/2011 17h56min29s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_TaxFormula (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,LBR_FormulaNet_ID,LBR_TaxFormula_ID,LBR_TaxName_ID,Updated,UpdatedBy,ValidFrom,lbr_TransactionType) VALUES (0,0,TO_DATE('2011-08-05 17:56:29','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000013,1106044,1106008,TO_DATE('2011-08-05 17:56:29','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2000-01-01','YYYY-MM-DD'),'MAN')
;

-- 05/08/2011 17h56min33s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_TaxFormula (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,LBR_FormulaNet_ID,LBR_TaxFormula_ID,LBR_TaxName_ID,Updated,UpdatedBy,ValidFrom,lbr_TransactionType) VALUES (0,0,TO_DATE('2011-08-05 17:56:33','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000013,1106045,1106008,TO_DATE('2011-08-05 17:56:33','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2000-01-01','YYYY-MM-DD'),'RES')
;

-- 05/08/2011 17h56min52s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_TaxFormula (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,LBR_FormulaNet_ID,LBR_TaxFormula_ID,LBR_TaxName_ID,Updated,UpdatedBy,ValidFrom,lbr_TransactionType) VALUES (0,0,TO_DATE('2011-08-05 17:56:52','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000013,1106046,1106009,TO_DATE('2011-08-05 17:56:52','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2000-01-01','YYYY-MM-DD'),'END')
;

-- 05/08/2011 17h56min56s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_TaxFormula (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,LBR_FormulaNet_ID,LBR_TaxFormula_ID,LBR_TaxName_ID,Updated,UpdatedBy,ValidFrom,lbr_TransactionType) VALUES (0,0,TO_DATE('2011-08-05 17:56:56','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000013,1106047,1106009,TO_DATE('2011-08-05 17:56:56','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2000-01-01','YYYY-MM-DD'),'IMP')
;

-- 05/08/2011 17h57min0s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_TaxFormula (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,LBR_FormulaNet_ID,LBR_TaxFormula_ID,LBR_TaxName_ID,Updated,UpdatedBy,ValidFrom,lbr_TransactionType) VALUES (0,0,TO_DATE('2011-08-05 17:57:00','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000013,1106048,1106009,TO_DATE('2011-08-05 17:57:00','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2000-01-01','YYYY-MM-DD'),'MAN')
;

-- 05/08/2011 17h57min4s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_TaxFormula (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,LBR_FormulaNet_ID,LBR_TaxFormula_ID,LBR_TaxName_ID,Updated,UpdatedBy,ValidFrom,lbr_TransactionType) VALUES (0,0,TO_DATE('2011-08-05 17:57:04','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000013,1106049,1106009,TO_DATE('2011-08-05 17:57:04','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2000-01-01','YYYY-MM-DD'),'RES')
;

-- 05/08/2011 17h57min23s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_TaxFormula (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,LBR_FormulaNet_ID,LBR_TaxFormula_ID,LBR_TaxName_ID,Updated,UpdatedBy,ValidFrom,lbr_TransactionType) VALUES (0,0,TO_DATE('2011-08-05 17:57:23','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000013,1106050,1106011,TO_DATE('2011-08-05 17:57:23','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2000-01-01','YYYY-MM-DD'),'END')
;

-- 05/08/2011 17h57min26s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_TaxFormula (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,LBR_FormulaNet_ID,LBR_TaxFormula_ID,LBR_TaxName_ID,Updated,UpdatedBy,ValidFrom,lbr_TransactionType) VALUES (0,0,TO_DATE('2011-08-05 17:57:26','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000013,1106051,1106011,TO_DATE('2011-08-05 17:57:26','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2000-01-01','YYYY-MM-DD'),'IMP')
;

-- 05/08/2011 17h57min30s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_TaxFormula (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,LBR_FormulaNet_ID,LBR_TaxFormula_ID,LBR_TaxName_ID,Updated,UpdatedBy,ValidFrom,lbr_TransactionType) VALUES (0,0,TO_DATE('2011-08-05 17:57:30','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000013,1106052,1106011,TO_DATE('2011-08-05 17:57:30','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2000-01-01','YYYY-MM-DD'),'MAN')
;

-- 05/08/2011 17h57min35s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_TaxFormula (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,LBR_FormulaNet_ID,LBR_TaxFormula_ID,LBR_TaxName_ID,Updated,UpdatedBy,ValidFrom,lbr_TransactionType) VALUES (0,0,TO_DATE('2011-08-05 17:57:35','YYYY-MM-DD HH24:MI:SS'),100,'Y',1000013,1106053,1106011,TO_DATE('2011-08-05 17:57:35','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2000-01-01','YYYY-MM-DD'),'RES')
;

-- 10/08/2011 16h14min9s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE LBR_TaxFormula SET LBR_Formula_ID=1000008,Updated=TO_DATE('2011-08-10 16:14:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_TaxFormula_ID=1106006
;

-- 10/08/2011 16h14min19s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE LBR_TaxFormula SET LBR_Formula_ID=1000008,Updated=TO_DATE('2011-08-10 16:14:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_TaxFormula_ID=1106009
;

-- 10/08/2011 16h15min28s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE LBR_TaxFormula SET LBR_Formula_ID=1000009,Updated=TO_DATE('2011-08-10 16:15:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_TaxFormula_ID=1106003
;

-- 11/08/2011 16h6min21s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,Description,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,1120095,0,'LBR_Insurance_Product_ID',TO_DATE('2011-08-11 16:06:10','YYYY-MM-DD HH24:MI:SS'),100,'Insurance product to be used in sales/purchase orders','LBRA','Y','Insurance Product','Insurance Product',TO_DATE('2011-08-11 16:06:10','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/08/2011 16h6min21s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1120095 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 11/08/2011 16h7min47s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Element_Trl SET Name='Produto para o Seguro',PrintName='Produto para o Seguro',Description='Produto para ser usado como Seguro',Help='Cadastre um produto (usualmente Tipo de Despesa) para ser usado como Seguro, quando este produto for usado em alguma fatura, o sistema irá identificar e colocá-lo no campo específico na Nota Fiscal',Updated=TO_DATE('2011-08-11 16:07:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1120095 AND AD_Language='pt_BR'
;

-- 11/08/2011 16h8min31s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,1120096,0,'LBR_SISCOMEX_Product_ID',TO_DATE('2011-08-11 16:08:17','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','SISCOMEX Product','SISCOMEX Product',TO_DATE('2011-08-11 16:08:17','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/08/2011 16h8min31s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1120096 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 11/08/2011 16h8min54s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Element_Trl SET Name='Produto para o SISCOMEX',PrintName='Produto para o SISCOMEX',Description='Produto usado para SISCOMEX',Updated=TO_DATE('2011-08-11 16:08:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1120096 AND AD_Language='pt_BR'
;

-- 11/08/2011 16h9min22s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Element_Trl SET Help='Cadastre um produto (usualmente Tipo de Despesa) para ser usado como SISCOMEX, quando este produto for usado em alguma fatura, o sistema irá identificar e colocá-lo no campo específico (Outras Despesas) na Nota Fiscal',Updated=TO_DATE('2011-08-11 16:09:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1120096 AND AD_Language='pt_BR'
;

-- 11/08/2011 16h12min8s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Element SET ColumnName='LBR_ProductInsurance_ID', Description='Product for Insurance to be used in sales/purchase orders', Name='Product for Insurance', PrintName='Product for Insurance',Updated=TO_DATE('2011-08-11 16:12:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1120095
;

-- 11/08/2011 16h12min8s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Element_Trl SET IsTranslated='N' WHERE AD_Element_ID=1120095
;

-- 11/08/2011 16h12min8s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET ColumnName='LBR_ProductInsurance_ID', Name='Product for Insurance', Description='Product for Insurance to be used in sales/purchase orders', Help=NULL WHERE AD_Element_ID=1120095
;

-- 11/08/2011 16h12min8s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Process_Para SET ColumnName='LBR_ProductInsurance_ID', Name='Product for Insurance', Description='Product for Insurance to be used in sales/purchase orders', Help=NULL, AD_Element_ID=1120095 WHERE UPPER(ColumnName)='LBR_PRODUCTINSURANCE_ID' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 11/08/2011 16h12min8s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Process_Para SET ColumnName='LBR_ProductInsurance_ID', Name='Product for Insurance', Description='Product for Insurance to be used in sales/purchase orders', Help=NULL WHERE AD_Element_ID=1120095 AND IsCentrallyMaintained='Y'
;

-- 11/08/2011 16h12min9s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET Name='Product for Insurance', Description='Product for Insurance to be used in sales/purchase orders', Help=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=1120095) AND IsCentrallyMaintained='Y'
;

-- 11/08/2011 16h12min9s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_PrintFormatItem pi SET PrintName='Product for Insurance', Name='Product for Insurance' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=pi.AD_Column_ID AND c.AD_Element_ID=1120095)
;

-- 11/08/2011 16h12min29s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Element SET ColumnName='LBR_ProductSISCOMEX_ID', Name='Product for SISCOMEX', PrintName='Product for SISCOMEX',Updated=TO_DATE('2011-08-11 16:12:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1120096
;

-- 11/08/2011 16h12min29s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Element_Trl SET IsTranslated='N' WHERE AD_Element_ID=1120096
;

-- 11/08/2011 16h12min29s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET ColumnName='LBR_ProductSISCOMEX_ID', Name='Product for SISCOMEX', Description=NULL, Help=NULL WHERE AD_Element_ID=1120096
;

-- 11/08/2011 16h12min29s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Process_Para SET ColumnName='LBR_ProductSISCOMEX_ID', Name='Product for SISCOMEX', Description=NULL, Help=NULL, AD_Element_ID=1120096 WHERE UPPER(ColumnName)='LBR_PRODUCTSISCOMEX_ID' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 11/08/2011 16h12min29s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Process_Para SET ColumnName='LBR_ProductSISCOMEX_ID', Name='Product for SISCOMEX', Description=NULL, Help=NULL WHERE AD_Element_ID=1120096 AND IsCentrallyMaintained='Y'
;

-- 11/08/2011 16h12min29s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET Name='Product for SISCOMEX', Description=NULL, Help=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=1120096) AND IsCentrallyMaintained='Y'
;

-- 11/08/2011 16h12min29s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_PrintFormatItem pi SET PrintName='Product for SISCOMEX', Name='Product for SISCOMEX' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=pi.AD_Column_ID AND c.AD_Element_ID=1120096)
;

-- 11/08/2011 16h13min45s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1120404,1120095,0,30,162,227,'LBR_ProductInsurance_ID',TO_DATE('2011-08-11 16:13:40','YYYY-MM-DD HH24:MI:SS'),100,'Product for Insurance to be used in sales/purchase orders','LBRA',10,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Product for Insurance',0,TO_DATE('2011-08-11 16:13:40','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 11/08/2011 16h13min45s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1120404 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 11/08/2011 16h13min51s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
ALTER TABLE AD_ClientInfo ADD LBR_ProductInsurance_ID NUMBER(10) DEFAULT NULL 
;

-- 11/08/2011 16h14min7s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1120405,1120096,0,30,162,227,'LBR_ProductSISCOMEX_ID',TO_DATE('2011-08-11 16:14:06','YYYY-MM-DD HH24:MI:SS'),100,'U',10,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Product for SISCOMEX',0,TO_DATE('2011-08-11 16:14:06','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 11/08/2011 16h14min7s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1120405 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 11/08/2011 16h14min13s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET EntityType='LBRA',Updated=TO_DATE('2011-08-11 16:14:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1120405
;

-- 11/08/2011 16h14min14s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
ALTER TABLE AD_ClientInfo ADD LBR_ProductSISCOMEX_ID NUMBER(10) DEFAULT NULL 
;

-- 11/08/2011 16h14min58s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1120404,1120275,0,169,TO_DATE('2011-08-11 16:14:53','YYYY-MM-DD HH24:MI:SS'),100,'Product for Insurance to be used in sales/purchase orders',10,'LBRA','Y','Y','Y','N','N','N','N','N','Product for Insurance',TO_DATE('2011-08-11 16:14:53','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/08/2011 16h14min58s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1120275 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 11/08/2011 16h14min59s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1120405,1120276,0,169,TO_DATE('2011-08-11 16:14:58','YYYY-MM-DD HH24:MI:SS'),100,10,'LBRA','Y','Y','Y','N','N','N','N','N','Product for SISCOMEX',TO_DATE('2011-08-11 16:14:58','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 11/08/2011 16h14min59s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1120276 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 11/08/2011 16h15min36s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET AD_FieldGroup_ID=1000000, SeqNo=10000,Updated=TO_DATE('2011-08-11 16:15:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1120275
;

-- 11/08/2011 16h15min45s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET AD_FieldGroup_ID=1000000, IsSameLine='Y', SeqNo=10010,Updated=TO_DATE('2011-08-11 16:15:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1120276
;

-- 12/08/2011 11h42min30s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Table (AD_Client_ID,AD_Org_ID,AD_Table_ID,AccessLevel,CopyColumnsFromTable,Created,CreatedBy,Description,EntityType,ImportTable,IsActive,IsCentrallyMaintained,IsChangeLog,IsDeleteable,IsHighVolume,IsSecurityEnabled,IsView,LoadSeq,Name,ReplicationType,TableName,Updated,UpdatedBy) VALUES (0,0,1120027,'3','N',TO_DATE('2011-08-12 11:42:29','YYYY-MM-DD HH24:MI:SS'),100,'Janela usada para manter as Declarações de Importação para usar na NF-e','LBRA','N','Y','Y','N','Y','N','N','N',0,'Declaração de Importação','L','LBR_DI',TO_DATE('2011-08-12 11:42:29','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 12/08/2011 11h42min30s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Table_Trl (AD_Language,AD_Table_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Table_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Table t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Table_ID=1120027 AND NOT EXISTS (SELECT * FROM AD_Table_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Table_ID=t.AD_Table_ID)
;

-- 12/08/2011 11h42min30s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Sequence (AD_Client_ID,AD_Org_ID,AD_Sequence_ID,Created,CreatedBy,CurrentNext,CurrentNextSys,Description,IncrementNo,IsActive,IsAudited,IsAutoSequence,IsTableID,Name,StartNewYear,StartNo,Updated,UpdatedBy) VALUES (0,0,1120035,TO_DATE('2011-08-12 11:42:30','YYYY-MM-DD HH24:MI:SS'),100,1000000,50000,'Table LBR_DI',1,'Y','N','Y','Y','LBR_DI','N',1000000,TO_DATE('2011-08-12 11:42:30','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 12/08/2011 11h43min54s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,1120097,0,'LBR_DI_ID',TO_DATE('2011-08-12 11:43:53','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Declaração de Importação','Declaração de Importação',TO_DATE('2011-08-12 11:43:53','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 12/08/2011 11h43min54s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1120097 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 12/08/2011 11h43min55s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1120406,1120097,0,13,1120027,'LBR_DI_ID',TO_DATE('2011-08-12 11:43:53','YYYY-MM-DD HH24:MI:SS'),100,'LBRA',10,'Y','N','N','N','Y','Y','N','N','N','N','Declaração de Importação',TO_DATE('2011-08-12 11:43:53','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 12/08/2011 11h43min55s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1120406 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 12/08/2011 11h43min56s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1120407,102,0,19,1120027,'AD_Client_ID',TO_DATE('2011-08-12 11:43:55','YYYY-MM-DD HH24:MI:SS'),100,'Client/Tenant for this installation.','LBRA',10,'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Y','N','N','N','N','Y','N','N','N','N','Client',TO_DATE('2011-08-12 11:43:55','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 12/08/2011 11h43min56s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1120407 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 12/08/2011 11h43min56s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1120408,113,0,19,1120027,'AD_Org_ID',TO_DATE('2011-08-12 11:43:56','YYYY-MM-DD HH24:MI:SS'),100,'Organizational entity within client','LBRA',10,'An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Y','N','N','N','N','Y','N','N','N','N','Organization',TO_DATE('2011-08-12 11:43:56','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 12/08/2011 11h43min56s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1120408 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 12/08/2011 11h43min57s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1120409,348,0,20,1120027,'IsActive',TO_DATE('2011-08-12 11:43:56','YYYY-MM-DD HH24:MI:SS'),100,'The record is active in the system','LBRA',1,'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Y','N','N','N','N','Y','N','N','N','Y','Active',TO_DATE('2011-08-12 11:43:56','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 12/08/2011 11h43min57s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1120409 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 12/08/2011 11h43min57s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1120410,245,0,16,1120027,'Created',TO_DATE('2011-08-12 11:43:57','YYYY-MM-DD HH24:MI:SS'),100,'Date this record was created','LBRA',29,'The Created field indicates the date that this record was created.','Y','N','N','N','N','Y','N','N','N','N','Created',TO_DATE('2011-08-12 11:43:57','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 12/08/2011 11h43min57s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1120410 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 12/08/2011 11h43min58s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1120411,246,0,18,110,1120027,'CreatedBy',TO_DATE('2011-08-12 11:43:57','YYYY-MM-DD HH24:MI:SS'),100,'User who created this records','LBRA',10,'The Created By field indicates the user who created this record.','Y','N','N','N','N','Y','N','N','N','N','Created By',TO_DATE('2011-08-12 11:43:57','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 12/08/2011 11h43min58s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1120411 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 12/08/2011 11h43min58s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1120412,607,0,16,1120027,'Updated',TO_DATE('2011-08-12 11:43:58','YYYY-MM-DD HH24:MI:SS'),100,'Date this record was updated','LBRA',29,'The Updated field indicates the date that this record was updated.','Y','N','N','N','N','Y','N','N','N','N','Updated',TO_DATE('2011-08-12 11:43:58','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 12/08/2011 11h43min58s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1120412 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 12/08/2011 11h43min59s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1120413,608,0,18,110,1120027,'UpdatedBy',TO_DATE('2011-08-12 11:43:58','YYYY-MM-DD HH24:MI:SS'),100,'User who updated this records','LBRA',10,'The Updated By field indicates the user who updated this record.','Y','N','N','N','N','Y','N','N','N','N','Updated By',TO_DATE('2011-08-12 11:43:58','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 12/08/2011 11h43min59s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1120413 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 12/08/2011 11h44min46s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Table SET Description='Janela usada para manter as Declaracoes de Importacao para usar na NFe', Name='Declaracao de Importacao',Updated=TO_DATE('2011-08-12 11:44:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=1120027
;

-- 12/08/2011 11h44min46s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Table_Trl SET IsTranslated='N' WHERE AD_Table_ID=1120027
;

-- 12/08/2011 11h45min8s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Element SET Name='Declaracao de Importacao', PrintName='Declaracao de Importacao',Updated=TO_DATE('2011-08-12 11:45:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1120097
;

-- 12/08/2011 11h45min8s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Element_Trl SET IsTranslated='N' WHERE AD_Element_ID=1120097
;

-- 12/08/2011 11h45min8s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET ColumnName='LBR_DI_ID', Name='Declaracao de Importacao', Description=NULL, Help=NULL WHERE AD_Element_ID=1120097
;

-- 12/08/2011 11h45min8s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Process_Para SET ColumnName='LBR_DI_ID', Name='Declaracao de Importacao', Description=NULL, Help=NULL, AD_Element_ID=1120097 WHERE UPPER(ColumnName)='LBR_DI_ID' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 12/08/2011 11h45min8s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Process_Para SET ColumnName='LBR_DI_ID', Name='Declaracao de Importacao', Description=NULL, Help=NULL WHERE AD_Element_ID=1120097 AND IsCentrallyMaintained='Y'
;

-- 12/08/2011 11h45min8s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET Name='Declaracao de Importacao', Description=NULL, Help=NULL WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=1120097) AND IsCentrallyMaintained='Y'
;

-- 12/08/2011 11h45min8s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_PrintFormatItem pi SET PrintName='Declaracao de Importacao', Name='Declaracao de Importacao' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=pi.AD_Column_ID AND c.AD_Element_ID=1120097)
;

-- 12/08/2011 12h6min39s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1120414,290,0,10,1120027,'DocumentNo',TO_DATE('2011-08-12 12:06:38','YYYY-MM-DD HH24:MI:SS'),100,'Document sequence number of the document','U',40,'The document number is usually automatically generated by the system and determined by the document type of the document. If the document is not saved, the preliminary number is displayed in "<>".
If the document type of your document has no automatic document sequence defined, the field is empty if you create a new document. This is for documents which usually have an external number (like vendor invoice).  If you leave the field empty, the system will generate a document number for you. The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Document No',0,TO_DATE('2011-08-12 12:06:38','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 12/08/2011 12h6min39s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1120414 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 12/08/2011 12h7min30s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1120415,265,0,15,1120027,'DateDoc',TO_DATE('2011-08-12 12:07:29','YYYY-MM-DD HH24:MI:SS'),100,'Date of the Document','LBRA',7,'The Document Date indicates the date the document was generated.  It may or may not be the same as the accounting date.','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Document Date',0,TO_DATE('2011-08-12 12:07:29','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 12/08/2011 12h7min30s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1120415 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 12/08/2011 12h7min34s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET EntityType='LBRA',Updated=TO_DATE('2011-08-12 12:07:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1120414
;

-- 12/08/2011 12h8min22s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1120416,275,0,14,1120027,'Description',TO_DATE('2011-08-12 12:08:17','YYYY-MM-DD HH24:MI:SS'),100,'Optional short description of the record','LBRA',512,'A description is limited to 255 characters.','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Description',0,TO_DATE('2011-08-12 12:08:17','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 12/08/2011 12h8min22s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1120416 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 12/08/2011 12h12min57s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,1120098,0,'lbr_CustomSite',TO_DATE('2011-08-12 12:12:56','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Custom Site','Custom Site',TO_DATE('2011-08-12 12:12:56','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 12/08/2011 12h12min57s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1120098 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 12/08/2011 12h13min41s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Element_Trl SET Name='Local do Desembaraço',PrintName='Local do Desembaraço',Updated=TO_DATE('2011-08-12 12:13:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1120098 AND AD_Language='pt_BR'
;

-- 12/08/2011 12h15min37s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1120417,1120098,0,10,1120027,'lbr_CustomSite',TO_DATE('2011-08-12 12:15:36','YYYY-MM-DD HH24:MI:SS'),100,'LBRA',512,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Custom Site',0,TO_DATE('2011-08-12 12:15:36','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 12/08/2011 12h15min37s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1120417 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 12/08/2011 12h16min47s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1120418,209,0,19,1120027,1000003,'C_Region_ID',TO_DATE('2011-08-12 12:16:41','YYYY-MM-DD HH24:MI:SS'),100,'Identifies a geographical Region','LBRA',10,'The Region identifies a unique Region for this Country.','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Region',0,TO_DATE('2011-08-12 12:16:41','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 12/08/2011 12h16min47s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1120418 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 12/08/2011 12h19min53s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1120419,1297,0,15,1120027,'DateTrx',TO_DATE('2011-08-12 12:19:51','YYYY-MM-DD HH24:MI:SS'),100,'Transaction Date','LBRA',7,'The Transaction Date indicates the date of the transaction.','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Transaction Date',0,TO_DATE('2011-08-12 12:19:51','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 12/08/2011 12h19min53s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1120419 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 12/08/2011 12h20min58s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1120420,2094,0,10,1120027,'BPartnerValue',TO_DATE('2011-08-12 12:20:53','YYYY-MM-DD HH24:MI:SS'),100,'Key of the Business Partner','LBRA',60,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Business Partner Key',0,TO_DATE('2011-08-12 12:20:53','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 12/08/2011 12h20min58s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1120420 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 12/08/2011 12h30min37s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1120421,187,0,30,1120027,'C_BPartner_ID',TO_DATE('2011-08-12 12:30:32','YYYY-MM-DD HH24:MI:SS'),100,'Identifies a Business Partner','LBRA',10,'A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Business Partner ',0,TO_DATE('2011-08-12 12:30:32','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 12/08/2011 12h30min37s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1120421 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 12/08/2011 13h11min16s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Table (AD_Client_ID,AD_Org_ID,AD_Table_ID,AccessLevel,CopyColumnsFromTable,Created,CreatedBy,Description,EntityType,ImportTable,IsActive,IsCentrallyMaintained,IsChangeLog,IsDeleteable,IsHighVolume,IsSecurityEnabled,IsView,LoadSeq,Name,ReplicationType,TableName,Updated,UpdatedBy) VALUES (0,0,1120028,'3','N',TO_DATE('2011-08-12 13:11:11','YYYY-MM-DD HH24:MI:SS'),100,'Janela usada para manter as Adições da DI para usar na NFe','U','N','Y','Y','N','Y','N','N','N',0,'Adição da DI','L','LBR_ADI',TO_DATE('2011-08-12 13:11:11','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 12/08/2011 13h11min16s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Table_Trl (AD_Language,AD_Table_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Table_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Table t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Table_ID=1120028 AND NOT EXISTS (SELECT * FROM AD_Table_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Table_ID=t.AD_Table_ID)
;

-- 12/08/2011 13h11min17s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Sequence (AD_Client_ID,AD_Org_ID,AD_Sequence_ID,Created,CreatedBy,CurrentNext,CurrentNextSys,Description,IncrementNo,IsActive,IsAudited,IsAutoSequence,IsTableID,Name,StartNewYear,StartNo,Updated,UpdatedBy) VALUES (0,0,1120036,TO_DATE('2011-08-12 13:11:16','YYYY-MM-DD HH24:MI:SS'),100,1000000,50000,'Table LBR_ADI',1,'Y','N','Y','Y','LBR_ADI','N',1000000,TO_DATE('2011-08-12 13:11:16','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 12/08/2011 13h11min19s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Table SET EntityType='LBRA',Updated=TO_DATE('2011-08-12 13:11:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=1120028
;

-- 12/08/2011 13h11min53s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,1120099,0,'LBR_ADI_ID',TO_DATE('2011-08-12 13:11:52','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Adição da DI','Adição da DI',TO_DATE('2011-08-12 13:11:52','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 12/08/2011 13h11min53s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1120099 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 12/08/2011 13h11min54s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1120422,1120099,0,13,1120028,'LBR_ADI_ID',TO_DATE('2011-08-12 13:11:52','YYYY-MM-DD HH24:MI:SS'),100,'LBRA',10,'Y','N','N','N','Y','Y','N','N','N','N','Adição da DI',TO_DATE('2011-08-12 13:11:52','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 12/08/2011 13h11min54s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1120422 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 12/08/2011 13h11min54s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1120423,102,0,19,1120028,'AD_Client_ID',TO_DATE('2011-08-12 13:11:54','YYYY-MM-DD HH24:MI:SS'),100,'Client/Tenant for this installation.','LBRA',10,'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Y','N','N','N','N','Y','N','N','N','N','Client',TO_DATE('2011-08-12 13:11:54','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 12/08/2011 13h11min54s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1120423 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 12/08/2011 13h11min55s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1120424,113,0,19,1120028,'AD_Org_ID',TO_DATE('2011-08-12 13:11:54','YYYY-MM-DD HH24:MI:SS'),100,'Organizational entity within client','LBRA',10,'An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Y','N','N','N','N','Y','N','N','N','N','Organization',TO_DATE('2011-08-12 13:11:54','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 12/08/2011 13h11min55s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1120424 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 12/08/2011 13h11min55s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1120425,348,0,20,1120028,'IsActive',TO_DATE('2011-08-12 13:11:55','YYYY-MM-DD HH24:MI:SS'),100,'The record is active in the system','LBRA',1,'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Y','N','N','N','N','Y','N','N','N','Y','Active',TO_DATE('2011-08-12 13:11:55','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 12/08/2011 13h11min55s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1120425 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 12/08/2011 13h11min56s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1120426,245,0,16,1120028,'Created',TO_DATE('2011-08-12 13:11:55','YYYY-MM-DD HH24:MI:SS'),100,'Date this record was created','LBRA',29,'The Created field indicates the date that this record was created.','Y','N','N','N','N','Y','N','N','N','N','Created',TO_DATE('2011-08-12 13:11:55','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 12/08/2011 13h11min56s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1120426 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 12/08/2011 13h11min56s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1120427,246,0,18,110,1120028,'CreatedBy',TO_DATE('2011-08-12 13:11:56','YYYY-MM-DD HH24:MI:SS'),100,'User who created this records','LBRA',10,'The Created By field indicates the user who created this record.','Y','N','N','N','N','Y','N','N','N','N','Created By',TO_DATE('2011-08-12 13:11:56','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 12/08/2011 13h11min56s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1120427 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 12/08/2011 13h11min57s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1120428,607,0,16,1120028,'Updated',TO_DATE('2011-08-12 13:11:56','YYYY-MM-DD HH24:MI:SS'),100,'Date this record was updated','LBRA',29,'The Updated field indicates the date that this record was updated.','Y','N','N','N','N','Y','N','N','N','N','Updated',TO_DATE('2011-08-12 13:11:56','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 12/08/2011 13h11min57s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1120428 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 12/08/2011 13h11min57s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1120429,608,0,18,110,1120028,'UpdatedBy',TO_DATE('2011-08-12 13:11:57','YYYY-MM-DD HH24:MI:SS'),100,'User who updated this records','LBRA',10,'The Updated By field indicates the user who updated this record.','Y','N','N','N','N','Y','N','N','N','N','Updated By',TO_DATE('2011-08-12 13:11:57','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 12/08/2011 13h11min57s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1120429 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 12/08/2011 13h11min58s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1120430,1120097,0,19,1120028,'LBR_DI_ID',TO_DATE('2011-08-12 13:11:57','YYYY-MM-DD HH24:MI:SS'),100,'LBRA',10,'Y','N','N','N','N','Y','N','N','N','Y','Declaracao de Importacao',TO_DATE('2011-08-12 13:11:57','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 12/08/2011 13h11min58s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1120430 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 12/08/2011 13h13min13s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1120431,290,0,10,1120028,'DocumentNo',TO_DATE('2011-08-12 13:13:07','YYYY-MM-DD HH24:MI:SS'),100,'Document sequence number of the document','LBRA',10,'The document number is usually automatically generated by the system and determined by the document type of the document. If the document is not saved, the preliminary number is displayed in "<>".
If the document type of your document has no automatic document sequence defined, the field is empty if you create a new document. This is for documents which usually have an external number (like vendor invoice).  If you leave the field empty, the system will generate a document number for you. The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Document No',0,TO_DATE('2011-08-12 13:13:07','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 12/08/2011 13h13min13s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1120431 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 12/08/2011 13h13min37s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1120432,566,0,11,1120028,'SeqNo',TO_DATE('2011-08-12 13:13:37','YYYY-MM-DD HH24:MI:SS'),100,'Method of ordering records; lowest number comes first','LBRA',10,'The Sequence indicates the order of records','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Sequence',0,TO_DATE('2011-08-12 13:13:37','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 12/08/2011 13h13min37s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1120432 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 12/08/2011 13h15min48s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Table (AD_Client_ID,AD_Org_ID,AD_Table_ID,AccessLevel,CopyColumnsFromTable,Created,CreatedBy,Description,EntityType,ImportTable,IsActive,IsCentrallyMaintained,IsChangeLog,IsDeleteable,IsHighVolume,IsSecurityEnabled,IsView,LoadSeq,Name,ReplicationType,TableName,Updated,UpdatedBy) VALUES (0,0,1120029,'3','N',TO_DATE('2011-08-12 13:15:46','YYYY-MM-DD HH24:MI:SS'),100,'Janela usada para manter as Adições da DI para usar na NFe','LBRA','N','Y','Y','N','Y','N','N','N',0,'Linhas da Adição','L','LBR_ADILine',TO_DATE('2011-08-12 13:15:46','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 12/08/2011 13h15min48s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Table_Trl (AD_Language,AD_Table_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Table_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Table t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Table_ID=1120029 AND NOT EXISTS (SELECT * FROM AD_Table_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Table_ID=t.AD_Table_ID)
;

-- 12/08/2011 13h15min48s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Sequence (AD_Client_ID,AD_Org_ID,AD_Sequence_ID,Created,CreatedBy,CurrentNext,CurrentNextSys,Description,IncrementNo,IsActive,IsAudited,IsAutoSequence,IsTableID,Name,StartNewYear,StartNo,Updated,UpdatedBy) VALUES (0,0,1120037,TO_DATE('2011-08-12 13:15:48','YYYY-MM-DD HH24:MI:SS'),100,1000000,50000,'Table LBR_ADILine',1,'Y','N','Y','Y','LBR_ADILine','N',1000000,TO_DATE('2011-08-12 13:15:48','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 12/08/2011 13h15min55s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,1120100,0,'LBR_ADILine_ID',TO_DATE('2011-08-12 13:15:54','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Linhas da Adição','Linhas da Adição',TO_DATE('2011-08-12 13:15:54','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 12/08/2011 13h15min55s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1120100 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 12/08/2011 13h15min55s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1120433,1120100,0,13,1120029,'LBR_ADILine_ID',TO_DATE('2011-08-12 13:15:54','YYYY-MM-DD HH24:MI:SS'),100,'LBRA',10,'Y','N','N','N','Y','Y','N','N','N','N','Linhas da Adição',TO_DATE('2011-08-12 13:15:54','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 12/08/2011 13h15min55s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1120433 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 12/08/2011 13h15min56s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1120434,102,0,19,1120029,'AD_Client_ID',TO_DATE('2011-08-12 13:15:55','YYYY-MM-DD HH24:MI:SS'),100,'Client/Tenant for this installation.','LBRA',10,'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Y','N','N','N','N','Y','N','N','N','N','Client',TO_DATE('2011-08-12 13:15:55','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 12/08/2011 13h15min56s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1120434 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 12/08/2011 13h15min57s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1120435,113,0,19,1120029,'AD_Org_ID',TO_DATE('2011-08-12 13:15:56','YYYY-MM-DD HH24:MI:SS'),100,'Organizational entity within client','LBRA',10,'An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Y','N','N','N','N','Y','N','N','N','N','Organization',TO_DATE('2011-08-12 13:15:56','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 12/08/2011 13h15min57s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1120435 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 12/08/2011 13h15min57s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1120436,348,0,20,1120029,'IsActive',TO_DATE('2011-08-12 13:15:57','YYYY-MM-DD HH24:MI:SS'),100,'The record is active in the system','LBRA',1,'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Y','N','N','N','N','Y','N','N','N','Y','Active',TO_DATE('2011-08-12 13:15:57','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 12/08/2011 13h15min57s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1120436 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 12/08/2011 13h15min58s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1120437,245,0,16,1120029,'Created',TO_DATE('2011-08-12 13:15:57','YYYY-MM-DD HH24:MI:SS'),100,'Date this record was created','LBRA',29,'The Created field indicates the date that this record was created.','Y','N','N','N','N','Y','N','N','N','N','Created',TO_DATE('2011-08-12 13:15:57','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 12/08/2011 13h15min58s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1120437 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 12/08/2011 13h15min58s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1120438,246,0,18,110,1120029,'CreatedBy',TO_DATE('2011-08-12 13:15:58','YYYY-MM-DD HH24:MI:SS'),100,'User who created this records','LBRA',10,'The Created By field indicates the user who created this record.','Y','N','N','N','N','Y','N','N','N','N','Created By',TO_DATE('2011-08-12 13:15:58','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 12/08/2011 13h15min58s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1120438 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 12/08/2011 13h15min59s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1120439,607,0,16,1120029,'Updated',TO_DATE('2011-08-12 13:15:58','YYYY-MM-DD HH24:MI:SS'),100,'Date this record was updated','LBRA',29,'The Updated field indicates the date that this record was updated.','Y','N','N','N','N','Y','N','N','N','N','Updated',TO_DATE('2011-08-12 13:15:58','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 12/08/2011 13h15min59s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1120439 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 12/08/2011 13h16min0s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1120440,608,0,18,110,1120029,'UpdatedBy',TO_DATE('2011-08-12 13:15:59','YYYY-MM-DD HH24:MI:SS'),100,'User who updated this records','LBRA',10,'The Updated By field indicates the user who updated this record.','Y','N','N','N','N','Y','N','N','N','N','Updated By',TO_DATE('2011-08-12 13:15:59','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 12/08/2011 13h16min0s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1120440 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 12/08/2011 13h16min0s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1120441,1120099,0,19,1120029,'LBR_ADI_ID',TO_DATE('2011-08-12 13:16:00','YYYY-MM-DD HH24:MI:SS'),100,'LBRA',10,'Y','N','N','N','N','Y','N','N','N','Y','Adição da DI',TO_DATE('2011-08-12 13:16:00','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 12/08/2011 13h16min0s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1120441 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 12/08/2011 13h16min11s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Table SET Description='Janela usada para manter as Adicoes da DI para usar na NFe', Name='Linhas da Adicao',Updated=TO_DATE('2011-08-12 13:16:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=1120029
;

-- 12/08/2011 13h16min11s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Table_Trl SET IsTranslated='N' WHERE AD_Table_ID=1120029
;

-- 12/08/2011 13h16min17s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Table SET Description='Janela usada para manter as Adicoes da DI para usar na NFe',Updated=TO_DATE('2011-08-12 13:16:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=1120028
;

-- 12/08/2011 13h16min22s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Table SET Name='Adicao da DI',Updated=TO_DATE('2011-08-12 13:16:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=1120028
;

-- 12/08/2011 13h16min22s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Table_Trl SET IsTranslated='N' WHERE AD_Table_ID=1120028
;

-- 12/08/2011 13h17min3s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1120442,566,0,11,1120029,'SeqNo',TO_DATE('2011-08-12 13:17:03','YYYY-MM-DD HH24:MI:SS'),100,'Method of ordering records; lowest number comes first','LBRA',10,'The Sequence indicates the order of records','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Sequence',0,TO_DATE('2011-08-12 13:17:03','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 12/08/2011 13h17min3s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1120442 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 12/08/2011 13h17min41s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1120443,454,0,30,1120029,'M_Product_ID',TO_DATE('2011-08-12 13:17:40','YYYY-MM-DD HH24:MI:SS'),100,'Product, Service, Item','LBRA',10,'Identifies an item which is either purchased or sold in this organization.','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Product',0,TO_DATE('2011-08-12 13:17:40','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 12/08/2011 13h17min41s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1120443 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 12/08/2011 13h18min4s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1120444,1675,0,10,1120029,'ProductValue',TO_DATE('2011-08-12 13:18:03','YYYY-MM-DD HH24:MI:SS'),100,'Key of the Product','LBRA',60,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Product Key',0,TO_DATE('2011-08-12 13:18:03','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 12/08/2011 13h18min4s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1120444 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 12/08/2011 13h18min27s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1120445,1395,0,12,1120029,'DiscountAmt',TO_DATE('2011-08-12 13:18:26','YYYY-MM-DD HH24:MI:SS'),100,'0','Calculated amount of discount','LBRA',10,'The Discount Amount indicates the discount amount for a document or line.','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Discount Amount',0,TO_DATE('2011-08-12 13:18:26','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 12/08/2011 13h18min27s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1120445 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 12/08/2011 13h19min43s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1120446,526,0,29,1120029,'Qty',TO_DATE('2011-08-12 13:19:42','YYYY-MM-DD HH24:MI:SS'),100,'Quantity','LBRA',10,'The Quantity indicates the number of a specific product or item for this document.','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Quantity',0,TO_DATE('2011-08-12 13:19:42','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 12/08/2011 13h19min43s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1120446 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 12/08/2011 13h20min1s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1120447,629,0,29,1120029,'Weight',TO_DATE('2011-08-12 13:20:00','YYYY-MM-DD HH24:MI:SS'),100,'Weight of a product','LBRA',10,'The Weight indicates the weight  of the product in the Weight UOM of the Client','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Weight',0,TO_DATE('2011-08-12 13:20:00','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 12/08/2011 13h20min1s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1120447 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 12/08/2011 13h22min5s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,1120101,0,'lbr_SISCOMEXAmt',TO_DATE('2011-08-12 13:22:00','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','SISCOMEX Amt','SISCOMEX Amt',TO_DATE('2011-08-12 13:22:00','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 12/08/2011 13h22min5s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1120101 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 12/08/2011 13h23min0s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Element_Trl SET Name='Valor do SISCOMEX',PrintName='Valor do SISCOMEX',Description='Valor da taxa do SISCOMEX',Help='Verificar a legislação vigente para saber o valor do SISCOMEX',Updated=TO_DATE('2011-08-12 13:23:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1120101 AND AD_Language='pt_BR'
;

-- 12/08/2011 13h23min22s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1120448,1120101,0,12,1120028,'lbr_SISCOMEXAmt',TO_DATE('2011-08-12 13:23:17','YYYY-MM-DD HH24:MI:SS'),100,'LBRA',10,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','SISCOMEX Amt',0,TO_DATE('2011-08-12 13:23:17','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 12/08/2011 13h23min22s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1120448 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 12/08/2011 13h23min41s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1120449,1000134,0,30,1120028,'LBR_NCM_ID',TO_DATE('2011-08-12 13:23:41','YYYY-MM-DD HH24:MI:SS'),100,'Primary key table LBR_NCM','LBRA',10,'Primary key table LBR_NCM','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','NCM',0,TO_DATE('2011-08-12 13:23:41','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 12/08/2011 13h23min41s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1120449 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 12/08/2011 13h24min8s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1120450,275,0,14,1120028,'Description',TO_DATE('2011-08-12 13:24:07','YYYY-MM-DD HH24:MI:SS'),100,'Optional short description of the record','LBRA',512,'A description is limited to 255 characters.','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Description',0,TO_DATE('2011-08-12 13:24:07','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 12/08/2011 13h24min8s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1120450 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 12/08/2011 13h24min30s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1120451,1120101,0,12,1120027,'lbr_SISCOMEXAmt',TO_DATE('2011-08-12 13:24:29','YYYY-MM-DD HH24:MI:SS'),100,'LBRA',10,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','SISCOMEX Amt',0,TO_DATE('2011-08-12 13:24:29','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 12/08/2011 13h24min30s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1120451 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 12/08/2011 13h25min8s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1120452,1047,0,20,1120027,'Processed',TO_DATE('2011-08-12 13:25:03','YYYY-MM-DD HH24:MI:SS'),100,'N','The document has been processed','LBRA',1,'The Processed checkbox indicates that a document has been processed.','Y','Y','N','N','N','N','N','Y','N','N','N','N','Y','Processed',0,TO_DATE('2011-08-12 13:25:03','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 12/08/2011 13h25min8s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1120452 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 12/08/2011 13h25min13s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
CREATE TABLE LBR_DI (AD_Client_ID NUMBER(10) NOT NULL, AD_Org_ID NUMBER(10) NOT NULL, BPartnerValue NVARCHAR2(60) DEFAULT NULL , C_BPartner_ID NUMBER(10) DEFAULT NULL , C_Region_ID NUMBER(10) DEFAULT NULL , Created DATE NOT NULL, CreatedBy NUMBER(10) NOT NULL, DateDoc DATE DEFAULT NULL , DateTrx DATE DEFAULT NULL , Description NVARCHAR2(512) DEFAULT NULL , DocumentNo NVARCHAR2(40) DEFAULT NULL , IsActive CHAR(1) CHECK (IsActive IN ('Y','N')) NOT NULL, LBR_DI_ID NUMBER(10) NOT NULL, Processed CHAR(1) DEFAULT 'N' CHECK (Processed IN ('Y','N')) NOT NULL, Updated DATE NOT NULL, UpdatedBy NUMBER(10) NOT NULL, lbr_CustomSite NVARCHAR2(512) DEFAULT NULL , lbr_SISCOMEXAmt NUMBER DEFAULT NULL , CONSTRAINT LBR_DI_Key PRIMARY KEY (LBR_DI_ID))
;

-- 12/08/2011 13h25min21s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
CREATE TABLE LBR_ADI (AD_Client_ID NUMBER(10) NOT NULL, AD_Org_ID NUMBER(10) NOT NULL, Created DATE NOT NULL, CreatedBy NUMBER(10) NOT NULL, Description NVARCHAR2(512) DEFAULT NULL , DocumentNo NVARCHAR2(10) DEFAULT NULL , IsActive CHAR(1) CHECK (IsActive IN ('Y','N')) NOT NULL, LBR_ADI_ID NUMBER(10) NOT NULL, LBR_DI_ID NUMBER(10) NOT NULL, LBR_NCM_ID NUMBER(10) DEFAULT NULL , SeqNo NUMBER(10) DEFAULT NULL , Updated DATE NOT NULL, UpdatedBy NUMBER(10) NOT NULL, lbr_SISCOMEXAmt NUMBER DEFAULT NULL , CONSTRAINT LBR_ADI_Key PRIMARY KEY (LBR_ADI_ID))
;

-- 15/08/2011 15h52min59s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
CREATE TABLE LBR_ADILine (AD_Client_ID NUMERIC(10) NOT NULL, AD_Org_ID NUMERIC(10) NOT NULL, Created TIMESTAMP NOT NULL, CreatedBy NUMERIC(10) NOT NULL, DiscountAmt NUMERIC DEFAULT 0, IsActive CHAR(1) CHECK (IsActive IN ('Y','N')) NOT NULL, LBR_ADILine_ID NUMERIC(10) NOT NULL, LBR_ADI_ID NUMERIC(10) NOT NULL, M_Product_ID NUMERIC(10) DEFAULT NULL , ProductValue VARCHAR(60) NOT NULL, Qty NUMERIC DEFAULT NULL , SeqNo NUMERIC(10) NOT NULL, Updated TIMESTAMP NOT NULL, UpdatedBy NUMERIC(10) NOT NULL, Weight NUMERIC DEFAULT NULL , CONSTRAINT LBR_ADILine_Key PRIMARY KEY (LBR_ADILine_ID))
;

-- 12/08/2011 13h25min56s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Window (AD_Client_ID,AD_Org_ID,AD_Window_ID,Created,CreatedBy,EntityType,IsActive,IsBetaFunctionality,IsDefault,IsSOTrx,Name,Processing,Updated,UpdatedBy,WinHeight,WinWidth,WindowType) VALUES (0,0,1120011,TO_DATE('2011-08-12 13:25:55','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','N','N','Y','Declaração de Importação','N',TO_DATE('2011-08-12 13:25:55','YYYY-MM-DD HH24:MI:SS'),100,0,0,'M')
;

-- 12/08/2011 13h25min56s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Window_Trl (AD_Language,AD_Window_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Window_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Window t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Window_ID=1120011 AND NOT EXISTS (SELECT * FROM AD_Window_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Window_ID=t.AD_Window_ID)
;

-- 12/08/2011 13h26min28s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Window SET Name='Declaracao de Importação',Updated=TO_DATE('2011-08-12 13:26:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Window_ID=1120011
;

-- 12/08/2011 13h26min28s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Window_Trl SET IsTranslated='N' WHERE AD_Window_ID=1120011
;

-- 12/08/2011 13h26min43s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Window_Trl SET Description='Lançamento das Declarações de Importação (DI)',Updated=TO_DATE('2011-08-12 13:26:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Window_ID=1120011 AND AD_Language='pt_BR'
;

-- 12/08/2011 13h27min15s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Tab (AD_Client_ID,AD_Org_ID,AD_Tab_ID,AD_Table_ID,AD_Window_ID,Created,CreatedBy,EntityType,HasTree,ImportFields,IsActive,IsAdvancedTab,IsInfoTab,IsInsertRecord,IsReadOnly,IsSingleRow,IsSortTab,IsTranslationTab,Name,Processing,SeqNo,TabLevel,Updated,UpdatedBy) VALUES (0,0,1120020,1120027,1120011,TO_DATE('2011-08-12 13:27:10','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','N','N','Y','N','N','Y','N','Y','N','N','DI','N',10,0,TO_DATE('2011-08-12 13:27:10','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 12/08/2011 13h27min15s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Tab_Trl (AD_Language,AD_Tab_ID, CommitWarning,Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Tab_ID, t.CommitWarning,t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Tab t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Tab_ID=1120020 AND NOT EXISTS (SELECT * FROM AD_Tab_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Tab_ID=t.AD_Tab_ID)
;

-- 12/08/2011 13h27min18s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1120409,1120277,0,1120020,TO_DATE('2011-08-12 13:27:17','YYYY-MM-DD HH24:MI:SS'),100,'The record is active in the system',1,'LBRA','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Y','Y','Y','N','N','N','N','N','Active',TO_DATE('2011-08-12 13:27:17','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 12/08/2011 13h27min18s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1120277 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 12/08/2011 13h27min18s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1120421,1120278,0,1120020,TO_DATE('2011-08-12 13:27:18','YYYY-MM-DD HH24:MI:SS'),100,'Identifies a Business Partner',10,'LBRA','A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson','Y','Y','Y','N','N','N','N','N','Business Partner ',TO_DATE('2011-08-12 13:27:18','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 12/08/2011 13h27min18s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1120278 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 12/08/2011 13h27min19s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1120420,1120279,0,1120020,TO_DATE('2011-08-12 13:27:18','YYYY-MM-DD HH24:MI:SS'),100,'Key of the Business Partner',60,'LBRA','Y','Y','Y','N','N','N','N','N','Business Partner Key',TO_DATE('2011-08-12 13:27:18','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 12/08/2011 13h27min19s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1120279 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 12/08/2011 13h27min20s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1120407,1120280,0,1120020,TO_DATE('2011-08-12 13:27:19','YYYY-MM-DD HH24:MI:SS'),100,'Client/Tenant for this installation.',10,'LBRA','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Y','Y','Y','N','N','N','N','N','Client',TO_DATE('2011-08-12 13:27:19','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 12/08/2011 13h27min20s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1120280 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 12/08/2011 13h27min20s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1120417,1120281,0,1120020,TO_DATE('2011-08-12 13:27:20','YYYY-MM-DD HH24:MI:SS'),100,512,'LBRA','Y','Y','Y','N','N','N','N','N','Custom Site',TO_DATE('2011-08-12 13:27:20','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 12/08/2011 13h27min20s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1120281 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 12/08/2011 13h27min21s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1120406,1120282,0,1120020,TO_DATE('2011-08-12 13:27:20','YYYY-MM-DD HH24:MI:SS'),100,10,'LBRA','Y','Y','N','N','N','N','N','N','Declaracao de Importacao',TO_DATE('2011-08-12 13:27:20','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 12/08/2011 13h27min21s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1120282 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 12/08/2011 13h27min21s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1120416,1120283,0,1120020,TO_DATE('2011-08-12 13:27:21','YYYY-MM-DD HH24:MI:SS'),100,'Optional short description of the record',512,'LBRA','A description is limited to 255 characters.','Y','Y','Y','N','N','N','N','N','Description',TO_DATE('2011-08-12 13:27:21','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 12/08/2011 13h27min21s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1120283 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 12/08/2011 13h27min22s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1120415,1120284,0,1120020,TO_DATE('2011-08-12 13:27:21','YYYY-MM-DD HH24:MI:SS'),100,'Date of the Document',7,'LBRA','The Document Date indicates the date the document was generated.  It may or may not be the same as the accounting date.','Y','Y','Y','N','N','N','N','N','Document Date',TO_DATE('2011-08-12 13:27:21','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 12/08/2011 13h27min22s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1120284 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 12/08/2011 13h27min22s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1120414,1120285,0,1120020,TO_DATE('2011-08-12 13:27:22','YYYY-MM-DD HH24:MI:SS'),100,'Document sequence number of the document',40,'LBRA','The document number is usually automatically generated by the system and determined by the document type of the document. If the document is not saved, the preliminary number is displayed in "<>".
If the document type of your document has no automatic document sequence defined, the field is empty if you create a new document. This is for documents which usually have an external number (like vendor invoice).  If you leave the field empty, the system will generate a document number for you. The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).','Y','Y','Y','N','N','N','N','N','Document No',TO_DATE('2011-08-12 13:27:22','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 12/08/2011 13h27min22s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1120285 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 12/08/2011 13h27min23s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1120408,1120286,0,1120020,TO_DATE('2011-08-12 13:27:22','YYYY-MM-DD HH24:MI:SS'),100,'Organizational entity within client',10,'LBRA','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Y','Y','Y','N','N','N','N','N','Organization',TO_DATE('2011-08-12 13:27:22','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 12/08/2011 13h27min23s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1120286 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 12/08/2011 13h27min23s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1120452,1120287,0,1120020,TO_DATE('2011-08-12 13:27:23','YYYY-MM-DD HH24:MI:SS'),100,'The document has been processed',1,'LBRA','The Processed checkbox indicates that a document has been processed.','Y','Y','Y','N','N','N','N','N','Processed',TO_DATE('2011-08-12 13:27:23','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 12/08/2011 13h27min23s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1120287 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 12/08/2011 13h27min24s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1120418,1120288,0,1120020,TO_DATE('2011-08-12 13:27:23','YYYY-MM-DD HH24:MI:SS'),100,'Identifies a geographical Region',10,'LBRA','The Region identifies a unique Region for this Country.','Y','Y','Y','N','N','N','N','N','Region',TO_DATE('2011-08-12 13:27:23','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 12/08/2011 13h27min24s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1120288 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 12/08/2011 13h27min24s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1120451,1120289,0,1120020,TO_DATE('2011-08-12 13:27:24','YYYY-MM-DD HH24:MI:SS'),100,10,'LBRA','Y','Y','Y','N','N','N','N','N','SISCOMEX Amt',TO_DATE('2011-08-12 13:27:24','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 12/08/2011 13h27min24s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1120289 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 12/08/2011 13h27min25s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1120419,1120290,0,1120020,TO_DATE('2011-08-12 13:27:24','YYYY-MM-DD HH24:MI:SS'),100,'Transaction Date',7,'LBRA','The Transaction Date indicates the date of the transaction.','Y','Y','Y','N','N','N','N','N','Transaction Date',TO_DATE('2011-08-12 13:27:24','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 12/08/2011 13h27min25s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1120290 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 12/08/2011 13h28min28s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=10,IsDisplayed='Y' WHERE AD_Field_ID=1120280
;

-- 12/08/2011 13h28min28s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=20,IsDisplayed='Y' WHERE AD_Field_ID=1120286
;

-- 12/08/2011 13h28min28s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=30,IsDisplayed='Y' WHERE AD_Field_ID=1120285
;

-- 12/08/2011 13h28min28s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=40,IsDisplayed='Y' WHERE AD_Field_ID=1120277
;

-- 12/08/2011 13h28min28s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=50,IsDisplayed='Y' WHERE AD_Field_ID=1120283
;

-- 12/08/2011 13h28min28s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=60,IsDisplayed='Y' WHERE AD_Field_ID=1120284
;

-- 12/08/2011 13h28min28s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y' WHERE AD_Field_ID=1120290
;

-- 12/08/2011 13h28min28s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=80,IsDisplayed='Y' WHERE AD_Field_ID=1120279
;

-- 12/08/2011 13h28min28s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=90,IsDisplayed='Y' WHERE AD_Field_ID=1120278
;

-- 12/08/2011 13h28min28s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=100,IsDisplayed='Y' WHERE AD_Field_ID=1120281
;

-- 12/08/2011 13h28min28s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=110,IsDisplayed='Y' WHERE AD_Field_ID=1120288
;

-- 12/08/2011 13h28min28s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=120,IsDisplayed='Y' WHERE AD_Field_ID=1120289
;

-- 12/08/2011 13h28min28s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=130,IsDisplayed='Y' WHERE AD_Field_ID=1120287
;

-- 12/08/2011 13h28min43s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2011-08-12 13:28:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1120286
;

-- 12/08/2011 13h28min47s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2011-08-12 13:28:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1120277
;

-- 12/08/2011 13h28min48s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2011-08-12 13:28:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1120290
;

-- 12/08/2011 13h28min50s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2011-08-12 13:28:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1120278
;

-- 12/08/2011 13h28min51s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2011-08-12 13:28:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1120288
;

-- 12/08/2011 13h29min7s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET DisplayLength=22,Updated=TO_DATE('2011-08-12 13:29:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1120280
;

-- 12/08/2011 13h29min7s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET DisplayLength=22,Updated=TO_DATE('2011-08-12 13:29:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1120286
;

-- 12/08/2011 13h29min8s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET DisplayLength=22,Updated=TO_DATE('2011-08-12 13:29:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1120285
;

-- 12/08/2011 13h29min9s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET DisplayLength=22,Updated=TO_DATE('2011-08-12 13:29:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1120277
;

-- 12/08/2011 13h29min12s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET DisplayLength=100,Updated=TO_DATE('2011-08-12 13:29:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1120283
;

-- 12/08/2011 13h29min13s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET DisplayLength=22,Updated=TO_DATE('2011-08-12 13:29:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1120284
;

-- 12/08/2011 13h29min14s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET DisplayLength=22,Updated=TO_DATE('2011-08-12 13:29:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1120290
;

-- 12/08/2011 13h29min15s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET DisplayLength=22,Updated=TO_DATE('2011-08-12 13:29:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1120279
;

-- 12/08/2011 13h29min16s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET DisplayLength=22,Updated=TO_DATE('2011-08-12 13:29:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1120278
;

-- 12/08/2011 13h29min16s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET DisplayLength=22,Updated=TO_DATE('2011-08-12 13:29:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1120281
;

-- 12/08/2011 13h29min17s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET DisplayLength=22,Updated=TO_DATE('2011-08-12 13:29:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1120288
;

-- 12/08/2011 13h29min18s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET DisplayLength=2210,Updated=TO_DATE('2011-08-12 13:29:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1120289
;

-- 12/08/2011 13h29min19s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET DisplayLength=22,Updated=TO_DATE('2011-08-12 13:29:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1120287
;

-- 12/08/2011 13h29min20s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET DisplayLength=22,Updated=TO_DATE('2011-08-12 13:29:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1120289
;

-- 12/08/2011 13h29min25s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2011-08-12 13:29:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1120287
;

-- 12/08/2011 13h29min58s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Tab (AD_Client_ID,AD_Org_ID,AD_Tab_ID,AD_Table_ID,AD_Window_ID,Created,CreatedBy,EntityType,HasTree,ImportFields,IsActive,IsAdvancedTab,IsInfoTab,IsInsertRecord,IsReadOnly,IsSingleRow,IsSortTab,IsTranslationTab,Name,Processing,SeqNo,TabLevel,Updated,UpdatedBy) VALUES (0,0,1120021,1120028,1120011,TO_DATE('2011-08-12 13:29:57','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','N','N','Y','N','N','Y','N','Y','N','N','Adição','N',10,1,TO_DATE('2011-08-12 13:29:57','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 12/08/2011 13h29min58s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Tab_Trl (AD_Language,AD_Tab_ID, CommitWarning,Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Tab_ID, t.CommitWarning,t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Tab t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Tab_ID=1120021 AND NOT EXISTS (SELECT * FROM AD_Tab_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Tab_ID=t.AD_Tab_ID)
;

-- 12/08/2011 13h30min3s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Tab SET Name='Adicao',Updated=TO_DATE('2011-08-12 13:30:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=1120021
;

-- 12/08/2011 13h30min3s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Tab_Trl SET IsTranslated='N' WHERE AD_Tab_ID=1120021
;

-- 12/08/2011 13h30min8s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1120425,1120291,0,1120021,TO_DATE('2011-08-12 13:30:06','YYYY-MM-DD HH24:MI:SS'),100,'The record is active in the system',1,'LBRA','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Y','Y','Y','N','N','N','N','N','Active',TO_DATE('2011-08-12 13:30:06','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 12/08/2011 13h30min8s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1120291 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 12/08/2011 13h30min8s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1120422,1120292,0,1120021,TO_DATE('2011-08-12 13:30:08','YYYY-MM-DD HH24:MI:SS'),100,10,'LBRA','Y','Y','N','N','N','N','N','N','Adição da DI',TO_DATE('2011-08-12 13:30:08','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 12/08/2011 13h30min8s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1120292 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 12/08/2011 13h30min9s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1120423,1120293,0,1120021,TO_DATE('2011-08-12 13:30:08','YYYY-MM-DD HH24:MI:SS'),100,'Client/Tenant for this installation.',10,'LBRA','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Y','Y','Y','N','N','N','N','N','Client',TO_DATE('2011-08-12 13:30:08','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 12/08/2011 13h30min9s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1120293 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 12/08/2011 13h30min10s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1120430,1120294,0,1120021,TO_DATE('2011-08-12 13:30:09','YYYY-MM-DD HH24:MI:SS'),100,10,'LBRA','Y','Y','Y','N','N','N','N','N','Declaracao de Importacao',TO_DATE('2011-08-12 13:30:09','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 12/08/2011 13h30min10s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1120294 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 12/08/2011 13h30min10s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1120450,1120295,0,1120021,TO_DATE('2011-08-12 13:30:10','YYYY-MM-DD HH24:MI:SS'),100,'Optional short description of the record',512,'LBRA','A description is limited to 255 characters.','Y','Y','Y','N','N','N','N','N','Description',TO_DATE('2011-08-12 13:30:10','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 12/08/2011 13h30min10s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1120295 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 12/08/2011 13h30min11s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1120431,1120296,0,1120021,TO_DATE('2011-08-12 13:30:10','YYYY-MM-DD HH24:MI:SS'),100,'Document sequence number of the document',10,'LBRA','The document number is usually automatically generated by the system and determined by the document type of the document. If the document is not saved, the preliminary number is displayed in "<>".
If the document type of your document has no automatic document sequence defined, the field is empty if you create a new document. This is for documents which usually have an external number (like vendor invoice).  If you leave the field empty, the system will generate a document number for you. The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).','Y','Y','Y','N','N','N','N','N','Document No',TO_DATE('2011-08-12 13:30:10','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 12/08/2011 13h30min11s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1120296 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 12/08/2011 13h30min11s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1120449,1120297,0,1120021,TO_DATE('2011-08-12 13:30:11','YYYY-MM-DD HH24:MI:SS'),100,'Primary key table LBR_NCM',10,'LBRA','Primary key table LBR_NCM','Y','Y','Y','N','N','N','N','N','NCM',TO_DATE('2011-08-12 13:30:11','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 12/08/2011 13h30min11s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1120297 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 12/08/2011 13h30min12s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1120424,1120298,0,1120021,TO_DATE('2011-08-12 13:30:11','YYYY-MM-DD HH24:MI:SS'),100,'Organizational entity within client',10,'LBRA','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Y','Y','Y','N','N','N','N','N','Organization',TO_DATE('2011-08-12 13:30:11','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 12/08/2011 13h30min12s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1120298 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 12/08/2011 13h30min12s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1120448,1120299,0,1120021,TO_DATE('2011-08-12 13:30:12','YYYY-MM-DD HH24:MI:SS'),100,10,'LBRA','Y','Y','Y','N','N','N','N','N','SISCOMEX Amt',TO_DATE('2011-08-12 13:30:12','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 12/08/2011 13h30min12s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1120299 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 12/08/2011 13h30min13s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1120432,1120300,0,1120021,TO_DATE('2011-08-12 13:30:12','YYYY-MM-DD HH24:MI:SS'),100,'Method of ordering records; lowest number comes first',10,'LBRA','The Sequence indicates the order of records','Y','Y','Y','N','N','N','N','N','Sequence',TO_DATE('2011-08-12 13:30:12','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 12/08/2011 13h30min13s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1120300 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 12/08/2011 13h30min40s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=10,IsDisplayed='Y' WHERE AD_Field_ID=1120293
;

-- 12/08/2011 13h30min40s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=20,IsDisplayed='Y' WHERE AD_Field_ID=1120298
;

-- 12/08/2011 13h30min40s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=30,IsDisplayed='Y' WHERE AD_Field_ID=1120294
;

-- 12/08/2011 13h30min40s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=40,IsDisplayed='Y' WHERE AD_Field_ID=1120291
;

-- 12/08/2011 13h30min40s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=50,IsDisplayed='Y' WHERE AD_Field_ID=1120296
;

-- 12/08/2011 13h30min40s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=60,IsDisplayed='Y' WHERE AD_Field_ID=1120300
;

-- 12/08/2011 13h30min40s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y' WHERE AD_Field_ID=1120297
;

-- 12/08/2011 13h30min40s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=80,IsDisplayed='Y' WHERE AD_Field_ID=1120299
;

-- 12/08/2011 13h30min40s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=90,IsDisplayed='Y' WHERE AD_Field_ID=1120295
;

-- 12/08/2011 13h30min46s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=100,IsDisplayed='Y' WHERE AD_Field_ID=1120292
;

-- 12/08/2011 13h30min56s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2011-08-12 13:30:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1120298
;

-- 12/08/2011 13h31min0s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2011-08-12 13:31:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1120291
;

-- 12/08/2011 13h31min2s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2011-08-12 13:31:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1120300
;

-- 12/08/2011 13h31min3s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2011-08-12 13:31:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1120299
;

-- 12/08/2011 13h31min4s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2011-08-12 13:31:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1120292
;

-- 12/08/2011 13h31min5s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET DisplayLength=22,Updated=TO_DATE('2011-08-12 13:31:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1120293
;

-- 12/08/2011 13h31min6s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET DisplayLength=22,Updated=TO_DATE('2011-08-12 13:31:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1120298
;

-- 12/08/2011 13h31min8s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET DisplayLength=22,Updated=TO_DATE('2011-08-12 13:31:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1120294
;

-- 12/08/2011 13h31min11s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET DisplayLength=22,Updated=TO_DATE('2011-08-12 13:31:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1120291
;

-- 12/08/2011 13h31min12s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET DisplayLength=22,Updated=TO_DATE('2011-08-12 13:31:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1120296
;

-- 12/08/2011 13h31min13s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET DisplayLength=22,Updated=TO_DATE('2011-08-12 13:31:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1120297
;

-- 12/08/2011 13h31min14s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET DisplayLength=22,Updated=TO_DATE('2011-08-12 13:31:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1120300
;

-- 12/08/2011 13h31min15s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET DisplayLength=22,Updated=TO_DATE('2011-08-12 13:31:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1120299
;

-- 12/08/2011 13h31min18s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET DisplayLength=100,Updated=TO_DATE('2011-08-12 13:31:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1120295
;

-- 12/08/2011 13h31min25s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET DisplayLength=100, IsSameLine='N',Updated=TO_DATE('2011-08-12 13:31:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1120292
;

-- 12/08/2011 13h31min37s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Tab SET AD_Column_ID=1120430,Updated=TO_DATE('2011-08-12 13:31:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=1120021
;

-- 12/08/2011 13h32min4s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Tab (AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_Tab_ID,AD_Table_ID,AD_Window_ID,Created,CreatedBy,Description,EntityType,HasTree,ImportFields,IsActive,IsAdvancedTab,IsInfoTab,IsInsertRecord,IsReadOnly,IsSingleRow,IsSortTab,IsTranslationTab,Name,Processing,SeqNo,TabLevel,Updated,UpdatedBy) VALUES (0,1120441,0,1120022,1120029,1120011,TO_DATE('2011-08-12 13:31:59','YYYY-MM-DD HH24:MI:SS'),100,'Aba Incluida','U','N','N','Y','N','N','Y','N','Y','N','N','Linha','N',10,2,TO_DATE('2011-08-12 13:31:59','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 12/08/2011 13h32min4s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Tab_Trl (AD_Language,AD_Tab_ID, CommitWarning,Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Tab_ID, t.CommitWarning,t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Tab t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Tab_ID=1120022 AND NOT EXISTS (SELECT * FROM AD_Tab_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Tab_ID=t.AD_Tab_ID)
;

-- 12/08/2011 13h32min7s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1120436,1120301,0,1120022,TO_DATE('2011-08-12 13:32:07','YYYY-MM-DD HH24:MI:SS'),100,'The record is active in the system',1,'LBRA','There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.
There are two reasons for de-activating and not deleting records:
(1) The system requires the record for audit purposes.
(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.','Y','Y','Y','N','N','N','N','N','Active',TO_DATE('2011-08-12 13:32:07','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 12/08/2011 13h32min7s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1120301 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 12/08/2011 13h32min8s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1120441,1120302,0,1120022,TO_DATE('2011-08-12 13:32:07','YYYY-MM-DD HH24:MI:SS'),100,10,'LBRA','Y','Y','Y','N','N','N','N','N','Adição da DI',TO_DATE('2011-08-12 13:32:07','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 12/08/2011 13h32min8s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1120302 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 12/08/2011 13h32min8s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1120434,1120303,0,1120022,TO_DATE('2011-08-12 13:32:08','YYYY-MM-DD HH24:MI:SS'),100,'Client/Tenant for this installation.',10,'LBRA','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.','Y','Y','Y','N','N','N','N','N','Client',TO_DATE('2011-08-12 13:32:08','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 12/08/2011 13h32min8s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1120303 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 12/08/2011 13h32min9s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1120445,1120304,0,1120022,TO_DATE('2011-08-12 13:32:08','YYYY-MM-DD HH24:MI:SS'),100,'Calculated amount of discount',10,'LBRA','The Discount Amount indicates the discount amount for a document or line.','Y','Y','Y','N','N','N','N','N','Discount Amount',TO_DATE('2011-08-12 13:32:08','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 12/08/2011 13h32min9s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1120304 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 12/08/2011 13h32min9s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1120433,1120305,0,1120022,TO_DATE('2011-08-12 13:32:09','YYYY-MM-DD HH24:MI:SS'),100,10,'LBRA','Y','Y','N','N','N','N','N','N','Linhas da Adição',TO_DATE('2011-08-12 13:32:09','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 12/08/2011 13h32min9s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1120305 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 12/08/2011 13h32min10s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1120435,1120306,0,1120022,TO_DATE('2011-08-12 13:32:09','YYYY-MM-DD HH24:MI:SS'),100,'Organizational entity within client',10,'LBRA','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.','Y','Y','Y','N','N','N','N','N','Organization',TO_DATE('2011-08-12 13:32:09','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 12/08/2011 13h32min10s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1120306 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 12/08/2011 13h32min11s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1120443,1120307,0,1120022,TO_DATE('2011-08-12 13:32:10','YYYY-MM-DD HH24:MI:SS'),100,'Product, Service, Item',10,'LBRA','Identifies an item which is either purchased or sold in this organization.','Y','Y','Y','N','N','N','N','N','Product',TO_DATE('2011-08-12 13:32:10','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 12/08/2011 13h32min11s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1120307 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 12/08/2011 13h32min11s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1120444,1120308,0,1120022,TO_DATE('2011-08-12 13:32:11','YYYY-MM-DD HH24:MI:SS'),100,'Key of the Product',60,'LBRA','Y','Y','Y','N','N','N','N','N','Product Key',TO_DATE('2011-08-12 13:32:11','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 12/08/2011 13h32min11s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1120308 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 12/08/2011 13h32min12s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1120446,1120309,0,1120022,TO_DATE('2011-08-12 13:32:11','YYYY-MM-DD HH24:MI:SS'),100,'Quantity',10,'LBRA','The Quantity indicates the number of a specific product or item for this document.','Y','Y','Y','N','N','N','N','N','Quantity',TO_DATE('2011-08-12 13:32:11','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 12/08/2011 13h32min12s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1120309 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 12/08/2011 13h32min12s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1120442,1120310,0,1120022,TO_DATE('2011-08-12 13:32:12','YYYY-MM-DD HH24:MI:SS'),100,'Method of ordering records; lowest number comes first',10,'LBRA','The Sequence indicates the order of records','Y','Y','Y','N','N','N','N','N','Sequence',TO_DATE('2011-08-12 13:32:12','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 12/08/2011 13h32min12s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1120310 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 12/08/2011 13h32min13s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1120447,1120311,0,1120022,TO_DATE('2011-08-12 13:32:12','YYYY-MM-DD HH24:MI:SS'),100,'Weight of a product',10,'LBRA','The Weight indicates the weight  of the product in the Weight UOM of the Client','Y','Y','Y','N','N','N','N','N','Weight',TO_DATE('2011-08-12 13:32:12','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 12/08/2011 13h32min13s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1120311 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 12/08/2011 13h32min56s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1120301
;

-- 12/08/2011 13h32min56s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1120302
;

-- 12/08/2011 13h32min56s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1120303
;

-- 12/08/2011 13h32min56s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1120306
;

-- 12/08/2011 13h32min56s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=10,IsDisplayed='Y' WHERE AD_Field_ID=1120310
;

-- 12/08/2011 13h32min56s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=20,IsDisplayed='Y' WHERE AD_Field_ID=1120308
;

-- 12/08/2011 13h32min56s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=30,IsDisplayed='Y' WHERE AD_Field_ID=1120307
;

-- 12/08/2011 13h32min56s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=40,IsDisplayed='Y' WHERE AD_Field_ID=1120309
;

-- 12/08/2011 13h32min56s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=50,IsDisplayed='Y' WHERE AD_Field_ID=1120311
;

-- 12/08/2011 13h32min56s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=60,IsDisplayed='Y' WHERE AD_Field_ID=1120304
;

-- 12/08/2011 13h33min5s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET DisplayLength=22,Updated=TO_DATE('2011-08-12 13:33:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1120310
;

-- 12/08/2011 13h33min5s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET DisplayLength=22,Updated=TO_DATE('2011-08-12 13:33:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1120308
;

-- 12/08/2011 13h33min6s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET DisplayLength=22,Updated=TO_DATE('2011-08-12 13:33:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1120307
;

-- 12/08/2011 13h33min7s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET DisplayLength=22,Updated=TO_DATE('2011-08-12 13:33:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1120309
;

-- 12/08/2011 13h33min7s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET DisplayLength=22,Updated=TO_DATE('2011-08-12 13:33:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1120311
;

-- 12/08/2011 13h33min26s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET DisplayLength=22,Updated=TO_DATE('2011-08-12 13:33:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1120304
;

-- 12/08/2011 13h33min27s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2011-08-12 13:33:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1120307
;

-- 12/08/2011 13h33min32s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2011-08-12 13:33:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1120311
;

-- 12/08/2011 13h33min45s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET Included_Tab_ID=1120022,Updated=TO_DATE('2011-08-12 13:33:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1120292
;

-- 12/08/2011 13h34min44s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Menu (AD_Client_ID,AD_Menu_ID,AD_Org_ID,AD_Window_ID,Action,Created,CreatedBy,EntityType,IsActive,IsCentrallyMaintained,IsReadOnly,IsSOTrx,IsSummary,Name,Updated,UpdatedBy) VALUES (0,1120019,0,1120011,'W',TO_DATE('2011-08-12 13:34:43','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Y','N','N','N','Declaração de Importação',TO_DATE('2011-08-12 13:34:43','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 12/08/2011 13h34min44s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Menu_Trl (AD_Language,AD_Menu_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Menu_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Menu t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Menu_ID=1120019 AND NOT EXISTS (SELECT * FROM AD_Menu_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Menu_ID=t.AD_Menu_ID)
;

-- 12/08/2011 13h34min44s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo) SELECT t.AD_Client_ID, 0, 'Y', SysDate, 100, SysDate, 100,t.AD_Tree_ID, 1120019, 0, 999 FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=1120019)
;

-- 12/08/2011 13h42min21s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Tab SET SeqNo=20,Updated=TO_DATE('2011-08-12 13:42:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=1120021
;

-- 12/08/2011 13h42min28s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Tab SET IsSingleRow='N', SeqNo=30,Updated=TO_DATE('2011-08-12 13:42:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=1120022
;

-- 12/08/2011 13h44min8s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET IsIdentifier='Y', IsMandatory='Y', SeqNo=1,Updated=TO_DATE('2011-08-12 13:44:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1120442
;

-- 12/08/2011 13h44min15s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET IsIdentifier='Y', IsMandatory='Y', SeqNo=2,Updated=TO_DATE('2011-08-12 13:44:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1120444
;

-- 12/08/2011 13h44min45s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET IsIdentifier='Y', IsMandatory='Y', SeqNo=1,Updated=TO_DATE('2011-08-12 13:44:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1120432
;

-- 12/08/2011 13h44min53s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET IsIdentifier='Y', IsMandatory='Y', SeqNo=2,Updated=TO_DATE('2011-08-12 13:44:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1120431
;

-- 12/08/2011 13h45min8s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET IsIdentifier='Y', IsMandatory='Y', SeqNo=1,Updated=TO_DATE('2011-08-12 13:45:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1120414
;

-- 12/08/2011 13h48min28s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
ALTER TABLE LBR_ADI MODIFY SeqNo NUMBER(10)
;

-- 12/08/2011 13h48min28s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
ALTER TABLE LBR_ADI MODIFY SeqNo NOT NULL
;

-- 12/08/2011 13h53min1s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET DefaultValue='@SQL=SELECT COALESCE(MAX(SeqNo),0)+1 AS DefaultValue FROM LBR_ADI WHERE LBR_DI_ID=@LBR_DI_ID@',Updated=TO_DATE('2011-08-12 13:53:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1120432
;

-- 12/08/2011 13h56min53s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET FieldLength=40,Updated=TO_DATE('2011-08-12 13:56:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1120431
;

-- 12/08/2011 13h56min56s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
ALTER TABLE LBR_ADI MODIFY DocumentNo NVARCHAR2(40)
;

-- 12/08/2011 13h56min56s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
ALTER TABLE LBR_ADI MODIFY DocumentNo NOT NULL
;

-- 12/08/2011 13h57min35s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET DefaultValue='@SQL=SELECT COALESCE(MAX(SeqNo),0)+1 AS DefaultValue FROM LBR_ADILine WHERE LBR_ADI_ID=@LBR_ADI_ID@',Updated=TO_DATE('2011-08-12 13:57:35','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1120442
;

-- 12/08/2011 13h59min3s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Tab_Trl SET Name='Itens da Adição',Updated=TO_DATE('2011-08-12 13:59:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=1120022 AND AD_Language='pt_BR'
;

-- 12/08/2011 13h59min8s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Tab SET Name='Itens da Adicao',Updated=TO_DATE('2011-08-12 13:59:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=1120022
;

-- 12/08/2011 13h59min8s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Tab_Trl SET IsTranslated='N' WHERE AD_Tab_ID=1120022
;

-- 12/08/2011 14h1min59s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET DefaultValue='185',Updated=TO_DATE('2011-08-12 14:01:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1120451
;

-- 12/08/2011 15h51min52s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET IsReadOnly='Y',Updated=TO_DATE('2011-08-12 15:51:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1120296
;

-- 12/08/2011 17h6min16s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Val_Rule (AD_Client_ID,AD_Org_ID,AD_Val_Rule_ID,Code,Created,CreatedBy,EntityType,IsActive,Name,Type,Updated,UpdatedBy) VALUES (0,0,1120011,'LBR_DI.Processed=''N''',TO_DATE('2011-08-12 17:06:15','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','LBR_DI - Not Processed','S',TO_DATE('2011-08-12 17:06:15','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 12/08/2011 17h6min34s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1120456,1120097,0,19,260,1120011,'LBR_DI_ID',TO_DATE('2011-08-12 17:06:33','YYYY-MM-DD HH24:MI:SS'),100,'LBRA',10,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Declaracao de Importacao',0,TO_DATE('2011-08-12 17:06:33','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 12/08/2011 17h6min34s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1120456 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 12/08/2011 17h8min23s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Val_Rule (AD_Client_ID,AD_Org_ID,AD_Val_Rule_ID,Code,Created,CreatedBy,EntityType,IsActive,Name,Type,Updated,UpdatedBy) VALUES (0,0,1120012,'LBR_ADILine.LBR_ADI_ID IN (SELECT a.LBR_ADI_ID FROM LBR_ADI a WHERE a.LBR_DI_ID=@LBR_DI_ID@)',TO_DATE('2011-08-12 17:08:18','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','LBR_ADILine from LBR_DI','S',TO_DATE('2011-08-12 17:08:18','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 12/08/2011 17h8min30s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1120457,1120100,0,19,260,1120012,'LBR_ADILine_ID',TO_DATE('2011-08-12 17:08:30','YYYY-MM-DD HH24:MI:SS'),100,'U',10,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Linhas da Adição',0,TO_DATE('2011-08-12 17:08:30','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 12/08/2011 17h8min30s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1120457 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 12/08/2011 17h8min43s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET EntityType='LBRA',Updated=TO_DATE('2011-08-12 17:08:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1120457
;

-- 12/08/2011 17h15min13s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,SortNo,Updated,UpdatedBy) VALUES (0,1120456,1120315,0,293,TO_DATE('2011-08-12 17:15:08','YYYY-MM-DD HH24:MI:SS'),100,22,'U','Y','Y','Y','N','N','N','N','N','Declaracao de Importacao',10000,0,TO_DATE('2011-08-12 17:15:08','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 12/08/2011 17h15min13s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1120315 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 12/08/2011 17h15min40s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,SortNo,Updated,UpdatedBy) VALUES (0,1120457,1120316,0,293,TO_DATE('2011-08-12 17:15:39','YYYY-MM-DD HH24:MI:SS'),100,22,'U','Y','Y','Y','N','N','N','N','Y','Linhas da Adição',10010,0,TO_DATE('2011-08-12 17:15:39','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 12/08/2011 17h15min40s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1120316 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 12/08/2011 17h16min0s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET EntityType='LBRA', IsCentrallyMaintained='N', Name='Item da Adição',Updated=TO_DATE('2011-08-12 17:16:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1120316
;

-- 12/08/2011 17h16min0s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field_Trl SET IsTranslated='N' WHERE AD_Field_ID=1120316
;

-- 12/08/2011 17h16min9s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field_Trl SET Name='Item da Adição',Updated=TO_DATE('2011-08-12 17:16:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1120316 AND AD_Language='pt_BR'
;

-- 12/08/2011 17h17min7s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1120458,1120097,0,19,333,1120011,'LBR_DI_ID',TO_DATE('2011-08-12 17:17:06','YYYY-MM-DD HH24:MI:SS'),100,'LBRA',10,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Declaracao de Importacao',0,TO_DATE('2011-08-12 17:17:06','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 12/08/2011 17h17min7s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1120458 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 12/08/2011 17h17min30s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1120459,1120100,0,19,333,1120012,'LBR_ADILine_ID',TO_DATE('2011-08-12 17:17:29','YYYY-MM-DD HH24:MI:SS'),100,'U',10,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Linhas da Adição',0,TO_DATE('2011-08-12 17:17:29','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 12/08/2011 17h17min30s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1120459 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 12/08/2011 17h17min36s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET EntityType='LBRA',Updated=TO_DATE('2011-08-12 17:17:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1120459
;

-- 12/08/2011 17h17min39s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
ALTER TABLE C_InvoiceLine ADD LBR_ADILine_ID NUMBER(10) DEFAULT NULL 
;

-- 12/08/2011 17h17min44s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
ALTER TABLE C_InvoiceLine ADD LBR_DI_ID NUMBER(10) DEFAULT NULL 
;

-- 12/08/2011 17h18min6s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
ALTER TABLE C_OrderLine ADD LBR_ADILine_ID NUMBER(10) DEFAULT NULL 
;

-- 12/08/2011 17h18min15s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
ALTER TABLE C_OrderLine ADD LBR_DI_ID NUMBER(10) DEFAULT NULL 
;

-- 12/08/2011 17h19min13s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET DisplayLogic='@lbr_TransactionType@=''IMP''',Updated=TO_DATE('2011-08-12 17:19:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1120316
;

-- 12/08/2011 17h19min16s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET DisplayLogic='@lbr_TransactionType@=''IMP''',Updated=TO_DATE('2011-08-12 17:19:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1120315
;

-- 12/08/2011 17h20min13s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,DisplayLogic,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,SortNo,Updated,UpdatedBy) VALUES (0,1120458,1120317,0,291,TO_DATE('2011-08-12 17:20:07','YYYY-MM-DD HH24:MI:SS'),100,22,'@lbr_TransactionType@=''IMP''','LBRA','Y','Y','Y','N','N','N','N','N','Declaracao de Importacao',10000,0,TO_DATE('2011-08-12 17:20:07','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 12/08/2011 17h20min13s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1120317 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 12/08/2011 17h20min32s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,DisplayLogic,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,SortNo,Updated,UpdatedBy) VALUES (0,1120459,1120318,0,291,TO_DATE('2011-08-12 17:20:32','YYYY-MM-DD HH24:MI:SS'),100,22,'@lbr_TransactionType@=''IMP''','LBRA','Y','Y','Y','N','N','N','N','Y','Linhas da Adição',10010,0,TO_DATE('2011-08-12 17:20:32','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 12/08/2011 17h20min32s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1120318 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 12/08/2011 17h20min40s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET IsCentrallyMaintained='N', Name='Adição',Updated=TO_DATE('2011-08-12 17:20:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1120318
;

-- 12/08/2011 17h20min40s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field_Trl SET IsTranslated='N' WHERE AD_Field_ID=1120318
;

-- 12/08/2011 17h20min46s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field_Trl SET Name='Adição',Updated=TO_DATE('2011-08-12 17:20:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1120318 AND AD_Language='pt_BR'
;

-- 12/08/2011 17h25min43s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1120460,1120101,0,12,333,'lbr_SISCOMEXAmt',TO_DATE('2011-08-12 17:25:42','YYYY-MM-DD HH24:MI:SS'),100,'0','LBRA',10,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','SISCOMEX Amt',0,TO_DATE('2011-08-12 17:25:42','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 12/08/2011 17h25min43s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1120460 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 12/08/2011 17h25min46s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
ALTER TABLE C_InvoiceLine ADD lbr_SISCOMEXAmt NUMBER DEFAULT 0
;

-- 12/08/2011 17h26min35s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1120461,1000223,0,12,333,'lbr_InsuranceAmt',TO_DATE('2011-08-12 17:26:30','YYYY-MM-DD HH24:MI:SS'),100,'0','Defines the Insurance Amt','LBRA',10,'Defines the Insurance Amt','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Insurance Amt',0,TO_DATE('2011-08-12 17:26:30','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 12/08/2011 17h26min35s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1120461 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 12/08/2011 17h26min38s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
ALTER TABLE C_InvoiceLine ADD lbr_InsuranceAmt NUMBER DEFAULT 0
;

-- 12/08/2011 17h27min13s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1120462,1000223,0,12,260,'lbr_InsuranceAmt',TO_DATE('2011-08-12 17:27:12','YYYY-MM-DD HH24:MI:SS'),100,'0','Defines the Insurance Amt','LBRA',10,'Defines the Insurance Amt','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Insurance Amt',0,TO_DATE('2011-08-12 17:27:12','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 12/08/2011 17h27min13s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1120462 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 12/08/2011 17h27min15s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
ALTER TABLE C_OrderLine ADD lbr_InsuranceAmt NUMBER DEFAULT 0
;

-- 12/08/2011 17h27min38s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1120463,1120101,0,12,260,'lbr_SISCOMEXAmt',TO_DATE('2011-08-12 17:27:37','YYYY-MM-DD HH24:MI:SS'),100,'0','LBRA',10,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','SISCOMEX Amt',0,TO_DATE('2011-08-12 17:27:37','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 12/08/2011 17h27min38s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1120463 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 12/08/2011 17h27min39s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
ALTER TABLE C_OrderLine ADD lbr_SISCOMEXAmt NUMBER DEFAULT 0
;

-- 12/08/2011 17h28min49s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,DisplayLogic,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,SortNo,Updated,UpdatedBy) VALUES (0,1120461,1120319,0,291,TO_DATE('2011-08-12 17:28:48','YYYY-MM-DD HH24:MI:SS'),100,22,NULL,'LBRA','Y','N','Y','N','N','N','N','Y','Adição',10010,0,TO_DATE('2011-08-12 17:28:48','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 12/08/2011 17h28min49s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1120319 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 12/08/2011 17h28min53s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET IsSameLine='N',Updated=TO_DATE('2011-08-12 17:28:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1120319
;

-- 12/08/2011 17h29min9s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET IsCentrallyMaintained='Y', Name='Valor do Seguro',Updated=TO_DATE('2011-08-12 17:29:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1120319
;

-- 12/08/2011 17h29min9s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field_Trl SET IsTranslated='N' WHERE AD_Field_ID=1120319
;

-- 12/08/2011 17h29min38s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,SortNo,Updated,UpdatedBy) VALUES (0,1120460,1120320,0,291,TO_DATE('2011-08-12 17:29:37','YYYY-MM-DD HH24:MI:SS'),100,22,'LBRA','Y','Y','Y','N','N','N','N','Y','SISCOMEX Amt',10030,0,TO_DATE('2011-08-12 17:29:37','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 12/08/2011 17h29min38s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1120320 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 12/08/2011 17h29min41s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=10020,Updated=TO_DATE('2011-08-12 17:29:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1120319
;

-- 12/08/2011 17h29min48s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET DisplayLogic='@lbr_TransactionType@=''IMP''',Updated=TO_DATE('2011-08-12 17:29:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1120320
;

-- 12/08/2011 17h31min29s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,DisplayLogic,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,SortNo,Updated,UpdatedBy) VALUES (0,1120462,1120321,0,293,TO_DATE('2011-08-12 17:31:23','YYYY-MM-DD HH24:MI:SS'),100,'Defines the Insurance Amt',22,NULL,'LBRA','Defines the Insurance Amt','Y','Y','Y','N','N','N','N','Y','Insurance Amt',10020,0,TO_DATE('2011-08-12 17:31:23','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 12/08/2011 17h31min29s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1120321 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 12/08/2011 17h31min58s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET IsSameLine='N',Updated=TO_DATE('2011-08-12 17:31:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1120321
;

-- 12/08/2011 17h32min13s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,SortNo,Updated,UpdatedBy) VALUES (0,1120463,1120322,0,293,TO_DATE('2011-08-12 17:32:13','YYYY-MM-DD HH24:MI:SS'),100,22,'LBRA','Y','Y','Y','N','N','N','N','Y','SISCOMEX Amt',10030,0,TO_DATE('2011-08-12 17:32:13','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 12/08/2011 17h32min13s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1120322 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 12/08/2011 17h32min23s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET EntityType='LBRA',Updated=TO_DATE('2011-08-12 17:32:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1120315
;

-- 12/08/2011 17h55min37s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET Callout='org.adempierelbr.callout.CalloutOrder.getSISCOMEX',Updated=TO_DATE('2011-08-12 17:55:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1120457
;

-- 12/08/2011 17h56min8s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET Callout=NULL,Updated=TO_DATE('2011-08-12 17:56:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1120457
;

-- 12/08/2011 17h57min7s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET Callout='org.adempierelbr.callout.CalloutOrder.getSISCOMEX',Updated=TO_DATE('2011-08-12 17:57:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1120457
;

-- 12/08/2011 17h57min28s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET Callout='org.adempierelbr.callout.CalloutOrder.getSISCOMEX',Updated=TO_DATE('2011-08-12 17:57:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1120459
;

-- 12/08/2011 18h40min53s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Table SET AD_Window_ID=1120011,Updated=TO_DATE('2011-08-12 18:40:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=1120028
;

-- 12/08/2011 18h40min55s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Table SET AD_Window_ID=1120011,Updated=TO_DATE('2011-08-12 18:40:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=1120029
;

-- 12/08/2011 18h40min57s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Table SET AD_Window_ID=1120011,Updated=TO_DATE('2011-08-12 18:40:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=1120027
;

-- 12/08/2011 18h40min59s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Table SET AD_Window_ID=1120011,Updated=TO_DATE('2011-08-12 18:40:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=1100002
;

-- 12/08/2011 18h41min43s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET IsIdentifier='N',Updated=TO_DATE('2011-08-12 18:41:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1120432
;

-- 12/08/2011 18h41min50s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET SeqNo=1,Updated=TO_DATE('2011-08-12 18:41:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1120431
;

-- 12/08/2011 18h42min12s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET IsIdentifier='N',Updated=TO_DATE('2011-08-12 18:42:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1120442
;

-- 12/08/2011 18h42min20s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET IsIdentifier='Y', SeqNo=1,Updated=TO_DATE('2011-08-12 18:42:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1120441
;

-- 12/08/2011 18h44min8s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET SeqNo=3,Updated=TO_DATE('2011-08-12 18:44:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1120444
;

-- 12/08/2011 18h44min17s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET IsIdentifier='Y', SeqNo=2,Updated=TO_DATE('2011-08-12 18:44:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1120442
;

EXIT