-- View: rv_invoicepayschedule
SET SQLBLANKLINES ON
SET DEFINE OFF

DROP VIEW rv_invoicepayschedule;

  CREATE OR REPLACE FORCE VIEW "ADEMPIERE"."RV_INVOICEPAYSCHEDULE" ("LBR_NOTAFISCAL_ID", "AD_ORG_ID", "AD_CLIENT_ID", "DOCUMENTNO", "C_INVOICE_ID", "C_ORDER_ID", "C_BPARTNER_ID", "ISSOTRX", "DATEINVOICED", "DATEACCT", "NETDAYS", "DUEDATE", "DAYSDUE", "DISCOUNTDATE", "DISCOUNTAMT", "GRANDTOTAL", "PAIDAMT", "OPENAMT", "C_CURRENCY_ID", "C_CONVERSIONTYPE_ID", "C_PAYMENTTERM_ID", "ISPAYSCHEDULEVALID", "C_INVOICEPAYSCHEDULE_ID", "INVOICECOLLECTIONTYPE", "C_CAMPAIGN_ID", "C_PROJECT_ID", "C_ACTIVITY_ID") AS 
  SELECT
 	(SELECT C_Invoice.LBR_NotaFiscal_ID FROM C_Invoice WHERE C_Invoice.C_Invoice_ID=i.C_Invoice_ID)	AS LBR_NotaFiscal_ID,
 	i.AD_Org_ID, i.AD_Client_ID, i.DocumentNo, i.C_Invoice_ID, i.C_Order_ID,
     i.C_BPartner_ID, i.IsSOTrx, i.DateInvoiced,	i.DateAcct, p.NetDays,
 	CAST(PaymentTermDueDate(i.C_PaymentTerm_ID, (i.DateInvoiced)) AS TIMESTAMP) AS DueDate,
 	PaymentTermDueDays(i.C_PaymentTerm_ID, (i.DateInvoiced), getDate()) AS DaysDue,
 	CAST(AddDays((i.dateinvoiced), p.DiscountDays) AS TIMESTAMP) AS DiscountDate,
 	Round(((i.GrandTotal * p.Discount) / (100)), 2) AS DiscountAmt,
 	i.GrandTotal,
 	InvoicePaid(i.C_Invoice_ID, i.C_Currency_ID, (1)) AS PaidAmt,
 	InvoiceOpen(i.C_Invoice_ID, (0)) AS OpenAmt,
 	i.C_Currency_ID, i.C_ConversionType_ID, i.C_PaymentTerm_ID, i.IsPayScheduleValid, NULL AS C_InvoicePaySchedule_ID,
 	i.InvoiceCollectionType, i.C_Campaign_ID, i.C_Project_ID, i.C_Activity_ID
 FROM
 	RV_C_Invoice i INNER JOIN C_PaymentTerm p  ON i.C_PaymentTerm_ID = p.C_PaymentTerm_ID
 WHERE
 	InvoiceOpen (i.C_Invoice_ID, 0) <> 0
 	AND i.IsPayScheduleValid <> 'Y'
 UNION
 SELECT
 	(SELECT C_Invoice.LBR_NotaFiscal_ID FROM C_Invoice WHERE C_Invoice.C_Invoice_ID=i.C_Invoice_ID)	AS LBR_NotaFiscal_ID,
 	i.AD_Org_ID, i.AD_Client_ID, i.DocumentNo, i.C_Invoice_ID, i.C_Order_ID,
     i.C_BPartner_ID, i.IsSOTrx, i.DateInvoiced,	i.DateAcct,
 	DaysBetween((ips.DueDate), (i.DateInvoiced)) AS NetDays,
 	ips.DueDate,
 	DaysBetween(GetDate(), (ips.DueDate)) AS DaysDue,
 	ips.DiscountDate, ips.DiscountAmt,
 	ips.DueAmt AS GrandTotal,
 	InvoicePaid(i.C_Invoice_ID, i.C_Currency_ID, (1)) AS PaidAmt,
 	InvoiceOpen(i.C_Invoice_ID, (0)) AS OpenAmt,
 	i.C_Currency_ID, i.C_ConversionType_ID, i.C_PaymentTerm_ID, i.IsPayScheduleValid,
 	ips.C_InvoicePaySchedule_ID, i.InvoiceCollectionType, i.C_Campaign_ID, i.C_Project_ID, i.C_Activity_ID
 FROM
 	RV_C_Invoice i INNER JOIN C_InvoicePaySchedule ips ON i.C_Invoice_ID = ips.C_Invoice_ID
 WHERE
 	InvoiceOpen(i.C_Invoice_ID, ips.C_InvoicePaySchedule_ID) <> 0
 	AND i.IsPayScheduleValid = 'Y'
 	AND	ips.IsValid = 'Y';

SELECT Register_Migration_Script ('201810191740_FixRV_InvoicePaySchedule.sql') FROM DUAL
;
