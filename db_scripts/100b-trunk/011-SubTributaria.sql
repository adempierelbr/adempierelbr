-- Substituição Tributária
-- DB Columns
ALTER TABLE adempiere.c_bpartner ADD COLUMN	lbr_hassubstitution        	char(1) NOT NULL DEFAULT 'N'::bpchar;
ALTER TABLE adempiere.m_product  ADD COLUMN	lbr_hassubstitution        	char(1) NOT NULL DEFAULT 'N'::bpchar;
ALTER TABLE adempiere.m_product  ADD COLUMN lbr_profitpercentage      	numeric NULL;

ALTER TABLE adempiere.c_bpartner
    ADD CONSTRAINT c_bpartner_lbr_hassubstitution_check
	CHECK (lbr_hassubstitution = ANY (ARRAY['Y'::bpchar, 'N'::bpchar]))
;

ALTER TABLE adempiere.m_product
    ADD CONSTRAINT m_product_lbr_hassubstitution_check
	CHECK (lbr_hassubstitution = ANY (ARRAY['Y'::bpchar, 'N'::bpchar]))
;

-- AD_ELEMENT
INSERT INTO ADEMPIERE.AD_ELEMENT(ad_element_id, ad_client_id, ad_org_id, isactive, created, createdby, updated, updatedby, columnname, entitytype, name, printname, description, help, po_name, po_printname, po_description, po_help)
  VALUES(1000248, 0, 0, 'Y', '2008-01-30 08:29:17.0', 100, '2008-01-30 08:29:17.0', 100, 'lbr_HasSubstitution', 'LBRA', 'Has Substitution', 'Has Substitution', 'Defines if the record has Substituion', 'Defines if the record has Substituion', NULL, NULL, NULL, NULL);
INSERT INTO ADEMPIERE.AD_ELEMENT(ad_element_id, ad_client_id, ad_org_id, isactive, created, createdby, updated, updatedby, columnname, entitytype, name, printname, description, help, po_name, po_printname, po_description, po_help)
  VALUES(1000249, 0, 0, 'Y', '2008-01-30 08:37:55.0', 100, '2008-01-30 08:37:55.0', 100, 'lbr_ProfitPercentage', 'LBRA', 'Profit Percentage', 'Profit Percentage', 'Defines the Profit Percentage', 'Defines the Profit Percentage', NULL, NULL, NULL, NULL);

-- AD_COLUMN
INSERT INTO ADEMPIERE.AD_COLUMN(ad_column_id, ad_client_id, ad_org_id, isactive, created, updated, createdby, updatedby, name, description, help, version, entitytype, columnname, ad_table_id, ad_reference_id, ad_reference_value_id, ad_val_rule_id, fieldlength, defaultvalue, iskey, isparent, ismandatory, isupdateable, readonlylogic, isidentifier, seqno, istranslated, isencrypted, callout, vformat, valuemin, valuemax, isselectioncolumn, ad_element_id, ad_process_id, issyncdatabase, isalwaysupdateable, columnsql, mandatorylogic)
  VALUES(1000627, 0, 0, 'Y', '2008-01-30 08:30:18.0', '2008-01-30 08:30:18.0', 100, 100, 'Has Substitution', 'Defines if the record has Substituion', 'Defines if the record has Substituion', 0, 'LBRA', 'lbr_HasSubstitution', 208, 20, NULL, NULL, 1, '''N''', 'N', 'N', 'Y', 'Y', NULL, 'N', 0, 'N', 'N', NULL, NULL, NULL, NULL, 'N', 1000248, NULL, 'N', 'N', NULL, NULL);
INSERT INTO ADEMPIERE.AD_COLUMN(ad_column_id, ad_client_id, ad_org_id, isactive, created, updated, createdby, updatedby, name, description, help, version, entitytype, columnname, ad_table_id, ad_reference_id, ad_reference_value_id, ad_val_rule_id, fieldlength, defaultvalue, iskey, isparent, ismandatory, isupdateable, readonlylogic, isidentifier, seqno, istranslated, isencrypted, callout, vformat, valuemin, valuemax, isselectioncolumn, ad_element_id, ad_process_id, issyncdatabase, isalwaysupdateable, columnsql, mandatorylogic)
  VALUES(1000628, 0, 0, 'Y', '2008-01-30 08:40:36.0', '2008-01-30 08:40:44.0', 100, 100, 'Profit Percentage', 'Defines the Profit Percentage', 'Defines the Profit Percentage', 0, 'LBRA', 'lbr_ProfitPercentage', 208, 12, NULL, NULL, 10, NULL, 'N', 'N', 'Y', 'Y', NULL, 'N', 0, 'N', 'N', NULL, NULL, NULL, NULL, 'N', 1000249, NULL, 'N', 'N', NULL, NULL);
