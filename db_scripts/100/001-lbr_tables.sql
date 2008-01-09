/*
Script generated by Aqua Data Studio 6.5.7 on Jan-09-2008 11:21:53 AM
Database: adempiere
Schema: adempiere
Objects: TABLE
*/
CREATE TABLE adempiere.lbr_bank ( 
	lbr_bank_id         	numeric(10,0) NOT NULL,
	ad_org_id           	numeric(10,0) NOT NULL,
	ad_client_id        	numeric(10,0) NOT NULL,
	isactive            	char(1) NOT NULL DEFAULT 'Y'::bpchar,
	created             	timestamp NOT NULL,
	createdby           	numeric(10,0) NOT NULL,
	updated             	timestamp NOT NULL,
	updatedby           	numeric(10,0) NOT NULL,
	routingno           	varchar(20) NOT NULL,
	name                	varchar(60) NOT NULL,
	description         	varchar(255) NULL,
	lbr_jboletono       	varchar(3) NULL,
	lbr_paymentlocation1	varchar(60) NULL,
	lbr_paymentlocation2	varchar(60) NULL 
	);

CREATE TABLE adempiere.lbr_bankinfo ( 
	lbr_bankinfo_id	numeric(10,0) NOT NULL,
	ad_org_id      	numeric(10,0) NOT NULL,
	ad_client_id   	numeric(10,0) NOT NULL,
	isactive       	char(1) NOT NULL DEFAULT 'Y'::bpchar,
	created        	timestamp NOT NULL,
	createdby      	numeric(10,0) NOT NULL,
	updated        	timestamp NOT NULL,
	updatedby      	numeric(10,0) NOT NULL,
	lbr_bank_id    	numeric(10,0) NOT NULL,
	lbr_occurtype  	varchar(1) NOT NULL,
	description    	varchar(255) NULL,
	lbr_occurno    	varchar(5) NOT NULL 
	);

CREATE TABLE adempiere.lbr_boleto ( 
	lbr_boleto_id       	numeric(10,0) NOT NULL,
	ad_org_id           	numeric(10,0) NOT NULL,
	ad_client_id        	numeric(10,0) NOT NULL,
	isactive            	char(1) NOT NULL DEFAULT 'Y'::bpchar,
	created             	timestamp NOT NULL,
	createdby           	numeric(10,0) NOT NULL,
	updated             	timestamp NOT NULL,
	updatedby           	numeric(10,0) NOT NULL,
	c_invoice_id        	numeric(10,0) NOT NULL,
	address1            	varchar(60) NULL,
	address2            	varchar(60) NULL,
	address3            	varchar(60) NULL,
	address4            	varchar(60) NULL,
	city                	varchar(60) NULL,
	regionname          	varchar(2) NULL,
	postal              	varchar(10) NULL,
	accountno           	varchar(20) NOT NULL,
	documentno          	varchar(60) NOT NULL,
	routingno           	varchar(20) NOT NULL,
	lbr_docdate         	timestamp NOT NULL,
	lbr_cessionary      	varchar(200) NOT NULL,
	lbr_receivername    	varchar(200) NOT NULL,
	lbr_bptypebr        	varchar(2) NOT NULL,
	lbr_billkind        	varchar(10) NULL,
	lbr_agencyno        	varchar(10) NOT NULL,
	lbr_billfold        	varchar(10) NOT NULL,
	lbr_clientcode      	varchar(30) NULL,
	lbr_paymentlocation1	varchar(60) NULL,
	lbr_paymentlocation2	varchar(60) NULL,
	lbr_instruction1    	varchar(60) NULL,
	lbr_instruction2    	varchar(60) NULL,
	lbr_instruction3    	varchar(60) NULL,
	lbr_iscancelled     	char(1) NOT NULL DEFAULT 'N'::bpchar,
	c_bpartner_id       	numeric(10,0) NOT NULL,
	lbr_payscheduleno   	varchar(2) NULL,
	grandtotal          	numeric NOT NULL,
	discountamt         	numeric NOT NULL,
	duedate             	timestamp NOT NULL,
	discountdate        	timestamp NOT NULL,
	lbr_jboletono       	varchar(3) NOT NULL 
	);

CREATE TABLE adempiere.lbr_bpartnercategory ( 
	lbr_bpartnercategory_id	numeric(10,0) NOT NULL,
	ad_org_id              	numeric(10,0) NOT NULL,
	ad_client_id           	numeric(10,0) NOT NULL,
	isactive               	char(1) NOT NULL DEFAULT 'Y'::bpchar,
	created                	timestamp NOT NULL,
	createdby              	numeric(10,0) NOT NULL,
	updated                	timestamp NOT NULL,
	updatedby              	numeric(10,0) NOT NULL,
	name                   	varchar(60) NOT NULL,
	description            	varchar(255) NULL 
	);

CREATE TABLE adempiere.lbr_cfop ( 
	lbr_cfop_id 	numeric(10,0) NOT NULL,
	ad_org_id   	numeric(10,0) NOT NULL,
	ad_client_id	numeric(10,0) NOT NULL,
	isactive    	char(1) NOT NULL DEFAULT 'Y'::bpchar,
	created     	timestamp NOT NULL,
	createdby   	numeric(10,0) NOT NULL,
	updated     	timestamp NOT NULL,
	updatedby   	numeric(10,0) NULL,
	value       	varchar(5) NOT NULL,
	description 	varchar(255) NULL 
	);

