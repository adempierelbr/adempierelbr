update ad_menu set name='Sobre ADempiereLBR' where ad_menu_id=1000037;
update ad_menu_trl set name='Sobre ADempiereLBR' where ad_menu_id=1000037;
update ad_process set name='Sobre ADempiereLBR' where ad_process_id=1000017;
update ad_process_trl set name='Sobre ADempiereLBR' where ad_process_id=1000017;

UPDATE AD_SysConfig SET Value='RC110-360/023-ReturnToLBR_2.sql' WHERE AD_SysConfig_ID=1100006;

exit