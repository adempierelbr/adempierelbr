INSERT INTO LBR_NFeWebService(lbr_nfewebservice_id, ad_client_id, ad_org_id, isactive, created, createdby, updated, updatedby, name, c_region_id, lbr_nfeenv, versionno, url, lbr_wstype, lbr_nfewebservice_uu)
  VALUES (1121677, 0, 0, 'Y', '2018-01-29 14:23:46', 100, '2018-01-29 14:23:46', 100, 'RecepcaoEvento', 453, '1', '3.10', 'https://nfe.fazenda.mg.gov.br/nfe2/services/RecepcaoEvento', '1', 'E3FE588E-E7CF-4041-AF2E-F74B85F7E3BA')
;
INSERT INTO LBR_NFeWebService(lbr_nfewebservice_id, ad_client_id, ad_org_id, isactive, created, createdby, updated, updatedby, name, c_region_id, lbr_nfeenv, versionno, url, lbr_wstype, lbr_nfewebservice_uu)
  VALUES (1121678, 0, 0, 'Y', '2018-01-29 14:23:46', 100, '2018-01-29 14:23:46', 100, 'RecepcaoEvento', 453, '2', '3.10', 'https://hnfe.fazenda.mg.gov.br/nfe2/services/RecepcaoEvento', '1', '80739EA5-E6C6-4174-8B72-5A1815ED54E5')
;
SELECT Register_Migration_Script ('201801291500_WSEventosMG.sql') FROM DUAL
;
