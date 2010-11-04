CREATE OR REPLACE FORCE VIEW LBR_SITICMS ("AD_CLIENT_ID", "LBR_NOTAFISCAL_ID", "DATAENTRADA", "DATEDOC", "ISCANCELLED", "CFOP", "UF", "TAXSTATUS", "VALORCONTABIL", "BASEICMS", "ALIQICMS", "VALORICMS", "VALORIPI", "ISENTOICMS", "OUTROSICMS", "OUTRASDESP")
AS
  SELECT nf.AD_Client_ID,
    nf.LBR_NotaFiscal_ID,
    COALESCE(nf.lbr_dateinout,nf.datedoc) AS DataEntrada,
    nf.datedoc                            AS DateDoc,
    nf.IsCancelled,
    COALESCE(TO_CHAR(nfl.lbr_CFOPName),'0') AS CFOP,
    COALESCE(TO_CHAR(nf.lbr_BPRegion),'EX') AS UF,
    nfl.lbr_TaxStatus                       AS TaxStatus,
    SUM( (
    CASE
      WHEN ((nfl.lbr_CFOPName LIKE '3.%'
      OR nfl.lbr_CFOPName LIKE '7.%')
      AND COALESCE(ticms.lbr_TaxBaseAmt,0) > 0)
      THEN COALESCE(ticms.lbr_TaxBaseAmt,0) -- CASO IMP e Base ICMS > 0, VALOR CONTABIL = BASE ICMS
      WHEN (nfl.lbr_CFOPName LIKE '3.%'
      OR nfl.lbr_CFOPName LIKE '7.%')                                  -- CASO IMP, VALOR CONTABIL = VALOR + IMPOSTO + FRETE + SEGURO + SISCOMEX
      THEN COALESCE(nfl.LineTotalAmt,0) +                              -- VALOR DA LINHA
        COALESCE(ticms.lbr_TaxAmt,0)    +                              -- VALOR ICMS
        COALESCE(tipi.lbr_TaxAmt,0)     +                              -- VALOR IPI
        COALESCE(tpis.lbr_TaxAmt,0)     +                              -- VALOR PIS
        COALESCE(tcofins.lbr_TaxAmt,0)  +                              -- VALOR COFINS
        ((COALESCE(nfl.LineTotalAmt,0)  * (COALESCE(nf.FreightAmt,0) + -- FRETE, SEGURO, SISCOMEX
        COALESCE(nf.lbr_InsuranceAmt,0) + COALESCE(nf.lbr_TotalSISCOMEX,0))) / COALESCE(
        CASE
          WHEN nf.TotalLines = 0
          THEN 1
          ELSE nf.TotalLines
        END,1))
      ELSE COALESCE(nfl.LineTotalAmt,0)   +                              -- VALOR DA LINHA
        COALESCE(tipi.lbr_TaxAmt,0)       +                              -- VALOR IPI
        ((COALESCE(nfl.LineTotalAmt,0)    * (COALESCE(nf.FreightAmt,0) + -- FRETE, SEGURO
        COALESCE(nf.lbr_InsuranceAmt,0))) / COALESCE(
        CASE
          WHEN nf.TotalLines = 0
          THEN 1
          ELSE nf.TotalLines
        END,1))
    END) )                                AS valorContabil, -- VALOR CONTABIL
    SUM(COALESCE(ticms.lbr_TaxBaseAmt,0)) AS baseICMS,      -- BASE ICMS
    COALESCE(ticms.lbr_TaxRate,0)         AS aliqICMS,      -- ALIQUOTA ICMS
    SUM(COALESCE(ticms.lbr_TaxAmt,0))     AS valorICMS,     -- VALOR ICMS
    SUM(COALESCE(tipi.lbr_TaxAmt,0))      AS valorIPI,      -- VALOR IPI
    COALESCE(SUM(
    CASE
      WHEN (nfl.lbr_TaxStatus LIKE '_20'
      OR nfl.lbr_TaxStatus LIKE '_30'
      OR nfl.lbr_TaxStatus LIKE '_40'
      OR nfl.lbr_TaxStatus LIKE '_41'
      OR nfl.lbr_TaxStatus LIKE '_60'
      OR nfl.lbr_TaxStatus LIKE '_70')
      THEN (COALESCE(ticms.lbr_TaxBaseAmt,0) /
        CASE
          WHEN (1-(COALESCE(ticms.lbr_TaxBase,0)/100)) = 0
          THEN 1
          ELSE (1-(COALESCE(ticms.lbr_TaxBase,0)/100))
        END)     - COALESCE(ticms.lbr_TaxBaseAmt,0)
    END),0) AS isentoICMS, -- ISENTO ICMS
    COALESCE(SUM(
    CASE
      WHEN (nfl.lbr_TaxStatus LIKE '_50'
      OR nfl.lbr_TaxStatus LIKE '_51'
      OR nfl.lbr_TaxStatus LIKE '_90')
      THEN (COALESCE(ticms.lbr_TaxBaseAmt,0) /
        CASE
          WHEN (1-(COALESCE(ticms.lbr_TaxBase,0)/100)) = 0
          THEN 1
          ELSE (1-(COALESCE(ticms.lbr_TaxBase,0)/100))
        END)     - COALESCE(ticms.lbr_TaxBaseAmt,0)
    END),0) AS outrosICMS,                                           -- OUTROS ICMS
    SUM((COALESCE(nfl.LineTotalAmt,0) * (COALESCE(nf.FreightAmt,0) + -- FRETE, SEGURO, SISCOMEX
    COALESCE(nf.lbr_InsuranceAmt,0))) / COALESCE(
    CASE
      WHEN nf.TotalLines = 0
      THEN 1
      ELSE nf.TotalLines
    END,1)) AS outrasDesp
  FROM ADEMPIERE.LBR_NotaFiscal nf
  INNER JOIN ADEMPIERE.LBR_NotaFiscalLine nfl
  ON (nf.LBR_NotaFiscal_ID = nfl.LBR_NotaFiscal_ID)
  LEFT JOIN ADEMPIERE.LBR_NFLineTax_V ticms
  ON (ticms.LBR_NotaFiscalLine_ID=nfl.LBR_NotaFiscalLine_ID
  AND ticms.TaxIndicator         ='ICMS')
  LEFT JOIN ADEMPIERE.LBR_NFLineTax_V tipi
  ON (tipi.LBR_NotaFiscalLine_ID=nfl.LBR_NotaFiscalLine_ID
  AND tipi.TaxIndicator         ='IPI')
  LEFT JOIN ADEMPIERE.LBR_NFLineTax_V tpis
  ON (tpis.LBR_NotaFiscalLine_ID=nfl.LBR_NotaFiscalLine_ID
  AND tpis.TaxIndicator         ='PIS')
  LEFT JOIN ADEMPIERE.LBR_NFLineTax_V tcofins
  ON (tcofins.LBR_NotaFiscalLine_ID=nfl.LBR_NotaFiscalLine_ID
  AND tcofins.TaxIndicator         ='COFINS')
  WHERE nfl.lbr_CFOPName NOT LIKE '0'
  AND nfl.lbr_CFOPName NOT LIKE '%1%933%'
  AND nfl.lbr_CFOPName NOT LIKE '%2%933%'
  AND nfl.lbr_CFOPName NOT LIKE '%Z%'
  GROUP BY nf.AD_Client_ID,
    nf.LBR_NotaFiscal_ID,
    COALESCE(nf.lbr_dateinout,nf.datedoc),
    nf.datedoc,
    nf.IsCancelled,
    COALESCE(TO_CHAR(nfl.lbr_CFOPName),'0'),
    COALESCE(TO_CHAR(nf.lbr_BPRegion),'EX'),
    nfl.lbr_TaxStatus,
    COALESCE(ticms.lbr_TaxRate,0);

