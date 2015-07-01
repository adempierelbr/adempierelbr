-- Delete all NFe WebService Already Registred
DELETE FROM LBR_NFeWebService;

-- 29/08/2013 9h53min47s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 09:53:47','YYYY-MM-DD HH24:MI:SS'),100,446,'Y','1',1120151,'NfeRecepcao',TO_DATE('2013-08-29 09:53:47','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefaz.ce.gov.br/nfe2/services/NfeRecepcao2','2.00')
;

-- 29/08/2013 9h54min18s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 09:54:18','YYYY-MM-DD HH24:MI:SS'),100,446,'Y','1',1120152,'NfeRetRecepcao',TO_DATE('2013-08-29 09:54:18','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefaz.ce.gov.br/nfe2/services/NfeRetRecepcao2','2.00')
;

-- 29/08/2013 9h54min56s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 09:54:56','YYYY-MM-DD HH24:MI:SS'),100,446,'Y','1',1120153,'NfeInutilizacao',TO_DATE('2013-08-29 09:54:56','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefaz.ce.gov.br/nfe2/services/NfeInutilizacao2','2.00')
;

-- 29/08/2013 9h55min26s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 09:55:26','YYYY-MM-DD HH24:MI:SS'),100,446,'Y','1',1120154,'NfeConsultaProtocolo',TO_DATE('2013-08-29 09:55:26','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefaz.ce.gov.br/nfe2/services/NfeConsulta2','2.00')
;

-- 29/08/2013 9h55min55s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 09:55:55','YYYY-MM-DD HH24:MI:SS'),100,446,'Y','1',1120155,'NfeStatusServico',TO_DATE('2013-08-29 09:55:55','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefaz.ce.gov.br/nfe2/services/NfeStatusServico2','2.00')
;

-- 29/08/2013 9h56min20s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 09:56:20','YYYY-MM-DD HH24:MI:SS'),100,446,'Y','1',1120156,'NfeStatusServico',TO_DATE('2013-08-29 09:56:20','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefaz.ce.gov.br/nfe2/services/CadConsultaCadastro2','2.00')
;

