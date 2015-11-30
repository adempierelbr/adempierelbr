-- 009 - ProcPrintNF

-- AD_Reference
INSERT INTO ADEMPIERE.AD_Reference(ad_reference_id, ad_client_id, ad_org_id, isactive, created, createdby, updated, updatedby, name, description, help, validationtype, vformat, entitytype)
  VALUES(1000025, 0, 0, 'Y', '2008-01-22 16:33:02.0', 100, '2008-01-22 16:37:39.0', 100, 'LBR_MatrixPrinter', NULL, NULL, 'T', NULL, 'LBRA');
INSERT INTO ADEMPIERE.AD_Reference(ad_reference_id, ad_client_id, ad_org_id, isactive, created, createdby, updated, updatedby, name, description, help, validationtype, vformat, entitytype)
  VALUES(1000026, 0, 0, 'Y', '2008-01-22 16:37:00.0', 100, '2008-01-22 16:37:00.0', 100, 'LBR_NotaFiscal', NULL, NULL, 'T', NULL, 'LBRA');

-- AD_Ref_Table
INSERT INTO ADEMPIERE.AD_Ref_Table(ad_reference_id, ad_client_id, ad_org_id, isactive, created, createdby, updated, updatedby, ad_table_id, ad_key, ad_display, isvaluedisplayed, whereclause, orderbyclause, entitytype)
  VALUES(1000025, 0, 0, 'Y', '2008-01-22 16:33:17.0', 100, '2008-01-22 16:59:34.0', 100, 1000030, 1000609, 1000622, 'N', NULL, NULL, 'LBRA');
INSERT INTO ADEMPIERE.AD_Ref_Table(ad_reference_id, ad_client_id, ad_org_id, isactive, created, createdby, updated, updatedby, ad_table_id, ad_key, ad_display, isvaluedisplayed, whereclause, orderbyclause, entitytype)
  VALUES(1000026, 0, 0, 'Y', '2008-01-22 16:37:22.0', 100, '2008-01-22 17:00:53.0', 100, 1000027, 1000473, 1000491, 'N', NULL, NULL, 'LBRA');

-- AD_Val_Rule
INSERT INTO ADEMPIERE.AD_Val_Rule(ad_val_rule_id, ad_client_id, ad_org_id, isactive, created, createdby, updated, updatedby, name, description, type, code, entitytype)
  VALUES(1000004, 0, 0, 'Y', '2008-01-22 16:35:55.0', 100, '2008-01-22 16:35:58.0', 100, 'LBR_DocPrint (not subdoc)', NULL, 'S', 'LBR_DocPrint.lbr_IsSubDoc=''N''', 'LBRA');

-- AD_Process
INSERT INTO ADEMPIERE.AD_Process(ad_process_id, ad_client_id, ad_org_id, isactive, created, createdby, updated, updatedby, value, name, description, help, accesslevel, entitytype, procedurename, isreport, isdirectprint, ad_reportview_id, classname, statistic_count, statistic_seconds, ad_printformat_id, workflowvalue, ad_workflow_id, isbetafunctionality, isserverprocess, showhelp, jasperreport)
  VALUES(1000003, 0, 0, 'Y', '2008-01-22 16:30:39.0', 100, '2008-01-22 17:14:51.0', 100, 'ProcPrintNF', 'ProcPrintNF', NULL, NULL, '3', 'LBRA', NULL, 'N', 'N', NULL, 'org.adempierelbr.process.ProcPrintNF', 6, 363, NULL, NULL, NULL, 'N', 'N', 'Y', NULL);

-- AD_Process_Para
INSERT INTO ADEMPIERE.AD_Process_Para(ad_process_para_id, ad_client_id, ad_org_id, isactive, created, createdby, updated, updatedby, name, description, help, ad_process_id, seqno, ad_reference_id, ad_reference_value_id, ad_val_rule_id, columnname, iscentrallymaintained, fieldlength, ismandatory, isrange, defaultvalue, defaultvalue2, vformat, valuemin, valuemax, ad_element_id, entitytype)
  VALUES(1000007, 0, 0, 'Y', '2008-01-22 16:33:34.0', 100, '2008-01-22 15:56:15.875', 100, 'Matrix Printer', 'Primary key table LBR_MatrixPrinter', 'Primary key table LBR_MatrixPrinter', 1000003, 10, 18, 1000025, NULL, 'LBR_MatrixPrinter_ID', 'Y', 22, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, 1000238, 'LBRA');