INSERT INTO ADEMPIERE.AD_COLUMN(ad_column_id, ad_client_id, ad_org_id, isactive, created, updated, createdby, updatedby, name, description, help, version, entitytype, columnname, ad_table_id, ad_reference_id, ad_reference_value_id, ad_val_rule_id, fieldlength, defaultvalue, iskey, isparent, ismandatory, isupdateable, readonlylogic, isidentifier, seqno, istranslated, isencrypted, callout, vformat, valuemin, valuemax, isselectioncolumn, ad_element_id, ad_process_id, issyncdatabase, isalwaysupdateable, columnsql, mandatorylogic)
  VALUES(1000629, 0, 0, 'Y', '2008-01-30 08:41:44.0', '2008-01-30 08:41:44.0', 100, 100, 'Has Substitution', 'Defines if the record has Substituion', 'Defines if the record has Substituion', 0, 'LBRA', 'lbr_HasSubstitution', 291, 20, NULL, NULL, 1, '''N''', 'N', 'N', 'Y', 'Y', NULL, 'N', 0, 'N', 'N', NULL, NULL, NULL, NULL, 'N', 1000248, NULL, 'N', 'N', NULL, NULL);

-- AD_FIELD
INSERT INTO ADEMPIERE.AD_FIELD(ad_field_id, ad_client_id, ad_org_id, isactive, created, createdby, updated, updatedby, name, description, help, iscentrallymaintained, ad_tab_id, ad_column_id, ad_fieldgroup_id, isdisplayed, displaylogic, displaylength, isreadonly, seqno, sortno, issameline, isheading, isfieldonly, isencrypted, entitytype, obscuretype, ad_reference_id, ismandatory, included_tab_id, defaultvalue)
  VALUES(1000426, 0, 0, 'Y', '2008-01-30 08:42:11.0', 100, '2008-01-30 08:43:16.0', 100, 'Has Substitution', 'Defines if the record has Substituion', 'Defines if the record has Substituion', 'Y', 220, 1000629, 1000000, 'Y', '@AD_Language@=''pt_BR'' ', 1, 'N', NULL, NULL, 'N', 'N', 'N', 'N', 'LBRA', NULL, NULL, NULL, NULL, NULL);
INSERT INTO ADEMPIERE.AD_FIELD(ad_field_id, ad_client_id, ad_org_id, isactive, created, createdby, updated, updatedby, name, description, help, iscentrallymaintained, ad_tab_id, ad_column_id, ad_fieldgroup_id, isdisplayed, displaylogic, displaylength, isreadonly, seqno, sortno, issameline, isheading, isfieldonly, isencrypted, entitytype, obscuretype, ad_reference_id, ismandatory, included_tab_id, defaultvalue)
  VALUES(1000428, 0, 0, 'Y', '2008-01-30 08:43:49.0', 100, '2008-01-30 08:44:07.0', 100, 'Has Substitution', 'Defines if the record has Substituion', 'Defines if the record has Substituion', 'Y', 180, 1000627, 1000000, 'Y', NULL, 1, 'N', NULL, NULL, 'N', 'N', 'N', 'N', 'LBRA', NULL, NULL, NULL, NULL, NULL);
INSERT INTO ADEMPIERE.AD_FIELD(ad_field_id, ad_client_id, ad_org_id, isactive, created, createdby, updated, updatedby, name, description, help, iscentrallymaintained, ad_tab_id, ad_column_id, ad_fieldgroup_id, isdisplayed, displaylogic, displaylength, isreadonly, seqno, sortno, issameline, isheading, isfieldonly, isencrypted, entitytype, obscuretype, ad_reference_id, ismandatory, included_tab_id, defaultvalue)
  VALUES(1000429, 0, 0, 'Y', '2008-01-30 08:43:49.0', 100, '2008-01-30 08:44:24.0', 100, 'Profit Percentage', 'Defines the Profit Percentage', 'Defines the Profit Percentage', 'Y', 180, 1000628, 1000000, 'Y', '@lbr_HasSubstitution@=''Y''', 10, 'N', NULL, NULL, 'Y', 'N', 'N', 'N', 'LBRA', NULL, NULL, NULL, NULL, NULL);

-- AD_REF_LIST
INSERT INTO ADEMPIERE.AD_Ref_List(ad_ref_list_id, ad_client_id, ad_org_id, isactive, created, createdby, updated, updatedby, value, name, description, ad_reference_id, validfrom, validto, entitytype)
  VALUES(1000039, 0, 0, 'Y', '2008-01-30 08:22:01.0', 100, '2008-01-30 08:22:01.0', 100, 'T', 'Substitution', NULL, 1000022, NULL, NULL, 'LBRA');

INSERT INTO ADEMPIERE.AD_Ref_List_Trl(ad_ref_list_id, ad_language, ad_client_id, ad_org_id, isactive, created, createdby, updated, updatedby, name, description, istranslated)
  VALUES(1000039, 'pt_BR', 0, 0, 'Y', '2008-01-30 08:22:01.0', 100, '2008-01-30 08:22:34.203', 100, 'Substituição Tributária', NULL, 'Y');