CREATE TABLE adempiere.lbr_cfopline ( 
	lbr_cfopline_id        	numeric(10,0) NOT NULL,
	ad_org_id              	numeric(10,0) NOT NULL,
	ad_client_id           	numeric(10,0) NOT NULL,
	isactive               	char(1) NOT NULL DEFAULT 'Y'::bpchar,
	created                	timestamp NOT NULL,
	createdby              	numeric(10,0) NOT NULL,
	updated                	timestamp NOT NULL,
	updatedby              	numeric(10,0) NOT NULL,
	lbr_cfop_id            	numeric(10,0) NOT NULL,
	lbr_destionationtype   	varchar(1) NOT NULL,
	lbr_productcategory_id 	numeric(10,0) NOT NULL,
	c_doctype_id           	numeric(10,0) NOT NULL,
	lbr_issubtributaria    	char(1) NOT NULL DEFAULT 'N'::bpchar,
	lbr_transactiontype    	varchar(3) NOT NULL,
	lbr_ismanufactured     	char(1) NOT NULL DEFAULT 'N'::bpchar,
	lbr_bpartnercategory_id	numeric(10,0) NOT NULL,
	lbr_tax_id             	varchar(22) NULL 
	);

CREATE TABLE adempiere.lbr_cnab ( 
	lbr_cnab_id    	numeric(10,0) NOT NULL,
	ad_org_id      	numeric(10,0) NOT NULL,
	ad_client_id   	numeric(10,0) NOT NULL,
	isactive       	char(1) NOT NULL DEFAULT 'Y'::bpchar,
	created        	timestamp NOT NULL,
	createdby      	numeric(10,0) NOT NULL,
	updated        	timestamp NOT NULL,
	updatedby      	numeric(10,0) NOT NULL,
	routingno      	varchar(20) NOT NULL,
	lbr_iscancelled	char(1) NOT NULL DEFAULT 'N'::bpchar,
	lbr_cnabfield1 	varchar(60) NULL,
	lbr_cnabfield2 	varchar(60) NULL,
	lbr_cnabfield3 	varchar(60) NULL,
	lbr_cnabfield4 	varchar(60) NULL,
	lbr_cnabfield5 	varchar(60) NULL,
	lbr_cnabfield6 	varchar(60) NULL,
	lbr_cnabfield7 	varchar(60) NULL,
	lbr_cnabfield8 	varchar(60) NULL,
	lbr_cnabfield9 	varchar(60) NULL,
	lbr_cnabfield10	varchar(60) NULL,
	lbr_cnabfield11	varchar(60) NULL,
	lbr_cnabfield12	varchar(60) NULL,
	lbr_cnabfield13	varchar(60) NULL,
	lbr_cnabfield14	varchar(60) NULL,
	lbr_cnabfield15	varchar(60) NULL,
	lbr_cnabfield16	varchar(60) NULL,
	lbr_cnabfield17	varchar(60) NULL,
	lbr_cnabfield18	varchar(60) NULL,
	lbr_cnabfield19	varchar(60) NULL,
	lbr_cnabfield20	varchar(60) NULL,
	lbr_cnabfield21	varchar(60) NULL,
	lbr_cnabfield22	varchar(60) NULL,
	lbr_cnabfield23	varchar(60) NULL,
	lbr_cnabfield24	varchar(60) NULL,
	lbr_cnabfield25	varchar(60) NULL,
	lbr_cnabfield26	varchar(60) NULL,
	lbr_cnabfield27	varchar(60) NULL,
	lbr_cnabfield28	varchar(60) NULL,
	lbr_cnabfield29	varchar(60) NULL,
	lbr_cnabfield30	varchar(60) NULL,
	lbr_cnabfield31	varchar(60) NULL,
	lbr_cnabfield32	varchar(60) NULL,
	lbr_cnabfield33	varchar(60) NULL,
	lbr_cnabfield34	varchar(60) NULL,
	lbr_cnabfield35	varchar(60) NULL,
	lbr_cnabfield36	varchar(60) NULL,
	lbr_cnabfield37	varchar(60) NULL,
	lbr_cnabfield38	varchar(60) NULL,
	lbr_cnabfield39	varchar(60) NULL,
	lbr_cnabfield40	varchar(60) NULL,
	lbr_cnabfield41	varchar(60) NULL,
	lbr_cnabfield42	varchar(60) NULL,
	lbr_cnabfield43	varchar(60) NULL,
	lbr_cnabfield44	varchar(60) NULL,
	lbr_cnabfield45	varchar(60) NULL,
	lbr_cnabfield46	varchar(60) NULL,
	lbr_docdate    	timestamp NOT NULL 
	);

CREATE TABLE adempiere.lbr_docprint ( 
	lbr_docprint_id 	numeric(10,0) NOT NULL,
	ad_org_id       	numeric(10,0) NOT NULL,
	ad_client_id    	numeric(10,0) NOT NULL,
	isactive        	char(1) NOT NULL DEFAULT 'Y'::bpchar,
	created         	timestamp NOT NULL,
	createdby       	numeric(10,0) NOT NULL,
	updated         	timestamp NOT NULL,
	updatedby       	numeric(10,0) NOT NULL,
	name            	varchar(60) NOT NULL,
	description     	varchar(255) NULL,
	lbr_createfields	char(1) NULL,
	lbr_tablename   	varchar(60) NOT NULL,
	lbr_hassubdoc   	char(1) NOT NULL DEFAULT 'N'::bpchar,
	lbr_subdoc_id   	numeric(10,0) NULL,
	lbr_subdocrow   	numeric(10,0) NULL,
	lbr_norows      	numeric(10,0) NULL,
	lbr_nocols      	numeric(10,0) NULL,
	lbr_issubdoc    	char(1) NOT NULL DEFAULT 'N'::bpchar 
	);