-- 29/08/2013 9h57min3s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE LBR_NFeWebService SET Name='NfeConsultaCadastro',Updated=TO_DATE('2013-08-29 09:57:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120156
;

-- 29/08/2013 9h57min46s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 09:57:45','YYYY-MM-DD HH24:MI:SS'),100,446,'Y','1',1120157,'RecepcaoEvento',TO_DATE('2013-08-29 09:57:45','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefaz.ce.gov.br/nfe2/services/RecepcaoEvento','2.00')
;

-- 29/08/2013 9h58min24s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 09:58:24','YYYY-MM-DD HH24:MI:SS'),100,448,'Y','1',1120158,'NfeConsultaCadastro',TO_DATE('2013-08-29 09:58:24','YYYY-MM-DD HH24:MI:SS'),100,'https://app.sefaz.es.gov.br/ConsultaCadastroService/CadConsultaCadastro2.asmx','2.00')
;

-- 29/08/2013 9h59min42s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 09:59:42','YYYY-MM-DD HH24:MI:SS'),100,449,'Y','1',1120159,'NfeRecepcao',TO_DATE('2013-08-29 09:59:42','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefaz.go.gov.br/nfe/services/v2/NfeRecepcao2?wsdl','2.00')
;

-- 29/08/2013 10h0min17s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 10:00:16','YYYY-MM-DD HH24:MI:SS'),100,449,'Y','1',1120160,'NfeRetRecepcao',TO_DATE('2013-08-29 10:00:16','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefaz.go.gov.br/nfe/services/v2/NfeRetRecepcao2?wsdl','2.00')
;

-- 29/08/2013 10h1min15s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 10:01:15','YYYY-MM-DD HH24:MI:SS'),100,449,'Y','1',1120161,'NfeInutilizacao',TO_DATE('2013-08-29 10:01:15','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefaz.go.gov.br/nfe/services/v2/NfeInutilizacao2?wsdl','2.00')
;

-- 29/08/2013 10h1min48s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 10:01:48','YYYY-MM-DD HH24:MI:SS'),100,449,'Y','1',1120162,'NfeConsultaProtocolo',TO_DATE('2013-08-29 10:01:48','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefaz.go.gov.br/nfe/services/v2/NfeConsulta2?wsdl','2.00')
;

-- 29/08/2013 10h2min22s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 10:02:22','YYYY-MM-DD HH24:MI:SS'),100,449,'Y','1',1120163,'NfeStatusServico',TO_DATE('2013-08-29 10:02:22','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefaz.go.gov.br/nfe/services/v2/NfeStatusServico2?wsdl','2.00')
;

-- 29/08/2013 10h12min4s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 10:12:03','YYYY-MM-DD HH24:MI:SS'),100,449,'Y','1',1120164,'NfeConsultaCadastro',TO_DATE('2013-08-29 10:12:03','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefaz.go.gov.br/nfe/services/v2/CadConsultaCadastro2?wsdl','2.00')
;

-- 29/08/2013 10h12min37s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 10:12:36','YYYY-MM-DD HH24:MI:SS'),100,449,'Y','1',1120165,'RecepcaoEvento',TO_DATE('2013-08-29 10:12:36','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefaz.go.gov.br/nfe/services/v2/RecepcaoEvento?wsdl','2.00')
;

-- 29/08/2013 10h17min49s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 10:17:49','YYYY-MM-DD HH24:MI:SS'),100,452,'Y','1',1120166,'NfeRecepcao',TO_DATE('2013-08-29 10:17:49','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.fazenda.ms.gov.br/producao/services2/NfeRecepcao2','2.00')
;

-- 29/08/2013 10h23min0s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 10:23:00','YYYY-MM-DD HH24:MI:SS'),100,452,'Y','1',1120167,'NfeRetRecepcao',TO_DATE('2013-08-29 10:23:00','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.fazenda.ms.gov.br/producao/services2/NfeRetRecepcao2','2.00')
;

-- 29/08/2013 10h23min28s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 10:23:28','YYYY-MM-DD HH24:MI:SS'),100,452,'Y','1',1120168,'NfeInutilizacao',TO_DATE('2013-08-29 10:23:28','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.fazenda.ms.gov.br/producao/services2/NfeInutilizacao2','2.00')
;

-- 29/08/2013 10h23min57s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 10:23:57','YYYY-MM-DD HH24:MI:SS'),100,452,'Y','1',1120169,'NfeConsultaProtocolo',TO_DATE('2013-08-29 10:23:57','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.fazenda.ms.gov.br/producao/services2/NfeConsulta2','2.00')
;

-- 29/08/2013 10h24min27s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 10:24:27','YYYY-MM-DD HH24:MI:SS'),100,452,'Y','1',1120170,'NfeStatusServico',TO_DATE('2013-08-29 10:24:27','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.fazenda.ms.gov.br/producao/services2/NfeStatusServico2','2.00')
;

-- 29/08/2013 10h25min12s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 10:25:12','YYYY-MM-DD HH24:MI:SS'),100,452,'Y','1',1120171,'NfeConsultaCadastro',TO_DATE('2013-08-29 10:25:12','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.fazenda.ms.gov.br/producao/services2/CadConsultaCadastro2','2.00')
;

-- 29/08/2013 10h26min4s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 10:26:04','YYYY-MM-DD HH24:MI:SS'),100,452,'Y','1',1120172,'RecepcaoEvento',TO_DATE('2013-08-29 10:26:04','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.fazenda.ms.gov.br/producao/services2/RecepcaoEvento ','2.00')
;

-- 29/08/2013 10h29min2s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 10:29:01','YYYY-MM-DD HH24:MI:SS'),100,453,'Y','1',1120173,'NfeRecepcao',TO_DATE('2013-08-29 10:29:01','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.fazenda.mg.gov.br/nfe2/services/NfeRecepcao2','2.00')
;

-- 29/08/2013 10h30min17s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 10:30:16','YYYY-MM-DD HH24:MI:SS'),100,453,'Y','1',1120174,'NfeRetRecepcao',TO_DATE('2013-08-29 10:30:16','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.fazenda.mg.gov.br/nfe2/services/NfeRetRecepcao2','2.00')
;

-- 29/08/2013 10h30min40s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 10:30:40','YYYY-MM-DD HH24:MI:SS'),100,453,'Y','1',1120175,'NfeInutilizacao',TO_DATE('2013-08-29 10:30:40','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.fazenda.mg.gov.br/nfe2/services/NfeInutilizacao2','2.00')
;

-- 29/08/2013 10h31min9s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 10:31:09','YYYY-MM-DD HH24:MI:SS'),100,453,'Y','1',1120176,'NfeConsultaProtocolo',TO_DATE('2013-08-29 10:31:09','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.fazenda.mg.gov.br/nfe2/services/NfeConsulta2','2.00')
;

-- 29/08/2013 10h31min35s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 10:31:35','YYYY-MM-DD HH24:MI:SS'),100,453,'Y','1',1120177,'NfeStatusServico',TO_DATE('2013-08-29 10:31:35','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.fazenda.mg.gov.br/nfe2/services/NfeStatus2','2.00')
;

-- 29/08/2013 10h32min1s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 10:32:01','YYYY-MM-DD HH24:MI:SS'),100,453,'Y','1',1120178,'NfeConsultaCadastro',TO_DATE('2013-08-29 10:32:01','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.fazenda.mg.gov.br/nfe2/services/cadconsultacadastro2','2.00')
;

-- 29/08/2013 10h32min26s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 10:32:26','YYYY-MM-DD HH24:MI:SS'),100,453,'Y','1',1120179,'RecepcaoEvento',TO_DATE('2013-08-29 10:32:26','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.fazenda.mg.gov.br/nfe2/services/RecepcaoEvento','2.00')
;

-- 29/08/2013 10h40min37s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 10:40:37','YYYY-MM-DD HH24:MI:SS'),100,465,'Y','1',1120180,'NfeRecepcao',TO_DATE('2013-08-29 10:40:37','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.fazenda.sp.gov.br/nfeweb/services/nferecepcao2.asmx','2.00')
;

-- 29/08/2013 10h41min30s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 10:41:30','YYYY-MM-DD HH24:MI:SS'),100,465,'Y','1',1120181,'NfeRetRecepcao',TO_DATE('2013-08-29 10:41:30','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.fazenda.sp.gov.br/nfeweb/services/nferetrecepcao2.asmx ','2.00')
;

-- 29/08/2013 10h42min14s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 10:42:13','YYYY-MM-DD HH24:MI:SS'),100,465,'Y','1',1120182,'NfeInutilizacao',TO_DATE('2013-08-29 10:42:13','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.fazenda.sp.gov.br/nfeweb/services/nfeinutilizacao2.asmx','2.00')
;

-- 29/08/2013 10h42min40s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 10:42:40','YYYY-MM-DD HH24:MI:SS'),100,465,'Y','1',1120183,'NfeConsultaProtocolo',TO_DATE('2013-08-29 10:42:40','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.fazenda.sp.gov.br/nfeweb/services/nfeconsulta2.asmx','2.00')
;

-- 29/08/2013 10h43min9s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 10:43:09','YYYY-MM-DD HH24:MI:SS'),100,465,'Y','1',1120184,'NfeStatusServico',TO_DATE('2013-08-29 10:43:09','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.fazenda.sp.gov.br/nfeweb/services/nfestatusservico2.asmx','2.00')
;

-- 29/08/2013 10h44min15s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 10:44:15','YYYY-MM-DD HH24:MI:SS'),100,465,'Y','1',1120185,'NfeConsultaCadastro',TO_DATE('2013-08-29 10:44:15','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.fazenda.sp.gov.br/nfeweb/services/cadconsultacadastro2.asmx','2.00')
;

-- 29/08/2013 10h44min39s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 10:44:39','YYYY-MM-DD HH24:MI:SS'),100,465,'Y','1',1120186,'RecepcaoEvento',TO_DATE('2013-08-29 10:44:39','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.fazenda.sp.gov.br/eventosWEB/services/RecepcaoEvento.asmx','2.00')
;

-- 29/08/2013 10h45min38s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 10:45:38','YYYY-MM-DD HH24:MI:SS'),100,461,'Y','1',1120187,'NfeRecepcao',TO_DATE('2013-08-29 10:45:38','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefaz.rs.gov.br/ws/Nferecepcao/NFeRecepcao2.asmx','2.00')
;

-- 29/08/2013 10h47min9s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 10:47:09','YYYY-MM-DD HH24:MI:SS'),100,461,'Y','1',1120188,'NfeRetRecepcao',TO_DATE('2013-08-29 10:47:09','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefaz.rs.gov.br/ws/NfeRetRecepcao/NfeRetRecepcao2.asmx','2.00')
;

-- 29/08/2013 10h48min26s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 10:48:26','YYYY-MM-DD HH24:MI:SS'),100,461,'Y','1',1120189,'NfeInutilizacao',TO_DATE('2013-08-29 10:48:26','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefaz.rs.gov.br/ws/nfeinutilizacao/nfeinutilizacao2.asmx','2.00')
;

-- 29/08/2013 10h48min51s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 10:48:51','YYYY-MM-DD HH24:MI:SS'),100,461,'Y','1',1120190,'NfeConsultaProtocolo',TO_DATE('2013-08-29 10:48:51','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefaz.rs.gov.br/ws/NfeConsulta/NfeConsulta2.asmx','2.00')
;

-- 29/08/2013 10h49min19s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 10:49:18','YYYY-MM-DD HH24:MI:SS'),100,461,'Y','1',1120191,'NfeStatusServico',TO_DATE('2013-08-29 10:49:18','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefaz.rs.gov.br/ws/NfeStatusServico/NfeStatusServico2.asmx','2.00')
;

-- 29/08/2013 10h50min5s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 10:50:05','YYYY-MM-DD HH24:MI:SS'),100,461,'Y','1',1120192,'NfeConsultaCadastro',TO_DATE('2013-08-29 10:50:05','YYYY-MM-DD HH24:MI:SS'),100,'https://sef.sefaz.rs.gov.br/ws/cadconsultacadastro/cadconsultacadastro2.asmx','2.00')
;

-- 29/08/2013 10h50min31s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 10:50:31','YYYY-MM-DD HH24:MI:SS'),100,461,'Y','1',1120193,'RecepcaoEvento',TO_DATE('2013-08-29 10:50:31','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefaz.rs.gov.br/ws/recepcaoevento/recepcaoevento.asmx','2.00')
;

-- 29/08/2013 10h52min7s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 10:52:07','YYYY-MM-DD HH24:MI:SS'),100,461,'Y','1',1120194,'NfeConsultaDest',TO_DATE('2013-08-29 10:52:07','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefaz.rs.gov.br/ws/nfeConsultaDest/nfeConsultaDest.asmx','2.00')
;

-- 29/08/2013 10h53min6s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 10:53:06','YYYY-MM-DD HH24:MI:SS'),100,461,'Y','1',1120195,'NfeDownloadNF',TO_DATE('2013-08-29 10:53:06','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefaz.rs.gov.br/ws/nfeDownloadNF/nfeDownloadNF.asmx','2.00')
;

-- 29/08/2013 10h53min57s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 10:53:57','YYYY-MM-DD HH24:MI:SS'),100,460,'Y','1',1120196,'NfeConsultaCadastro',TO_DATE('2013-08-29 10:53:57','YYYY-MM-DD HH24:MI:SS'),100,'https://svp-ws.sefazvirtual.rs.gov.br/ws/CadConsultaCadastro/CadConsultaCadastro2.asmx','2.00')
;

-- 29/08/2013 10h54min25s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 10:54:25','YYYY-MM-DD HH24:MI:SS'),100,456,'Y','1',1120197,'NfeRecepcao',TO_DATE('2013-08-29 10:54:25','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe2.fazenda.pr.gov.br/nfe/NFeRecepcao2?wsdl','2.00')
;

-- 29/08/2013 10h55min37s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 10:55:37','YYYY-MM-DD HH24:MI:SS'),100,456,'Y','1',1120198,'NfeRetRecepcao',TO_DATE('2013-08-29 10:55:37','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe2.fazenda.pr.gov.br/nfe/NFeRetRecepcao2?wsdl','2.00')
;

-- 29/08/2013 10h56min5s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 10:56:05','YYYY-MM-DD HH24:MI:SS'),100,456,'Y','1',1120199,'NfeInutilizacao',TO_DATE('2013-08-29 10:56:05','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe2.fazenda.pr.gov.br/nfe/NFeInutilizacao2?wsdl','2.00')
;

-- 29/08/2013 10h57min6s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 10:57:06','YYYY-MM-DD HH24:MI:SS'),100,456,'Y','1',1120200,'NfeConsultaProtocolo',TO_DATE('2013-08-29 10:57:06','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe2.fazenda.pr.gov.br/nfe/NFeConsulta2?wsdl','2.00')
;

-- 29/08/2013 10h58min21s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 10:58:21','YYYY-MM-DD HH24:MI:SS'),100,456,'Y','1',1120201,'NfeStatusServico',TO_DATE('2013-08-29 10:58:21','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe2.fazenda.pr.gov.br/nfe/NFeStatusServico2?wsdl','2.00')
;

-- 29/08/2013 11h0min36s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 11:00:36','YYYY-MM-DD HH24:MI:SS'),100,456,'Y','1',1120202,'NfeConsultaCadastro',TO_DATE('2013-08-29 11:00:36','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe2.fazenda.pr.gov.br/nfe/CadConsultaCadastro2?wsdl','2.00')
;

-- 29/08/2013 11h1min45s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 11:01:45','YYYY-MM-DD HH24:MI:SS'),100,456,'Y','1',1120203,'RecepcaoEvento',TO_DATE('2013-08-29 11:01:45','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe2.fazenda.pr.gov.br/nfe-evento/NFeRecepcaoEvento?wsdl','2.00')
;

-- 29/08/2013 11h2min20s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 11:02:20','YYYY-MM-DD HH24:MI:SS'),100,457,'Y','1',1120204,'NfeRecepcao',TO_DATE('2013-08-29 11:02:20','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefaz.pe.gov.br/nfe-service/services/NfeRecepcao2','2.00')
;

-- 29/08/2013 11h2min47s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 11:02:47','YYYY-MM-DD HH24:MI:SS'),100,457,'Y','1',1120205,'NfeRetRecepcao',TO_DATE('2013-08-29 11:02:47','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefaz.pe.gov.br/nfe-service/services/NfeRetRecepcao2','2.00')
;

-- 29/08/2013 11h3min14s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 11:03:13','YYYY-MM-DD HH24:MI:SS'),100,457,'Y','1',1120206,'NfeInutilizacao',TO_DATE('2013-08-29 11:03:13','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefaz.pe.gov.br/nfe-service/services/NfeInutilizacao2','2.00')
;

-- 29/08/2013 11h4min18s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 11:04:18','YYYY-MM-DD HH24:MI:SS'),100,457,'Y','1',1120207,'NfeConsultaProtocolo',TO_DATE('2013-08-29 11:04:18','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefaz.pe.gov.br/nfe-service/services/NfeConsulta2','2.00')
;

-- 29/08/2013 11h6min12s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 11:06:12','YYYY-MM-DD HH24:MI:SS'),100,457,'Y','1',1120208,'NfeStatusServico',TO_DATE('2013-08-29 11:06:12','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefaz.pe.gov.br/nfe-service/services/NfeStatusServico2','2.00')
;

-- 29/08/2013 11h11min31s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 11:11:31','YYYY-MM-DD HH24:MI:SS'),100,457,'Y','1',1120209,'NfeConsultaCadastro',TO_DATE('2013-08-29 11:11:31','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefaz.pe.gov.br/nfe-service/services/CadConsultaCadastro2','2.00')
;

-- 29/08/2013 11h11min53s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 11:11:53','YYYY-MM-DD HH24:MI:SS'),100,457,'Y','1',1120210,'RecepcaoEvento',TO_DATE('2013-08-29 11:11:53','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefaz.pe.gov.br/nfe-service/services/RecepcaoEvento','2.00')
;

-- 29/08/2013 11h13min34s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 11:13:34','YYYY-MM-DD HH24:MI:SS'),100,451,'Y','1',1120211,'NfeRecepcao',TO_DATE('2013-08-29 11:13:34','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefaz.mt.gov.br/nfews/v2/services/NfeRecepcao2?wsdl','2.00')
;

-- 29/08/2013 11h15min38s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 11:15:38','YYYY-MM-DD HH24:MI:SS'),100,451,'Y','1',1120212,'NfeRetRecepcao ',TO_DATE('2013-08-29 11:15:38','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefaz.mt.gov.br/nfews/v2/services/NfeRetRecepcao2?wsdl','2.00')
;

-- 29/08/2013 11h27min7s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 11:27:07','YYYY-MM-DD HH24:MI:SS'),100,451,'Y','1',1120213,'NfeInutilizacao',TO_DATE('2013-08-29 11:27:07','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefaz.mt.gov.br/nfews/v2/services/NfeInutilizacao2?wsdl','2.00')
;

-- 29/08/2013 11h27min36s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 11:27:36','YYYY-MM-DD HH24:MI:SS'),100,451,'Y','1',1120214,'NfeConsultaProtocolo',TO_DATE('2013-08-29 11:27:36','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefaz.mt.gov.br/nfews/v2/services/NfeConsulta2?wsdl ','2.00')
;

-- 29/08/2013 11h27min59s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 11:27:59','YYYY-MM-DD HH24:MI:SS'),100,451,'Y','1',1120215,'NfeStatusServico',TO_DATE('2013-08-29 11:27:59','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefaz.mt.gov.br/nfews/v2/services/NfeStatusServico2?wsdl','2.00')
;

-- 29/08/2013 11h28min23s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 11:28:22','YYYY-MM-DD HH24:MI:SS'),100,451,'Y','1',1120216,'NfeConsultaCadastro ',TO_DATE('2013-08-29 11:28:22','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefaz.mt.gov.br/nfews/v2/services/CadConsultaCadastro2?wsdl','2.00')
;

-- 29/08/2013 11h29min2s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 11:29:02','YYYY-MM-DD HH24:MI:SS'),100,451,'Y','1',1120217,'RecepcaoEvento',TO_DATE('2013-08-29 11:29:02','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefaz.mt.gov.br/nfews/v2/services/RecepcaoEvento?wsdl','2.00')
;

-- 29/08/2013 11h31min35s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 11:31:35','YYYY-MM-DD HH24:MI:SS'),100,444,'Y','2',1120218,'NfeRecepcao',TO_DATE('2013-08-29 11:31:35','YYYY-MM-DD HH24:MI:SS'),100,'https://homnfe.sefaz.am.gov.br/services2/services/NfeRecepcao2','2.00')
;

-- 29/08/2013 11h31min58s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 11:31:58','YYYY-MM-DD HH24:MI:SS'),100,444,'Y','2',1120219,'NfeRetRecepcao',TO_DATE('2013-08-29 11:31:58','YYYY-MM-DD HH24:MI:SS'),100,'https://homnfe.sefaz.am.gov.br/services2/services/NfeRetRecepcao2','2.00')
;

-- 29/08/2013 11h32min40s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 11:32:40','YYYY-MM-DD HH24:MI:SS'),100,444,'Y','2',1120220,'NfeInutilizacao',TO_DATE('2013-08-29 11:32:40','YYYY-MM-DD HH24:MI:SS'),100,'https://homnfe.sefaz.am.gov.br/services2/services/NfeInutilizacao2','2.00')
;

-- 29/08/2013 11h33min21s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 11:33:21','YYYY-MM-DD HH24:MI:SS'),100,444,'Y','2',1120221,'NfeConsultaProtocolo',TO_DATE('2013-08-29 11:33:21','YYYY-MM-DD HH24:MI:SS'),100,'https://homnfe.sefaz.am.gov.br/services2/services/NfeConsulta2','2.00')
;

-- 29/08/2013 11h33min49s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 11:33:49','YYYY-MM-DD HH24:MI:SS'),100,444,'Y','2',1120222,'NfeStatusServico',TO_DATE('2013-08-29 11:33:49','YYYY-MM-DD HH24:MI:SS'),100,'https://homnfe.sefaz.am.gov.br/services2/services/NfeStatusServico2','2.00')
;

-- 29/08/2013 11h34min53s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 11:34:53','YYYY-MM-DD HH24:MI:SS'),100,444,'Y','2',1120223,'NfeConsultaCadastro',TO_DATE('2013-08-29 11:34:53','YYYY-MM-DD HH24:MI:SS'),100,'https://homnfe.sefaz.am.gov.br/services2/services/cadconsultacadastro2','2.00')
;

-- 29/08/2013 11h35min18s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 11:35:18','YYYY-MM-DD HH24:MI:SS'),100,444,'Y','2',1120224,'RecepcaoEvento',TO_DATE('2013-08-29 11:35:18','YYYY-MM-DD HH24:MI:SS'),100,'https://homnfe.sefaz.am.gov.br/services2/services/RecepcaoEvento','2.00')
;

-- 29/08/2013 11h36min23s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 11:36:23','YYYY-MM-DD HH24:MI:SS'),100,445,'Y','2',1120225,'NfeRecepcao',TO_DATE('2013-08-29 11:36:23','YYYY-MM-DD HH24:MI:SS'),100,'https://hnfe.sefaz.ba.gov.br/webservices/nfenw/NfeRecepcao2.asmx','2.00')
;

-- 29/08/2013 11h36min45s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 11:36:45','YYYY-MM-DD HH24:MI:SS'),100,445,'Y','2',1120226,'NfeRetRecepcao',TO_DATE('2013-08-29 11:36:45','YYYY-MM-DD HH24:MI:SS'),100,'https://hnfe.sefaz.ba.gov.br/webservices/nfenw/NfeRetRecepcao2.asmx','2.00')
;

-- 29/08/2013 11h37min14s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 11:37:14','YYYY-MM-DD HH24:MI:SS'),100,445,'Y','2',1120227,'NfeInutilizacao',TO_DATE('2013-08-29 11:37:14','YYYY-MM-DD HH24:MI:SS'),100,'https://hnfe.sefaz.ba.gov.br/webservices/nfenw/NfeInutilizacao2.asmx','2.00')
;

-- 29/08/2013 11h37min39s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 11:37:39','YYYY-MM-DD HH24:MI:SS'),100,445,'Y','2',1120228,'NfeConsultaProtocolo',TO_DATE('2013-08-29 11:37:39','YYYY-MM-DD HH24:MI:SS'),100,'https://hnfe.sefaz.ba.gov.br/webservices/nfenw/NfeConsulta2.asmx','2.00')
;

-- 29/08/2013 11h38min16s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 11:38:16','YYYY-MM-DD HH24:MI:SS'),100,445,'Y','2',1120229,'NfeStatusServico',TO_DATE('2013-08-29 11:38:16','YYYY-MM-DD HH24:MI:SS'),100,'https://hnfe.sefaz.ba.gov.br/webservices/nfenw/NfeStatusServico2.asmx ','2.00')
;

-- 29/08/2013 11h38min44s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 11:38:43','YYYY-MM-DD HH24:MI:SS'),100,445,'Y','2',1120230,'NfeConsultaCadastro',TO_DATE('2013-08-29 11:38:43','YYYY-MM-DD HH24:MI:SS'),100,'https://hnfe.sefaz.ba.gov.br/webservices/nfenw/CadConsultaCadastro2.asmx','2.00')
;

-- 29/08/2013 11h39min26s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 11:39:26','YYYY-MM-DD HH24:MI:SS'),100,445,'Y','2',1120231,'RecepcaoEvento',TO_DATE('2013-08-29 11:39:26','YYYY-MM-DD HH24:MI:SS'),100,'https://hnfe.sefaz.ba.gov.br/webservices/sre/RecepcaoEvento.asmx','2.00')
;

-- 29/08/2013 11h39min57s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 11:39:57','YYYY-MM-DD HH24:MI:SS'),100,465,'Y','2',1120232,'NfeRecepcao',TO_DATE('2013-08-29 11:39:57','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.fazenda.sp.gov.br/nfeweb/services/NfeRecepcao2.asmx','2.00')
;

-- 29/08/2013 11h40min19s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 11:40:19','YYYY-MM-DD HH24:MI:SS'),100,465,'Y','2',1120233,'NfeRetRecepcao',TO_DATE('2013-08-29 11:40:19','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.fazenda.sp.gov.br/nfeweb/services/NfeRetRecepcao2.asmx','2.00')
;

-- 29/08/2013 11h42min6s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 11:42:06','YYYY-MM-DD HH24:MI:SS'),100,465,'Y','2',1120234,'NfeInutilizacao',TO_DATE('2013-08-29 11:42:06','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.fazenda.sp.gov.br/nfeweb/services/NfeInutilizacao2.asmx','2.00')
;

-- 29/08/2013 11h42min30s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 11:42:30','YYYY-MM-DD HH24:MI:SS'),100,465,'Y','2',1120235,'NfeConsultaProtocolo',TO_DATE('2013-08-29 11:42:30','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.fazenda.sp.gov.br/nfeweb/services/NfeConsulta2.asmx','2.00')
;

-- 29/08/2013 11h42min54s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 11:42:54','YYYY-MM-DD HH24:MI:SS'),100,465,'Y','2',1120236,'NfeStatusServico',TO_DATE('2013-08-29 11:42:54','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.fazenda.sp.gov.br/nfeweb/services/NfeStatusServico2.asmx','2.00')
;

-- 29/08/2013 11h43min19s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 11:43:19','YYYY-MM-DD HH24:MI:SS'),100,465,'Y','2',1120237,'NfeConsultaCadastro',TO_DATE('2013-08-29 11:43:19','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.fazenda.sp.gov.br/nfeweb/services/CadConsultaCadastro2.asmx','2.00')
;

-- 29/08/2013 11h43min43s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 11:43:43','YYYY-MM-DD HH24:MI:SS'),100,465,'Y','2',1120238,'RecepcaoEvento',TO_DATE('2013-08-29 11:43:43','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.fazenda.sp.gov.br/eventosWEB/services/RecepcaoEvento.asmx','2.00')
;

-- 29/08/2013 11h44min40s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 11:44:40','YYYY-MM-DD HH24:MI:SS'),100,461,'Y','2',1120239,'NfeRecepcao',TO_DATE('2013-08-29 11:44:40','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefaz.rs.gov.br/ws/Nferecepcao/NFeRecepcao2.asmx','2.00')
;

-- 29/08/2013 11h45min50s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 11:45:50','YYYY-MM-DD HH24:MI:SS'),100,461,'Y','2',1120240,'NfeRetRecepcao',TO_DATE('2013-08-29 11:45:50','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefaz.rs.gov.br/ws/NfeRetRecepcao/NfeRetRecepcao2.asmx','2.00')
;

-- 29/08/2013 11h46min13s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 11:46:12','YYYY-MM-DD HH24:MI:SS'),100,461,'Y','2',1120241,'NfeInutilizacao',TO_DATE('2013-08-29 11:46:12','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefaz.rs.gov.br/ws/nfeinutilizacao/nfeinutilizacao2.asmx','2.00')
;

-- 29/08/2013 11h46min41s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 11:46:41','YYYY-MM-DD HH24:MI:SS'),100,461,'Y','2',1120242,'NfeConsultaProtocolo',TO_DATE('2013-08-29 11:46:41','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefaz.rs.gov.br/ws/NfeConsulta/NfeConsulta2.asmx','2.00')
;

-- 29/08/2013 11h52min59s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 11:52:59','YYYY-MM-DD HH24:MI:SS'),100,461,'Y','2',1120243,'NfeStatusServico',TO_DATE('2013-08-29 11:52:59','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefaz.rs.gov.br/ws/NfeStatusServico/NfeStatusServico2.asmx','2.00')
;

-- 29/08/2013 11h53min22s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 11:53:22','YYYY-MM-DD HH24:MI:SS'),100,461,'Y','2',1120244,'RecepcaoEvento',TO_DATE('2013-08-29 11:53:22','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefaz.rs.gov.br/ws/recepcaoevento/recepcaoevento.asmx','2.00')
;

-- 29/08/2013 11h53min45s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 11:53:45','YYYY-MM-DD HH24:MI:SS'),100,461,'Y','2',1120245,'NfeConsultaDest',TO_DATE('2013-08-29 11:53:45','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefaz.rs.gov.br/ws/nfeConsultaDest/nfeConsultaDest.asmx','2.00')
;

-- 29/08/2013 11h54min8s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 11:54:08','YYYY-MM-DD HH24:MI:SS'),100,461,'Y','2',1120246,'NfeDownloadNF',TO_DATE('2013-08-29 11:54:08','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefaz.rs.gov.br/ws/nfeDownloadNF/nfeDownloadNF.asmx','2.00')
;

-- 29/08/2013 11h54min42s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 11:54:42','YYYY-MM-DD HH24:MI:SS'),100,460,'Y','2',1120247,'NfeConsultaCadastro',TO_DATE('2013-08-29 11:54:42','YYYY-MM-DD HH24:MI:SS'),100,'https://webservice.set.rn.gov.br/projetonfehomolog/set_nfe/servicos/CadConsultaCadastroWS.asmx','2.00')
;

-- 29/08/2013 11h55min12s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 11:55:12','YYYY-MM-DD HH24:MI:SS'),100,457,'Y','2',1120248,'NfeRecepcao',TO_DATE('2013-08-29 11:55:12','YYYY-MM-DD HH24:MI:SS'),100,'https://nfehomolog.sefaz.pe.gov.br/nfe-service/services/NfeRecepcao2','2.00')
;

-- 29/08/2013 11h55min48s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 11:55:48','YYYY-MM-DD HH24:MI:SS'),100,457,'Y','2',1120249,'NfeRetRecepcao',TO_DATE('2013-08-29 11:55:48','YYYY-MM-DD HH24:MI:SS'),100,'https://nfehomolog.sefaz.pe.gov.br/nfe-service/services/NfeRetRecepcao2','2.00')
;

-- 29/08/2013 11h57min25s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 11:57:25','YYYY-MM-DD HH24:MI:SS'),100,'Y','2',1120250,'NfeInutilizacao',TO_DATE('2013-08-29 11:57:25','YYYY-MM-DD HH24:MI:SS'),100,'https://nfehomolog.sefaz.pe.gov.br/nfe-service/services/NfeInutilizacao2','2.00')
;

-- 29/08/2013 11h58min56s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 11:58:56','YYYY-MM-DD HH24:MI:SS'),100,457,'Y','2',1120251,'NfeConsultaProtocolo',TO_DATE('2013-08-29 11:58:56','YYYY-MM-DD HH24:MI:SS'),100,'https://nfehomolog.sefaz.pe.gov.br/nfe-service/services/NfeConsulta2','2.00')
;

-- 29/08/2013 11h59min40s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 11:59:40','YYYY-MM-DD HH24:MI:SS'),100,457,'Y','2',1120252,'NfeStatusServico',TO_DATE('2013-08-29 11:59:40','YYYY-MM-DD HH24:MI:SS'),100,'https://nfehomolog.sefaz.pe.gov.br/nfe-service/services/NfeStatusServico2','2.00')
;

-- 29/08/2013 12h0min49s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 12:00:48','YYYY-MM-DD HH24:MI:SS'),100,457,'Y','2',1120253,'RecepcaoEvento',TO_DATE('2013-08-29 12:00:48','YYYY-MM-DD HH24:MI:SS'),100,'https://nfehomolog.sefaz.pe.gov.br/nfe-service/services/RecepcaoEvento','2.00')
;

-- 29/08/2013 12h13min13s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 12:13:13','YYYY-MM-DD HH24:MI:SS'),100,456,'Y','2',1120254,'NfeRecepcao',TO_DATE('2013-08-29 12:13:13','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe2.fazenda.pr.gov.br/nfe/NFeRecepcao2?wsdl','2.00')
;

-- 29/08/2013 12h16min20s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 12:16:20','YYYY-MM-DD HH24:MI:SS'),100,456,'Y','2',1120255,'NfeRetRecepcao',TO_DATE('2013-08-29 12:16:20','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe2.fazenda.pr.gov.br/nfe/NFeRetRecepcao2?wsdl','2.00')
;

-- 29/08/2013 12h16min42s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 12:16:42','YYYY-MM-DD HH24:MI:SS'),100,456,'Y','2',1120256,'NfeInutilizacao',TO_DATE('2013-08-29 12:16:42','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe2.fazenda.pr.gov.br/nfe/NFeInutilizacao2?wsdl ','2.00')
;

-- 29/08/2013 12h17min9s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 12:17:09','YYYY-MM-DD HH24:MI:SS'),100,456,'Y','2',1120257,'NfeConsultaProtocolo',TO_DATE('2013-08-29 12:17:09','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe2.fazenda.pr.gov.br/nfe/NFeConsulta2?wsdl','2.00')
;

-- 29/08/2013 12h19min26s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 12:19:26','YYYY-MM-DD HH24:MI:SS'),100,456,'Y','2',1120258,'NfeStatusServico',TO_DATE('2013-08-29 12:19:26','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe2.fazenda.pr.gov.br/nfe/NFeStatusServico2?wsdl','2.00')
;

-- 29/08/2013 12h19min49s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 12:19:49','YYYY-MM-DD HH24:MI:SS'),100,456,'Y','2',1120259,'NfeConsultaCadastro',TO_DATE('2013-08-29 12:19:49','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe2.fazenda.pr.gov.br/nfe/CadConsultaCadastro2?wsdl','2.00')
;

-- 29/08/2013 12h20min20s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 12:20:20','YYYY-MM-DD HH24:MI:SS'),100,456,'Y','2',1120260,'RecepcaoEvento',TO_DATE('2013-08-29 12:20:20','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe2.fazenda.pr.gov.br/nfe-evento/NFeRecepcaoEvento?wsdl','2.00')
;

-- 29/08/2013 12h21min12s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 12:21:12','YYYY-MM-DD HH24:MI:SS'),100,453,'Y','2',1120261,'NfeRecepcao',TO_DATE('2013-08-29 12:21:12','YYYY-MM-DD HH24:MI:SS'),100,' https://hnfe.fazenda.mg.gov.br/nfe2/services/NfeRecepcao2','2.00')
;

-- 29/08/2013 12h21min45s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 12:21:45','YYYY-MM-DD HH24:MI:SS'),100,453,'Y','2',1120262,'NfeRetRecepcao',TO_DATE('2013-08-29 12:21:45','YYYY-MM-DD HH24:MI:SS'),100,'https://hnfe.fazenda.mg.gov.br/nfe2/services/NfeRetRecepcao2','2.00')
;

-- 29/08/2013 12h22min7s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 12:22:07','YYYY-MM-DD HH24:MI:SS'),100,453,'Y','2',1120263,'NfeInutilizacao',TO_DATE('2013-08-29 12:22:07','YYYY-MM-DD HH24:MI:SS'),100,'https://hnfe.fazenda.mg.gov.br/nfe2/services/NfeInutilizacao2','2.00')
;

-- 29/08/2013 12h22min32s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 12:22:32','YYYY-MM-DD HH24:MI:SS'),100,453,'Y','2',1120264,'NfeConsultaProtocolo',TO_DATE('2013-08-29 12:22:32','YYYY-MM-DD HH24:MI:SS'),100,'https://hnfe.fazenda.mg.gov.br/nfe2/services/NfeConsulta2','2.00')
;

-- 29/08/2013 12h23min3s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 12:23:03','YYYY-MM-DD HH24:MI:SS'),100,453,'Y','2',1120265,'NfeStatusServico',TO_DATE('2013-08-29 12:23:03','YYYY-MM-DD HH24:MI:SS'),100,'https://hnfe.fazenda.mg.gov.br/nfe2/services/NfeStatusServico2','2.00')
;

-- 29/08/2013 12h23min37s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 12:23:37','YYYY-MM-DD HH24:MI:SS'),100,453,'Y','2',1120266,'NfeConsultaCadastro',TO_DATE('2013-08-29 12:23:37','YYYY-MM-DD HH24:MI:SS'),100,'https://hnfe.fazenda.mg.gov.br/nfe2/services/cadconsultacadastro2','2.00')
;

-- 29/08/2013 12h24min1s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 12:24:01','YYYY-MM-DD HH24:MI:SS'),100,453,'Y','2',1120267,'RecepcaoEvento',TO_DATE('2013-08-29 12:24:01','YYYY-MM-DD HH24:MI:SS'),100,'https://hnfe.fazenda.mg.gov.br/nfe2/services/RecepcaoEvento','2.00')
;

-- 29/08/2013 12h24min34s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 12:24:34','YYYY-MM-DD HH24:MI:SS'),100,448,'Y','2',1120268,'NfeConsultaCadastro',TO_DATE('2013-08-29 12:24:34','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.sefaz.es.gov.br/ConsultaCadastroService/CadConsultaCadastro2.asmx','2.00')
;

-- 29/08/2013 12h25min9s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 12:25:08','YYYY-MM-DD HH24:MI:SS'),100,452,'Y','2',1120269,'NfeRecepcao',TO_DATE('2013-08-29 12:25:08','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.ms.gov.br/homologacao/services2/NfeRecepcao2','2.00')
;

-- 29/08/2013 12h25min31s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 12:25:31','YYYY-MM-DD HH24:MI:SS'),100,452,'Y','2',1120270,'NfeRetRecepcao',TO_DATE('2013-08-29 12:25:31','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.ms.gov.br/homologacao/services2/NfeRetRecepcao2','2.00')
;

-- 29/08/2013 12h25min55s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 12:25:55','YYYY-MM-DD HH24:MI:SS'),100,452,'Y','2',1120271,'NfeInutilizacao',TO_DATE('2013-08-29 12:25:55','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.ms.gov.br/homologacao/services2/NfeInutilizacao2','2.00')
;

-- 29/08/2013 12h26min27s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 12:26:27','YYYY-MM-DD HH24:MI:SS'),100,452,'Y','2',1120272,'NfeConsultaProtocolo',TO_DATE('2013-08-29 12:26:27','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.ms.gov.br/homologacao/services2/NfeConsulta2 ','2.00')
;

-- 29/08/2013 12h26min52s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 12:26:52','YYYY-MM-DD HH24:MI:SS'),100,452,'Y','2',1120273,'NfeStatusServico',TO_DATE('2013-08-29 12:26:52','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.ms.gov.br/homologacao/services2/NfeStatusServico2','2.00')
;

-- 29/08/2013 12h27min23s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 12:27:23','YYYY-MM-DD HH24:MI:SS'),100,452,'Y','2',1120274,'NfeConsultaCadastro',TO_DATE('2013-08-29 12:27:23','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.ms.gov.br/homologacao/services2/CadConsultaCadastro2','2.00')
;

-- 29/08/2013 12h27min46s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 12:27:46','YYYY-MM-DD HH24:MI:SS'),100,452,'Y','2',1120275,'RecepcaoEvento',TO_DATE('2013-08-29 12:27:46','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.ms.gov.br/homologacao/services2/RecepcaoEvento','2.00')
;

-- 29/08/2013 12h28min41s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 12:28:41','YYYY-MM-DD HH24:MI:SS'),100,451,'Y','2',1120276,'NfeRecepcao',TO_DATE('2013-08-29 12:28:41','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.sefaz.mt.gov.br/nfews/v2/services/NfeRecepcao2?wsdl','2.00')
;

-- 29/08/2013 12h29min15s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 12:29:15','YYYY-MM-DD HH24:MI:SS'),100,451,'Y','2',1120277,'NfeRetRecepcao',TO_DATE('2013-08-29 12:29:15','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.sefaz.mt.gov.br/nfews/v2/services/NfeRetRecepcao2?wsdl','2.00')
;

-- 29/08/2013 12h29min46s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 12:29:46','YYYY-MM-DD HH24:MI:SS'),100,451,'Y','2',1120278,'NfeInutilizacao',TO_DATE('2013-08-29 12:29:46','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.sefaz.mt.gov.br/nfews/v2/services/NfeInutilizacao2?wsdl','2.00')
;

-- 29/08/2013 12h30min12s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 12:30:12','YYYY-MM-DD HH24:MI:SS'),100,451,'Y','2',1120279,'NfeConsultaProtocolo',TO_DATE('2013-08-29 12:30:12','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.sefaz.mt.gov.br/nfews/v2/services/NfeConsulta2?wsdl','2.00')
;

-- 29/08/2013 12h30min35s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 12:30:34','YYYY-MM-DD HH24:MI:SS'),100,451,'Y','2',1120280,'NfeStatusServico',TO_DATE('2013-08-29 12:30:34','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.sefaz.mt.gov.br/nfews/v2/services/NfeStatusServico2?wsdl','2.00')
;

-- 29/08/2013 12h31min5s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 12:31:05','YYYY-MM-DD HH24:MI:SS'),100,451,'Y','2',1120281,'RecepcaoEvento',TO_DATE('2013-08-29 12:31:05','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.sefaz.mt.gov.br/nfews/v2/services/RecepcaoEvento?wsdl','2.00')
;

-- 29/08/2013 12h31min44s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 12:31:44','YYYY-MM-DD HH24:MI:SS'),100,449,'Y','2',1120282,'NfeRecepcao',TO_DATE('2013-08-29 12:31:44','YYYY-MM-DD HH24:MI:SS'),100,'https://homolog.sefaz.go.gov.br/nfe/services/v2/NfeRecepcao2?wsdl','2.00')
;

-- 29/08/2013 12h32min18s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 12:32:18','YYYY-MM-DD HH24:MI:SS'),100,449,'Y','2',1120283,'NfeRetRecepcao',TO_DATE('2013-08-29 12:32:18','YYYY-MM-DD HH24:MI:SS'),100,'https://homolog.sefaz.go.gov.br/nfe/services/v2/NfeRetRecepcao2?wsdl','2.00')
;

-- 29/08/2013 12h32min44s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 12:32:44','YYYY-MM-DD HH24:MI:SS'),100,449,'Y','2',1120284,'NfeInutilizacao',TO_DATE('2013-08-29 12:32:44','YYYY-MM-DD HH24:MI:SS'),100,'https://homolog.sefaz.go.gov.br/nfe/services/v2/NfeInutilizacao2?wsdl','2.00')
;

-- 29/08/2013 12h33min13s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 12:33:13','YYYY-MM-DD HH24:MI:SS'),100,449,'Y','2',1120285,'NfeConsultaProtocolo',TO_DATE('2013-08-29 12:33:13','YYYY-MM-DD HH24:MI:SS'),100,'https://homolog.sefaz.go.gov.br/nfe/services/v2/NfeConsulta2?wsdl','2.00')
;

-- 29/08/2013 13h23min12s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 13:23:12','YYYY-MM-DD HH24:MI:SS'),100,449,'Y','2',1120286,'NfeStatusServico',TO_DATE('2013-08-29 13:23:12','YYYY-MM-DD HH24:MI:SS'),100,'https://homolog.sefaz.go.gov.br/nfe/services/v2/NfeStatusServico2?wsdl','2.00')
;

-- 29/08/2013 13h23min41s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 13:23:41','YYYY-MM-DD HH24:MI:SS'),100,449,'Y','2',1120287,'NfeConsultaCadastro',TO_DATE('2013-08-29 13:23:41','YYYY-MM-DD HH24:MI:SS'),100,'https://homolog.sefaz.go.gov.br/nfe/services/v2/CadConsultaCadastro2?wsdl','2.00')
;

-- 29/08/2013 13h24min18s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 13:24:18','YYYY-MM-DD HH24:MI:SS'),100,449,'Y','2',1120288,'RecepcaoEvento',TO_DATE('2013-08-29 13:24:18','YYYY-MM-DD HH24:MI:SS'),100,'https://homolog.sefaz.go.gov.br/nfe/services/v2/NfeRecepcaoEvento?wsdl','2.00')
;

-- 29/08/2013 13h24min48s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 13:24:48','YYYY-MM-DD HH24:MI:SS'),100,446,'Y','2',1120289,'NfeRecepcao',TO_DATE('2013-08-29 13:24:48','YYYY-MM-DD HH24:MI:SS'),100,'https://nfeh.sefaz.ce.gov.br/nfe2/services/NfeRecepcao2','2.00')
;

-- 29/08/2013 13h31min20s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 13:31:20','YYYY-MM-DD HH24:MI:SS'),100,446,'Y','2',1120290,'NfeRetRecepcao',TO_DATE('2013-08-29 13:31:20','YYYY-MM-DD HH24:MI:SS'),100,'https://nfeh.sefaz.ce.gov.br/nfe2/services/NfeRetRecepcao2','2.00')
;

-- 29/08/2013 13h31min54s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 13:31:54','YYYY-MM-DD HH24:MI:SS'),100,446,'Y','2',1120291,'NfeInutilizacao',TO_DATE('2013-08-29 13:31:54','YYYY-MM-DD HH24:MI:SS'),100,'https://nfeh.sefaz.ce.gov.br/nfe2/services/NfeInutilizacao2','2.00')
;

-- 29/08/2013 13h32min23s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 13:32:23','YYYY-MM-DD HH24:MI:SS'),100,446,'Y','2',1120292,'NfeConsultaProtocolo',TO_DATE('2013-08-29 13:32:23','YYYY-MM-DD HH24:MI:SS'),100,'https://nfeh.sefaz.ce.gov.br/nfe2/services/NfeConsulta2','2.00')
;

-- 29/08/2013 13h32min47s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 13:32:47','YYYY-MM-DD HH24:MI:SS'),100,446,'Y','2',1120293,'NfeStatusServico',TO_DATE('2013-08-29 13:32:47','YYYY-MM-DD HH24:MI:SS'),100,'https://nfeh.sefaz.ce.gov.br/nfe2/services/NfeStatusServico2','2.00')
;

-- 29/08/2013 13h33min14s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 13:33:13','YYYY-MM-DD HH24:MI:SS'),100,446,'Y','2',1120294,'NfeConsultaCadastro',TO_DATE('2013-08-29 13:33:13','YYYY-MM-DD HH24:MI:SS'),100,'https://nfeh.sefaz.ce.gov.br/nfe2/services/CadConsultaCadastro2','2.00')
;

-- 29/08/2013 13h33min37s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 13:33:37','YYYY-MM-DD HH24:MI:SS'),100,446,'Y','2',1120295,'RecepcaoEvento',TO_DATE('2013-08-29 13:33:37','YYYY-MM-DD HH24:MI:SS'),100,'https://nfeh.sefaz.ce.gov.br/nfe2/services/RecepcaoEvento','2.00')
;

-- 29/08/2013 13h53min52s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 13:53:51','YYYY-MM-DD HH24:MI:SS'),100,448,'Y','1',1120296,'NfeRecepcao',TO_DATE('2013-08-29 13:53:51','YYYY-MM-DD HH24:MI:SS'),100,'https://hom.sefazvirtual.fazenda.gov.br/NfeRecepcao2/NfeRecepcao2.asmx','2.00')
;

-- 29/08/2013 13h54min47s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 13:54:47','YYYY-MM-DD HH24:MI:SS'),100,448,'Y','1',1120297,'NfeRetRecepcao',TO_DATE('2013-08-29 13:54:47','YYYY-MM-DD HH24:MI:SS'),100,'https://hom.sefazvirtual.fazenda.gov.br/NfeRetRecepcao2/NfeRetRecepcao2.asmx','2.00')
;

-- 29/08/2013 13h55min43s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 13:55:43','YYYY-MM-DD HH24:MI:SS'),100,448,'Y','1',1120298,'NfeInutilizacao',TO_DATE('2013-08-29 13:55:43','YYYY-MM-DD HH24:MI:SS'),100,'https://hom.sefazvirtual.fazenda.gov.br/NfeInutilizacao2/NfeInutilizacao2.asmx','2.00')
;

-- 29/08/2013 13h56min13s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 13:56:13','YYYY-MM-DD HH24:MI:SS'),100,448,'Y','1',1120299,'NfeConsultaProtocolo',TO_DATE('2013-08-29 13:56:13','YYYY-MM-DD HH24:MI:SS'),100,'https://hom.sefazvirtual.fazenda.gov.br/NfeConsulta2/NfeConsulta2.asmx','2.00')
;

-- 29/08/2013 13h56min32s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 13:56:32','YYYY-MM-DD HH24:MI:SS'),100,448,'Y','1',1120300,'NfeStatusServico',TO_DATE('2013-08-29 13:56:32','YYYY-MM-DD HH24:MI:SS'),100,'https://hom.sefazvirtual.fazenda.gov.br/NfeStatusServico2/NfeStatusServico2.asmx','2.00')
;

-- 29/08/2013 13h57min0s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 13:57:00','YYYY-MM-DD HH24:MI:SS'),100,448,'Y','1',1120301,'RecepcaoEvento',TO_DATE('2013-08-29 13:57:00','YYYY-MM-DD HH24:MI:SS'),100,'https://hom.sefazvirtual.fazenda.gov.br/RecepcaoEvento/RecepcaoEvento.asmx','2.00')
;

-- 29/08/2013 13h57min23s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 13:57:23','YYYY-MM-DD HH24:MI:SS'),100,448,'Y','1',1120302,'NfeDownloadNF',TO_DATE('2013-08-29 13:57:23','YYYY-MM-DD HH24:MI:SS'),100,'https://hom.sefazvirtual.fazenda.gov.br/NfeDownloadNF/NfeDownloadNF.asmx','2.00')
;

-- 29/08/2013 14h0min0s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 14:00:00','YYYY-MM-DD HH24:MI:SS'),100,450,'Y','1',1120303,'NfeRecepcao',TO_DATE('2013-08-29 14:00:00','YYYY-MM-DD HH24:MI:SS'),100,'https://hom.sefazvirtual.fazenda.gov.br/NfeRecepcao2/NfeRecepcao2.asmx','2.00')
;

-- 29/08/2013 14h0min28s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 14:00:28','YYYY-MM-DD HH24:MI:SS'),100,454,'Y','1',1120304,'NfeRecepcao',TO_DATE('2013-08-29 14:00:28','YYYY-MM-DD HH24:MI:SS'),100,'https://hom.sefazvirtual.fazenda.gov.br/NfeRecepcao2/NfeRecepcao2.asmx','2.00')
;

-- 29/08/2013 14h1min2s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 14:01:02','YYYY-MM-DD HH24:MI:SS'),100,458,'Y','1',1120305,'NfeRecepcao',TO_DATE('2013-08-29 14:01:02','YYYY-MM-DD HH24:MI:SS'),100,'https://hom.sefazvirtual.fazenda.gov.br/NfeRecepcao2/NfeRecepcao2.asmx','2.00')
;

-- 29/08/2013 14h10min22s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 14:10:22','YYYY-MM-DD HH24:MI:SS'),100,450,'Y','1',1120306,'NfeRetRecepcao',TO_DATE('2013-08-29 14:10:22','YYYY-MM-DD HH24:MI:SS'),100,'https://hom.sefazvirtual.fazenda.gov.br/NfeRetRecepcao2/NfeRetRecepcao2.asmx','2.00')
;

-- 29/08/2013 14h10min42s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 14:10:42','YYYY-MM-DD HH24:MI:SS'),100,454,'Y','1',1120307,'NfeRetRecepcao',TO_DATE('2013-08-29 14:10:42','YYYY-MM-DD HH24:MI:SS'),100,'https://hom.sefazvirtual.fazenda.gov.br/NfeRetRecepcao2/NfeRetRecepcao2.asmx','2.00')
;

-- 29/08/2013 14h10min59s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 14:10:58','YYYY-MM-DD HH24:MI:SS'),100,458,'Y','1',1120308,'NfeRetRecepcao',TO_DATE('2013-08-29 14:10:58','YYYY-MM-DD HH24:MI:SS'),100,'https://hom.sefazvirtual.fazenda.gov.br/NfeRetRecepcao2/NfeRetRecepcao2.asmx','2.00')
;

-- 29/08/2013 14h12min15s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 14:12:15','YYYY-MM-DD HH24:MI:SS'),100,450,'Y','1',1120309,'NfeInutilizacao',TO_DATE('2013-08-29 14:12:15','YYYY-MM-DD HH24:MI:SS'),100,'https://hom.sefazvirtual.fazenda.gov.br/NfeInutilizacao2/NfeInutilizacao2.asmx','2.00')
;

-- 29/08/2013 14h12min41s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 14:12:41','YYYY-MM-DD HH24:MI:SS'),100,454,'Y','1',1120310,'NfeInutilizacao',TO_DATE('2013-08-29 14:12:41','YYYY-MM-DD HH24:MI:SS'),100,'https://hom.sefazvirtual.fazenda.gov.br/NfeInutilizacao2/NfeInutilizacao2.asmx','2.00')
;

-- 29/08/2013 14h14min2s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 14:14:02','YYYY-MM-DD HH24:MI:SS'),100,458,'Y','1',1120311,'NfeInutilizacao',TO_DATE('2013-08-29 14:14:02','YYYY-MM-DD HH24:MI:SS'),100,'https://hom.sefazvirtual.fazenda.gov.br/NfeInutilizacao2/NfeInutilizacao2.asmx','2.00')
;

-- 29/08/2013 14h15min12s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 14:15:11','YYYY-MM-DD HH24:MI:SS'),100,450,'Y','1',1120312,'NfeConsultaProtocolo',TO_DATE('2013-08-29 14:15:11','YYYY-MM-DD HH24:MI:SS'),100,'https://hom.sefazvirtual.fazenda.gov.br/NfeConsulta2/NfeConsulta2.asmx','2.00')
;

-- 29/08/2013 14h15min32s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 14:15:31','YYYY-MM-DD HH24:MI:SS'),100,454,'Y','1',1120313,'NfeConsultaProtocolo',TO_DATE('2013-08-29 14:15:31','YYYY-MM-DD HH24:MI:SS'),100,'https://hom.sefazvirtual.fazenda.gov.br/NfeConsulta2/NfeConsulta2.asmx','2.00')
;

-- 29/08/2013 14h15min53s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 14:15:52','YYYY-MM-DD HH24:MI:SS'),100,458,'Y','1',1120314,'NfeConsultaProtocolo',TO_DATE('2013-08-29 14:15:52','YYYY-MM-DD HH24:MI:SS'),100,'https://hom.sefazvirtual.fazenda.gov.br/NfeConsulta2/NfeConsulta2.asmx','2.00')
;

-- 29/08/2013 14h16min19s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 14:16:18','YYYY-MM-DD HH24:MI:SS'),100,450,'Y','1',1120315,'NfeStatusServico',TO_DATE('2013-08-29 14:16:18','YYYY-MM-DD HH24:MI:SS'),100,'https://hom.sefazvirtual.fazenda.gov.br/NfeStatusServico2/NfeStatusServico2.asmx','2.00')
;

-- 29/08/2013 14h16min38s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 14:16:38','YYYY-MM-DD HH24:MI:SS'),100,454,'Y','1',1120316,'NfeStatusServico',TO_DATE('2013-08-29 14:16:38','YYYY-MM-DD HH24:MI:SS'),100,'https://hom.sefazvirtual.fazenda.gov.br/NfeStatusServico2/NfeStatusServico2.asmx','2.00')
;

-- 29/08/2013 14h16min56s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 14:16:56','YYYY-MM-DD HH24:MI:SS'),100,458,'Y','1',1120317,'NfeStatusServico',TO_DATE('2013-08-29 14:16:56','YYYY-MM-DD HH24:MI:SS'),100,'https://hom.sefazvirtual.fazenda.gov.br/NfeStatusServico2/NfeStatusServico2.asmx','2.00')
;

-- 29/08/2013 14h17min30s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 14:17:29','YYYY-MM-DD HH24:MI:SS'),100,450,'Y','1',1120318,'RecepcaoEvento',TO_DATE('2013-08-29 14:17:29','YYYY-MM-DD HH24:MI:SS'),100,'https://hom.sefazvirtual.fazenda.gov.br/RecepcaoEvento/RecepcaoEvento.asmx','2.00')
;

-- 29/08/2013 14h17min44s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 14:17:44','YYYY-MM-DD HH24:MI:SS'),100,454,'Y','1',1120319,'RecepcaoEvento',TO_DATE('2013-08-29 14:17:44','YYYY-MM-DD HH24:MI:SS'),100,'https://hom.sefazvirtual.fazenda.gov.br/RecepcaoEvento/RecepcaoEvento.asmx','2.00')
;

-- 29/08/2013 14h17min59s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 14:17:59','YYYY-MM-DD HH24:MI:SS'),100,458,'Y','1',1120320,'RecepcaoEvento',TO_DATE('2013-08-29 14:17:59','YYYY-MM-DD HH24:MI:SS'),100,'https://hom.sefazvirtual.fazenda.gov.br/RecepcaoEvento/RecepcaoEvento.asmx','2.00')
;

-- 29/08/2013 14h19min56s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 14:19:56','YYYY-MM-DD HH24:MI:SS'),100,450,'Y','1',1120321,'NfeDownloadNF',TO_DATE('2013-08-29 14:19:56','YYYY-MM-DD HH24:MI:SS'),100,'https://hom.sefazvirtual.fazenda.gov.br/NfeDownloadNF/NfeDownloadNF.asmx','2.00')
;

-- 29/08/2013 14h20min12s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 14:20:12','YYYY-MM-DD HH24:MI:SS'),100,454,'Y','1',1120322,'NfeDownloadNF',TO_DATE('2013-08-29 14:20:12','YYYY-MM-DD HH24:MI:SS'),100,'https://hom.sefazvirtual.fazenda.gov.br/NfeDownloadNF/NfeDownloadNF.asmx','2.00')
;

-- 29/08/2013 14h20min31s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 14:20:30','YYYY-MM-DD HH24:MI:SS'),100,458,'Y','1',1120323,'NfeDownloadNF',TO_DATE('2013-08-29 14:20:30','YYYY-MM-DD HH24:MI:SS'),100,'https://hom.sefazvirtual.fazenda.gov.br/NfeDownloadNF/NfeDownloadNF.asmx','2.00')
;

-- 29/08/2013 14h26min56s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE LBR_NFeWebService SET lbr_NFeEnv='2',Updated=TO_DATE('2013-08-29 14:26:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120323
;

-- 29/08/2013 14h26min59s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE LBR_NFeWebService SET lbr_NFeEnv='2',Updated=TO_DATE('2013-08-29 14:26:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120322
;

-- 29/08/2013 14h27min5s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE LBR_NFeWebService SET lbr_NFeEnv='2',Updated=TO_DATE('2013-08-29 14:27:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120321
;

-- 29/08/2013 14h27min16s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE LBR_NFeWebService SET lbr_NFeEnv='2',Updated=TO_DATE('2013-08-29 14:27:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120320
;

-- 29/08/2013 14h27min21s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE LBR_NFeWebService SET lbr_NFeEnv='2',Updated=TO_DATE('2013-08-29 14:27:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120319
;

-- 29/08/2013 14h27min28s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE LBR_NFeWebService SET lbr_NFeEnv='2',Updated=TO_DATE('2013-08-29 14:27:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120318
;

-- 29/08/2013 14h28min25s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE LBR_NFeWebService SET C_Region_ID=457,Updated=TO_DATE('2013-08-29 14:28:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120250
;

-- 29/08/2013 14h29min13s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE LBR_NFeWebService SET URL='https://www.sefazvirtual.fazenda.gov.br/NfeRecepcao2/NfeRecepcao2.asmx',Updated=TO_DATE('2013-08-29 14:29:13','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120296
;

-- 29/08/2013 14h29min37s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE LBR_NFeWebService SET URL='https://www.sefazvirtual.fazenda.gov.br/NfeRetRecepcao2/NfeRetRecepcao2.asmx',Updated=TO_DATE('2013-08-29 14:29:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120297
;

-- 29/08/2013 14h29min56s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE LBR_NFeWebService SET URL='https://www.sefazvirtual.fazenda.gov.br/NfeInutilizacao2/NfeInutilizacao2.asmx',Updated=TO_DATE('2013-08-29 14:29:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120298
;

-- 29/08/2013 14h30min9s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE LBR_NFeWebService SET URL='https://www.sefazvirtual.fazenda.gov.br/NfeConsulta2/NfeConsulta2.asmx',Updated=TO_DATE('2013-08-29 14:30:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120299
;

-- 29/08/2013 14h30min19s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE LBR_NFeWebService SET URL='https://www.sefazvirtual.fazenda.gov.br/NfeStatusServico2/NfeStatusServico2.asmx',Updated=TO_DATE('2013-08-29 14:30:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120300
;

-- 29/08/2013 14h30min32s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE LBR_NFeWebService SET URL='https://www.sefazvirtual.fazenda.gov.br/RecepcaoEvento/RecepcaoEvento.asmx',Updated=TO_DATE('2013-08-29 14:30:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120301
;

-- 29/08/2013 14h30min50s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE LBR_NFeWebService SET URL='https://www.sefazvirtual.fazenda.gov.br/NfeDownloadNF/NfeDownloadNF.asmx',Updated=TO_DATE('2013-08-29 14:30:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120302
;

-- 29/08/2013 14h31min7s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE LBR_NFeWebService SET URL='https://www.sefazvirtual.fazenda.gov.br/NfeRecepcao2/NfeRecepcao2.asmx',Updated=TO_DATE('2013-08-29 14:31:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120303
;

-- 29/08/2013 14h31min12s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE LBR_NFeWebService SET URL='https://www.sefazvirtual.fazenda.gov.br/NfeRecepcao2/NfeRecepcao2.asmx',Updated=TO_DATE('2013-08-29 14:31:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120304
;

-- 29/08/2013 14h31min18s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE LBR_NFeWebService SET URL='https://www.sefazvirtual.fazenda.gov.br/NfeRecepcao2/NfeRecepcao2.asmx',Updated=TO_DATE('2013-08-29 14:31:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1000057
;

-- 29/08/2013 14h32min39s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE LBR_NFeWebService SET URL='https://www.sefazvirtual.fazenda.gov.br/NfeRecepcao2/NfeRecepcao2.asmx',Updated=TO_DATE('2013-08-29 14:32:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120305
;

-- 29/08/2013 14h32min50s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE LBR_NFeWebService SET URL='https://www.sefazvirtual.fazenda.gov.br/NfeRetRecepcao2/NfeRetRecepcao2.asmx',Updated=TO_DATE('2013-08-29 14:32:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120306
;

-- 29/08/2013 14h32min55s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE LBR_NFeWebService SET URL='https://www.sefazvirtual.fazenda.gov.br/NfeRetRecepcao2/NfeRetRecepcao2.asmx',Updated=TO_DATE('2013-08-29 14:32:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120307
;

-- 29/08/2013 14h33min0s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE LBR_NFeWebService SET URL='https://www.sefazvirtual.fazenda.gov.br/NfeRetRecepcao2/NfeRetRecepcao2.asmx',Updated=TO_DATE('2013-08-29 14:33:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120308
;

-- 29/08/2013 14h33min38s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE LBR_NFeWebService SET URL='https://www.sefazvirtual.fazenda.gov.br/NfeRetRecepcao2/NfeRetRecepcao2.asmx',Updated=TO_DATE('2013-08-29 14:33:38','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120309
;

-- 29/08/2013 14h33min42s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE LBR_NFeWebService SET URL='https://www.sefazvirtual.fazenda.gov.br/NfeRetRecepcao2/NfeRetRecepcao2.asmx',Updated=TO_DATE('2013-08-29 14:33:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120310
;

-- 29/08/2013 14h33min51s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE LBR_NFeWebService SET URL='https://www.sefazvirtual.fazenda.gov.br/NfeRetRecepcao2/NfeRetRecepcao2.asmx',Updated=TO_DATE('2013-08-29 14:33:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120311
;

-- 29/08/2013 14h34min15s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE LBR_NFeWebService SET URL='https://www.sefazvirtual.fazenda.gov.br/NfeConsulta2/NfeConsulta2.asmx',Updated=TO_DATE('2013-08-29 14:34:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120312
;

-- 29/08/2013 14h34min18s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE LBR_NFeWebService SET URL='https://www.sefazvirtual.fazenda.gov.br/NfeConsulta2/NfeConsulta2.asmx',Updated=TO_DATE('2013-08-29 14:34:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120313
;

-- 29/08/2013 14h34min22s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE LBR_NFeWebService SET URL='https://www.sefazvirtual.fazenda.gov.br/NfeConsulta2/NfeConsulta2.asmx',Updated=TO_DATE('2013-08-29 14:34:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120314
;

-- 29/08/2013 14h34min33s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE LBR_NFeWebService SET URL='https://www.sefazvirtual.fazenda.gov.br/NfeStatusServico2/NfeStatusServico2.asmx',Updated=TO_DATE('2013-08-29 14:34:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120315
;

-- 29/08/2013 14h34min37s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE LBR_NFeWebService SET URL='https://www.sefazvirtual.fazenda.gov.br/NfeStatusServico2/NfeStatusServico2.asmx',Updated=TO_DATE('2013-08-29 14:34:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120316
;

-- 29/08/2013 14h34min45s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE LBR_NFeWebService SET URL='https://www.sefazvirtual.fazenda.gov.br/NfeStatusServico2/NfeStatusServico2.asmx',Updated=TO_DATE('2013-08-29 14:34:45','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120317
;

-- 29/08/2013 14h34min53s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE LBR_NFeWebService SET lbr_NFeEnv='1', URL='https://www.sefazvirtual.fazenda.gov.br/RecepcaoEvento/RecepcaoEvento.asmx',Updated=TO_DATE('2013-08-29 14:34:53','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120318
;

-- 29/08/2013 14h35min1s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE LBR_NFeWebService SET lbr_NFeEnv='1', URL='https://www.sefazvirtual.fazenda.gov.br/RecepcaoEvento/RecepcaoEvento.asmx',Updated=TO_DATE('2013-08-29 14:35:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120319
;

-- 29/08/2013 14h35min11s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE LBR_NFeWebService SET lbr_NFeEnv='1', URL='https://www.sefazvirtual.fazenda.gov.br/RecepcaoEvento/RecepcaoEvento.asmx',Updated=TO_DATE('2013-08-29 14:35:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120320
;

-- 29/08/2013 14h35min26s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE LBR_NFeWebService SET lbr_NFeEnv='1', URL='https://www.sefazvirtual.fazenda.gov.br/NfeDownloadNF/NfeDownloadNF.asmx',Updated=TO_DATE('2013-08-29 14:35:26','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120321
;

-- 29/08/2013 14h35min33s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE LBR_NFeWebService SET lbr_NFeEnv='1', URL='https://www.sefazvirtual.fazenda.gov.br/NfeDownloadNF/NfeDownloadNF.asmx',Updated=TO_DATE('2013-08-29 14:35:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120322
;

-- 29/08/2013 14h35min39s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE LBR_NFeWebService SET lbr_NFeEnv='1', URL='https://www.sefazvirtual.fazenda.gov.br/NfeDownloadNF/NfeDownloadNF.asmx',Updated=TO_DATE('2013-08-29 14:35:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120323
;

-- 29/08/2013 14h39min47s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 14:39:47','YYYY-MM-DD HH24:MI:SS'),100,441,'Y','1',1120324,'NfeRecepcao',TO_DATE('2013-08-29 14:39:47','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/Nferecepcao/NFeRecepcao2.asmx','2.00')
;

-- 29/08/2013 14h40min16s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 14:40:16','YYYY-MM-DD HH24:MI:SS'),100,441,'Y','1',1120325,'NfeRetRecepcao',TO_DATE('2013-08-29 14:40:16','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/NfeRetRecepcao/NfeRetRecepcao2.asmx','2.00')
;

-- 29/08/2013 14h40min46s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 14:40:46','YYYY-MM-DD HH24:MI:SS'),100,441,'Y','1',1120326,'NfeInutilizacao',TO_DATE('2013-08-29 14:40:46','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/nfeinutilizacao/nfeinutilizacao2.asmx','2.00')
;

-- 29/08/2013 14h41min8s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 14:41:08','YYYY-MM-DD HH24:MI:SS'),100,441,'Y','1',1120327,'NfeConsultaProtocolo',TO_DATE('2013-08-29 14:41:08','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/NfeConsulta/NfeConsulta2.asmx','2.00')
;

-- 29/08/2013 14h41min31s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 14:41:31','YYYY-MM-DD HH24:MI:SS'),100,441,'Y','1',1120328,'NfeStatusServico',TO_DATE('2013-08-29 14:41:31','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/NfeStatusServico/NfeStatusServico2.asmx','2.00')
;

-- 29/08/2013 14h41min56s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 14:41:56','YYYY-MM-DD HH24:MI:SS'),100,441,'Y','1',1120329,'RecepcaoEvento',TO_DATE('2013-08-29 14:41:56','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/recepcaoevento/recepcaoevento.asmx','2.00')
;

-- 29/08/2013 14h44min16s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 14:44:16','YYYY-MM-DD HH24:MI:SS'),100,442,'Y','1',1120330,'NfeRecepcao',TO_DATE('2013-08-29 14:44:16','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/Nferecepcao/NFeRecepcao2.asmx','2.00')
;

-- 29/08/2013 14h44min53s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 14:44:53','YYYY-MM-DD HH24:MI:SS'),100,442,'Y','1',1120331,'NfeRetRecepcao',TO_DATE('2013-08-29 14:44:53','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/NfeRetRecepcao/NfeRetRecepcao2.asmx','2.00')
;

-- 29/08/2013 14h45min15s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 14:45:15','YYYY-MM-DD HH24:MI:SS'),100,442,'Y','1',1120332,'NfeInutilizacao',TO_DATE('2013-08-29 14:45:15','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/nfeinutilizacao/nfeinutilizacao2.asmx','2.00')
;

-- 29/08/2013 14h45min37s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 14:45:37','YYYY-MM-DD HH24:MI:SS'),100,442,'Y','1',1120333,'NfeConsultaProtocolo',TO_DATE('2013-08-29 14:45:37','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/NfeConsulta/NfeConsulta2.asmx','2.00')
;

-- 29/08/2013 14h47min11s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 14:47:11','YYYY-MM-DD HH24:MI:SS'),100,442,'Y','1',1120334,'NfeStatusServico',TO_DATE('2013-08-29 14:47:11','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/NfeStatusServico/NfeStatusServico2.asmx','2.00')
;

-- 29/08/2013 14h48min44s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 14:48:44','YYYY-MM-DD HH24:MI:SS'),100,443,'Y','1',1120335,'NfeRecepcao',TO_DATE('2013-08-29 14:48:44','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/Nferecepcao/NFeRecepcao2.asmx','2.00')
;

-- 29/08/2013 14h49min3s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 14:49:03','YYYY-MM-DD HH24:MI:SS'),100,443,'Y','1',1120336,'NfeRetRecepcao',TO_DATE('2013-08-29 14:49:03','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/NfeRetRecepcao/NfeRetRecepcao2.asmx','2.00')
;

-- 29/08/2013 14h49min22s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 14:49:22','YYYY-MM-DD HH24:MI:SS'),100,443,'Y','1',1120337,'NfeInutilizacao',TO_DATE('2013-08-29 14:49:22','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/nfeinutilizacao/nfeinutilizacao2.asmx','2.00')
;

-- 29/08/2013 14h49min47s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 14:49:47','YYYY-MM-DD HH24:MI:SS'),100,443,'Y','1',1120338,'NfeConsultaProtocolo',TO_DATE('2013-08-29 14:49:47','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/NfeConsulta/NfeConsulta2.asmx','2.00')
;

-- 29/08/2013 14h50min11s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 14:50:10','YYYY-MM-DD HH24:MI:SS'),100,443,'Y','1',1120339,'NfeStatusServico',TO_DATE('2013-08-29 14:50:10','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/NfeStatusServico/NfeStatusServico2.asmx','2.00')
;

-- 29/08/2013 14h50min32s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 14:50:31','YYYY-MM-DD HH24:MI:SS'),100,443,'Y','1',1120340,'RecepcaoEvento',TO_DATE('2013-08-29 14:50:31','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/recepcaoevento/recepcaoevento.asmx','2.00')
;

-- 29/08/2013 14h51min34s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 14:51:34','YYYY-MM-DD HH24:MI:SS'),100,447,'Y','1',1120341,'NfeRecepcao ',TO_DATE('2013-08-29 14:51:34','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/Nferecepcao/NFeRecepcao2.asmx','2.00')
;

-- 29/08/2013 14h51min57s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 14:51:57','YYYY-MM-DD HH24:MI:SS'),100,447,'Y','1',1120342,'NfeRetRecepcao',TO_DATE('2013-08-29 14:51:57','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/NfeRetRecepcao/NfeRetRecepcao2.asmx','2.00')
;

-- 29/08/2013 14h52min20s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 14:52:20','YYYY-MM-DD HH24:MI:SS'),100,447,'Y','1',1120343,'NfeInutilizacao',TO_DATE('2013-08-29 14:52:20','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/nfeinutilizacao/nfeinutilizacao2.asmx','2.00')
;

-- 29/08/2013 14h52min45s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 14:52:45','YYYY-MM-DD HH24:MI:SS'),100,447,'Y','1',1120344,'NfeConsultaProtocolo',TO_DATE('2013-08-29 14:52:45','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/NfeConsulta/NfeConsulta2.asmx','2.00')
;

-- 29/08/2013 14h53min9s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 14:53:09','YYYY-MM-DD HH24:MI:SS'),100,447,'Y','1',1120345,'NfeStatusServico',TO_DATE('2013-08-29 14:53:09','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/NfeStatusServico/NfeStatusServico2.asmx','2.00')
;

-- 29/08/2013 14h53min34s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 14:53:34','YYYY-MM-DD HH24:MI:SS'),100,447,'Y','1',1120346,'RecepcaoEvento',TO_DATE('2013-08-29 14:53:34','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/recepcaoevento/recepcaoevento.asmx','2.00')
;

-- 29/08/2013 14h54min51s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 14:54:51','YYYY-MM-DD HH24:MI:SS'),100,455,'Y','1',1120347,'NfeRecepcao',TO_DATE('2013-08-29 14:54:51','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/Nferecepcao/NFeRecepcao2.asmx','2.00')
;

-- 29/08/2013 14h55min9s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 14:55:09','YYYY-MM-DD HH24:MI:SS'),100,455,'Y','1',1120348,'NfeRetRecepcao',TO_DATE('2013-08-29 14:55:09','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/NfeRetRecepcao/NfeRetRecepcao2.asmx','2.00')
;

-- 29/08/2013 14h55min34s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 14:55:34','YYYY-MM-DD HH24:MI:SS'),100,455,'Y','1',1120349,'NfeInutilizacao',TO_DATE('2013-08-29 14:55:34','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/nfeinutilizacao/nfeinutilizacao2.asmx','2.00')
;

-- 29/08/2013 14h55min50s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 14:55:50','YYYY-MM-DD HH24:MI:SS'),100,455,'Y','1',1120350,'NfeConsultaProtocolo',TO_DATE('2013-08-29 14:55:50','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/NfeConsulta/NfeConsulta2.asmx','2.00')
;

-- 29/08/2013 14h56min12s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 14:56:12','YYYY-MM-DD HH24:MI:SS'),100,455,'Y','1',1120351,'NfeStatusServico',TO_DATE('2013-08-29 14:56:12','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/NfeStatusServico/NfeStatusServico2.asmx','2.00')
;

-- 29/08/2013 14h56min37s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 14:56:37','YYYY-MM-DD HH24:MI:SS'),100,455,'Y','1',1120352,'RecepcaoEvento',TO_DATE('2013-08-29 14:56:37','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/recepcaoevento/recepcaoevento.asmx','2.00')
;

-- 29/08/2013 14h58min3s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 14:58:03','YYYY-MM-DD HH24:MI:SS'),100,459,'Y','1',1120353,'NfeRecepcao',TO_DATE('2013-08-29 14:58:03','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/Nferecepcao/NFeRecepcao2.asmx','2.00')
;

-- 29/08/2013 14h58min21s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 14:58:21','YYYY-MM-DD HH24:MI:SS'),100,459,'Y','1',1120354,'NfeRetRecepcao',TO_DATE('2013-08-29 14:58:21','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/NfeRetRecepcao/NfeRetRecepcao2.asmx','2.00')
;

-- 29/08/2013 14h58min41s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 14:58:41','YYYY-MM-DD HH24:MI:SS'),100,459,'Y','1',1120355,'NfeInutilizacao',TO_DATE('2013-08-29 14:58:41','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/nfeinutilizacao/nfeinutilizacao2.asmx','2.00')
;

-- 29/08/2013 14h59min4s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 14:59:04','YYYY-MM-DD HH24:MI:SS'),100,459,'Y','1',1120356,'NfeConsultaProtocolo',TO_DATE('2013-08-29 14:59:04','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/NfeConsulta/NfeConsulta2.asmx','2.00')
;

-- 29/08/2013 14h59min26s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 14:59:26','YYYY-MM-DD HH24:MI:SS'),100,459,'Y','1',1120357,'NfeStatusServico',TO_DATE('2013-08-29 14:59:26','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/NfeStatusServico/NfeStatusServico2.asmx','2.00')
;

-- 29/08/2013 14h59min47s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 14:59:47','YYYY-MM-DD HH24:MI:SS'),100,459,'Y','1',1120358,'RecepcaoEvento',TO_DATE('2013-08-29 14:59:47','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/recepcaoevento/recepcaoevento.asmx','2.00')
;

-- 29/08/2013 15h0min42s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 15:00:41','YYYY-MM-DD HH24:MI:SS'),100,460,'Y','1',1120359,'NfeRecepcao',TO_DATE('2013-08-29 15:00:41','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/Nferecepcao/NFeRecepcao2.asmx','2.00')
;

-- 29/08/2013 15h1min7s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 15:01:07','YYYY-MM-DD HH24:MI:SS'),100,460,'Y','1',1120360,'NfeRetRecepcao',TO_DATE('2013-08-29 15:01:07','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/NfeRetRecepcao/NfeRetRecepcao2.asmx','2.00')
;

-- 29/08/2013 15h1min27s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 15:01:27','YYYY-MM-DD HH24:MI:SS'),100,460,'Y','1',1120361,'NfeInutilizacao',TO_DATE('2013-08-29 15:01:27','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/nfeinutilizacao/nfeinutilizacao2.asmx','2.00')
;

-- 29/08/2013 15h1min54s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 15:01:54','YYYY-MM-DD HH24:MI:SS'),100,460,'Y','1',1120362,'NfeConsultaProtocolo',TO_DATE('2013-08-29 15:01:54','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/NfeConsulta/NfeConsulta2.asmx','2.00')
;

-- 29/08/2013 15h2min16s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 15:02:16','YYYY-MM-DD HH24:MI:SS'),100,460,'Y','1',1120363,'NfeStatusServico',TO_DATE('2013-08-29 15:02:16','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/NfeStatusServico/NfeStatusServico2.asmx','2.00')
;

-- 29/08/2013 15h2min36s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 15:02:36','YYYY-MM-DD HH24:MI:SS'),100,460,'Y','1',1120364,'RecepcaoEvento',TO_DATE('2013-08-29 15:02:36','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/recepcaoevento/recepcaoevento.asmx','2.00')
;

-- 29/08/2013 15h3min25s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 15:03:25','YYYY-MM-DD HH24:MI:SS'),100,462,'Y','1',1120365,'NfeRecepcao',TO_DATE('2013-08-29 15:03:25','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/Nferecepcao/NFeRecepcao2.asmx','2.00')
;

-- 29/08/2013 15h3min51s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 15:03:51','YYYY-MM-DD HH24:MI:SS'),100,462,'Y','1',1120366,'NfeRetRecepcao',TO_DATE('2013-08-29 15:03:51','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/NfeRetRecepcao/NfeRetRecepcao2.asmx','2.00')
;

-- 29/08/2013 15h4min13s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 15:04:13','YYYY-MM-DD HH24:MI:SS'),100,462,'Y','1',1120367,'NfeInutilizacao',TO_DATE('2013-08-29 15:04:13','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/nfeinutilizacao/nfeinutilizacao2.asmx','2.00')
;

-- 29/08/2013 15h4min41s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 15:04:41','YYYY-MM-DD HH24:MI:SS'),100,462,'Y','1',1120368,'NfeConsultaProtocolo',TO_DATE('2013-08-29 15:04:41','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/NfeConsulta/NfeConsulta2.asmx','2.00')
;

-- 29/08/2013 15h5min1s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 15:05:01','YYYY-MM-DD HH24:MI:SS'),100,462,'Y','1',1120369,'NfeStatusServico',TO_DATE('2013-08-29 15:05:01','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/NfeStatusServico/NfeStatusServico2.asmx','2.00')
;

-- 29/08/2013 15h5min19s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 15:05:19','YYYY-MM-DD HH24:MI:SS'),100,462,'Y','1',1120370,'RecepcaoEvento',TO_DATE('2013-08-29 15:05:19','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/recepcaoevento/recepcaoevento.asmx','2.00')
;

-- 29/08/2013 15h5min51s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 15:05:51','YYYY-MM-DD HH24:MI:SS'),100,463,'Y','1',1120371,'NfeRecepcao',TO_DATE('2013-08-29 15:05:51','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/Nferecepcao/NFeRecepcao2.asmx','2.00')
;

-- 29/08/2013 15h6min11s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 15:06:11','YYYY-MM-DD HH24:MI:SS'),100,463,'Y','1',1120372,'NfeRetRecepcao',TO_DATE('2013-08-29 15:06:11','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/NfeRetRecepcao/NfeRetRecepcao2.asmx','2.00')
;

-- 29/08/2013 15h6min31s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 15:06:31','YYYY-MM-DD HH24:MI:SS'),100,463,'Y','1',1120373,'NfeInutilizacao',TO_DATE('2013-08-29 15:06:31','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/nfeinutilizacao/nfeinutilizacao2.asmx','2.00')
;

-- 29/08/2013 15h6min52s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 15:06:52','YYYY-MM-DD HH24:MI:SS'),100,463,'Y','1',1120374,'NfeConsultaProtocolo',TO_DATE('2013-08-29 15:06:52','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/NfeConsulta/NfeConsulta2.asmx','2.00')
;

-- 29/08/2013 15h7min10s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 15:07:10','YYYY-MM-DD HH24:MI:SS'),100,463,'Y','1',1120375,'NfeStatusServico',TO_DATE('2013-08-29 15:07:10','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/NfeStatusServico/NfeStatusServico2.asmx','2.00')
;

-- 29/08/2013 15h7min33s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 15:07:33','YYYY-MM-DD HH24:MI:SS'),100,463,'Y','1',1120376,'RecepcaoEvento',TO_DATE('2013-08-29 15:07:33','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/recepcaoevento/recepcaoevento.asmx','2.00')
;

-- 29/08/2013 15h8min12s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 15:08:12','YYYY-MM-DD HH24:MI:SS'),100,464,'Y','1',1120377,'NfeRecepcao',TO_DATE('2013-08-29 15:08:12','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/Nferecepcao/NFeRecepcao2.asmx','2.00')
;

-- 29/08/2013 15h8min37s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 15:08:37','YYYY-MM-DD HH24:MI:SS'),100,464,'Y','1',1120378,'NfeRetRecepcao',TO_DATE('2013-08-29 15:08:37','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/NfeRetRecepcao/NfeRetRecepcao2.asmx','2.00')
;

-- 29/08/2013 15h9min5s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 15:09:04','YYYY-MM-DD HH24:MI:SS'),100,464,'Y','1',1120379,'NfeInutilizacao',TO_DATE('2013-08-29 15:09:04','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/nfeinutilizacao/nfeinutilizacao2.asmx','2.00')
;

-- 29/08/2013 15h9min25s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 15:09:25','YYYY-MM-DD HH24:MI:SS'),100,464,'Y','1',1120380,'NfeConsultaProtocolo',TO_DATE('2013-08-29 15:09:25','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/NfeConsulta/NfeConsulta2.asmx','2.00')
;

-- 29/08/2013 15h9min47s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 15:09:47','YYYY-MM-DD HH24:MI:SS'),100,464,'Y','1',1120381,'NfeStatusServico',TO_DATE('2013-08-29 15:09:47','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/NfeStatusServico/NfeStatusServico2.asmx','2.00')
;

-- 29/08/2013 15h10min11s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 15:10:11','YYYY-MM-DD HH24:MI:SS'),100,464,'Y','1',1120382,'RecepcaoEvento',TO_DATE('2013-08-29 15:10:11','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/recepcaoevento/recepcaoevento.asmx','2.00')
;

-- 29/08/2013 15h10min42s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 15:10:42','YYYY-MM-DD HH24:MI:SS'),100,466,'Y','1',1120383,'NfeRecepcao',TO_DATE('2013-08-29 15:10:42','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/Nferecepcao/NFeRecepcao2.asmx','2.00')
;

-- 29/08/2013 15h11min5s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 15:11:05','YYYY-MM-DD HH24:MI:SS'),100,466,'Y','1',1120384,'NfeRetRecepcao',TO_DATE('2013-08-29 15:11:05','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/NfeRetRecepcao/NfeRetRecepcao2.asmx','2.00')
;

-- 29/08/2013 15h11min24s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 15:11:24','YYYY-MM-DD HH24:MI:SS'),100,466,'Y','1',1120385,'NfeInutilizacao',TO_DATE('2013-08-29 15:11:24','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/nfeinutilizacao/nfeinutilizacao2.asmx','2.00')
;

-- 29/08/2013 15h11min46s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 15:11:46','YYYY-MM-DD HH24:MI:SS'),100,466,'Y','1',1120386,'NfeConsultaProtocolo',TO_DATE('2013-08-29 15:11:46','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/NfeConsulta/NfeConsulta2.asmx','2.00')
;

-- 29/08/2013 15h12min4s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 15:12:03','YYYY-MM-DD HH24:MI:SS'),100,466,'Y','1',1120387,'NfeStatusServico',TO_DATE('2013-08-29 15:12:03','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/NfeStatusServico/NfeStatusServico2.asmx','2.00')
;

-- 29/08/2013 15h12min27s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 15:12:27','YYYY-MM-DD HH24:MI:SS'),100,466,'Y','1',1120388,'RecepcaoEvento',TO_DATE('2013-08-29 15:12:27','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/recepcaoevento/recepcaoevento.asmx','2.00')
;

-- 29/08/2013 15h13min2s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 15:13:02','YYYY-MM-DD HH24:MI:SS'),100,467,'Y','1',1120389,'NfeRecepcao',TO_DATE('2013-08-29 15:13:02','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/Nferecepcao/NFeRecepcao2.asmx','2.00')
;

-- 29/08/2013 15h13min20s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 15:13:20','YYYY-MM-DD HH24:MI:SS'),100,467,'Y','1',1120390,'NfeRetRecepcao',TO_DATE('2013-08-29 15:13:20','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/NfeRetRecepcao/NfeRetRecepcao2.asmx','2.00')
;

-- 29/08/2013 15h13min37s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 15:13:37','YYYY-MM-DD HH24:MI:SS'),100,467,'Y','1',1120391,'NfeInutilizacao',TO_DATE('2013-08-29 15:13:37','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/nfeinutilizacao/nfeinutilizacao2.asmx','2.00')
;

-- 29/08/2013 15h14min6s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 15:14:06','YYYY-MM-DD HH24:MI:SS'),100,467,'Y','1',1120392,'NfeConsultaProtocolo',TO_DATE('2013-08-29 15:14:06','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/NfeConsulta/NfeConsulta2.asmx','2.00')
;

-- 29/08/2013 15h14min23s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 15:14:23','YYYY-MM-DD HH24:MI:SS'),100,467,'Y','1',1120393,'NfeStatusServico',TO_DATE('2013-08-29 15:14:23','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/NfeStatusServico/NfeStatusServico2.asmx','2.00')
;

-- 29/08/2013 15h35min3s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-29 15:35:03','YYYY-MM-DD HH24:MI:SS'),100,467,'Y','1',1120394,'RecepcaoEvento',TO_DATE('2013-08-29 15:35:03','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefazvirtual.rs.gov.br/ws/recepcaoevento/recepcaoevento.asmx','2.00')
;

-- 30/08/2013 11h51min18s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-30 11:51:17','YYYY-MM-DD HH24:MI:SS'),100,450,'Y','2',1120395,'NfeRecepcao',TO_DATE('2013-08-30 11:51:17','YYYY-MM-DD HH24:MI:SS'),100,'https://hom.sefazvirtual.fazenda.gov.br/NfeRecepcao2/NfeRecepcao2.asmx','2.00')
;

-- 30/08/2013 11h51min41s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-30 11:51:41','YYYY-MM-DD HH24:MI:SS'),100,454,'Y','2',1120396,'NfeRecepcao',TO_DATE('2013-08-30 11:51:41','YYYY-MM-DD HH24:MI:SS'),100,'https://hom.sefazvirtual.fazenda.gov.br/NfeRecepcao2/NfeRecepcao2.asmx','2.00')
;

-- 30/08/2013 11h51min58s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-30 11:51:58','YYYY-MM-DD HH24:MI:SS'),100,458,'Y','2',1120397,'NfeRecepcao',TO_DATE('2013-08-30 11:51:58','YYYY-MM-DD HH24:MI:SS'),100,'https://hom.sefazvirtual.fazenda.gov.br/NfeRecepcao2/NfeRecepcao2.asmx','2.00')
;

-- 30/08/2013 11h52min26s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-30 11:52:26','YYYY-MM-DD HH24:MI:SS'),100,450,'Y','2',1120398,'NfeRetRecepcao',TO_DATE('2013-08-30 11:52:26','YYYY-MM-DD HH24:MI:SS'),100,'https://hom.sefazvirtual.fazenda.gov.br/NfeRetRecepcao2/NfeRetRecepcao2.asmx','2.00')
;

-- 30/08/2013 11h52min45s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-30 11:52:45','YYYY-MM-DD HH24:MI:SS'),100,454,'Y','2',1120399,'NfeRetRecepcao',TO_DATE('2013-08-30 11:52:45','YYYY-MM-DD HH24:MI:SS'),100,'https://hom.sefazvirtual.fazenda.gov.br/NfeRetRecepcao2/NfeRetRecepcao2.asmx','2.00')
;

-- 30/08/2013 11h53min3s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-30 11:53:03','YYYY-MM-DD HH24:MI:SS'),100,458,'Y','2',1120400,'NfeRetRecepcao',TO_DATE('2013-08-30 11:53:03','YYYY-MM-DD HH24:MI:SS'),100,'https://hom.sefazvirtual.fazenda.gov.br/NfeRetRecepcao2/NfeRetRecepcao2.asmx','2.00')
;

-- 30/08/2013 11h53min44s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-30 11:53:44','YYYY-MM-DD HH24:MI:SS'),100,450,'Y','2',1120401,'NfeInutilizacao',TO_DATE('2013-08-30 11:53:44','YYYY-MM-DD HH24:MI:SS'),100,'https://hom.sefazvirtual.fazenda.gov.br/NfeInutilizacao2/NfeInutilizacao2.asmx','2.00')
;

-- 30/08/2013 11h53min59s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-30 11:53:59','YYYY-MM-DD HH24:MI:SS'),100,454,'Y','2',1120402,'NfeInutilizacao',TO_DATE('2013-08-30 11:53:59','YYYY-MM-DD HH24:MI:SS'),100,'https://hom.sefazvirtual.fazenda.gov.br/NfeInutilizacao2/NfeInutilizacao2.asmx','2.00')
;

-- 30/08/2013 11h54min17s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-30 11:54:17','YYYY-MM-DD HH24:MI:SS'),100,458,'Y','2',1120403,'NfeInutilizacao',TO_DATE('2013-08-30 11:54:17','YYYY-MM-DD HH24:MI:SS'),100,'https://hom.sefazvirtual.fazenda.gov.br/NfeInutilizacao2/NfeInutilizacao2.asmx','2.00')
;

-- 30/08/2013 11h55min8s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-30 11:55:08','YYYY-MM-DD HH24:MI:SS'),100,450,'Y','2',1120404,'NfeConsultaProtocolo',TO_DATE('2013-08-30 11:55:08','YYYY-MM-DD HH24:MI:SS'),100,'https://hom.sefazvirtual.fazenda.gov.br/NfeConsulta2/NfeConsulta2.asmx','2.00')
;

-- 30/08/2013 11h55min25s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-30 11:55:25','YYYY-MM-DD HH24:MI:SS'),100,454,'Y','2',1120405,'NfeConsultaProtocolo',TO_DATE('2013-08-30 11:55:25','YYYY-MM-DD HH24:MI:SS'),100,'https://hom.sefazvirtual.fazenda.gov.br/NfeConsulta2/NfeConsulta2.asmx','2.00')
;

-- 30/08/2013 11h55min41s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-30 11:55:41','YYYY-MM-DD HH24:MI:SS'),100,458,'Y','2',1120406,'NfeConsultaProtocolo',TO_DATE('2013-08-30 11:55:41','YYYY-MM-DD HH24:MI:SS'),100,'https://hom.sefazvirtual.fazenda.gov.br/NfeConsulta2/NfeConsulta2.asmx','2.00')
;

-- 30/08/2013 11h56min17s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-30 11:56:17','YYYY-MM-DD HH24:MI:SS'),100,450,'Y','2',1120407,'NfeStatusServico',TO_DATE('2013-08-30 11:56:17','YYYY-MM-DD HH24:MI:SS'),100,'https://hom.sefazvirtual.fazenda.gov.br/NfeStatusServico2/NfeStatusServico2.asmx','2.00')
;

-- 30/08/2013 11h56min43s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-30 11:56:43','YYYY-MM-DD HH24:MI:SS'),100,454,'Y','2',1120408,'NfeStatusServico',TO_DATE('2013-08-30 11:56:43','YYYY-MM-DD HH24:MI:SS'),100,'https://hom.sefazvirtual.fazenda.gov.br/NfeStatusServico2/NfeStatusServico2.asmx','2.00')
;

-- 30/08/2013 11h56min58s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-30 11:56:58','YYYY-MM-DD HH24:MI:SS'),100,458,'Y','2',1120409,'NfeStatusServico',TO_DATE('2013-08-30 11:56:58','YYYY-MM-DD HH24:MI:SS'),100,'https://hom.sefazvirtual.fazenda.gov.br/NfeStatusServico2/NfeStatusServico2.asmx','2.00')
;

-- 30/08/2013 11h57min25s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-30 11:57:25','YYYY-MM-DD HH24:MI:SS'),100,450,'Y','2',1120410,'RecepcaoEvento',TO_DATE('2013-08-30 11:57:25','YYYY-MM-DD HH24:MI:SS'),100,'https://hom.sefazvirtual.fazenda.gov.br/RecepcaoEvento/RecepcaoEvento.asmx','2.00')
;

-- 30/08/2013 11h57min37s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-30 11:57:37','YYYY-MM-DD HH24:MI:SS'),100,454,'Y','2',1120411,'RecepcaoEvento',TO_DATE('2013-08-30 11:57:37','YYYY-MM-DD HH24:MI:SS'),100,'https://hom.sefazvirtual.fazenda.gov.br/RecepcaoEvento/RecepcaoEvento.asmx','2.00')
;

-- 30/08/2013 11h57min51s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-30 11:57:51','YYYY-MM-DD HH24:MI:SS'),100,458,'Y','2',1120412,'RecepcaoEvento',TO_DATE('2013-08-30 11:57:51','YYYY-MM-DD HH24:MI:SS'),100,'https://hom.sefazvirtual.fazenda.gov.br/RecepcaoEvento/RecepcaoEvento.asmx','2.00')
;

-- 30/08/2013 11h58min20s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-30 11:58:19','YYYY-MM-DD HH24:MI:SS'),100,450,'Y','2',1120413,'NfeDownloadNF',TO_DATE('2013-08-30 11:58:19','YYYY-MM-DD HH24:MI:SS'),100,'https://hom.sefazvirtual.fazenda.gov.br/NfeDownloadNF/NfeDownloadNF.asmx','2.00')
;

-- 30/08/2013 11h58min43s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-30 11:58:43','YYYY-MM-DD HH24:MI:SS'),100,454,'Y','2',1120414,'NfeDownloadNF',TO_DATE('2013-08-30 11:58:43','YYYY-MM-DD HH24:MI:SS'),100,'https://hom.sefazvirtual.fazenda.gov.br/NfeDownloadNF/NfeDownloadNF.asmx','2.00')
;

-- 30/08/2013 11h58min59s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-30 11:58:59','YYYY-MM-DD HH24:MI:SS'),100,458,'Y','2',1120415,'NfeDownloadNF',TO_DATE('2013-08-30 11:58:59','YYYY-MM-DD HH24:MI:SS'),100,'https://hom.sefazvirtual.fazenda.gov.br/NfeDownloadNF/NfeDownloadNF.asmx','2.00')
;

-- 30/08/2013 12h0min34s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-30 12:00:34','YYYY-MM-DD HH24:MI:SS'),100,448,'Y','2',1120416,'NfeRecepcao',TO_DATE('2013-08-30 12:00:34','YYYY-MM-DD HH24:MI:SS'),100,'https://hom.sefazvirtual.fazenda.gov.br/NfeRecepcao2/NfeRecepcao2.asmx','2.00')
;

-- 30/08/2013 12h0min57s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-30 12:00:57','YYYY-MM-DD HH24:MI:SS'),100,448,'Y','2',1120417,'NfeRetRecepcao',TO_DATE('2013-08-30 12:00:57','YYYY-MM-DD HH24:MI:SS'),100,'https://hom.sefazvirtual.fazenda.gov.br/NfeRetRecepcao2/NfeRetRecepcao2.asmx','2.00')
;

-- 30/08/2013 12h1min19s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-30 12:01:19','YYYY-MM-DD HH24:MI:SS'),100,448,'Y','2',1120418,'NfeInutilizacao',TO_DATE('2013-08-30 12:01:19','YYYY-MM-DD HH24:MI:SS'),100,'https://hom.sefazvirtual.fazenda.gov.br/NfeInutilizacao2/NfeInutilizacao2.asmx','2.00')
;

-- 30/08/2013 12h1min40s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-30 12:01:40','YYYY-MM-DD HH24:MI:SS'),100,448,'Y','2',1120419,'NfeConsultaProtocolo',TO_DATE('2013-08-30 12:01:40','YYYY-MM-DD HH24:MI:SS'),100,'https://hom.sefazvirtual.fazenda.gov.br/NfeConsulta2/NfeConsulta2.asmx','2.00')
;

-- 30/08/2013 12h1min58s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-30 12:01:57','YYYY-MM-DD HH24:MI:SS'),100,448,'Y','2',1120420,'NfeStatusServico',TO_DATE('2013-08-30 12:01:57','YYYY-MM-DD HH24:MI:SS'),100,'https://hom.sefazvirtual.fazenda.gov.br/NfeStatusServico2/NfeStatusServico2.asmx','2.00')
;

-- 30/08/2013 12h2min15s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-30 12:02:15','YYYY-MM-DD HH24:MI:SS'),100,448,'Y','2',1120421,'RecepcaoEvento',TO_DATE('2013-08-30 12:02:15','YYYY-MM-DD HH24:MI:SS'),100,'https://hom.sefazvirtual.fazenda.gov.br/RecepcaoEvento/RecepcaoEvento.asmx','2.00')
;

-- 30/08/2013 12h2min34s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-30 12:02:34','YYYY-MM-DD HH24:MI:SS'),100,448,'Y','2',1120422,'NfeDownloadNF',TO_DATE('2013-08-30 12:02:34','YYYY-MM-DD HH24:MI:SS'),100,'https://hom.sefazvirtual.fazenda.gov.br/NfeDownloadNF/NfeDownloadNF.asmx','2.00')
;

-- 30/08/2013 12h4min24s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-30 12:04:24','YYYY-MM-DD HH24:MI:SS'),100,441,'Y','2',1120423,'NfeRecepcao',TO_DATE('2013-08-30 12:04:24','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/Nferecepcao/NFeRecepcao2.asmx','2.00')
;

-- 30/08/2013 12h4min48s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-30 12:04:48','YYYY-MM-DD HH24:MI:SS'),100,441,'Y','2',1120424,'NfeRetRecepcao',TO_DATE('2013-08-30 12:04:48','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/NfeRetRecepcao/NfeRetRecepcao2.asmx','2.00')
;

-- 30/08/2013 12h5min15s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-30 12:05:15','YYYY-MM-DD HH24:MI:SS'),100,441,'Y','2',1120425,'NfeInutilizacao',TO_DATE('2013-08-30 12:05:15','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/nfeinutilizacao/nfeinutilizacao2.asmx','2.00')
;

-- 30/08/2013 12h5min32s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-30 12:05:32','YYYY-MM-DD HH24:MI:SS'),100,441,'Y','2',1120426,'NfeConsultaProtocolo',TO_DATE('2013-08-30 12:05:32','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/NfeConsulta/NfeConsulta2.asmx','2.00')
;

-- 30/08/2013 12h5min48s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-30 12:05:48','YYYY-MM-DD HH24:MI:SS'),100,441,'Y','2',1120427,'NfeStatusServico',TO_DATE('2013-08-30 12:05:48','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/NfeStatusServico/NfeStatusServico2.asmx','2.00')
;

-- 30/08/2013 12h6min7s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-30 12:06:06','YYYY-MM-DD HH24:MI:SS'),100,441,'Y','2',1120428,'RecepcaoEvento',TO_DATE('2013-08-30 12:06:06','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/recepcaoevento/recepcaoevento.asmx','2.00')
;

-- 30/08/2013 12h6min37s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-30 12:06:36','YYYY-MM-DD HH24:MI:SS'),100,442,'Y','2',1120429,'NfeRecepcao',TO_DATE('2013-08-30 12:06:36','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/Nferecepcao/NFeRecepcao2.asmx','2.00')
;

-- 30/08/2013 12h6min55s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-30 12:06:55','YYYY-MM-DD HH24:MI:SS'),100,442,'Y','2',1120430,'NfeRetRecepcao',TO_DATE('2013-08-30 12:06:55','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/NfeRetRecepcao/NfeRetRecepcao2.asmx','2.00')
;

-- 30/08/2013 12h7min13s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-30 12:07:13','YYYY-MM-DD HH24:MI:SS'),100,442,'Y','2',1120431,'NfeInutilizacao',TO_DATE('2013-08-30 12:07:13','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/nfeinutilizacao/nfeinutilizacao2.asmx','2.00')
;

-- 30/08/2013 12h7min27s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-30 12:07:27','YYYY-MM-DD HH24:MI:SS'),100,442,'Y','2',1120432,'NfeConsultaProtocolo',TO_DATE('2013-08-30 12:07:27','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/NfeConsulta/NfeConsulta2.asmx','2.00')
;

-- 30/08/2013 12h7min42s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-30 12:07:42','YYYY-MM-DD HH24:MI:SS'),100,442,'Y','2',1120433,'NfeStatusServico',TO_DATE('2013-08-30 12:07:42','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/NfeStatusServico/NfeStatusServico2.asmx','2.00')
;

-- 30/08/2013 12h8min7s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-30 12:08:07','YYYY-MM-DD HH24:MI:SS'),100,442,'Y','2',1120434,'RecepcaoEvento',TO_DATE('2013-08-30 12:08:07','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/recepcaoevento/recepcaoevento.asmx','2.00')
;

-- 30/08/2013 12h8min38s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-30 12:08:38','YYYY-MM-DD HH24:MI:SS'),100,443,'Y','2',1120435,'NfeRecepcao',TO_DATE('2013-08-30 12:08:38','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/Nferecepcao/NFeRecepcao2.asmx','2.00')
;

-- 30/08/2013 12h8min59s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-30 12:08:59','YYYY-MM-DD HH24:MI:SS'),100,443,'Y','2',1120436,'NfeRetRecepcao',TO_DATE('2013-08-30 12:08:59','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/NfeRetRecepcao/NfeRetRecepcao2.asmx','2.00')
;

-- 30/08/2013 12h9min15s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-30 12:09:15','YYYY-MM-DD HH24:MI:SS'),100,443,'Y','2',1120437,'NfeInutilizacao',TO_DATE('2013-08-30 12:09:15','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/nfeinutilizacao/nfeinutilizacao2.asmx','2.00')
;

-- 30/08/2013 12h9min44s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-30 12:09:44','YYYY-MM-DD HH24:MI:SS'),100,443,'Y','2',1120438,'NfeConsultaProtocolo',TO_DATE('2013-08-30 12:09:44','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/NfeConsulta/NfeConsulta2.asmx','2.00')
;

-- 30/08/2013 12h10min3s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-30 12:10:03','YYYY-MM-DD HH24:MI:SS'),100,443,'Y','2',1120439,'NfeStatusServico',TO_DATE('2013-08-30 12:10:03','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/NfeStatusServico/NfeStatusServico2.asmx','2.00')
;

-- 30/08/2013 12h10min56s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-30 12:10:56','YYYY-MM-DD HH24:MI:SS'),100,443,'Y','2',1120440,'RecepcaoEvento',TO_DATE('2013-08-30 12:10:56','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/recepcaoevento/recepcaoevento.asmx','2.00')
;

-- 30/08/2013 12h11min28s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-30 12:11:28','YYYY-MM-DD HH24:MI:SS'),100,447,'Y','2',1120441,'NfeRecepcao',TO_DATE('2013-08-30 12:11:28','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/Nferecepcao/NFeRecepcao2.asmx','2.00')
;

-- 30/08/2013 12h11min44s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-30 12:11:44','YYYY-MM-DD HH24:MI:SS'),100,447,'Y','2',1120442,'NfeRetRecepcao',TO_DATE('2013-08-30 12:11:44','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/NfeRetRecepcao/NfeRetRecepcao2.asmx','2.00')
;

-- 30/08/2013 12h11min59s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-30 12:11:59','YYYY-MM-DD HH24:MI:SS'),100,447,'Y','2',1120443,'NfeInutilizacao',TO_DATE('2013-08-30 12:11:59','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/nfeinutilizacao/nfeinutilizacao2.asmx','2.00')
;

-- 30/08/2013 12h12min17s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-30 12:12:17','YYYY-MM-DD HH24:MI:SS'),100,447,'Y','2',1120444,'NfeConsultaProtocolo',TO_DATE('2013-08-30 12:12:17','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/NfeConsulta/NfeConsulta2.asmx','2.00')
;

-- 30/08/2013 12h12min34s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-30 12:12:34','YYYY-MM-DD HH24:MI:SS'),100,447,'Y','2',1120445,'NfeStatusServico',TO_DATE('2013-08-30 12:12:34','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/NfeStatusServico/NfeStatusServico2.asmx','2.00')
;

-- 30/08/2013 12h12min54s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-30 12:12:54','YYYY-MM-DD HH24:MI:SS'),100,447,'Y','2',1120446,'RecepcaoEvento',TO_DATE('2013-08-30 12:12:54','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/recepcaoevento/recepcaoevento.asmx','2.00')
;

-- 30/08/2013 12h14min12s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-30 12:14:12','YYYY-MM-DD HH24:MI:SS'),100,452,'Y','2',1120447,'NfeRecepcao',TO_DATE('2013-08-30 12:14:12','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/Nferecepcao/NFeRecepcao2.asmx','2.00')
;

-- 30/08/2013 12h14min33s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-30 12:14:33','YYYY-MM-DD HH24:MI:SS'),100,452,'Y','2',1120448,'NfeRetRecepcao',TO_DATE('2013-08-30 12:14:33','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/NfeRetRecepcao/NfeRetRecepcao2.asmx','2.00')
;

-- 30/08/2013 12h14min50s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-30 12:14:50','YYYY-MM-DD HH24:MI:SS'),100,452,'Y','2',1120449,'NfeInutilizacao',TO_DATE('2013-08-30 12:14:50','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/nfeinutilizacao/nfeinutilizacao2.asmx','2.00')
;

-- 30/08/2013 12h16min27s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-30 12:16:27','YYYY-MM-DD HH24:MI:SS'),100,452,'Y','2',1120450,'NfeConsultaProtocolo',TO_DATE('2013-08-30 12:16:27','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/NfeConsulta/NfeConsulta2.asmx','2.00')
;

-- 30/08/2013 12h16min43s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-30 12:16:43','YYYY-MM-DD HH24:MI:SS'),100,452,'Y','2',1120451,'NfeStatusServico',TO_DATE('2013-08-30 12:16:43','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/NfeStatusServico/NfeStatusServico2.asmx','2.00')
;

-- 30/08/2013 12h17min1s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-30 12:17:01','YYYY-MM-DD HH24:MI:SS'),100,452,'Y','2',1120452,'RecepcaoEvento',TO_DATE('2013-08-30 12:17:01','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/recepcaoevento/recepcaoevento.asmx','2.00')
;

-- 30/08/2013 12h17min30s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-30 12:17:30','YYYY-MM-DD HH24:MI:SS'),100,455,'Y','2',1120453,'NfeRecepcao',TO_DATE('2013-08-30 12:17:30','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/Nferecepcao/NFeRecepcao2.asmx','2.00')
;

-- 30/08/2013 12h17min48s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-30 12:17:48','YYYY-MM-DD HH24:MI:SS'),100,455,'Y','2',1120454,'NfeRetRecepcao',TO_DATE('2013-08-30 12:17:48','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/NfeRetRecepcao/NfeRetRecepcao2.asmx','2.00')
;

-- 30/08/2013 12h18min10s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-30 12:18:10','YYYY-MM-DD HH24:MI:SS'),100,455,'Y','2',1120455,'NfeInutilizacao',TO_DATE('2013-08-30 12:18:10','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/nfeinutilizacao/nfeinutilizacao2.asmx','2.00')
;

-- 30/08/2013 13h33min51s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-30 13:33:51','YYYY-MM-DD HH24:MI:SS'),100,455,'Y','2',1120456,'NfeConsultaProtocolo',TO_DATE('2013-08-30 13:33:51','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/NfeConsulta/NfeConsulta2.asmx','2.00')
;

-- 30/08/2013 13h34min12s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-30 13:34:12','YYYY-MM-DD HH24:MI:SS'),100,455,'Y','2',1120457,'NfeStatusServico',TO_DATE('2013-08-30 13:34:12','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/NfeStatusServico/NfeStatusServico2.asmx','2.00')
;

-- 30/08/2013 13h34min33s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-30 13:34:33','YYYY-MM-DD HH24:MI:SS'),100,455,'Y','2',1120458,'RecepcaoEvento',TO_DATE('2013-08-30 13:34:33','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/recepcaoevento/recepcaoevento.asmx','2.00')
;

-- 30/08/2013 13h34min58s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-30 13:34:58','YYYY-MM-DD HH24:MI:SS'),100,459,'Y','2',1120459,'NfeRecepcao',TO_DATE('2013-08-30 13:34:58','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/Nferecepcao/NFeRecepcao2.asmx','2.00')
;

-- 30/08/2013 13h35min30s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-30 13:35:30','YYYY-MM-DD HH24:MI:SS'),100,459,'Y','2',1120460,'NfeRetRecepcao',TO_DATE('2013-08-30 13:35:30','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/NfeRetRecepcao/NfeRetRecepcao2.asmx','2.00')
;

-- 30/08/2013 13h35min55s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-30 13:35:55','YYYY-MM-DD HH24:MI:SS'),100,459,'Y','2',1120461,'NfeInutilizacao',TO_DATE('2013-08-30 13:35:55','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/nfeinutilizacao/nfeinutilizacao2.asmx','2.00')
;

-- 30/08/2013 13h36min27s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-30 13:36:27','YYYY-MM-DD HH24:MI:SS'),100,459,'Y','2',1120462,'NfeConsultaProtocolo',TO_DATE('2013-08-30 13:36:27','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/NfeConsulta/NfeConsulta2.asmx','2.00')
;

-- 30/08/2013 13h36min45s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-30 13:36:45','YYYY-MM-DD HH24:MI:SS'),100,459,'Y','2',1120463,'NfeStatusServico',TO_DATE('2013-08-30 13:36:45','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/NfeStatusServico/NfeStatusServico2.asmx','2.00')
;

-- 30/08/2013 13h37min2s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-30 13:37:02','YYYY-MM-DD HH24:MI:SS'),100,459,'Y','2',1120464,'RecepcaoEvento',TO_DATE('2013-08-30 13:37:02','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/recepcaoevento/recepcaoevento.asmx','2.00')
;

-- 30/08/2013 13h37min31s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-30 13:37:31','YYYY-MM-DD HH24:MI:SS'),100,460,'Y','2',1120465,'NfeRecepcao',TO_DATE('2013-08-30 13:37:31','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/Nferecepcao/NFeRecepcao2.asmx','2.00')
;

-- 30/08/2013 13h37min47s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-30 13:37:47','YYYY-MM-DD HH24:MI:SS'),100,460,'Y','2',1120466,'NfeRetRecepcao',TO_DATE('2013-08-30 13:37:47','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/NfeRetRecepcao/NfeRetRecepcao2.asmx','2.00')
;

-- 30/08/2013 13h38min7s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-30 13:38:07','YYYY-MM-DD HH24:MI:SS'),100,460,'Y','2',1120467,'NfeInutilizacao',TO_DATE('2013-08-30 13:38:07','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/nfeinutilizacao/nfeinutilizacao2.asmx','2.00')
;

-- 30/08/2013 13h38min33s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-30 13:38:33','YYYY-MM-DD HH24:MI:SS'),100,460,'Y','2',1120468,'NfeConsultaProtocolo',TO_DATE('2013-08-30 13:38:33','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/NfeConsulta/NfeConsulta2.asmx','2.00')
;

-- 30/08/2013 13h38min57s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-30 13:38:57','YYYY-MM-DD HH24:MI:SS'),100,460,'Y','2',1120469,'NfeStatusServico',TO_DATE('2013-08-30 13:38:57','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/NfeStatusServico/NfeStatusServico2.asmx','2.00')
;

-- 30/08/2013 13h39min14s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-30 13:39:13','YYYY-MM-DD HH24:MI:SS'),100,460,'Y','2',1120470,'RecepcaoEvento',TO_DATE('2013-08-30 13:39:13','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/recepcaoevento/recepcaoevento.asmx','2.00')
;

-- 30/08/2013 13h39min59s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-30 13:39:59','YYYY-MM-DD HH24:MI:SS'),100,462,'Y','2',1120471,'NfeRecepcao',TO_DATE('2013-08-30 13:39:59','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/Nferecepcao/NFeRecepcao2.asmx','2.00')
;

-- 30/08/2013 13h42min1s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-30 13:42:00','YYYY-MM-DD HH24:MI:SS'),100,462,'Y','2',1120472,'NfeRetRecepcao',TO_DATE('2013-08-30 13:42:00','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/NfeRetRecepcao/NfeRetRecepcao2.asmx','2.00')
;

-- 30/08/2013 13h42min13s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-30 13:42:13','YYYY-MM-DD HH24:MI:SS'),100,462,'Y','2',1120473,'NfeInutilizacao',TO_DATE('2013-08-30 13:42:13','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/nfeinutilizacao/nfeinutilizacao2.asmx','2.00')
;

-- 30/08/2013 13h42min29s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-30 13:42:29','YYYY-MM-DD HH24:MI:SS'),100,462,'Y','2',1120474,'NfeConsultaProtocolo',TO_DATE('2013-08-30 13:42:29','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/NfeConsulta/NfeConsulta2.asmx','2.00')
;

-- 30/08/2013 13h42min46s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-30 13:42:46','YYYY-MM-DD HH24:MI:SS'),100,462,'Y','2',1120475,'NfeStatusServico',TO_DATE('2013-08-30 13:42:46','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/NfeStatusServico/NfeStatusServico2.asmx','2.00')
;

-- 30/08/2013 13h43min8s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-30 13:43:08','YYYY-MM-DD HH24:MI:SS'),100,462,'Y','2',1120476,'RecepcaoEvento',TO_DATE('2013-08-30 13:43:08','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/recepcaoevento/recepcaoevento.asmx','2.00')
;

-- 30/08/2013 13h44min45s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-30 13:44:45','YYYY-MM-DD HH24:MI:SS'),100,463,'Y','2',1120477,'NfeRecepcao',TO_DATE('2013-08-30 13:44:45','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/Nferecepcao/NFeRecepcao2.asmx','2.00')
;

-- 30/08/2013 13h45min8s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-30 13:45:08','YYYY-MM-DD HH24:MI:SS'),100,463,'Y','2',1120478,'NfeRetRecepcao',TO_DATE('2013-08-30 13:45:08','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/NfeRetRecepcao/NfeRetRecepcao2.asmx','2.00')
;

-- 30/08/2013 13h45min29s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-30 13:45:29','YYYY-MM-DD HH24:MI:SS'),100,463,'Y','2',1120479,'NfeInutilizacao',TO_DATE('2013-08-30 13:45:29','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/nfeinutilizacao/nfeinutilizacao2.asmx','2.00')
;

-- 30/08/2013 13h46min37s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-30 13:46:36','YYYY-MM-DD HH24:MI:SS'),100,463,'Y','2',1120480,'NfeConsultaProtocolo',TO_DATE('2013-08-30 13:46:36','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/NfeConsulta/NfeConsulta2.asmx','2.00')
;

-- 30/08/2013 13h58min13s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-30 13:58:13','YYYY-MM-DD HH24:MI:SS'),100,463,'Y','2',1120481,'NfeStatusServico',TO_DATE('2013-08-30 13:58:13','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/NfeStatusServico/NfeStatusServico2.asmx','2.00')
;

-- 30/08/2013 13h58min30s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-30 13:58:30','YYYY-MM-DD HH24:MI:SS'),100,463,'Y','2',1120482,'RecepcaoEvento',TO_DATE('2013-08-30 13:58:30','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/recepcaoevento/recepcaoevento.asmx','2.00')
;

-- 30/08/2013 13h58min58s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-30 13:58:58','YYYY-MM-DD HH24:MI:SS'),100,464,'Y','2',1120483,'NfeRecepcao',TO_DATE('2013-08-30 13:58:58','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/Nferecepcao/NFeRecepcao2.asmx','2.00')
;

-- 30/08/2013 14h0min0s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-30 14:00:00','YYYY-MM-DD HH24:MI:SS'),100,463,'Y','2',1120484,'NfeRetRecepcao',TO_DATE('2013-08-30 14:00:00','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/NfeRetRecepcao/NfeRetRecepcao2.asmx','2.00')
;

-- 30/08/2013 14h0min21s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-30 14:00:21','YYYY-MM-DD HH24:MI:SS'),100,464,'Y','2',1120485,'NfeInutilizacao',TO_DATE('2013-08-30 14:00:21','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/nfeinutilizacao/nfeinutilizacao2.asmx','2.00')
;

-- 30/08/2013 14h0min31s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE LBR_NFeWebService SET C_Region_ID=464,Updated=TO_DATE('2013-08-30 14:00:31','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120484
;

-- 30/08/2013 14h1min3s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-30 14:01:03','YYYY-MM-DD HH24:MI:SS'),100,464,'Y','2',1120486,'NfeConsultaProtocolo',TO_DATE('2013-08-30 14:01:03','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/NfeConsulta/NfeConsulta2.asmx','2.00')
;

-- 30/08/2013 14h1min19s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-30 14:01:19','YYYY-MM-DD HH24:MI:SS'),100,464,'Y','2',1120487,'NfeStatusServico',TO_DATE('2013-08-30 14:01:19','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/NfeStatusServico/NfeStatusServico2.asmx','2.00')
;

-- 30/08/2013 14h1min35s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-30 14:01:35','YYYY-MM-DD HH24:MI:SS'),100,464,'Y','2',1120488,'RecepcaoEvento',TO_DATE('2013-08-30 14:01:35','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/recepcaoevento/recepcaoevento.asmx','2.00')
;

-- 30/08/2013 14h2min54s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-30 14:02:54','YYYY-MM-DD HH24:MI:SS'),100,466,'Y','2',1120489,'NfeRecepcao',TO_DATE('2013-08-30 14:02:54','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/Nferecepcao/NFeRecepcao2.asmx','2.00')
;

-- 30/08/2013 14h3min11s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-30 14:03:11','YYYY-MM-DD HH24:MI:SS'),100,466,'Y','2',1120490,'NfeRetRecepcao',TO_DATE('2013-08-30 14:03:11','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/NfeRetRecepcao/NfeRetRecepcao2.asmx','2.00')
;

-- 30/08/2013 14h3min27s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-30 14:03:27','YYYY-MM-DD HH24:MI:SS'),100,466,'Y','2',1120491,'NfeInutilizacao',TO_DATE('2013-08-30 14:03:27','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/nfeinutilizacao/nfeinutilizacao2.asmx','2.00q')
;

-- 30/08/2013 14h3min44s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-30 14:03:44','YYYY-MM-DD HH24:MI:SS'),100,466,'Y','2',1120492,'NfeConsultaProtocolo',TO_DATE('2013-08-30 14:03:44','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/NfeConsulta/NfeConsulta2.asmx','2.00')
;

-- 30/08/2013 14h4min1s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-30 14:04:01','YYYY-MM-DD HH24:MI:SS'),100,466,'Y','2',1120493,'NfeStatusServico',TO_DATE('2013-08-30 14:04:01','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/NfeStatusServico/NfeStatusServico2.asmx','2.00')
;

-- 30/08/2013 14h4min21s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-30 14:04:21','YYYY-MM-DD HH24:MI:SS'),100,466,'Y','2',1120494,'RecepcaoEvento',TO_DATE('2013-08-30 14:04:21','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/recepcaoevento/recepcaoevento.asmx','2.00')
;

-- 30/08/2013 14h4min59s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-30 14:04:59','YYYY-MM-DD HH24:MI:SS'),100,467,'Y','2',1120495,'NfeRecepcao',TO_DATE('2013-08-30 14:04:59','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/Nferecepcao/NFeRecepcao2.asmx','2.00')
;

-- 30/08/2013 14h5min21s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-30 14:05:21','YYYY-MM-DD HH24:MI:SS'),100,467,'Y','2',1120496,'NfeRetRecepcao',TO_DATE('2013-08-30 14:05:21','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/NfeRetRecepcao/NfeRetRecepcao2.asmx','2.00')
;

-- 30/08/2013 14h5min45s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-30 14:05:45','YYYY-MM-DD HH24:MI:SS'),100,467,'Y','2',1120497,'NfeInutilizacao',TO_DATE('2013-08-30 14:05:45','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/nfeinutilizacao/nfeinutilizacao2.asmx','2.00')
;

-- 30/08/2013 14h6min4s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-30 14:06:04','YYYY-MM-DD HH24:MI:SS'),100,467,'Y','2',1120498,'NfeConsultaProtocolo',TO_DATE('2013-08-30 14:06:04','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/NfeConsulta/NfeConsulta2.asmx','2.00')
;

-- 30/08/2013 14h6min40s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-30 14:06:40','YYYY-MM-DD HH24:MI:SS'),100,467,'Y','2',1120499,'NfeStatusServico',TO_DATE('2013-08-30 14:06:40','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/NfeStatusServico/NfeStatusServico2.asmx','2.00')
;

-- 30/08/2013 14h7min5s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-30 14:07:05','YYYY-MM-DD HH24:MI:SS'),100,467,'Y','2',1120500,'RecepcaoEvento',TO_DATE('2013-08-30 14:07:05','YYYY-MM-DD HH24:MI:SS'),100,'https://homologacao.nfe.sefazvirtual.rs.gov.br/ws/recepcaoevento/recepcaoevento.asmx','2.00')
;

-- 28/08/2013 15h46min9s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-28 15:46:08','YYYY-MM-DD HH24:MI:SS'),100,444,'Y','1',1120136,'NfeRecepcao',TO_DATE('2013-08-28 15:46:08','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefaz.am.gov.br/services2/services/NfeRecepcao2','2.00')
;

-- 28/08/2013 15h46min54s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-28 15:46:54','YYYY-MM-DD HH24:MI:SS'),100,444,'Y','1',1120137,'NfeRetRecepcao',TO_DATE('2013-08-28 15:46:54','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefaz.am.gov.br/services2/services/NfeRetRecepcao2','2.00')
;

-- 28/08/2013 15h48min12s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-28 15:48:12','YYYY-MM-DD HH24:MI:SS'),100,'Y','1',1120138,'NfeInutilizacao',TO_DATE('2013-08-28 15:48:12','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefaz.am.gov.br/services2/services/NfeInutilizacao2','2.00')
;

-- 28/08/2013 15h48min58s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-28 15:48:58','YYYY-MM-DD HH24:MI:SS'),100,444,'Y','1',1120139,'NfeConsultaProtocolo',TO_DATE('2013-08-28 15:48:58','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefaz.am.gov.br/services2/services/NfeInutilizacao2','2.00')
;

-- 28/08/2013 15h49min7s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE LBR_NFeWebService SET C_Region_ID=444,Updated=TO_DATE('2013-08-28 15:49:07','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120138
;

-- 28/08/2013 15h49min50s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-28 15:49:50','YYYY-MM-DD HH24:MI:SS'),100,444,'Y','1',1120140,'NfeConsultaProtocolo',TO_DATE('2013-08-28 15:49:50','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefaz.am.gov.br/services2/services/NfeConsulta2','2.00')
;

-- 28/08/2013 15h50min26s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-28 15:50:25','YYYY-MM-DD HH24:MI:SS'),100,444,'Y','1',1120141,'NfeStatusServico',TO_DATE('2013-08-28 15:50:25','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefaz.am.gov.br/services2/services/NfeStatusServico2','2.00')
;

-- 28/08/2013 15h51min0s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-28 15:51:00','YYYY-MM-DD HH24:MI:SS'),100,444,'Y','1',1120142,'NfeConsultaCadastro',TO_DATE('2013-08-28 15:51:00','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefaz.am.gov.br/services2/services/cadconsultacadastro2','2.00')
;

-- 28/08/2013 15h51min29s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-28 15:51:29','YYYY-MM-DD HH24:MI:SS'),100,444,'Y','1',1120143,'RecepcaoEvento',TO_DATE('2013-08-28 15:51:29','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefaz.am.gov.br/services2/services/RecepcaoEvento','2.00')
;

-- 28/08/2013 15h53min42s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-28 15:53:42','YYYY-MM-DD HH24:MI:SS'),100,445,'Y','1',1120144,'NfeRecepcao',TO_DATE('2013-08-28 15:53:42','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefaz.ba.gov.br/webservices/nfenw/NfeRecepcao2.asmx','2.00')
;

-- 28/08/2013 15h54min16s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-28 15:54:16','YYYY-MM-DD HH24:MI:SS'),100,445,'Y','1',1120145,'NfeRetRecepcao',TO_DATE('2013-08-28 15:54:16','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefaz.ba.gov.br/webservices/nfenw/NfeRetRecepcao2.asmx','2.00')
;

-- 28/08/2013 15h54min45s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-28 15:54:45','YYYY-MM-DD HH24:MI:SS'),100,445,'Y','1',1120146,'NfeInutilizacao',TO_DATE('2013-08-28 15:54:45','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefaz.ba.gov.br/webservices/nfenw/NfeInutilizacao2.asmx','2.00')
;

-- 28/08/2013 15h55min32s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-28 15:55:32','YYYY-MM-DD HH24:MI:SS'),100,445,'Y','1',1120147,'NfeConsultaProtocolo',TO_DATE('2013-08-28 15:55:32','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefaz.ba.gov.br/webservices/nfenw/NfeConsulta2.asmx','2.00')
;

-- 28/08/2013 15h56min6s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-28 15:56:06','YYYY-MM-DD HH24:MI:SS'),100,444,'Y','1',1120148,'NfeStatusServico ',TO_DATE('2013-08-28 15:56:06','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefaz.ba.gov.br/webservices/nfenw/NfeStatusServico2.asmx','2.00')
;

-- 28/08/2013 15h56min45s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-28 15:56:45','YYYY-MM-DD HH24:MI:SS'),100,444,'Y','1',1120149,'NfeConsultaCadastro',TO_DATE('2013-08-28 15:56:45','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefaz.ba.gov.br/webservices/nfenw/CadConsultaCadastro2.asmx','2.00')
;

-- 28/08/2013 15h57min14s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,C_Region_ID,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_DATE('2013-08-28 15:57:14','YYYY-MM-DD HH24:MI:SS'),100,445,'Y','1',1120150,'RecepcaoEvento',TO_DATE('2013-08-28 15:57:14','YYYY-MM-DD HH24:MI:SS'),100,'https://nfe.sefaz.ba.gov.br/webservices/sre/RecepcaoEvento.asmx','2.00')
;

-- 28/08/2013 15h57min25s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE LBR_NFeWebService SET C_Region_ID=445,Updated=TO_DATE('2013-08-28 15:57:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120149
;

-- 28/08/2013 15h57min34s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE LBR_NFeWebService SET C_Region_ID=445,Updated=TO_DATE('2013-08-28 15:57:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE LBR_NFeWebService_ID=1120148
;

--	Atualiza o ultimo script
UPDATE AD_SysConfig SET Value='360-trunk/089-Script_webservices_prod_hom.sql' WHERE AD_SysConfig_ID=1100006
;

EXIT