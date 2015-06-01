-- Nota Fiscal Saída
-- NF-e Autorizadas: DocStatus = CO (Completado), DocAction = -- (Sem Ação), Processed = 'Y' (Bloqueia os campos)
UPDATE LBR_NotaFiscal SET DocStatus = 'CO', DocAction = '--', Processed = 'Y' WHERE IsSotrx = 'Y' AND LBR_NFeStatus = '100';

-- NF-e Serviço: DocStatus = CO (Completado), DocAction = -- (Sem Ação), Processed = 'Y' (Bloqueia os campos)
UPDATE LBR_NotaFiscal SET DocStatus = 'CO', DocAction = '--', Processed = 'Y' WHERE IsSoTrx = 'Y' AND C_DocTypeTarget_ID IN 
(SELECT C_DocType_ID FROM C_DocType WHERE UPPER(Name) Like '%RPS%');

-- NF-e Canceladas: DocStatus = VO (Anulado), DocAction = -- (Sem Ação), Processed = 'Y' (Bloqueia os campos)
UPDATE LBR_NotaFiscal SET DocStatus = 'VO', DocAction = '--', Processed = 'Y' WHERE IsCancelled = 'Y' AND IsSoTrx = 'Y';

-- Nota Fiscal Entrada
-- NF-e Autorizadas: DocStatus = CO (Completado), DocAction = -- (Sem Ação), Processed = 'Y' (Bloqueia os campos)
UPDATE LBR_NotaFiscal SET DocStatus = 'CO', DocAction = '--', Processed = 'Y' WHERE IsSotrx = 'N' AND LBR_NFeStatus = '100';

UPDATE LBR_NotaFiscal SET DocStatus = 'CO', DocAction = '--', Processed = 'Y' WHERE IsSoTrx = 'N' AND C_DocTypeTarget_ID IN 
(SELECT C_DocType_ID FROM C_DocType WHERE UPPER(Name) Like UPPER('Nota Fiscal Entrada'));

-- NF-e Canceladas: DocStatus = VO (Anulado), DocAction = -- (Sem Ação), Processed = 'Y' (Bloqueia os campos)
UPDATE LBR_NotaFiscal SET DocStatus = 'VO', DocAction = '--', Processed = 'Y' WHERE IsCancelled = 'Y' AND IsSoTrx = 'N';

-- Outros Documentos
UPDATE LBR_NotaFiscal SET Processed = 'Y' WHERE DocStatus NOT IN ('CO', 'VO') AND created < TO_DATE('01/01/2015','DD/MM/YYYY');

SELECT register_migration_script('103-RetroCompatibilidadeInterfaceDocActionNFe-3.sql') FROM dual;