CREATE OR REPLACE FORCE VIEW LBR_SITIPI ("AD_CLIENT_ID", "LBR_NOTAFISCAL_ID", "DATAENTRADA", "DATEDOC", "ISCANCELLED", "CFOP", "UF", "TAXSTATUS", "VALORTOTAL", "BASEIPI", "ALIQIPI", "VALORIPI", "ISENTOIPI", "OUTROSIPI")
AS
  SELECT nf.AD_Client_ID,
    nf.LBR_NotaFiscal_ID,
    COALESCE(nf.lbr_dateinout,nf.datedoc) AS DataEntrada,
    nf.datedoc,
    nf.IsCancelled,
    COALESCE(TO_CHAR(nfl.lbr_CFOPName),'0')      AS CFOP,
    COALESCE(TO_CHAR(lbr_BPRegion),'EX')         AS UF,
    COALESCE(TO_CHAR(nfl.lbr_TaxStatusIPI),'00') AS TaxStatus,
    SUM( (
    CASE
      WHEN ((nfl.lbr_CFOPName LIKE '3.%'
      OR nfl.lbr_CFOPName LIKE '7.%')
      AND COALESCE(tipi.lbr_TaxBaseAmt, 0) > 0)
      THEN COALESCE(tipi.lbr_TaxBaseAmt, 0) -- CASO IMP e Base IPI > 0, VALOR CONTABIL = BASE IPI
      WHEN (nfl.lbr_CFOPName LIKE '3.%'
      OR nfl.lbr_CFOPName LIKE '7.%')                                   -- CASO IMP, VALOR CONTABIL = VALOR + IMPOSTO + FRETE + SEGURO + SISCOMEX
      THEN COALESCE(nfl.LineTotalAmt, 0) +                              -- VALOR DA LINHA
        COALESCE(ticms.lbr_TaxAmt, 0)    +                              -- VALOR ICMS
        COALESCE(tipi.lbr_TaxAmt, 0)     +                              -- VALOR IPI
        COALESCE(tpis.lbr_TaxAmt, 0)     +                              -- VALOR PIS
        COALESCE(tcofins.lbr_TaxAmt, 0)  +                              -- VALOR COFINS
        ((COALESCE(nfl.LineTotalAmt, 0)  * (COALESCE(nf.FreightAmt,0) + -- FRETE, SEGURO, SISCOMEX
        COALESCE(nf.lbr_InsuranceAmt, 0) + COALESCE(nf.lbr_TotalSISCOMEX,0))) / COALESCE(
        CASE
          WHEN (nf.TotalLines = 0)
          THEN 1
          ELSE nf.TotalLines
        END, 1))
      ELSE COALESCE(nfl.LineTotalAmt, 0)   +                              -- VALOR DA LINHA
        COALESCE(tipi.lbr_TaxAmt, 0)       +                              -- VALOR IPI
        ((COALESCE(nfl.LineTotalAmt, 0)    * (COALESCE(nf.FreightAmt,0) + -- FRETE, SEGURO
        COALESCE(nf.lbr_InsuranceAmt, 0))) / COALESCE(
        CASE
          WHEN (nf.TotalLines = 0)
          THEN 1
          ELSE nf.TotalLines
        END, 1))
    END))                                AS valorTotal, -- VALOR TOTAL
    SUM(COALESCE(tipi.lbr_TaxBaseAmt,0)) AS baseIPI,
    0                                    AS aliqIPI,
    --COALESCE(tipi.lbr_TaxRate,0)         AS aliqIPI,
    SUM(COALESCE(tipi.lbr_TaxAmt,0)) AS valorIPI,
    SUM(
    CASE
      WHEN (nfl.lbr_TaxStatusIPI LIKE '_2'
      OR nfl.lbr_TaxStatusIPI LIKE '_3'
      OR nfl.lbr_TaxStatusIPI LIKE '_4')
      THEN (COALESCE(tipi.lbr_TaxBaseAmt,0) /
        CASE
          WHEN (1-(COALESCE(tipi.lbr_TaxBase,0)/100)) = 0
          THEN 1
          ELSE (1-(COALESCE(tipi.lbr_TaxBase,0)/100))
        END)     - COALESCE(tipi.lbr_TaxBaseAmt,0)
      ELSE 0
    END) AS isentoIPI,
    SUM(
    CASE
      WHEN (nfl.lbr_TaxStatusIPI LIKE '_5'
      OR nfl.lbr_TaxStatusIPI LIKE '_9')
      THEN (COALESCE(tipi.lbr_TaxBaseAmt,0) /
        CASE
          WHEN (1-(COALESCE(tipi.lbr_TaxBase,0)/100)) = 0
          THEN 1
          ELSE (1-(COALESCE(tipi.lbr_TaxBase,0)/100))
        END)     - COALESCE(tipi.lbr_TaxBaseAmt,0)
      ELSE 0
    END) AS outrosIPI
  FROM ADEMPIERE.LBR_NotaFiscal nf
  INNER JOIN ADEMPIERE.LBR_NotaFiscalLine nfl
  ON (nf.LBR_NotaFiscal_ID = nfl.LBR_NotaFiscal_ID)
  LEFT JOIN ADEMPIERE.LBR_NFLineTax_V ticms
  ON (ticms.LBR_NotaFiscalLine_ID=nfl.LBR_NotaFiscalLine_ID
  AND ticms.TaxIndicator         ='ICMS')
  LEFT JOIN ADEMPIERE.LBR_NFLineTax_V tipi
  ON (tipi.LBR_NotaFiscalLine_ID=nfl.LBR_NotaFiscalLine_ID
  AND tipi.TaxIndicator         ='IPI')
  LEFT JOIN ADEMPIERE.LBR_NFLineTax_V tpis
  ON (tpis.LBR_NotaFiscalLine_ID=nfl.LBR_NotaFiscalLine_ID
  AND tpis.TaxIndicator         ='PIS')
  LEFT JOIN ADEMPIERE.LBR_NFLineTax_V tcofins
  ON (tcofins.LBR_NotaFiscalLine_ID=nfl.LBR_NotaFiscalLine_ID
  AND tcofins.TaxIndicator         ='COFINS')
  WHERE nfl.lbr_CFOPName NOT LIKE '%1%933%'
  AND nfl.lbr_CFOPName NOT LIKE '%2%933%'
    --AND nfl.lbr_CFOPName NOT LIKE '%352%'
  AND nfl.lbr_CFOPName NOT LIKE '%Z%'
  GROUP BY nf.AD_Client_ID,
    nf.LBR_NotaFiscal_ID,
    COALESCE(nf.lbr_dateinout,nf.datedoc),
    nf.datedoc,
    nf.IsCancelled,
    COALESCE(TO_CHAR(nfl.lbr_CFOPName),'0'),
    COALESCE(TO_CHAR(nfl.lbr_TaxStatusIPI),'00'),
    COALESCE(TO_CHAR(lbr_BPRegion),'EX');
    
UPDATE AD_SysConfig SET Value='RC110-360/014-BF_3067106.sql' WHERE AD_SysConfig_ID=1100006
;

exit