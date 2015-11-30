-- 16/09/2010 14h36min35s BRT
-- Insere o registro de configuração do foco em pesquisa de produto
INSERT INTO ad_sysconfig(ad_sysconfig_id,ad_client_id,ad_org_id,created,updated,createdby,updatedby,isactive,name,value,description,entitytype,configurationlevel) 
VALUES (1120000,0,0,sysdate,sysdate,100,100,'Y',
  'OSEB_INFO_PRODUCT_FOCUS','VALUE',
  'Definição de onde será setado o foco ao abrir uma pesquisa de produtos após digitar alguma informação no campo produto e o sistema não localizar um produto [NAME,VALUE]',
  'LBRA','C')
  ;
  
 UPDATE AD_SysConfig SET Value='RC110-360/015-FR3067611.sql' WHERE AD_SysConfig_ID=1100006
;

exit