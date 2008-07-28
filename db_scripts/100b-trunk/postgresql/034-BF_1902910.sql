-- BF_1902910
ALTER TABLE ADEMPIERE.LBR_NOTAFISCALLINE ADD COLUMN    lbr_legalmessage_id  	numeric(10,0) NULL;
ALTER TABLE ADEMPIERE.LBR_NOTAFISCALLINE ADD COLUMN    lbr_taxstatus        	varchar(3) NULL;

INSERT INTO ADEMPIERE.AD_COLUMN(ad_column_id, ad_client_id, ad_org_id, isactive, created, updated, createdby, updatedby, name, description, help, version, entitytype, columnname, ad_table_id, ad_reference_id, ad_reference_value_id, ad_val_rule_id, fieldlength, defaultvalue, iskey, isparent, ismandatory, isupdateable, readonlylogic, isidentifier, seqno, istranslated, isencrypted, callout, vformat, valuemin, valuemax, isselectioncolumn, ad_element_id, ad_process_id, issyncdatabase, isalwaysupdateable, columnsql, mandatorylogic, infofactoryclass)
  VALUES(1000700, 0, 0, 'Y', '2008-02-18 10:43:45.0', '2008-02-18 10:43:45.0', 100, 100, 'Legal Message', 'Defines the Legal Message', 'Primary key table LBR_LegalMessage', 0, 'LBRA', 'LBR_LegalMessage_ID', 1000028, 30, 1000030, NULL, 22, NULL, 'N', 'N', 'N', 'Y', NULL, 'N', 0, 'N', 'N', NULL, NULL, NULL, NULL, 'N', 1000253, NULL, 'N', 'N', NULL, NULL, NULL);
INSERT INTO ADEMPIERE.AD_COLUMN(ad_column_id, ad_client_id, ad_org_id, isactive, created, updated, createdby, updatedby, name, description, help, version, entitytype, columnname, ad_table_id, ad_reference_id, ad_reference_value_id, ad_val_rule_id, fieldlength, defaultvalue, iskey, isparent, ismandatory, isupdateable, readonlylogic, isidentifier, seqno, istranslated, isencrypted, callout, vformat, valuemin, valuemax, isselectioncolumn, ad_element_id, ad_process_id, issyncdatabase, isalwaysupdateable, columnsql, mandatorylogic, infofactoryclass)
  VALUES(1000701, 0, 0, 'Y', '2008-02-18 10:44:51.0', '2008-02-18 10:44:51.0', 100, 100, 'Tax Status', 'Defines the Tax Status', 'Defines the Tax Status', 0, 'LBRA', 'lbr_TaxStatus', 1000028, 10, NULL, NULL, 3, NULL, 'N', 'N', 'N', 'Y', NULL, 'N', 0, 'N', 'N', NULL, NULL, NULL, NULL, 'N', 1000252, NULL, 'N', 'N', NULL, NULL, NULL);

INSERT INTO ADEMPIERE.AD_FIELD(ad_field_id, ad_client_id, ad_org_id, isactive, created, createdby, updated, updatedby, name, description, help, iscentrallymaintained, ad_tab_id, ad_column_id, ad_fieldgroup_id, isdisplayed, displaylogic, displaylength, isreadonly, seqno, sortno, issameline, isheading, isfieldonly, isencrypted, entitytype, obscuretype, ad_reference_id, ismandatory, included_tab_id, defaultvalue, ad_reference_value_id, ad_val_rule_id, infofactoryclass)
  VALUES(1000615, 0, 0, 'Y', '2008-02-18 10:49:57.0', 100, '2008-02-18 10:50:33.0', 100, 'Legal Message', 'Defines the Legal Message', 'Primary key table LBR_LegalMessage', 'Y', 1000021, 1000700, 106, 'Y', NULL, 22, 'N', 180, NULL, 'N', 'N', 'N', 'N', 'LBRA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO ADEMPIERE.AD_FIELD(ad_field_id, ad_client_id, ad_org_id, isactive, created, createdby, updated, updatedby, name, description, help, iscentrallymaintained, ad_tab_id, ad_column_id, ad_fieldgroup_id, isdisplayed, displaylogic, displaylength, isreadonly, seqno, sortno, issameline, isheading, isfieldonly, isencrypted, entitytype, obscuretype, ad_reference_id, ismandatory, included_tab_id, defaultvalue, ad_reference_value_id, ad_val_rule_id, infofactoryclass)
  VALUES(1000616, 0, 0, 'Y', '2008-02-18 10:49:57.0', 100, '2008-02-18 10:50:42.0', 100, 'Tax Status', 'Defines the Tax Status', 'Defines the Tax Status', 'Y', 1000021, 1000701, 106, 'Y', NULL, 3, 'N', 190, NULL, 'Y', 'N', 'N', 'N', 'LBRA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
