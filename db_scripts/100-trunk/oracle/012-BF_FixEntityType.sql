-- BF - Fix EntityType
-- Mario Grigioni (Kenos, www.kenos.com.br), mgrigioni
update ad_element set entitytype = 'LBRA' where ad_element_id between 100000 and 1999999;
update ad_val_rule set entitytype = 'LBRA' where ad_val_rule_id between 100000 and 1999999;
update ad_reference set entitytype = 'LBRA' where ad_reference_id between 100000 and 1999999;
update ad_process set entitytype = 'LBRA' where ad_process_id between 100000 and 1999999;
update ad_window set entitytype = 'LBRA' where ad_window_id between 100000 and 1999999;
update ad_table set entitytype = 'LBRA' where ad_table_id between 100000 and 1999999;
update ad_ref_table set entitytype = 'LBRA' where ad_reference_id between 100000 and 1999999;
update ad_ref_list set entitytype = 'LBRA' where ad_ref_list_id between 100000 and 1999999;
update ad_process_para set entitytype = 'LBRA' where ad_process_para_id between 100000 and 1999999;
update ad_form set entitytype = 'LBRA' where ad_form_id between 100000 and 1999999;
update ad_tab set entitytype = 'LBRA' where ad_tab_id between 100000 and 1999999;
update ad_fieldgroup set entitytype = 'LBRA' where ad_fieldgroup_id between 100000 and 1999999;
update ad_field set entitytype = 'LBRA' where ad_field_id between 100000 and 1999999;
update ad_menu set entitytype = 'LBRA' where ad_menu_id between 100000 and 1999999;
update ad_column set entitytype = 'LBRA' where ad_column_id between 100000 and 1999999;