CREATE TABLE adempiere.lbr_docprintfield ( 
	lbr_docprintfield_id	numeric(10,0) NOT NULL,
	ad_org_id           	numeric(10,0) NOT NULL,
	ad_client_id        	numeric(10,0) NOT NULL,
	isactive            	char(1) NOT NULL DEFAULT 'Y'::bpchar,
	created             	timestamp NOT NULL,
	createdby           	numeric(10,0) NOT NULL,
	updated             	timestamp NOT NULL,
	updatedby           	numeric(10,0) NOT NULL,
	lbr_docprint_id     	numeric(10,0) NOT NULL,
	name                	varchar(60) NOT NULL,
	lbr_rowno           	numeric(10,0) NULL,
	lbr_columnno        	numeric(10,0) NULL,
	comments            	varchar(255) NULL,
	lbr_printformat     	varchar(1) NULL DEFAULT 'S'::character varying,
	lbr_isheader        	char(1) NOT NULL DEFAULT 'N'::bpchar,
	lbr_fieldalignment  	varchar(1) NULL DEFAULT 'L'::character varying,
	lbr_fieldlength     	numeric(10,0) NULL 
	);

CREATE TABLE adempiere.lbr_fiscalgroup_bpartner ( 
	lbr_fiscalgroup_bpartner_id	numeric(10,0) NOT NULL,
	ad_org_id                  	numeric(10,0) NOT NULL,
	ad_client_id               	numeric(10,0) NOT NULL,
	isactive                   	char(1) NOT NULL DEFAULT 'Y'::bpchar,
	created                    	timestamp NOT NULL,
	createdby                  	numeric(10,0) NOT NULL,
	updated                    	timestamp NOT NULL,
	updatedby                  	numeric(10,0) NOT NULL,
	name                       	varchar(60) NOT NULL,
	description                	varchar(255) NULL 
	);

CREATE TABLE adempiere.lbr_fiscalgroup_product ( 
	lbr_fiscalgroup_product_id	numeric(10,0) NOT NULL,
	ad_org_id                 	numeric(10,0) NOT NULL,
	ad_client_id              	numeric(10,0) NOT NULL,
	isactive                  	char(1) NOT NULL DEFAULT 'Y'::bpchar,
	created                   	timestamp NOT NULL,
	createdby                 	numeric(10,0) NOT NULL,
	updated                   	timestamp NOT NULL,
	updatedby                 	numeric(10,0) NOT NULL,
	name                      	varchar(60) NOT NULL,
	description               	varchar(255) NULL 
	);

CREATE TABLE adempiere.lbr_icmsmatrix ( 
	lbr_icmsmatrix_id	numeric(10,0) NOT NULL,
	ad_org_id        	numeric(10,0) NOT NULL,
	ad_client_id     	numeric(10,0) NOT NULL,
	isactive         	char(1) NOT NULL DEFAULT 'Y'::bpchar,
	created          	timestamp NOT NULL,
	createdby        	numeric(10,0) NOT NULL,
	updated          	timestamp NOT NULL,
	updatedby        	numeric(10,0) NOT NULL,
	c_region_id      	numeric(10,0) NOT NULL,
	to_region_id     	numeric(10,0) NOT NULL,
	lbr_tax_id       	varchar(22) NULL 
	);

CREATE TABLE adempiere.lbr_ncm ( 
	lbr_ncm_id  	numeric(10,0) NOT NULL,
	ad_org_id   	numeric(10,0) NOT NULL,
	ad_client_id	numeric(10,0) NOT NULL,
	isactive    	char(1) NOT NULL DEFAULT 'Y'::bpchar,
	created     	timestamp NOT NULL,
	createdby   	numeric(10,0) NOT NULL,
	updated     	timestamp NOT NULL,
	updatedby   	numeric(10,0) NOT NULL,
	value       	varchar(60) NOT NULL,
	description 	varchar(255) NULL,
	lbr_tax_id  	varchar(22) NULL 
	);

