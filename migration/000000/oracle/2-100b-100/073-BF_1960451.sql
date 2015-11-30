-- [ 1960451 ] LBR_Tax_ID - Datatype error
-- BUF FIX
-- LBR_Tax_ID datatype error

-- Remark about Oracle: The columns were adjusted in the original scripts

/*
alter table ad_orginfo modify lbr_tax_id type numeric using cast (lbr_tax_id as numeric);

alter table c_orderline modify lbr_tax_id type numeric using cast (lbr_tax_id as numeric);

alter table c_invoiceline modify lbr_tax_id type numeric using cast (lbr_tax_id as numeric);

alter table lbr_ncm modify lbr_tax_id type numeric using cast (lbr_tax_id as numeric);

alter table lbr_cfopline modify lbr_tax_id type numeric using cast (lbr_tax_id as numeric);

delete from lbr_icmsmatrix where lbr_tax_id IS NULL; 
alter table lbr_icmsmatrix modify lbr_tax_id type numeric using cast (lbr_tax_id as numeric);

delete from lbr_taxconfig_bpartner where lbr_tax_id IS NULL; 
alter table lbr_taxconfig_bpartner modify lbr_tax_id type numeric using cast (lbr_tax_id as numeric);

delete from lbr_taxconfig_bpgroup where lbr_tax_id IS NULL; 
alter table lbr_taxconfig_bpgroup modify lbr_tax_id type numeric using cast (lbr_tax_id as numeric);

delete from lbr_taxconfig_product where lbr_tax_id IS NULL; 
alter table lbr_taxconfig_product modify lbr_tax_id type numeric using cast (lbr_tax_id as numeric);

delete from lbr_taxconfig_productgroup where lbr_tax_id IS NULL; 
alter table lbr_taxconfig_productgroup modify lbr_tax_id type numeric using cast (lbr_tax_id as numeric);

delete from lbr_taxconfig_region where lbr_tax_id IS NULL; 
alter table lbr_taxconfig_region modify lbr_tax_id type numeric using cast (lbr_tax_id as numeric);
*/

exit
