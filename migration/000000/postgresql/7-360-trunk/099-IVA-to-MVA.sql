UPDATE LBR_Formula SET LBR_Formula=REPLACE(LBR_Formula, 'IVA','MVA') WHERE LBR_Formula LIKE '%IVA%'
;
UPDATE LBR_TaxName SET Name=REPLACE(Name, 'IVA','MVA') WHERE Name LIKE '%IVA%'
;
SELECT register_migration_script('099-IVA-to-MVA.sql') FROM dual
;