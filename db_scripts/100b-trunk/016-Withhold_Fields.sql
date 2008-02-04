ALTER TABLE LBR_TaxName ADD COLUMN lbr_withholdfrequency char(1);

INSERT INTO adempiere.ad_element(ad_element_id, ad_client_id, ad_org_id, isactive, created, createdby, updated, updatedby, columnname, entitytype, name, printname, description, help, po_name, po_printname, po_description, po_help)
  VALUES(1000251, 0, 0, 'Y', '2008-02-04 15:31:29.0', 100, '2008-02-04 15:31:29.0', 100, 'lbr_WithholdFrequency', 'LBRA', 'Withhold Frequency', 'Withhold Frequency', 'Defines the Withhold Frequency', 'Defines the Withhold Frequency for this Brazilian Tax', NULL, NULL, NULL, NULL);
  
  
INSERT INTO adempiere.ad_column(ad_column_id, ad_client_id, ad_org_id, isactive, created, updated, createdby, updatedby, name, description, help, version, entitytype, columnname, ad_table_id, ad_reference_id, ad_reference_value_id, ad_val_rule_id, fieldlength, defaultvalue, iskey, isparent, ismandatory, isupdateable, readonlylogic, isidentifier, seqno, istranslated, isencrypted, callout, vformat, valuemin, valuemax, isselectioncolumn, ad_element_id, ad_process_id, issyncdatabase, isalwaysupdateable, columnsql, mandatorylogic)
  VALUES(1000631, 0, 0, 'Y', '2008-02-04 15:34:49.0', '2008-02-04 15:34:49.0', 100, 100, 'Withhold Frequency', 'Defines the Withhold Frequency', 'Defines the Withhold Frequency for this Brazilian Tax', 0, 'LBRA', 'lbr_WithholdFrequency', 1000025, 17, 1000028, NULL, 1, NULL, 'N', 'N', 'N', 'Y', NULL, 'N', 0, 'N', 'N', NULL, NULL, NULL, NULL, 'N', 1000251, NULL, 'N', 'N', NULL, NULL);


INSERT INTO adempiere.ad_field(ad_field_id, ad_client_id, ad_org_id, isactive, created, createdby, updated, updatedby, name, description, help, iscentrallymaintained, ad_tab_id, ad_column_id, ad_fieldgroup_id, isdisplayed, displaylogic, displaylength, isreadonly, seqno, sortno, issameline, isheading, isfieldonly, isencrypted, entitytype, obscuretype, ad_reference_id, ismandatory, included_tab_id, defaultvalue)
  VALUES(1000431, 0, 0, 'Y', '2008-02-04 15:35:06.0', 100, '2008-02-04 15:37:41.0', 100, 'Withhold Frequency', 'Defines the Withhold Frequency', 'Defines the Withhold Frequency for this Brazilian Tax', 'Y', 1000018, 1000631, 113, 'Y', '@lbr_TaxType@=''S'' & @HasWithHold@=''Y''', 1, 'N', NULL, NULL, 'Y', 'N', 'N', 'N', 'LBRA', NULL, NULL, NULL, NULL, NULL);
