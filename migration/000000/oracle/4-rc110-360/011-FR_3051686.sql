--- VIEWS PARA LIVROS FISCAIS, SPED, GIA, SINTEGRA, ETC..
--- ORACLE - Mario Grigioni, mgrigioni (23-AUG-2010)
--- POSTGRESQL - Pablo Boff Pigozzo, pablobp (23-AUG-2010)

CREATE OR REPLACE FORCE VIEW LBR_NFLINETAX_V ("AD_CLIENT_ID", "AD_ORG_ID", "LBR_NOTAFISCAL_ID", "LBR_CFOPNAME", "LBR_NOTAFISCALLINE_ID", "LBR_TAXGROUP_ID", "TAXINDICATOR", "LBR_TAXBASEAMT", "LBR_TAXAMT", "LBR_TAXRATE", "LBR_TAXBASE")
AS
  SELECT NFLT.AD_CLIENT_ID,
    NFLT.AD_ORG_ID,
    NFL.LBR_NOTAFISCAL_ID,
    NFL.lbr_CFOPName,
    NFLT.LBR_NOTAFISCALLINE_ID,
    NFLT.LBR_TAXGROUP_ID,
    TG.Name                  AS TAXINDICATOR,
    SUM(NFLT.LBR_TAXBASEAMT) AS LBR_TAXBASEAMT,
    SUM(NFLT.LBR_TAXAMT)     AS LBR_TAXAMT,
    NFLT.LBR_TAXRATE,
    NFLT.LBR_TAXBASE
  FROM LBR_NFLINETAX NFLT
  INNER JOIN LBR_NOTAFISCALLINE NFL
  ON (NFLT.LBR_NOTAFISCALLINE_ID = NFL.LBR_NOTAFISCALLINE_ID)
  INNER JOIN LBR_TAXGROUP TG
  ON TG.LBR_TAXGROUP_ID=NFLT.LBR_TAXGROUP_ID
  GROUP BY NFLT.AD_CLIENT_ID,
    NFLT.AD_ORG_ID,
    NFL.LBR_NOTAFISCAL_ID,
    NFL.lbr_CFOPName,
    NFLT.LBR_NOTAFISCALLINE_ID,
    NFLT.LBR_TAXGROUP_ID,
    TG.Name,
    NFLT.LBR_TAXRATE,
    NFLT.LBR_TAXBASE;
    
