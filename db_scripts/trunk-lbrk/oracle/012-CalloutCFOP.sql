//	Remove a CalloutCFOP
UPDATE AD_Column SET Callout=REPLACE (Callout, ';org.adempierelbr.callout.CalloutDefineCFOP.getCFOP', '') WHERE Callout LIKE '%CFOP%'
;
UPDATE AD_Column SET Callout=REPLACE (Callout, 'org.adempierelbr.callout.CalloutDefineCFOP.getCFOP;', '') WHERE Callout LIKE '%CFOP%'
;
UPDATE AD_Column SET Callout=REPLACE (Callout, 'org.adempierelbr.callout.CalloutDefineCFOP.getCFOP', '') WHERE Callout LIKE '%CFOP%'
;

//	Remove a CalloutTaxConfiguration
UPDATE AD_Column SET Callout=REPLACE (Callout, ';org.adempierelbr.callout.CalloutTaxConfiguration.exceptionType', '') WHERE Callout LIKE '%CalloutTaxConfiguration%'
;
UPDATE AD_Column SET Callout=REPLACE (Callout, 'org.adempierelbr.callout.CalloutTaxConfiguration.exceptionType;', '') WHERE Callout LIKE '%CalloutTaxConfiguration%'
;
UPDATE AD_Column SET Callout=REPLACE (Callout, 'org.adempierelbr.callout.CalloutTaxConfiguration.exceptionType', '') WHERE Callout LIKE '%CalloutTaxConfiguration%'
;