CREATE TABLE adempiere.lbr_notafiscal ( 
	lbr_notafiscal_id     	numeric(10,0) NOT NULL,
	ad_org_id             	numeric(10,0) NOT NULL,
	ad_client_id          	numeric(10,0) NOT NULL,
	isactive              	char(1) NOT NULL DEFAULT 'Y'::bpchar,
	created               	timestamp NOT NULL,
	createdby             	numeric(10,0) NOT NULL,
	updated               	timestamp NOT NULL,
	updatedby             	numeric(10,0) NOT NULL,
	c_bpartner_id         	numeric(10,0) NULL,
	c_bpartner_location_id	numeric(10,0) NULL,
	c_doctype_id          	numeric(10,0) NULL,
	c_doctypetarget_id    	numeric(10,0) NULL,
	c_invoice_id          	numeric(10,0) NULL,
	c_order_id            	numeric(10,0) NULL,
	c_paymentterm_id      	numeric(10,0) NULL,
	m_inout_id            	numeric(10,0) NULL,
	m_shipper_id          	numeric(10,0) NULL,
	bill_location_id      	numeric(10,0) NULL,
	documentno            	varchar(30) NOT NULL,
	description           	varchar(255) NULL,
	issotrx               	char(1) NOT NULL DEFAULT 'Y'::bpchar,
	isprinted             	char(1) NOT NULL DEFAULT 'N'::bpchar,
	iscancelled           	char(1) NOT NULL DEFAULT 'N'::bpchar,
	bpname                	varchar(60) NULL,
	lbr_bpaddress1        	varchar(60) NULL,
	lbr_bpaddress2        	varchar(60) NULL,
	lbr_bpaddress3        	varchar(60) NULL,
	lbr_bpaddress4        	varchar(60) NULL,
	lbr_bpcnpj            	varchar(30) NULL,
	lbr_bpcity            	varchar(60) NULL,
	lbr_bpcountry         	varchar(60) NULL,
	lbr_bpie              	varchar(30) NULL,
	lbr_bpphone           	varchar(30) NULL,
	lbr_bppostal          	varchar(30) NULL,
	lbr_bpregion          	varchar(2) NULL,
	lbr_bpdeliveryaddress1	varchar(60) NULL,
	lbr_bpdeliveryaddress2	varchar(60) NULL,
	lbr_bpdeliveryaddress3	varchar(60) NULL,
	lbr_bpdeliveryaddress4	varchar(60) NULL,
	lbr_bpdeliverycnpj    	varchar(30) NULL,
	lbr_bpdeliverycity    	varchar(60) NULL,
	lbr_bpdeliverycountry 	varchar(60) NULL,
	lbr_bpdeliveryie      	varchar(30) NULL,
	lbr_bpdeliverypostal  	varchar(30) NULL,
	lbr_bpdeliveryregion  	varchar(2) NULL,
	lbr_bpinvoiceaddress1 	varchar(60) NULL,
	lbr_bpinvoiceaddress2 	varchar(60) NULL,
	lbr_bpinvoiceaddress3 	varchar(60) NULL,
	lbr_bpinvoiceaddress4 	varchar(60) NULL,
	lbr_bpinvoicecnpj     	varchar(30) NULL,
	lbr_bpinvoicecity     	varchar(60) NULL,
	lbr_bpinvoicecountry  	varchar(60) NULL,
	lbr_bpinvoiceie       	varchar(30) NULL,
	lbr_bpinvoiceregion   	varchar(2) NULL,
	lbr_bpshipperaddress1 	varchar(60) NULL,
	lbr_bpshipperaddress2 	varchar(60) NULL,
	lbr_bpshipperaddress3 	varchar(60) NULL,
	lbr_bpshipperaddress4 	varchar(60) NULL,
	lbr_bpshippercnpj     	varchar(30) NULL,
	lbr_bpshippercity     	varchar(60) NULL,
	lbr_bpshippercountry  	varchar(60) NULL,
	lbr_bpshipperie       	varchar(30) NULL,
	lbr_bpshipperpostal   	varchar(30) NULL,
	lbr_bpshipperregion   	varchar(2) NULL,
	lbr_bpinvoicepostal   	varchar(30) NULL,
	lbr_cnpj              	varchar(18) NULL,
	lbr_ie                	varchar(30) NULL,
	datedoc               	timestamp NULL,
	freightamt            	numeric NULL,
	freightcostrule       	char(1) NULL,
	lbr_grossweight       	numeric NULL,
	lbr_netweight         	numeric NULL,
	nopackages            	numeric NULL,
	totallines            	numeric NULL,
	grandtotal            	numeric NULL,
	lbr_insuranceamt      	numeric NULL,
	processed             	char(1) NOT NULL DEFAULT 'N'::bpchar,
	processing            	char(1) NULL,
	lbr_ncmreference      	varchar(300) NULL,
	lbr_cfopreference     	varchar(300) NULL,
	documentnote          	varchar(300) NULL 
	);

CREATE TABLE adempiere.lbr_notafiscalline ( 
	lbr_notafiscalline_id	numeric(10,0) NOT NULL,
	ad_org_id            	numeric(10,0) NOT NULL,
	ad_client_id         	numeric(10,0) NOT NULL,
	isactive             	char(1) NOT NULL DEFAULT 'Y'::bpchar,
	created              	timestamp NOT NULL,
	createdby            	numeric(10,0) NOT NULL,
	updated              	timestamp NOT NULL,
	updatedby            	numeric(10,0) NOT NULL,
	c_invoiceline_id     	numeric(10,0) NULL,
	lbr_notafiscal_id    	numeric(10,0) NULL,
	m_product_id         	numeric(10,0) NULL,
	c_uom_id             	numeric(10,0) NULL,
	lbr_ncm_id           	numeric(10,0) NULL,
	lbr_cfop_id          	numeric(10,0) NULL,
	productname          	varchar(100) NULL,
	productvalue         	varchar(60) NULL,
	price                	numeric NULL,
	linetotalamt         	numeric NULL,
	pricelistamt         	numeric NULL,
	qty                  	numeric NULL,
	lbr_uomname          	varchar(60) NULL,
	description          	varchar(255) NULL,
	discount             	numeric NULL,
	line                 	numeric(10,0) NULL,
	lbr_ncmname          	varchar(60) NULL,
	lbr_cfopname         	varchar(60) NULL,
	vendorproductno      	varchar(60) NULL 
	);

CREATE TABLE adempiere.lbr_productcategory ( 
	lbr_productcategory_id	numeric(10,0) NOT NULL,
	ad_org_id             	numeric(10,0) NOT NULL,
	ad_client_id          	numeric(10,0) NOT NULL,
	isactive              	char(1) NOT NULL DEFAULT 'Y'::bpchar,
	created               	timestamp NOT NULL,
	createdby             	numeric(10,0) NOT NULL,
	updated               	timestamp NOT NULL,
	updatedby             	numeric(10,0) NOT NULL,
	name                  	varchar(60) NOT NULL,
	description           	varchar(255) NULL 
	);

CREATE TABLE adempiere.lbr_tax ( 
	lbr_tax_id  	numeric(10,0) NOT NULL,
	ad_org_id   	numeric(10,0) NOT NULL,
	ad_client_id	numeric(10,0) NOT NULL,
	isactive    	char(1) NOT NULL DEFAULT 'Y'::bpchar,
	created     	timestamp NOT NULL,
	createdby   	numeric(10,0) NOT NULL,
	updated     	timestamp NOT NULL,
	updatedby   	numeric(10,0) NOT NULL,
	description 	varchar(255) NULL 
	);

