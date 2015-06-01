UPDATE AD_Column SET Callout=REPLACE(Callout, 'org.adempierelbr.callout.CalloutBPartner.isIEExempt;', '') WHERE Callout LIKE '%org.adempierelbr.callout.CalloutBPartner.isIEExempt%';
UPDATE AD_Column SET Callout=REPLACE(Callout, ';org.adempierelbr.callout.CalloutBPartner.isIEExempt', '') WHERE Callout LIKE '%org.adempierelbr.callout.CalloutBPartner.isIEExempt%';
UPDATE AD_Column SET Callout=REPLACE(Callout, 'org.adempierelbr.callout.CalloutBPartner.isIEExempt', '') WHERE Callout LIKE '%org.adempierelbr.callout.CalloutBPartner.isIEExempt%';
