-- [ 1960451 ] LBR_Tax_ID - Datatype error
-- BUF FIX
-- LBR_Tax_ID datatype error

alter table ad_orginfo alter column lbr_tax_id type numeric using cast (lbr_tax_id as numeric);

alter table c_orderline alter column lbr_tax_id type numeric using cast (lbr_tax_id as numeric);

alter table c_invoiceline alter column lbr_tax_id type numeric using cast (lbr_tax_id as numeric);

alter table lbr_ncm alter column lbr_tax_id type numeric using cast (lbr_tax_id as numeric);

alter table lbr_cfopline alter column lbr_tax_id type numeric using cast (lbr_tax_id as numeric);

delete from lbr_icmsmatrix where lbr_tax_id IS NULL; 
alter table lbr_icmsmatrix alter column lbr_tax_id type numeric using cast (lbr_tax_id as numeric);

delete from lbr_taxconfig_bpartner where lbr_tax_id IS NULL; 
alter table lbr_taxconfig_bpartner alter column lbr_tax_id type numeric using cast (lbr_tax_id as numeric);

delete from lbr_taxconfig_bpgroup where lbr_tax_id IS NULL; 
alter table lbr_taxconfig_bpgroup alter column lbr_tax_id type numeric using cast (lbr_tax_id as numeric);

delete from lbr_taxconfig_product where lbr_tax_id IS NULL; 
alter table lbr_taxconfig_product alter column lbr_tax_id type numeric using cast (lbr_tax_id as numeric);

delete from lbr_taxconfig_productgroup where lbr_tax_id IS NULL; 
alter table lbr_taxconfig_productgroup alter column lbr_tax_id type numeric using cast (lbr_tax_id as numeric);

delete from lbr_taxconfig_region where lbr_tax_id IS NULL; 
alter table lbr_taxconfig_region alter column lbr_tax_id type numeric using cast (lbr_tax_id as numeric);
