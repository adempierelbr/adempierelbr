-- 22/09/2010 10h55min32s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO AD_EntityType (AD_Client_ID,AD_EntityType_ID,AD_Org_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,ModelPackage,Name,Processing,Updated,UpdatedBy,Version) VALUES (0,1120000,0,TO_DATE('2010-09-22 10:55:31','YYYY-MM-DD HH24:MI:SS'),100,'OSeB modifications','OSEB','Entity type for OSeB Customizations and custom Extensions.','Y','org.oseb.model','OSeB','N',TO_DATE('2010-09-22 10:55:31','YYYY-MM-DD HH24:MI:SS'),100,'1')
;

-- Fix EntityType
-- Mario Grigioni (mgrigioni)
update ad_element set entitytype = 'LBRA' where ad_element_id between 1000000 and 1119999;
update ad_val_rule set entitytype = 'LBRA' where ad_val_rule_id between 1000000 and 1119999;
update ad_reference set entitytype = 'LBRA' where ad_reference_id between 1000000 and 1119999;
update ad_process set entitytype = 'LBRA' where ad_process_id between 1000000 and 1119999;
update ad_window set entitytype = 'LBRA' where ad_window_id between 1000000 and 1119999;
update ad_table set entitytype = 'LBRA' where ad_table_id between 1000000 and 1119999;
update ad_ref_table set entitytype = 'LBRA' where ad_reference_id between 1000000 and 1119999;
update ad_ref_list set entitytype = 'LBRA' where ad_ref_list_id between 1000000 and 1119999;
update ad_process_para set entitytype = 'LBRA' where ad_process_para_id between 1000000 and 1119999;
update ad_form set entitytype = 'LBRA' where ad_form_id between 1000000 and 1119999;
update ad_tab set entitytype = 'LBRA' where ad_tab_id between 1000000 and 1119999;
update ad_fieldgroup set entitytype = 'LBRA' where ad_fieldgroup_id between 1000000 and 1119999;
update ad_field set entitytype = 'LBRA' where ad_field_id between 1000000 and 1119999;
update ad_menu set entitytype = 'LBRA' where ad_menu_id between 1000000 and 1119999;
update ad_column set entitytype = 'LBRA' where ad_column_id between 1000000 and 1119999;
update ad_message set entitytype = 'LBRA' where ad_message_id between 1000000 and 1119999;
update ad_sysconfig set entitytype = 'LBRA' where ad_sysconfig_id between 1000000 and 1119999;

update ad_element set entitytype = 'OSEB' where ad_element_id between 1120000 and 1999999;
update ad_val_rule set entitytype = 'OSEB' where ad_val_rule_id between 1120000 and 1999999;
update ad_reference set entitytype = 'OSEB' where ad_reference_id between 1120000 and 1999999;
update ad_process set entitytype = 'OSEB' where ad_process_id between 1120000 and 1999999;
update ad_window set entitytype = 'OSEB' where ad_window_id between 1120000 and 1999999;
update ad_table set entitytype = 'OSEB' where ad_table_id between 1120000 and 1999999;
update ad_ref_table set entitytype = 'OSEB' where ad_reference_id between 1120000 and 1999999;
update ad_ref_list set entitytype = 'OSEB' where ad_ref_list_id between 1120000 and 1999999;
update ad_process_para set entitytype = 'OSEB' where ad_process_para_id between 1120000 and 1999999;
update ad_form set entitytype = 'OSEB' where ad_form_id between 1120000 and 1999999;
update ad_tab set entitytype = 'OSEB' where ad_tab_id between 1120000 and 1999999;
update ad_fieldgroup set entitytype = 'OSEB' where ad_fieldgroup_id between 1120000 and 1999999;
update ad_field set entitytype = 'OSEB' where ad_field_id between 1120000 and 1999999;
update ad_menu set entitytype = 'OSEB' where ad_menu_id between 1120000 and 1999999;
update ad_column set entitytype = 'OSEB' where ad_column_id between 1120000 and 1999999;
update ad_message set entitytype = 'OSEB' where ad_message_id between 1120000 and 1999999;
update ad_sysconfig set entitytype = 'OSEB' where ad_sysconfig_id between 1120000 and 1999999;

UPDATE AD_SysConfig SET entitytype = 'OSEB' where ad_sysconfig_id IN (1100005,1100006);

UPDATE AD_SysConfig SET Value='RC110-360/016-FR_3073329.sql' WHERE AD_SysConfig_ID=1100006
;

exit