INSERT INTO ADEMPIERE.AD_Process_Para(ad_process_para_id, ad_client_id, ad_org_id, isactive, created, createdby, updated, updatedby, name, description, help, ad_process_id, seqno, ad_reference_id, ad_reference_value_id, ad_val_rule_id, columnname, iscentrallymaintained, fieldlength, ismandatory, isrange, defaultvalue, defaultvalue2, vformat, valuemin, valuemax, ad_element_id, entitytype)
  VALUES(1000008, 0, 0, 'Y', '2008-01-22 16:34:12.0', 100, '2008-01-22 17:26:59.0', 100, 'DocPrint', 'Primary key table LBR_DocPrint', 'Primary key table LBR_DocPrint', 1000003, 20, 18, 1000002, 1000004, 'LBR_DocPrint_ID', 'Y', 22, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, 1000078, 'LBRA');
INSERT INTO ADEMPIERE.AD_Process_Para(ad_process_para_id, ad_client_id, ad_org_id, isactive, created, createdby, updated, updatedby, name, description, help, ad_process_id, seqno, ad_reference_id, ad_reference_value_id, ad_val_rule_id, columnname, iscentrallymaintained, fieldlength, ismandatory, isrange, defaultvalue, defaultvalue2, vformat, valuemin, valuemax, ad_element_id, entitytype)
  VALUES(1000009, 0, 0, 'Y', '2008-01-22 16:42:32.0', 100, '2008-01-22 15:56:15.875', 100, 'Nota Fiscal', 'Primary key table LBR_NotaFiscal', 'Primary key table LBR_NotaFiscal', 1000003, 30, 18, 1000026, NULL, 'LBR_NotaFiscal_ID', 'Y', 22, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, 1000177, 'LBRA');
INSERT INTO ADEMPIERE.AD_Process_Para(ad_process_para_id, ad_client_id, ad_org_id, isactive, created, createdby, updated, updatedby, name, description, help, ad_process_id, seqno, ad_reference_id, ad_reference_value_id, ad_val_rule_id, columnname, iscentrallymaintained, fieldlength, ismandatory, isrange, defaultvalue, defaultvalue2, vformat, valuemin, valuemax, ad_element_id, entitytype)
  VALUES(1000010, 0, 0, 'Y', '2008-01-22 16:44:23.0', 100, '2008-01-22 16:44:23.0', 100, 'LBR_NotaFiscal_ID_to', NULL, NULL, 1000003, 40, 18, 1000026, NULL, 'LBR_NotaFiscal_ID_to', 'Y', 22, 'N', 'N', NULL, NULL, NULL, NULL, NULL, 1000177, 'LBRA');

-- AD_Menu
INSERT INTO ADEMPIERE.AD_Menu(ad_menu_id, ad_client_id, ad_org_id, isactive, created, createdby, updated, name, updatedby, description, issummary, issotrx, isreadonly, action, ad_window_id, ad_workflow_id, ad_task_id, ad_process_id, ad_form_id, ad_workbench_id, entitytype)
  VALUES(1000022, 0, 0, 'Y', '2008-01-22 16:45:12.0', 100, '2008-01-22 16:45:12.0', 'ProcPrintNF', 100, NULL, 'N', 'N', 'N', 'P', NULL, NULL, NULL, 1000003, NULL, NULL, 'LBRA');

-- AD_TreeNodeMM
INSERT INTO ADEMPIERE.AD_TreeNodeMM(ad_tree_id, node_id, ad_client_id, ad_org_id, isactive, created, createdby, updated, updatedby, parent_id, seqno)
  VALUES(10, 1000022, 0, 0, 'Y', '2008-01-22 15:45:12.703', 0, '2008-01-22 15:47:29.156', 0, 1000008, 4);
