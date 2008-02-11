/*
[ 1876662 ] Problema ao inserir impostos
*/
ALTER TABLE adempiere.lbr_taxname
    ADD CONSTRAINT lbr_taxname_UniqueTax
	UNIQUE (ad_client_id, ad_org_id, name)
;