CREATE TABLE adempiere.lbr_taxconfig_bpartner ( 
	lbr_taxconfig_bpartner_id	numeric(10,0) NOT NULL,
	ad_org_id                	numeric(10,0) NOT NULL,
	ad_client_id             	numeric(10,0) NOT NULL,
	isactive                 	char(1) NOT NULL DEFAULT 'Y'::bpchar,
	created                  	timestamp NOT NULL,
	createdby                	numeric(10,0) NOT NULL,
	updated                  	timestamp NOT NULL,
	updatedby                	numeric(10,0) NOT NULL,
	lbr_taxconfiguration_id  	numeric(10,0) NOT NULL,
	c_bpartner_id            	numeric(10,0) NOT NULL,
	lbr_tax_id               	varchar(22) NOT NULL 
	);

CREATE TABLE adempiere.lbr_taxconfig_bpgroup ( 
	lbr_taxconfig_bpgroup_id   	numeric(10,0) NOT NULL,
	ad_org_id                  	numeric(10,0) NOT NULL,
	ad_client_id               	numeric(10,0) NOT NULL,
	isactive                   	char(1) NOT NULL DEFAULT 'Y'::bpchar,
	created                    	timestamp NOT NULL,
	createdby                  	numeric(10,0) NOT NULL,
	updated                    	timestamp NOT NULL,
	updatedby                  	numeric(10,0) NOT NULL,
	lbr_taxconfiguration_id    	numeric(10,0) NOT NULL,
	lbr_fiscalgroup_bpartner_id	numeric(10,0) NOT NULL,
	lbr_tax_id                 	varchar(22) NOT NULL 
	);

CREATE TABLE adempiere.lbr_taxconfig_product ( 
	lbr_taxconfig_product_id	numeric(10,0) NOT NULL,
	ad_org_id               	numeric(10,0) NOT NULL,
	ad_client_id            	numeric(10,0) NOT NULL,
	isactive                	char(1) NOT NULL DEFAULT 'Y'::bpchar,
	created                 	timestamp NOT NULL,
	createdby               	numeric(10,0) NOT NULL,
	updated                 	timestamp NOT NULL,
	updatedby               	numeric(10,0) NOT NULL,
	lbr_taxconfiguration_id 	numeric(10,0) NOT NULL,
	lbr_tax_id              	varchar(22) NOT NULL 
	);

CREATE TABLE adempiere.lbr_taxconfig_productgroup ( 
	lbr_taxconfig_productgroup_id	numeric(10,0) NOT NULL,
	ad_org_id                    	numeric(10,0) NOT NULL,
	ad_client_id                 	numeric(10,0) NOT NULL,
	isactive                     	char(1) NOT NULL DEFAULT 'Y'::bpchar,
	created                      	timestamp NOT NULL,
	createdby                    	numeric(10,0) NOT NULL,
	updated                      	timestamp NOT NULL,
	updatedby                    	numeric(10,0) NOT NULL,
	lbr_taxconfiguration_id      	numeric(10,0) NOT NULL,
	lbr_tax_id                   	varchar(22) NOT NULL 
	);

CREATE TABLE adempiere.lbr_taxconfig_region ( 
	lbr_taxconfig_region_id	numeric(10,0) NOT NULL,
	ad_org_id              	numeric(10,0) NOT NULL,
	ad_client_id           	numeric(10,0) NOT NULL,
	isactive               	char(1) NOT NULL DEFAULT 'Y'::bpchar,
	created                	timestamp NOT NULL,
	createdby              	numeric(10,0) NOT NULL,
	updated                	timestamp NOT NULL,
	updatedby              	numeric(10,0) NOT NULL,
	lbr_taxconfiguration_id	numeric(10,0) NOT NULL,
	c_region_id            	numeric(10,0) NOT NULL,
	to_region_id           	numeric(10,0) NOT NULL,
	lbr_tax_id             	varchar(22) NOT NULL 
	);

CREATE TABLE adempiere.lbr_taxconfiguration ( 
	lbr_taxconfiguration_id   	numeric(10,0) NOT NULL,
	ad_org_id                 	numeric(10,0) NOT NULL,
	ad_client_id              	numeric(10,0) NOT NULL,
	isactive                  	char(1) NOT NULL DEFAULT 'Y'::bpchar,
	created                   	timestamp NOT NULL,
	createdby                 	numeric(10,0) NOT NULL,
	updated                   	timestamp NOT NULL,
	updatedby                 	numeric(10,0) NOT NULL,
	lbr_exceptiontype         	char(1) NULL DEFAULT 'P'::bpchar,
	m_product_id              	numeric(10,0) NULL,
	lbr_fiscalgroup_product_id	numeric(10,0) NULL 
	);

CREATE TABLE adempiere.lbr_taxformula ( 
	lbr_taxformula_id  	numeric(10,0) NOT NULL,
	ad_org_id          	numeric(10,0) NOT NULL,
	ad_client_id       	numeric(10,0) NOT NULL,
	isactive           	char(1) NOT NULL DEFAULT 'Y'::bpchar,
	created            	timestamp NOT NULL,
	createdby          	numeric(10,0) NOT NULL,
	updated            	timestamp NOT NULL,
	updatedby          	numeric(10,0) NOT NULL,
	lbr_taxname_id     	numeric(10,0) NOT NULL,
	lbr_transactiontype	char(3) NOT NULL,
	lbr_formula        	varchar(1000) NOT NULL,
	lbr_formulanetworth	varchar(1000) NOT NULL 
	);

CREATE TABLE adempiere.lbr_taxline ( 
	lbr_taxline_id	numeric(10,0) NOT NULL,
	ad_org_id     	numeric(10,0) NOT NULL,
	ad_client_id  	numeric(10,0) NOT NULL,
	isactive      	char(1) NOT NULL DEFAULT 'Y'::bpchar,
	created       	timestamp NOT NULL,
	createdby     	numeric(10,0) NOT NULL,
	updated       	timestamp NOT NULL,
	updatedby     	numeric(10,0) NOT NULL,
	lbr_tax_id    	numeric(10,0) NOT NULL,
	lbr_taxrate   	numeric NULL,
	lbr_taxbase   	numeric NULL,
	lbr_posttax   	char(1) NOT NULL DEFAULT 'Y'::bpchar,
	lbr_taxamt    	numeric NULL,
	lbr_taxname_id	numeric(10,0) NOT NULL,
	lbr_taxbaseamt	numeric NULL 
	);

