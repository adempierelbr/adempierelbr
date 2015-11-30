-- 26/02/2008 19h12min47s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Val_Rule (AD_Org_ID,AD_Val_Rule_ID,Code,Created,CreatedBy,EntityType,IsActive,Name,Type,Updated,AD_Client_ID,UpdatedBy) VALUES (0,1000007,'C_DocType.DocBaseType = ''NFB''',TO_DATE('2008-02-26 19:12:46','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','DocType (Nota Fiscal)','S',TO_DATE('2008-02-26 19:12:46','YYYY-MM-DD HH24:MI:SS'),0,100)
;

-- 26/02/2008 19h12min59s BRT
-- Default comment for updating dictionary
UPDATE AD_Column SET AD_Val_Rule_ID=1000007,Updated=TO_DATE('2008-02-26 19:12:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000484
;

-- 26/02/2008 19h12min59s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET Name='Target Document Type', Description='Target document type for conversing documents', Help='You can convert document types (e.g. from Offer to Order or Invoice).  The conversion is then reflected in the current type.  This processing is initiated by selecting the appropriate Document Action.' WHERE AD_Column_ID=1000484 AND IsCentrallyMaintained='Y'
;

exit
