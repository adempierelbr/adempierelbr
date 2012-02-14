//	VERSAO PARA PGSQL - CONVERTER
CREATE
	OR
REPLACE
	VIEW adempiere.rv_invoicepayschedule AS 
SELECT
	(	SELECT
			c_invoice.lbr_notafiscal_id 
		FROM
			c_invoice 
		WHERE
			(c_invoice.c_invoice_id = i.c_invoice_id)
	)
	AS lbr_notafiscal_id,
	i.ad_org_id,
	i.ad_client_id,
	i.documentno,
	i.c_invoice_id,
	i.c_order_id,
	i.c_bpartner_id,
	i.issotrx,
	i.dateinvoiced,
	i.dateacct,
	p.netdays,
	paymenttermduedate(i.c_paymentterm_id, (i.dateinvoiced)::TIMESTAMP 
	WITH
		TIME ZONE) AS duedate,
	paymenttermduedays(i.c_paymentterm_id, (i.dateinvoiced)::TIMESTAMP 
	WITH
		TIME ZONE,
		getdate
		(
		)
		) AS daysdue,
	adddays((i.dateinvoiced)::TIMESTAMP 
	WITH
		TIME ZONE,
		p.discountdays)                                AS discountdate,
	round(((i.grandtotal * p.discount) / (100)::NUMERIC), 2)                                              
	AS discountamt,
	i.grandtotal,
	invoicepaid(i.c_invoice_id, i.c_currency_id, (1)::NUMERIC) AS paidamt,
	invoiceopen(i.c_invoice_id, (0)::NUMERIC)                  AS openamt,
	i.c_currency_id,
	i.c_conversiontype_id,
	i.c_paymentterm_id,
	i.ispayschedulevalid,
	NULL::NUMERIC                                             AS 
	c_invoicepayschedule_id,
	i.invoicecollectiontype,
	i.c_campaign_id,
	i.c_project_id,
	i.c_activity_id 
FROM
	(rv_c_invoice i 
		JOIN c_paymentterm p 
		ON ((i.c_paymentterm_id = p.c_paymentterm_id))) 
WHERE
	(((invoiceopen(i.c_invoice_id, (0)::NUMERIC) <> (0)::NUMERIC) AND
	(i.ispayschedulevalid <> 'Y'::bpchar))) 
UNION
SELECT
	(	SELECT
			c_invoice.lbr_notafiscal_id 
		FROM
			c_invoice 
		WHERE
			(c_invoice.c_invoice_id = i.c_invoice_id)
	)
	AS lbr_notafiscal_id,
	i.ad_org_id,
	i.ad_client_id,
	i.documentno,
	i.c_invoice_id,
	i.c_order_id,
	i.c_bpartner_id,
	i.issotrx,
	i.dateinvoiced,
	i.dateacct,
	daysbetween((ips.duedate)::TIMESTAMP 
	WITH
		TIME ZONE,
		(
			i.dateinvoiced
		)
		::TIMESTAMP WITH TIME ZONE)                            AS netdays,
	ips.duedate,
	daysbetween(getdate(), (ips.duedate)::TIMESTAMP 
	WITH
		TIME ZONE)                 AS daysdue,
	ips.discountdate,
	ips.discountamt,
	ips.dueamt                                                AS grandtotal,
	invoicepaid(i.c_invoice_id, i.c_currency_id, (1)::NUMERIC) AS paidamt,
	invoiceopen(i.c_invoice_id, ips.c_invoicepayschedule_id)  AS openamt,
	i.c_currency_id,
	i.c_conversiontype_id,
	i.c_paymentterm_id,
	i.ispayschedulevalid,
	ips.c_invoicepayschedule_id,
	i.invoicecollectiontype,
	i.c_campaign_id,
	i.c_project_id,
	i.c_activity_id 
FROM
	(rv_c_invoice i 
		JOIN c_invoicepayschedule ips 
		ON ((i.c_invoice_id = ips.c_invoice_id))) 
WHERE
	((((invoiceopen(i.c_invoice_id, ips.c_invoicepayschedule_id) <> (0)::NUMERIC
	) AND
	(i.ispayschedulevalid = 'Y'::bpchar))) AND
	(ips.isvalid = 'Y'::bpchar));