CREATE TABLE adempiere.lbr_taxname ( 
	lbr_taxname_id   	numeric(10,0) NOT NULL,
	ad_org_id        	numeric(10,0) NOT NULL,
	ad_client_id     	numeric(10,0) NOT NULL,
	isactive         	char(1) NOT NULL DEFAULT 'Y'::bpchar,
	created          	timestamp NOT NULL,
	createdby        	numeric(10,0) NOT NULL,
	updated          	timestamp NOT NULL,
	updatedby        	numeric(10,0) NOT NULL,
	name             	varchar(60) NOT NULL,
	description      	varchar(255) NULL,
	lbr_taxtype      	char(1) NOT NULL DEFAULT 'P'::bpchar,
	haswithhold      	char(1) NOT NULL DEFAULT 'N'::bpchar,
	withholdthreshold	numeric NULL 
	);

ALTER TABLE adempiere.lbr_bank
	ADD CONSTRAINT lbr_bank_key
	PRIMARY KEY (lbr_bank_id);

ALTER TABLE adempiere.lbr_bankinfo
	ADD CONSTRAINT lbr_bankinfo_key
	PRIMARY KEY (lbr_bankinfo_id);

ALTER TABLE adempiere.lbr_boleto
	ADD CONSTRAINT lbr_boleto_key
	PRIMARY KEY (lbr_boleto_id);

ALTER TABLE adempiere.lbr_bpartnercategory
	ADD CONSTRAINT lbr_bpartnercategory_key
	PRIMARY KEY (lbr_bpartnercategory_id);

ALTER TABLE adempiere.lbr_cfop
	ADD CONSTRAINT lbr_cfop_key
	PRIMARY KEY (lbr_cfop_id);

ALTER TABLE adempiere.lbr_cfopline
	ADD CONSTRAINT lbr_cfopline_key
	PRIMARY KEY (lbr_cfopline_id);

ALTER TABLE adempiere.lbr_cnab
	ADD CONSTRAINT lbr_cnab_key
	PRIMARY KEY (lbr_cnab_id);

ALTER TABLE adempiere.lbr_docprint
	ADD CONSTRAINT lbr_docprint_key
	PRIMARY KEY (lbr_docprint_id);

ALTER TABLE adempiere.lbr_docprintfield
	ADD CONSTRAINT lbr_docprintfield_key
	PRIMARY KEY (lbr_docprintfield_id);

ALTER TABLE adempiere.lbr_fiscalgroup_bpartner
	ADD CONSTRAINT lbr_fiscalgroup_bpartner_key
	PRIMARY KEY (lbr_fiscalgroup_bpartner_id);

ALTER TABLE adempiere.lbr_fiscalgroup_product
	ADD CONSTRAINT lbr_fiscalgroup_product_key
	PRIMARY KEY (lbr_fiscalgroup_product_id);

ALTER TABLE adempiere.lbr_icmsmatrix
	ADD CONSTRAINT lbr_icmsmatrix_key
	PRIMARY KEY (lbr_icmsmatrix_id);

ALTER TABLE adempiere.lbr_ncm
	ADD CONSTRAINT lbr_ncm_key
	PRIMARY KEY (lbr_ncm_id);

ALTER TABLE adempiere.lbr_notafiscal
	ADD CONSTRAINT lbr_notafiscal_key
	PRIMARY KEY (lbr_notafiscal_id);

ALTER TABLE adempiere.lbr_notafiscalline
	ADD CONSTRAINT lbr_notafiscalline_key
	PRIMARY KEY (lbr_notafiscalline_id);

ALTER TABLE adempiere.lbr_productcategory
	ADD CONSTRAINT lbr_productcategory_key
	PRIMARY KEY (lbr_productcategory_id);

ALTER TABLE adempiere.lbr_tax
	ADD CONSTRAINT lbr_tax_key
	PRIMARY KEY (lbr_tax_id);

ALTER TABLE adempiere.lbr_taxconfig_bpartner
	ADD CONSTRAINT lbr_taxconfig_bpartner_key
	PRIMARY KEY (lbr_taxconfig_bpartner_id);

ALTER TABLE adempiere.lbr_taxconfig_bpgroup
	ADD CONSTRAINT lbr_taxconfig_bpgroup_key
	PRIMARY KEY (lbr_taxconfig_bpgroup_id);

ALTER TABLE adempiere.lbr_taxconfig_product
	ADD CONSTRAINT lbr_taxconfig_product_key
	PRIMARY KEY (lbr_taxconfig_product_id);

ALTER TABLE adempiere.lbr_taxconfig_productgroup
	ADD CONSTRAINT lbr_taxconfig_productgroup_key
	PRIMARY KEY (lbr_taxconfig_productgroup_id);

ALTER TABLE adempiere.lbr_taxconfig_region
	ADD CONSTRAINT lbr_taxconfig_region_key
	PRIMARY KEY (lbr_taxconfig_region_id);

ALTER TABLE adempiere.lbr_taxconfiguration
	ADD CONSTRAINT lbr_taxconfiguration_key
	PRIMARY KEY (lbr_taxconfiguration_id);

ALTER TABLE adempiere.lbr_taxformula
	ADD CONSTRAINT lbr_taxformula_key
	PRIMARY KEY (lbr_taxformula_id);

ALTER TABLE adempiere.lbr_taxline
	ADD CONSTRAINT lbr_taxline_key
	PRIMARY KEY (lbr_taxline_id);

