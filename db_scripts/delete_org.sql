-- PRE DELETE ORG
update c_bpartner set ad_org_id = 0 where ad_client_id = 2000000;
update c_bpartner_location set ad_org_id = 0 where ad_client_id = 2000000;
update c_location set ad_org_id = 0 where ad_client_id = 2000000;
update m_product set ad_org_id = 0 where ad_client_id = 2000000;
update M_Product_BOM set ad_org_id = 0 where ad_client_id = 2000000;
update M_ProductPrice set ad_org_id = 0 where ad_client_id = 2000000;
update M_Product_Category set ad_org_id = 0 where ad_client_id = 2000000;
update Z_ProdGroup set ad_org_id = 0 where ad_client_id = 2000000;
update Z_ProdSubGroup set ad_org_id = 0 where ad_client_id = 2000000;
update Z_ClassificationGroup set ad_org_id = 0 where ad_client_id = 2000000;
update C_TaxCategory set ad_org_id = 0 where ad_client_id = 2000000;
update C_UOM set ad_org_id = 0 where ad_client_id = 2000000;
update LBR_FiscalGroup_Product set ad_org_id = 0 where ad_client_id = 2000000;
update LBR_FiscalGroup_BPartner set ad_org_id = 0 where ad_client_id = 2000000;
update C_PaymentTerm set ad_org_id = 0 where ad_client_id = 2000000;
update C_PaySchedule set ad_org_id = 0 where ad_client_id = 2000000;
update C_BP_Group set ad_org_id = 0 where ad_client_id = 2000000;
update M_Warehouse set ad_org_id = 0 where ad_client_id = 2000000;
update M_Locator set ad_org_id = 0 where ad_client_id = 2000000;
update M_PriceList_Version set ad_org_id = 0 where ad_client_id = 2000000;
update LBR_TaxConfiguration set ad_org_id = 0 where ad_client_id = 2000000;
update LBR_TaxConfig_BPGroup set ad_org_id = 0 where ad_client_id = 2000000;
update LBR_TaxConfig_Region set ad_org_id = 0 where ad_client_id = 2000000;
update LBR_Tax set ad_org_id = 0 where ad_client_id = 2000000;
update LBR_TaxLine set ad_org_id = 0 where ad_client_id = 2000000;
update AD_User set ad_org_id = 0 where ad_client_id = 2000000;

-- POS DELETE ORG
-- EXECUTAR TBM OS PROCESSOS DE TRADUCAO
update M_Warehouse set ad_org_id = 2000002 where ad_client_id = 2000000;
update M_Locator set ad_org_id = 2000002 where ad_client_id = 2000000;






