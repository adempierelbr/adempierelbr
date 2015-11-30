-- Fix EntityType
-- Mario Grigioni (mgrigioni)
update ad_element set entitytype = 'LBRA' where ad_element_id between 1000000 and 1999999;
update ad_val_rule set entitytype = 'LBRA' where ad_val_rule_id between 1000000 and 1999999;
update ad_reference set entitytype = 'LBRA' where ad_reference_id between 1000000 and 1999999;
update ad_process set entitytype = 'LBRA' where ad_process_id between 1000000 and 1999999;
update ad_window set entitytype = 'LBRA' where ad_window_id between 1000000 and 1999999;
update ad_table set entitytype = 'LBRA' where ad_table_id between 1000000 and 1999999;
update ad_ref_table set entitytype = 'LBRA' where ad_reference_id between 1000000 and 1999999;
update ad_ref_list set entitytype = 'LBRA' where ad_ref_list_id between 1000000 and 1999999;
update ad_process_para set entitytype = 'LBRA' where ad_process_para_id between 1000000 and 1999999;
update ad_form set entitytype = 'LBRA' where ad_form_id between 1000000 and 1999999;
update ad_tab set entitytype = 'LBRA' where ad_tab_id between 1000000 and 1999999;
update ad_fieldgroup set entitytype = 'LBRA' where ad_fieldgroup_id between 1000000 and 1999999;
update ad_field set entitytype = 'LBRA' where ad_field_id between 1000000 and 1999999;
update ad_menu set entitytype = 'LBRA' where ad_menu_id between 1000000 and 1999999;
update ad_column set entitytype = 'LBRA' where ad_column_id between 1000000 and 1999999;
update ad_message set entitytype = 'LBRA' where ad_message_id between 1000000 and 1999999;
update ad_sysconfig set entitytype = 'LBRA' where ad_sysconfig_id between 1000000 and 1999999;

-- Fix AD_SysConfig
UPDATE ad_sysconfig set name = 'LBR_AUTO_GENERATE_XML' where name = 'OSEB_AUTO_GENERATE_XML';
UPDATE ad_sysconfig set name = 'LBR_VERSION_NO' where name = 'OSEB_VERSION_NO';
UPDATE ad_sysconfig set name = 'LBR_LAST_SCRIPT_EXECUTED' where name = 'OSEB_LAST_SCRIPT_EXECUTED';
UPDATE ad_sysconfig set name = 'LBR_INFO_PRODUCT_FOCUS' where name = 'OSEB_INFO_PRODUCT_FOCUS';

-- Fix Columns and Elements
UPDATE ad_element set columnname = 'lbr_ContatoNFe' where ad_element_id = 1120002;
UPDATE ad_column set columnname = 'lbr_ContatoNFe' where ad_column_id = 1120014;

ALTER TABLE AD_OrgInfo ADD COLUMN lbr_ContatoNFe VARCHAR(10) DEFAULT NULL;

UPDATE AD_OrgInfo set lbr_ContatoNFe = OSEB_ContatoNFe;

ALTER TABLE AD_ORGINFO drop column OSEB_ContatoNFe;

-- Remover EntityType OSeB 
delete from ad_entitytype where ad_entitytype_id = 1120000;

UPDATE AD_SysConfig SET Value='RC110-360/022-ReturnToLBR.sql' WHERE AD_SysConfig_ID=1100006;