ALTER TABLE adempiere.lbr_taxconfiguration
    DROP CONSTRAINT lbr_taxconfiguration_key2 CASCADE;

ALTER TABLE adempiere.lbr_taxconfiguration
    ADD CONSTRAINT lbr_taxconfiguration_unique
	UNIQUE (ad_client_id, lbr_exceptiontype, lbr_fiscalgroup_product_id, m_product_id);
exit
