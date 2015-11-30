-- REFACTOR DO MODULO DE BOLETOS
-- Mario Grigioni, 04/08/2010

UPDATE AD_Process SET classname = 'org.adempierelbr.process.ProcGenerateCNAB' where AD_Process_ID = 1000001;
UPDATE AD_Process SET classname = 'org.adempierelbr.process.ProcReturnCNAB' where AD_Process_ID = 1000002;

UPDATE AD_Form SET classname = 'org.adempierelbr.apps.form.VFormBoleto' where AD_Form_ID = 1000000;
UPDATE AD_Form SET classname = 'org.adempierelbr.apps.form.VFormCNAB' where AD_Form_ID = 1000004;

UPDATE AD_Column SET callout = 'org.adempierelbr.callout.CalloutBank.getRoutingNo' where AD_Column_ID = 1000131;

UPDATE AD_SysConfig SET Value='RC110-360/005-Refactor_Boletos.sql' WHERE AD_SysConfig_ID=1100006
;