CREATE OR REPLACE VIEW LBR_NFLineTax_V AS 
SELECT
	nflt.AD_Client_ID,
	nflt.AD_Org_ID,
    nfl.LBR_NotaFiscal_ID,
    nfl.LBR_CFOPName,
	nflt.LBR_NotaFiscalLine_ID,
	nflt.LBR_TaxGroup_ID,
	tg.Name                  AS TaxIndicator,
	SUM(nflt.LBR_TaxBaseAmt) AS LBR_TaxBaseAmt,
	SUM(nflt.LBR_TaxAmt)     AS LBR_TaxAmt,
	nflt.LBR_TaxRate,
	nflt.LBR_TaxBase,
	((COALESCE(p.LBR_ProductSource, ' '::BPCHAR))::TEXT 
    || (COALESCE(ts.Name, ''::CHARACTER VARYING))::TEXT) AS CST 

FROM
	LBR_nflinetax nflt 

INNER JOIN 
    LBR_TaxGroup tg ON (tg.LBR_TaxGroup_ID = nflt.LBR_TaxGroup_ID)

INNER JOIN 
    LBR_NotaFiscalLine nfl ON (nfl.LBR_NotaFiscalLine_ID = nflt.LBR_NotaFiscalLine_ID)

INNER JOIN 
    M_Product p ON (p.M_Product_ID = nfl.M_Product_ID)

LEFT JOIN 
    LBR_TaxStatus ts ON (nflt.LBR_TaxStatus_ID = ts.LBR_TaxStatus_ID)

GROUP BY
	nflt.AD_Client_ID,
	nflt.AD_Org_ID,
	nflt.LBR_NotaFiscalLine_ID,
	nflt.LBR_TaxBase,
	nflt.LBR_TaxGroup_ID,
	nflt.LBR_TaxRate,
	p.LBR_ProductSource,
	tg.Name,
	ts.Name,
    nfl.LBR_CFOPName,
    nfl.LBR_NotaFiscal_ID;
    
SELECT Register_Migration_Script ('121-LBR_NFLineTax_V.sql') FROM DUAL
;