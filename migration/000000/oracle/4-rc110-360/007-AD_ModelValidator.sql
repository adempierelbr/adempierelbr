-- UTILIZACAO DA AD_MODELVALIDATOR

INSERT into AD_ModelValidator (AD_CLIENT_ID,AD_MODELVALIDATOR_ID,AD_ORG_ID,CREATED,CREATEDBY,UPDATED,UPDATEDBY,ISACTIVE,NAME,DESCRIPTION,HELP,ENTITYTYPE,MODELVALIDATIONCLASS,SEQNO) values (0,1000000,0,sysdate,100,sysdate,100,'Y','ValidatorBPartner','Validador Parceiro de Negócios','Validação de CPF e CNPJ','LBRA','org.adempierelbr.validator.ValidatorBPartner',1);
INSERT into AD_ModelValidator (AD_CLIENT_ID,AD_MODELVALIDATOR_ID,AD_ORG_ID,CREATED,CREATEDBY,UPDATED,UPDATEDBY,ISACTIVE,NAME,DESCRIPTION,HELP,ENTITYTYPE,MODELVALIDATIONCLASS,SEQNO) values (0,1000001,0,sysdate,100,sysdate,100,'Y','ValidatorInOut','Validador de Recebimento e Expedilção',null,'LBRA','org.adempierelbr.validator.ValidatorInOut',2);
INSERT into AD_ModelValidator (AD_CLIENT_ID,AD_MODELVALIDATOR_ID,AD_ORG_ID,CREATED,CREATEDBY,UPDATED,UPDATEDBY,ISACTIVE,NAME,DESCRIPTION,HELP,ENTITYTYPE,MODELVALIDATIONCLASS,SEQNO) values (0,1000002,0,sysdate,100,sysdate,100,'Y','ValidatorDocType','Validador Tipo de Documento',null,'LBRA','org.adempierelbr.validator.ValidatorDocType',3);
INSERT into AD_ModelValidator (AD_CLIENT_ID,AD_MODELVALIDATOR_ID,AD_ORG_ID,CREATED,CREATEDBY,UPDATED,UPDATEDBY,ISACTIVE,NAME,DESCRIPTION,HELP,ENTITYTYPE,MODELVALIDATIONCLASS,SEQNO) values (0,1000003,0,sysdate,100,sysdate,100,'Y','ValidatorInvoice','Validador Fatura',null,'LBRA','org.adempierelbr.validator.ValidatorInvoice',4);
INSERT into AD_ModelValidator (AD_CLIENT_ID,AD_MODELVALIDATOR_ID,AD_ORG_ID,CREATED,CREATEDBY,UPDATED,UPDATEDBY,ISACTIVE,NAME,DESCRIPTION,HELP,ENTITYTYPE,MODELVALIDATIONCLASS,SEQNO) values (0,1000004,0,sysdate,100,sysdate,100,'Y','ValidatorOrder','Validador SO/PO',null,'LBRA','org.adempierelbr.validator.ValidatorOrder',5);

UPDATE AD_Client SET ModelValidationClasses = NULL;

UPDATE AD_SysConfig SET Value='RC110-360/007-AD_ModelValidator.sql' WHERE AD_SysConfig_ID=1100006
;

exit