ALTER TABLE adempiere.lbr_taxname
	ADD CONSTRAINT lbr_taxname_key
	PRIMARY KEY (lbr_taxname_id);

ALTER TABLE adempiere.lbr_bank
	ADD CONSTRAINT lbr_bank_routingkey
	UNIQUE (routingno);

ALTER TABLE adempiere.lbr_bankinfo
	ADD CONSTRAINT lbr_bankinfo_key2
	UNIQUE (lbr_bank_id, lbr_bankinfo_id);

ALTER TABLE adempiere.lbr_icmsmatrix
	ADD CONSTRAINT lbr_icmsmatrix_key2
	UNIQUE (c_region_id, to_region_id);

ALTER TABLE adempiere.lbr_taxconfig_bpartner
	ADD CONSTRAINT lbr_taxconfig_bpartner_key2
	UNIQUE (c_bpartner_id, lbr_taxconfiguration_id);

ALTER TABLE adempiere.lbr_taxconfig_bpgroup
	ADD CONSTRAINT lbr_taxconfig_bpgroup_key2
	UNIQUE (lbr_fiscalgroup_bpartner_id, lbr_taxconfiguration_id);

ALTER TABLE adempiere.lbr_taxconfig_product
	ADD CONSTRAINT lbr_taxconfig_product_key2
	UNIQUE (lbr_taxconfiguration_id);

ALTER TABLE adempiere.lbr_taxconfig_productgroup
	ADD CONSTRAINT lbr_taxconfig_productgroup_key2
	UNIQUE (lbr_taxconfiguration_id);

ALTER TABLE adempiere.lbr_taxconfig_region
	ADD CONSTRAINT lbr_taxconfig_region_key2
	UNIQUE (c_region_id, lbr_taxconfiguration_id, to_region_id);

ALTER TABLE adempiere.lbr_taxconfiguration
	ADD CONSTRAINT lbr_taxconfiguration_key2
	UNIQUE (lbr_exceptiontype, lbr_fiscalgroup_product_id, m_product_id);

ALTER TABLE adempiere.lbr_taxformula
	ADD CONSTRAINT lbr_taxformula_key2
	UNIQUE (lbr_taxname_id, lbr_transactiontype);

ALTER TABLE adempiere.lbr_taxline
	ADD CONSTRAINT lbr_taxline_key2
	UNIQUE (lbr_tax_id, lbr_taxname_id);

ALTER TABLE adempiere.lbr_bank
	ADD CONSTRAINT lbr_bank_isactive_check
	CHECK (isactive = ANY (ARRAY['Y'::bpchar, 'N'::bpchar]));

ALTER TABLE adempiere.lbr_bankinfo
	ADD CONSTRAINT lbr_bankinfo_isactive_check
	CHECK (isactive = ANY (ARRAY['Y'::bpchar, 'N'::bpchar]));

ALTER TABLE adempiere.lbr_boleto
	ADD CONSTRAINT lbr_boleto_lbr_iscancelled_check
	CHECK (lbr_iscancelled = ANY (ARRAY['Y'::bpchar, 'N'::bpchar]));

ALTER TABLE adempiere.lbr_boleto
	ADD CONSTRAINT lbr_boleto_isactive_check
	CHECK (isactive = ANY (ARRAY['Y'::bpchar, 'N'::bpchar]));

ALTER TABLE adempiere.lbr_bpartnercategory
	ADD CONSTRAINT lbr_bpartnercategory_isactive_check
	CHECK (isactive = ANY (ARRAY['Y'::bpchar, 'N'::bpchar]));

ALTER TABLE adempiere.lbr_cfop
	ADD CONSTRAINT lbr_cfop_isactive_check
	CHECK (isactive = ANY (ARRAY['Y'::bpchar, 'N'::bpchar]));

ALTER TABLE adempiere.lbr_cfopline
	ADD CONSTRAINT lbr_cfopline_lbr_issubtributaria_check
	CHECK (lbr_issubtributaria = ANY (ARRAY['Y'::bpchar, 'N'::bpchar]));

ALTER TABLE adempiere.lbr_cfopline
	ADD CONSTRAINT lbr_cfopline_lbr_ismanufactured_check
	CHECK (lbr_ismanufactured = ANY (ARRAY['Y'::bpchar, 'N'::bpchar]));

ALTER TABLE adempiere.lbr_cfopline
	ADD CONSTRAINT lbr_cfopline_isactive_check
	CHECK (isactive = ANY (ARRAY['Y'::bpchar, 'N'::bpchar]));

ALTER TABLE adempiere.lbr_cnab
	ADD CONSTRAINT lbr_cnab_lbr_iscancelled_check
	CHECK (lbr_iscancelled = ANY (ARRAY['Y'::bpchar, 'N'::bpchar]));

ALTER TABLE adempiere.lbr_cnab
	ADD CONSTRAINT lbr_cnab_isactive_check
	CHECK (isactive = ANY (ARRAY['Y'::bpchar, 'N'::bpchar]));

ALTER TABLE adempiere.lbr_docprint
	ADD CONSTRAINT lbr_docprint_lbr_issubdoc_check
	CHECK (lbr_issubdoc = ANY (ARRAY['Y'::bpchar, 'N'::bpchar]));

ALTER TABLE adempiere.lbr_docprint
	ADD CONSTRAINT lbr_docprint_lbr_hassubdoc_check
	CHECK (lbr_hassubdoc = ANY (ARRAY['Y'::bpchar, 'N'::bpchar]));

ALTER TABLE adempiere.lbr_docprint
	ADD CONSTRAINT lbr_docprint_isactive_check
	CHECK (isactive = ANY (ARRAY['Y'::bpchar, 'N'::bpchar]));

ALTER TABLE adempiere.lbr_docprintfield
	ADD CONSTRAINT lbr_docprintfield_lbr_isheader_check
	CHECK (lbr_isheader = ANY (ARRAY['Y'::bpchar, 'N'::bpchar]));

