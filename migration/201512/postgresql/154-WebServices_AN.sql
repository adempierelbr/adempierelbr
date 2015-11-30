-- 30/10/2015 14h22min23s BRST
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,LBR_WSType,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_TIMESTAMP('2015-10-30 14:22:22','YYYY-MM-DD HH24:MI:SS'),100,'Y','1',1121502,'1','DistribuicaoDFe',TO_TIMESTAMP('2015-10-30 14:22:22','YYYY-MM-DD HH24:MI:SS'),100,'https://www1.nfe.fazenda.gov.br/NFeDistribuicaoDFe/NFeDistribuicaoDFe.asmx','3.10')
;

-- 30/10/2015 14h23min47s BRST
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,LBR_WSType,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_TIMESTAMP('2015-10-30 14:23:46','YYYY-MM-DD HH24:MI:SS'),100,'Y','1',1121503,'1','DownloadNFe',TO_TIMESTAMP('2015-10-30 14:23:46','YYYY-MM-DD HH24:MI:SS'),100,'https://www.nfe.fazenda.gov.br/NfeDownloadNF/NfeDownloadNF.asmx','3.10')
;

-- 30/10/2015 14h22min23s BRST
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,LBR_WSType,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_TIMESTAMP('2015-10-30 14:22:22','YYYY-MM-DD HH24:MI:SS'),100,'Y','1',1121504,'1','RecepcaoEvento',TO_TIMESTAMP('2015-10-30 14:22:22','YYYY-MM-DD HH24:MI:SS'),100,'https://www.nfe.fazenda.gov.br/RecepcaoEvento/RecepcaoEvento.asmx','3.10')
;

-- 30/10/2015 14h22min23s BRST
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,LBR_WSType,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_TIMESTAMP('2015-10-30 14:22:22','YYYY-MM-DD HH24:MI:SS'),100,'Y','2',1121505,'1','DistribuicaoDFe',TO_TIMESTAMP('2015-10-30 14:22:22','YYYY-MM-DD HH24:MI:SS'),100,'https://hom.nfe.fazenda.gov.br/NFeDistribuicaoDFe/NFeDistribuicaoDFe.asmx','3.10')
;

-- 30/10/2015 14h23min47s BRST
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,LBR_WSType,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_TIMESTAMP('2015-10-30 14:23:46','YYYY-MM-DD HH24:MI:SS'),100,'Y','2',1121506,'1','DownloadNFe',TO_TIMESTAMP('2015-10-30 14:23:46','YYYY-MM-DD HH24:MI:SS'),100,'https://hom.nfe.fazenda.gov.br/NfeDownloadNF/NfeDownloadNF.asmx','3.10')
;

-- 30/10/2015 14h22min23s BRST
INSERT INTO LBR_NFeWebService (AD_Client_ID,AD_Org_ID,Created,CreatedBy,IsActive,lbr_NFeEnv,LBR_NFeWebService_ID,LBR_WSType,Name,Updated,UpdatedBy,URL,VersionNo) VALUES (0,0,TO_TIMESTAMP('2015-10-30 14:22:22','YYYY-MM-DD HH24:MI:SS'),100,'Y','2',1121507,'1','RecepcaoEvento',TO_TIMESTAMP('2015-10-30 14:22:22','YYYY-MM-DD HH24:MI:SS'),100,'https://hom.nfe.fazenda.gov.br/RecepcaoEvento/RecepcaoEvento.asmx','3.10')
;

-- 30/10/2015 14h23min47s BRST
SELECT Register_Migration_Script ('154-WebServices_AN.sql') FROM DUAL
;
