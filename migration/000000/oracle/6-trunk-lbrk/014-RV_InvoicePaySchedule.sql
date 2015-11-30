/******************************************************************************
 * Copyright (C) 2011 Ricardo Santana                                         *
 * Copyright (C) 2011 Kenos Assessoria e Consultoria de Sistemas Ltda         *
 * This program is free software; you can redistribute it and/or modify it    *
 * under the terms version 2 of the GNU General Public License as published   *
 * by the Free Software Foundation. This program is distributed in the hope   *
 * that it will be useful, but WITHOUT ANY WARRANTY; without even the implied *
 * warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.           *
 * See the GNU General Public License for more details.                       *
 * You should have received a copy of the GNU General Public License along    *
 * with this program; if not, write to the Free Software Foundation, Inc.,    *
 * 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA.                     *
 *****************************************************************************/

CREATE OR REPLACE VIEW RV_InvoicePaySchedule AS 
SELECT
	(SELECT C_Invoice.LBR_NotaFiscal_ID FROM C_Invoice WHERE C_Invoice.C_Invoice_ID=i.C_Invoice_ID)	AS LBR_NotaFiscal_ID,
	i.AD_Org_ID, i.AD_Client_ID, i.DocumentNo, i.C_Invoice_ID, i.C_Order_ID, 
    i.C_BPartner_ID, i.IsSOTrx, i.DateInvoiced,	i.DateAcct, p.NetDays,
	PaymentTermDueDate(i.C_PaymentTerm_ID, (i.DateInvoiced)) AS DueDate,
	PaymentTermDueDays(i.C_PaymentTerm_ID, (i.DateInvoiced), getDate()) AS DaysDue,
	AddDays((i.dateinvoiced), p.DiscountDays) AS DiscountDate,
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
	AND	ips.IsValid = 'Y'
	;
	
	EXIT