ALTER TABLE adempiere.lbr_docprintfield
	ADD CONSTRAINT lbr_docprintfield_isactive_check
	CHECK (isactive = ANY (ARRAY['Y'::bpchar, 'N'::bpchar]));

ALTER TABLE adempiere.lbr_fiscalgroup_bpartner
	ADD CONSTRAINT lbr_fiscalgroup_bpartner_isactive_check
	CHECK (isactive = ANY (ARRAY['Y'::bpchar, 'N'::bpchar]));

ALTER TABLE adempiere.lbr_fiscalgroup_product
	ADD CONSTRAINT lbr_fiscalgroup_product_isactive_check
	CHECK (isactive = ANY (ARRAY['Y'::bpchar, 'N'::bpchar]));

ALTER TABLE adempiere.lbr_icmsmatrix
	ADD CONSTRAINT lbr_icmsmatrix_isactive_check
	CHECK (isactive = ANY (ARRAY['Y'::bpchar, 'N'::bpchar]));

ALTER TABLE adempiere.lbr_ncm
	ADD CONSTRAINT lbr_ncm_isactive_check
	CHECK (isactive = ANY (ARRAY['Y'::bpchar, 'N'::bpchar]));

ALTER TABLE adempiere.lbr_notafiscal
	ADD CONSTRAINT lbr_notafiscal_processed_check
	CHECK (processed = ANY (ARRAY['Y'::bpchar, 'N'::bpchar]));

ALTER TABLE adempiere.lbr_notafiscal
	ADD CONSTRAINT lbr_notafiscal_issotrx_check
	CHECK (issotrx = ANY (ARRAY['Y'::bpchar, 'N'::bpchar]));

ALTER TABLE adempiere.lbr_notafiscal
	ADD CONSTRAINT lbr_notafiscal_isprinted_check
	CHECK (isprinted = ANY (ARRAY['Y'::bpchar, 'N'::bpchar]));

ALTER TABLE adempiere.lbr_notafiscal
	ADD CONSTRAINT lbr_notafiscal_iscancelled_check
	CHECK (iscancelled = ANY (ARRAY['Y'::bpchar, 'N'::bpchar]));

ALTER TABLE adempiere.lbr_notafiscal
	ADD CONSTRAINT lbr_notafiscal_isactive_check
	CHECK (isactive = ANY (ARRAY['Y'::bpchar, 'N'::bpchar]));

ALTER TABLE adempiere.lbr_notafiscalline
	ADD CONSTRAINT lbr_notafiscalline_isactive_check
	CHECK (isactive = ANY (ARRAY['Y'::bpchar, 'N'::bpchar]));

ALTER TABLE adempiere.lbr_productcategory
	ADD CONSTRAINT lbr_productcategory_isactive_check
	CHECK (isactive = ANY (ARRAY['Y'::bpchar, 'N'::bpchar]));

ALTER TABLE adempiere.lbr_tax
	ADD CONSTRAINT lbr_tax_isactive_check
	CHECK (isactive = ANY (ARRAY['Y'::bpchar, 'N'::bpchar]));

ALTER TABLE adempiere.lbr_taxconfig_bpartner
	ADD CONSTRAINT lbr_taxconfig_bpartner_isactive_check
	CHECK (isactive = ANY (ARRAY['Y'::bpchar, 'N'::bpchar]));

ALTER TABLE adempiere.lbr_taxconfig_bpgroup
	ADD CONSTRAINT lbr_taxconfig_bpgroup_isactive_check
	CHECK (isactive = ANY (ARRAY['Y'::bpchar, 'N'::bpchar]));

ALTER TABLE adempiere.lbr_taxconfig_product
	ADD CONSTRAINT lbr_taxconfig_product_isactive_check
	CHECK (isactive = ANY (ARRAY['Y'::bpchar, 'N'::bpchar]));

ALTER TABLE adempiere.lbr_taxconfig_productgroup
	ADD CONSTRAINT lbr_taxconfig_productgroup_isactive_check
	CHECK (isactive = ANY (ARRAY['Y'::bpchar, 'N'::bpchar]));

ALTER TABLE adempiere.lbr_taxconfig_region
	ADD CONSTRAINT lbr_taxconfig_region_isactive_check
	CHECK (isactive = ANY (ARRAY['Y'::bpchar, 'N'::bpchar]));

ALTER TABLE adempiere.lbr_taxconfiguration
	ADD CONSTRAINT lbr_taxconfiguration_isactive_check
	CHECK (isactive = ANY (ARRAY['Y'::bpchar, 'N'::bpchar]));

ALTER TABLE adempiere.lbr_taxformula
	ADD CONSTRAINT lbr_taxformula_isactive_check
	CHECK (isactive = ANY (ARRAY['Y'::bpchar, 'N'::bpchar]));

ALTER TABLE adempiere.lbr_taxline
	ADD CONSTRAINT lbr_taxline_lbr_posttax_check
	CHECK (lbr_posttax = ANY (ARRAY['Y'::bpchar, 'N'::bpchar]));

ALTER TABLE adempiere.lbr_taxline
	ADD CONSTRAINT lbr_taxline_isactive_check
	CHECK (isactive = ANY (ARRAY['Y'::bpchar, 'N'::bpchar]));

ALTER TABLE adempiere.lbr_taxname
	ADD CONSTRAINT lbr_taxname_isactive_check
	CHECK (isactive = ANY (ARRAY['Y'::bpchar, 'N'::bpchar]));

ALTER TABLE adempiere.lbr_taxname
	ADD CONSTRAINT lbr_taxname_haswithhold_check
	CHECK (haswithhold = ANY (ARRAY['Y'::bpchar, 'N'::bpchar]));

