-- 22/03/2016 11h10min5s BRT
UPDATE AD_Column SET Callout='org.adempierelbr.callout.CalloutNFe.docType',Updated=TO_DATE('2016-03-22 11:10:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000484
;

-- 22/03/2016 11h10min23s BRT
UPDATE AD_Column SET Callout='org.adempierelbr.callout.CalloutNFe.bPartner',Updated=TO_DATE('2016-03-22 11:10:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000481
;

-- 22/03/2016 11h10min34s BRT
UPDATE AD_Column SET Callout='org.adempierelbr.callout.CalloutNFe.bPartnerLocation',Updated=TO_DATE('2016-03-22 11:10:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000482
;

-- 22/03/2016 11h10min56s BRT
UPDATE AD_Column SET Callout='org.adempierelbr.callout.CalloutNFe.shipper',Updated=TO_DATE('2016-03-22 11:10:56','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000489
;

-- 22/03/2016 11h49min24s BRT
UPDATE AD_Column SET Callout='org.adempierelbr.callout.CalloutNFe.invoice',Updated=TO_DATE('2016-03-22 11:49:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000485
;

-- 22/03/2016 11h49min43s BRT
UPDATE AD_Column SET Callout='org.adempierelbr.callout.CalloutNFe.order',Updated=TO_DATE('2016-03-22 11:49:43','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000486
;

-- 22/03/2016 11h50min19s BRT
UPDATE AD_Column SET Callout='org.adempierelbr.callout.CalloutNFe.shipment',Updated=TO_DATE('2016-03-22 11:50:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000488
;

-- 22/03/2016 11h50min59s BRT
UPDATE AD_Column SET Callout='org.adempierelbr.callout.CalloutNFe.delivery',Updated=TO_DATE('2016-03-22 11:50:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1001048
;

-- 22/03/2016 11h10min56s BRT
UPDATE AD_Column SET Callout=REPLACE (Callout, 'org.adempierelbr.callout.CalloutNFe.NFeReferenced', 'org.adempierelbr.callout.CalloutNFe.refNFe') WHERE Callout LIKE '%org.adempierelbr.callout.CalloutNFe.NFeReferenced%'
;

-- 22/03/2016 11h10min56s BRT
UPDATE AD_Column SET Callout=REPLACE (Callout, 'org.adempierelbr.callout.CalloutNFe.EventFillNFeID', 'org.adempierelbr.callout.CalloutNFe.fillNFeID') WHERE Callout LIKE '%org.adempierelbr.callout.CalloutNFe.EventFillNFeID%'
;

-- 22/03/2016 12h14min16s BRT
UPDATE AD_Column SET AD_Val_Rule_ID=131,Updated=TO_DATE('2016-03-22 12:14:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000482
;

-- 22/03/2016 11h10min56s BRT
SELECT Register_Migration_Script ('198-CalloutNFe.sql') FROM DUAL
;

EXIT