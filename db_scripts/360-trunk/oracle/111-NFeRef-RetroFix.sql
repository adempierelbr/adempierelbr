--	Insere as NFs Referenciadas do passado na nova estrutura
INSERT INTO LBR_NotaFiscalDocRef (LBR_NotaFiscalDocRef_ID, AD_Client_ID, AD_Org_ID, Created, CreatedBy, Updated, UpdatedBy, 
        IsActive, LBR_NFeID, LBR_NotaFiscal_ID, LBR_FiscalDocRefType)
SELECT NextIDFunc (1153243, 'N') AS LBR_NotaFiscalDocRef_ID, AD_Client_ID, AD_Org_ID, SYSDATE AS Created, CreatedBy, SYSDATE AS Updated, UpdatedBy, 
        'Y' AS IsActive, (SELECT r.LBR_NFeID FROM LBR_NotaFiscal r WHERE r.LBR_NotaFiscal_ID=nf.LBR_NotaFiscal_ID) AS LBR_NFeID, 
        LBR_NotaFiscal_ID, 'N' AS LBR_FiscalDocRefType
FROM LBR_NotaFiscal nf WHERE LBR_RefNotaFiscal_ID IS NOT NULL
;

--	Apaga a coluna das janelas
DELETE AD_Field WHERE AD_Column_ID=1120465
;

--	Apaga do cadastro da tabela
DELETE AD_Column WHERE AD_Column_ID=1120465
;

--	Remove a coluna do BD
ALTER TABLE LBR_NotaFiscal DROP COLUMN LBR_RefNotaFiscal_ID
;

--	Registra o Script
SELECT Register_Migration_Script ('111-NFeRef-RetroFix.sql') FROM DUAL
;

EXIT