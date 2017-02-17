-- View: rv_lbr_notafiscal_details
DROP VIEW rv_lbr_notafiscal_details;

CREATE OR REPLACE VIEW rv_lbr_notafiscal_details AS 

SELECT nf.documentno, nf.c_doctypetarget_id, nf.lbr_isowndocument, 
nf.lbr_nfestatus, nf.c_bpartner_id, 
nf.docstatus, nf.iscancelled, nf.lbr_nfeenv, nf.datedoc, nf.datetrx, 
nfl.lbr_notafiscalline_id, nfl.ad_org_id, nfl.ad_client_id, nfl.isactive, 
nfl.created, nfl.createdby, nfl.updated, nfl.updatedby, 
nfl.c_invoiceline_id, nfl.lbr_notafiscal_id, nfl.m_product_id, nfl.c_uom_id, 
nfl.lbr_ncm_id, nfl.lbr_cfop_id, nfl.productname, nfl.productvalue, 
nfl.price, nfl.linetotalamt, nfl.pricelistamt, nfl.qty, nfl.lbr_uomname, 
nfl.description, nfl.discount, nfl.line,
nfl.vendorproductno, nfl.lbr_taxstatus, nfl.lbr_isservice, 
nfl.lbr_servicetaxes, nfl.lbr_linetotalcif, nfl.lbr_linetotalsiscomex, 
nfl.lbr_nfdi_id, nfl.lbr_numseqitem, nfl.lbr_numadicao, nfl.manufacturer, 
nfl.lbr_taxstatusipi, nfl.discountamt, nfl.lbr_otherchargesamt, 
nfl.lbr_productsource, nfl.lbr_indtot, nfl.freightamt, nfl.lbr_insuranceamt, 
nfl.lbr_cest_id, nfl.lbr_fcivalue, 
icms.lbr_taxamt AS icms_taxamt, icms.lbr_taxbase AS icms_taxbase, 
icms.lbr_taxbaseamt AS icms_taxbaseamt, icms.lbr_taxrate AS icms_taxrate, 
icms.cst AS csticms, pis.lbr_taxamt AS pis_taxamt, 
pis.lbr_taxbase AS pis_taxbase, pis.lbr_taxbaseamt AS pis_taxbaseamt, 
pis.lbr_taxrate AS pis_taxrate, pis.cst AS cstpis, 
cofins.lbr_taxamt AS cofins_taxamt, cofins.lbr_taxbase AS cofins_taxbase, 
cofins.lbr_taxbaseamt AS cofins_taxbaseamt, 
cofins.lbr_taxrate AS cofins_taxrate, cofins.cst AS cstcofins, 
ipi.lbr_taxamt AS ipi_taxamt, ipi.lbr_taxbase AS ipi_taxbase, 
ipi.lbr_taxbaseamt AS ipi_taxbaseamt, ipi.lbr_taxrate AS ipi_taxrate, 
ipi.cst AS cstipi, icmsst.lbr_taxamt AS icmsst_taxamt, 
icmsst.lbr_taxbase AS icmsst_taxbase, 
icmsst.lbr_taxbaseamt AS icmsst_taxbaseamt, 
icmsst.lbr_taxrate AS icmsst_taxrate, icmsst.cst AS icmsst_taxstatus,
round(nfl.linetotalamt + COALESCE(icmsst.lbr_taxamt, 0::numeric) + COALESCE(ipi.lbr_taxamt, 0::numeric), 2) AS grossramt
fcp.lbr_taxamt AS fcp_taxamt, fcp.lbr_taxbase AS fcp_taxbase, fcp.lbr_taxbaseamt AS fcp_taxbaseamt, fcp.lbr_taxrate AS fcp_taxrate, 
fcp.cst AS fcp_taxstatus,
icmsdifal.lbr_taxamt AS icmsdifal_taxamt, icmsdifal.lbr_taxbase AS icmsdifal_taxbase, icmsdifal.lbr_taxbaseamt AS icmsdifal_taxbaseamt, 
icmsdifal.lbr_taxrate AS icmsdifal_taxrate, icmsdifal.cst AS icmsdifal_taxstatus,
icmsdifalorig.lbr_taxamt AS icmsdifalorig_taxamt, icmsdifalorig.lbr_taxbase AS icmsdifalorig_taxbase, icmsdifalorig.lbr_taxbaseamt AS icmsdifalorig_taxbaseamt, 
icmsdifalorig.lbr_taxrate AS icmsdifalorig_taxrate, icmsdifalorig.cst AS icmsdifalorig_taxstatus
FROM lbr_notafiscalline nfl
LEFT JOIN lbr_notafiscal nf ON nfl.lbr_notafiscal_id = nf.lbr_notafiscal_id
LEFT JOIN lbr_nflinetax_v icms ON nfl.lbr_notafiscalline_id = icms.lbr_notafiscalline_id AND icms.taxindicator::text = 'ICMS'::text
LEFT JOIN lbr_nflinetax_v pis ON nfl.lbr_notafiscalline_id = pis.lbr_notafiscalline_id AND pis.taxindicator::text = 'PIS'::text
LEFT JOIN lbr_nflinetax_v cofins ON nfl.lbr_notafiscalline_id = cofins.lbr_notafiscalline_id AND cofins.taxindicator::text = 'COFINS'::text
LEFT JOIN lbr_nflinetax_v ipi ON nfl.lbr_notafiscalline_id = ipi.lbr_notafiscalline_id AND ipi.taxindicator::text = 'IPI'::text
LEFT JOIN lbr_nflinetax_v icmsst ON nfl.lbr_notafiscalline_id = icmsst.lbr_notafiscalline_id AND icmsst.taxindicator::text = 'ICMSST'::text
LEFT JOIN lbr_nflinetax_v fcp ON nfl.lbr_notafiscalline_id = fcp.lbr_notafiscalline_id AND fcp.taxindicator::text = 'FCP'
LEFT JOIN lbr_nflinetax_v icmsdifal ON nfl.lbr_notafiscalline_id = icmsdifal.lbr_notafiscalline_id AND icmsdifal.taxindicator::text = 'ICMSDIFAL'
LEFT JOIN lbr_nflinetax_v icmsdifalorig ON nfl.lbr_notafiscalline_id = icmsdifalorig.lbr_notafiscalline_id AND icmsdifalorig.taxindicator::text = 'ICMSDIFALORIG'
;
-- 08/12/2016 11h59min27s BRST
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
SELECT Register_Migration_Script ('257-AtualizacaoRelatoriosNF.sql') FROM DUAL
;
EXIT
