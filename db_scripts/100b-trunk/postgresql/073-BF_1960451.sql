-- [ 1960451 ] LBR_Tax_ID - Datatype error
-- BUF FIX
-- LBR_Tax_ID datatype error

alter table ad_orginfo rename lbr_tax_id to lbr_tax_id_old; commit;
alter table ad_orginfo add column lbr_tax_id numeric; commit;
update ad_orginfo set lbr_tax_id = lbr_tax_id_old::numeric; commit;
alter table ad_orginfo drop column lbr_tax_id_old; commit;

alter table c_orderline rename lbr_tax_id to lbr_tax_id_old; commit;
alter table c_orderline add column lbr_tax_id numeric; commit;
update c_orderline set lbr_tax_id = lbr_tax_id_old::numeric; commit;
alter table c_orderline drop column lbr_tax_id_old; commit;

alter table c_invoiceline rename lbr_tax_id to lbr_tax_id_old; commit;
alter table c_invoiceline add column lbr_tax_id numeric; commit;
update c_invoiceline set lbr_tax_id = lbr_tax_id_old::numeric; commit;
alter table c_invoiceline drop column lbr_tax_id_old; commit;

alter table lbr_ncm rename lbr_tax_id to lbr_tax_id_old; commit;
alter table lbr_ncm add column lbr_tax_id numeric; commit;
update lbr_ncm set lbr_tax_id = lbr_tax_id_old::numeric; commit;
alter table lbr_ncm drop column lbr_tax_id_old; commit;

alter table lbr_cfopline rename lbr_tax_id to lbr_tax_id_old; commit;
alter table lbr_cfopline add column lbr_tax_id numeric; commit;
update lbr_cfopline set lbr_tax_id = lbr_tax_id_old::numeric; commit;
alter table lbr_cfopline drop column lbr_tax_id_old; commit;

alter table lbr_icmsmatrix rename lbr_tax_id to lbr_tax_id_old; commit;
alter table lbr_icmsmatrix add column lbr_tax_id numeric not null; commit;
delete from lbr_icmsmatrix where lbr_tax_id_old IS NULL; commit;
update lbr_icmsmatrix set lbr_tax_id = lbr_tax_id_old::numeric; commit;
alter table lbr_icmsmatrix drop column lbr_tax_id_old; commit;

alter table lbr_taxconfig_bpartner rename lbr_tax_id to lbr_tax_id_old; commit;
alter table lbr_taxconfig_bpartner add column lbr_tax_id numeric not null default 0; commit;
delete from lbr_taxconfig_bpartner where lbr_tax_id_old IS NULL; commit;
update lbr_taxconfig_bpartner set lbr_tax_id = lbr_tax_id_old::numeric; commit;
alter table lbr_taxconfig_bpartner drop column lbr_tax_id_old; commit;

alter table lbr_taxconfig_bpgroup rename lbr_tax_id to lbr_tax_id_old; commit;
alter table lbr_taxconfig_bpgroup add column lbr_tax_id numeric not null default 0; commit;
delete from lbr_taxconfig_bpgroup where lbr_tax_id_old IS NULL; commit;
update lbr_taxconfig_bpgroup set lbr_tax_id = lbr_tax_id_old::numeric; commit;
alter table lbr_taxconfig_bpgroup drop column lbr_tax_id_old; commit;

alter table lbr_taxconfig_product rename lbr_tax_id to lbr_tax_id_old; commit;
alter table lbr_taxconfig_product add column lbr_tax_id numeric not null default 0; commit;
delete from lbr_taxconfig_product where lbr_tax_id_old IS NULL; commit;
update lbr_taxconfig_product set lbr_tax_id = lbr_tax_id_old::numeric; commit;
alter table lbr_taxconfig_product drop column lbr_tax_id_old; commit;

alter table lbr_taxconfig_productgroup rename lbr_tax_id to lbr_tax_id_old; commit;
alter table lbr_taxconfig_productgroup add column lbr_tax_id numeric not null default 0; commit;
delete from lbr_taxconfig_productgroup where lbr_tax_id_old IS NULL; commit;
update lbr_taxconfig_productgroup set lbr_tax_id = lbr_tax_id_old::numeric; commit;
alter table lbr_taxconfig_productgroup drop column lbr_tax_id_old; commit;

alter table lbr_taxconfig_region rename lbr_tax_id to lbr_tax_id_old; commit;
alter table lbr_taxconfig_region add column lbr_tax_id numeric not null default 0; commit;
delete from lbr_taxconfig_region where lbr_tax_id_old IS NULL; commit;
update lbr_taxconfig_region set lbr_tax_id = lbr_tax_id_old::numeric; commit;
alter table lbr_taxconfig_region drop column lbr_tax_id_old; commit;