-- 008 - [ 1877272 ] Constraint errada na tabela LBR_ICMSMatrix
ALTER TABLE adempiere.lbr_icmsmatrix
    DROP CONSTRAINT lbr_icmsmatrix_key2 CASCADE 
;


ALTER TABLE adempiere.lbr_icmsmatrix
    ADD CONSTRAINT lbr_icmsmatrix_key2
	UNIQUE (ad_client_id, c_region_id, to_region_id)
;
