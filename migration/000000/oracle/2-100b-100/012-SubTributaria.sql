-- 012 Ajustes Substituição Tributária
-- DB_COLUMN
ALTER TABLE ADEMPIERE.LBR_TAXNAME ADD     lbr_taxsubstitution_id	number(10,0) NULL;

-- AD_ELEMENT
INSERT INTO ADEMPIERE.AD_ELEMENT(ad_element_id, ad_client_id, ad_org_id, isactive, created, createdby, updated, updatedby, columnname, entitytype, name, printname, description, help, po_name, po_printname, po_description, po_help)
  VALUES(1000250, 0, 0, 'Y', sysdate, 100, sysdate, 100, 'LBR_TaxSubstitution_ID', 'LBRA', 'Tax Substitution', 'Tax Substitution', 'Defines the Tax Substitution', 'Defines the Tax Substitution', NULL, NULL, NULL, NULL);

-- AD_VAL_RULE
INSERT INTO ADEMPIERE.AD_VAL_RULE(ad_val_rule_id, ad_client_id, ad_org_id, isactive, created, createdby, updated, updatedby, name, description, type, code, entitytype)
  VALUES(1000005, 0, 0, 'Y', sysdate, 100, sysdate, 100, 'LBR_TaxName (not Substitution)', NULL, 'S', 'LBR_TaxName.lbr_TaxType IN (''P'',''S'')', 'LBRA');

-- AD_COLUMN
INSERT INTO ADEMPIERE.AD_COLUMN(ad_column_id, ad_client_id, ad_org_id, isactive, created, updated, createdby, updatedby, name, description, help, version, entitytype, columnname, ad_table_id, ad_reference_id, ad_reference_value_id, ad_val_rule_id, fieldlength, defaultvalue, iskey, isparent, ismandatory, isupdateable, readonlylogic, isidentifier, seqno, istranslated, isencrypted, callout, vformat, valuemin, valuemax, isselectioncolumn, ad_element_id, ad_process_id, issyncdatabase, isalwaysupdateable, columnsql, mandatorylogic)
  VALUES(1000630, 0, 0, 'Y', sysdate, sysdate, 100, 100, 'Tax Substitution', 'Defines the Tax Substitution', 'Defines the Tax Substitution', 0, 'LBRA', 'LBR_TaxSubstitution_ID', 1000025, 18, 1000023, 1000005, 22, NULL, 'N', 'N', 'Y', 'Y', NULL, 'N', 0, 'N', 'N', NULL, NULL, NULL, NULL, 'N', 1000250, NULL, 'N', 'N', NULL, NULL);

-- AD_FIELD
INSERT INTO ADEMPIERE.AD_FIELD(ad_field_id, ad_client_id, ad_org_id, isactive, created, createdby, updated, updatedby, name, description, help, iscentrallymaintained, ad_tab_id, ad_column_id, ad_fieldgroup_id, isdisplayed, displaylogic, displaylength, isreadonly, seqno, sortno, issameline, isheading, isfieldonly, isencrypted, entitytype, obscuretype, ad_reference_id, ismandatory, included_tab_id, defaultvalue)
  VALUES(1000430, 0, 0, 'Y', sysdate, 100, sysdate, 100, 'Tax Substitution', 'Defines the Tax Substitution', 'Defines the Tax Substitution', 'Y', 1000018, 1000630, 113, 'Y', '@lbr_TaxType@=''T''', 22, 'N', 55, NULL, 'Y', 'N', 'N', 'N', 'LBRA', NULL, NULL, NULL, NULL, NULL);

UPDATE ADEMPIERE.AD_FIELD SET displaylogic = '@lbr_TaxType@=''S''', sortno = 60 WHERE AD_FIELD_ID = 1000261;
UPDATE ADEMPIERE.AD_FIELD SET displaylogic = '@lbr_TaxType@=''S'' & @HasWithHold@=''Y''', sortno = 70 WHERE AD_FIELD_ID = 1000266;

exit
