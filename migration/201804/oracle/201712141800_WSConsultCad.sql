SET SQLBLANKLINES ON
SET DEFINE OFF

-- 14/12/2017 15h50min4s BRST
INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Name, C_Region_ID, LBR_NFeEnv, VersionNo, URL, LBR_WSType)
  VALUES (1121673, 0, 0, 'Y', '2017-12-14 16:00:38.0', 100, '2017-12-14 16:00:38.0', 100, 'NfeConsultaCadastro', 464, '1', '3.10', 'https://cad.svrs.rs.gov.br/ws/cadconsultacadastro/cadconsultacadastro2.asmx', '1')
;
INSERT INTO LBR_NFeWebService (LBR_NFeWebService_ID, AD_Client_ID, AD_Org_ID, IsActive, Created, CreatedBy, Updated, UpdatedBy, Name, C_Region_ID, LBR_NFeEnv, VersionNo, URL, LBR_WSType)
  VALUES (1121674, 0, 0, 'Y', '2017-12-14 16:01:42.0', 100, '2017-12-14 16:01:42.0', 100, 'NfeConsultaCadastro', 464, '2', '3.10', 'https://cad.svrs.rs.gov.br/ws/cadconsultacadastro/cadconsultacadastro2.asmx', '1')
;


SELECT Register_Migration_Script ('201712141800_WSConsultCad.sql') FROM DUAL
;