CREATE OR REPLACE FORCE VIEW LBR_NFTAX_V ("AD_CLIENT_ID", "AD_ORG_ID", "LBR_NOTAFISCAL_ID", "LBR_TAXGROUP_ID", "TAXINDICATOR", "LBR_TAXBASEAMT", "LBR_TAXAMT")
AS
  SELECT NFT.AD_CLIENT_ID,
    NFT.AD_ORG_ID,
    NFT.LBR_NOTAFISCAL_ID,
    NFT.LBR_TAXGROUP_ID,
    TG.Name                 AS TAXINDICATOR,
    SUM(NFT.LBR_TAXBASEAMT) AS LBR_TAXBASEAMT,
    SUM(NFT.LBR_TAXAMT)     AS LBR_TAXAMT
  FROM LBR_NFTAX NFT
  INNER JOIN LBR_TAXGROUP TG
  ON TG.LBR_TAXGROUP_ID=NFT.LBR_TAXGROUP_ID
  GROUP BY NFT.AD_CLIENT_ID,
    NFT.AD_ORG_ID,
    NFT.LBR_NOTAFISCAL_ID,
    NFT.LBR_TAXGROUP_ID,
    TG.Name;
    
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
      THEN (COALESCE(ticms.lbr_TaxBaseAmt,0) / (1-(COALESCE(ticms.lbr_TaxBase,0)/100))) - COALESCE(ticms.lbr_TaxBaseAmt,0)
    END),0) AS isentoICMS, -- ISENTO ICMS
    COALESCE(SUM(
    CASE
      WHEN (nfl.lbr_TaxStatus LIKE '_50'
      OR nfl.lbr_TaxStatus LIKE '_51'
      OR nfl.lbr_TaxStatus LIKE '_90')
      THEN (COALESCE(ticms.lbr_TaxBaseAmt,0) / (1-(COALESCE(ticms.lbr_TaxBase,0)/100))) - COALESCE(ticms.lbr_TaxBaseAmt,0)
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
    
 CREATE OR REPLACE FORCE VIEW LBR_SITICMS_V ("AD_CLIENT_ID", "LBR_NOTAFISCAL_ID", "DATAENTRADA", "DATEDOC", "ISCANCELLED", "CFOP", "UF", "VALORCONTABIL", "BASEICMS", "ALIQICMS", "VALORICMS", "ISENTOICMS", "OUTROSICMS", "OUTRASDESP", "VALORIPI")
 AS
   SELECT AD_Client_ID,
     LBR_NotaFiscal_ID,
     DataEntrada,
     DateDoc,
     isCancelled,
     CFOP,
     UF,
     SUM(valorContabil)   AS valorContabil,
     SUM(baseICMS)        AS baseICMS,
     COALESCE(aliqICMS,0) AS aliqICMS,
     SUM(valoricms)       AS valorICMS,
     COALESCE(SUM(
     CASE
       WHEN (TaxStatus LIKE '_20'
       OR TaxStatus LIKE '_30'
       OR TaxStatus LIKE '_40'
       OR TaxStatus LIKE '_41'
       OR TaxStatus LIKE '_60'
       OR TaxStatus LIKE '_70')
       THEN (
         CASE
           WHEN (aliqICMS = 0)
           THEN valorContabil - baseICMS - valorIPI
           WHEN (valorICMS = 0)
           THEN valorContabil - valorIPI
           ELSE isentoICMS
         END)
     END),0) AS isentoICMS,
     COALESCE(SUM(
     CASE
       WHEN (TaxStatus LIKE '_50'
       OR TaxStatus LIKE '_51'
       OR TaxStatus LIKE '_90')
       THEN (
         CASE
           WHEN (aliqICMS = 0)
           THEN valorContabil - baseICMS - valorIPI
           WHEN (valorICMS = 0)
           THEN valorContabil - valorIPI
           ELSE outrosICMS
         END)
     END),0)         AS outrosICMS,
     SUM(outrasDesp) AS OutrasDesp,
     SUM(valorIPI)   AS valorIPI
   FROM ADEMPIERE.LBR_SitICMS
   GROUP BY AD_Client_ID,
     LBR_NotaFiscal_ID,
     DataEntrada,
     DateDoc,
     isCancelled,
     CFOP,
     UF,
    COALESCE(aliqICMS,0);
    
 CREATE OR REPLACE FORCE VIEW LBR_SITICMS_TIPO_V ("AD_CLIENT_ID", "LBR_NOTAFISCAL_ID", "ISCANCELLED", "CFOP", "VALORCONTABIL", "BASE", "ALIQ", "TIPOIMPOSTO", "VALORIMPOSTO")
 AS
   SELECT AD_Client_ID,
     LBR_NotaFiscal_ID,
     IsCancelled,
     CFOP,
     ValorContabil,
     BaseICMS  AS Base,
     AliqICMS  AS Aliq,
     '1'       AS TipoImposto,
     ValorICMS AS ValorImposto
   FROM ADEMPIERE.lbr_SitICMS_v
   WHERE ValorICMS > 0
   UNION ALL
   SELECT AD_Client_ID,
     LBR_NotaFiscal_ID,
     IsCancelled,
     CFOP,
     ValorContabil,
     BaseICMS   AS Base,
     AliqICMS   AS Aliq,
     '2'        AS TipoImposto,
     IsentoICMS AS ValorImposto
   FROM ADEMPIERE.LBR_SITICMS_v
   WHERE IsentoICMS > 0
   UNION ALL
   SELECT AD_Client_ID,
     LBR_NotaFiscal_ID,
     IsCancelled,
     CFOP,
     ValorContabil,
     BaseICMS   AS Base,
     AliqICMS   AS Aliq,
     '3'        AS TipoImposto,
     OutrosICMS AS ValorImposto
   FROM ADEMPIERE.lbr_SitICMS_v
   WHERE OutrosICMS > 0
   ORDER BY LBR_NotaFiscal_ID,
    TipoImposto;
    
CREATE OR REPLACE FORCE VIEW LBR_SITICMS_SINTEGRA ("AD_CLIENT_ID", "LBR_NOTAFISCAL_ID", "DATAENTRADA", "DATEDOC", "ISCANCELLED", "CFOP", "UF", "VALORCONTABIL", "BASEICMS", "ALIQICMS", "VALORICMS", "ISENTOICMS", "OUTROSICMS", "OUTRASDESP")
AS
  SELECT AD_Client_ID,
    LBR_NotaFiscal_ID,
    DataEntrada,
    DateDoc,
    isCancelled,
    CFOP,
    UF,
    SUM(valorContabil) AS valorContabil,
    SUM(baseICMS)      AS baseICMS,
    CASE
      WHEN (CFOP LIKE '%352')
      THEN 0
      ELSE aliqICMS
    END            AS aliqICMS,
    SUM(valoricms) AS valorICMS,
    COALESCE(SUM(
    CASE
      WHEN (TaxStatus LIKE '_20'
      OR TaxStatus LIKE '_30'
      OR TaxStatus LIKE '_40'
      OR TaxStatus LIKE '_41'
      OR TaxStatus LIKE '_60'
      OR TaxStatus LIKE '_70')
      THEN (
        CASE
          WHEN (aliqICMS = 0)
          THEN valorContabil - baseICMS - outrasdesp - valorIPI
          WHEN (valorICMS = 0)
          THEN valorContabil - outrasdesp - valorIPI
          ELSE isentoICMS
        END)
    END),0) AS isentoICMS,
    COALESCE(SUM(
    CASE
      WHEN (TaxStatus LIKE '_50'
      OR TaxStatus LIKE '_51'
      OR TaxStatus LIKE '_90')
      THEN (
        CASE
          WHEN (aliqICMS = 0)
          THEN valorContabil - baseICMS - outrasdesp - valorIPI
          WHEN (valorICMS = 0)
          THEN valorContabil - outrasdesp - valorIPI
          ELSE outrosICMS
        END)
    END),0)         AS outrosICMS,
    SUM(outrasDesp) AS OutrasDesp
  FROM ADEMPIERE.LBR_SitICMS
  GROUP BY AD_Client_ID,
    LBR_NotaFiscal_ID,
    DataEntrada,
    DateDoc,
    isCancelled,
    CFOP,
    UF,
    CASE
      WHEN (CFOP LIKE '%352')
      THEN 0
      ELSE aliqICMS
    END;
    
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
      AND COALESCE(ticms.lbr_TaxBaseAmt, 0) > 0)
      THEN COALESCE(ticms.lbr_TaxBaseAmt, 0) -- CASO IMP e Base ICMS > 0, VALOR CONTABIL = BASE ICMS
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
      THEN (COALESCE(tipi.lbr_TaxBaseAmt,0) / (1-(COALESCE(tipi.lbr_TaxBase,0)/100))) - COALESCE(tipi.lbr_TaxBaseAmt,0)
      ELSE 0
    END) AS isentoIPI,
    SUM(
    CASE
      WHEN (nfl.lbr_TaxStatusIPI LIKE '_5'
      OR nfl.lbr_TaxStatusIPI LIKE '_9')
      THEN (COALESCE(tipi.lbr_TaxBaseAmt,0) / (1-(COALESCE(tipi.lbr_TaxBase,0)/100))) - COALESCE(tipi.lbr_TaxBaseAmt,0)
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
    
CREATE OR REPLACE FORCE VIEW LBR_SITIPI_V ("AD_CLIENT_ID", "LBR_NOTAFISCAL_ID", "DATAENTRADA", "DATEDOC", "ISCANCELLED", "CFOP", "UF", "VALORTOTAL", "BASEIPI", "ALIQIPI", "VALORIPI", "ISENTOIPI", "OUTROSIPI")
AS
  SELECT AD_Client_ID,
    LBR_NotaFiscal_ID,
    DataEntrada,
    DateDoc,
    isCancelled,
    CFOP,
    UF,
    SUM(valorTotal)     AS valorTotal,
    SUM(baseIPI)        AS baseIPI,
    COALESCE(aliqIPI,0) AS aliqIPI,
    SUM(valorIPI)       AS valorIPI,
    COALESCE(SUM(
    CASE
      WHEN (TaxStatus LIKE '_2'
      OR TaxStatus LIKE '_3'
      OR TaxStatus LIKE '_4')
      THEN (
        CASE
          WHEN (valorIPI = 0)
          THEN valorTotal
          ELSE isentoIPI
        END)
    END),0) AS isentoIPI,
    COALESCE(SUM(
    CASE
      WHEN (TaxStatus LIKE '_5'
      OR TaxStatus LIKE '_9')
      THEN (
        CASE
          WHEN (valorIPI = 0)
          THEN valorTotal
          ELSE outrosIPI
        END)
    END),0) AS outrosIPI
  FROM LBR_SitIPI
  GROUP BY AD_Client_ID,
    LBR_NotaFiscal_ID,
    DataEntrada,
    DateDoc,
    isCancelled,
    CFOP,
    UF,
    COALESCE(aliqIPI,0);

CREATE OR REPLACE FORCE VIEW LBR_SITIPI_TIPO_V ("AD_CLIENT_ID", "LBR_NOTAFISCAL_ID", "ISCANCELLED", "CFOP", "VALORCONTABIL", "BASE", "ALIQ", "TIPOIMPOSTO", "VALORIMPOSTO")
AS
  SELECT AD_Client_ID,
    LBR_NotaFiscal_ID,
    IsCancelled,
    CFOP,
    ValorTotal AS ValorContabil,
    BaseIPI    AS Base,
    AliqIPI    AS Aliq,
    '1'        AS TipoImposto,
    ValorIPI   AS ValorImposto
  FROM lbr_SitIPI_v
  WHERE ValorIPI > 0
  UNION ALL
  SELECT AD_Client_ID,
    LBR_NotaFiscal_ID,
    IsCancelled,
    CFOP,
    ValorTotal AS ValorContabil,
    BaseIPI    AS Base,
    AliqIPI    AS Aliq,
    '2'        AS TipoImposto,
    IsentoIPI  AS ValorImposto
  FROM lbr_SitIPI_v
  WHERE IsentoIPI > 0
  UNION ALL
  SELECT AD_Client_ID,
    LBR_NotaFiscal_ID,
    IsCancelled,
    CFOP,
    ValorTotal AS ValorContabil,
    BaseIPI    AS Base,
    AliqIPI    AS Aliq,
    '3'        AS TipoImposto,
    OutrosIPI  AS ValorImposto
  FROM lbr_SitIPI_v
  WHERE OutrosIPI > 0
  ORDER BY LBR_NotaFiscal_ID,
    TipoImposto;
    
UPDATE AD_SysConfig SET Value='RC110-360/011-FR_3051686.sql' WHERE AD_SysConfig_ID=1100006
;

exit