-- 14/09/2010 10h48min54s BRT
-- Default comment for updating dictionary
UPDATE AD_Column SET AD_Element_ID=1874 WHERE AD_Element_ID IN (SELECT AD_Element_ID FROM AD_Element WHERE UPPER(ColumnName)='ORG_LOCATION_ID')
;

-- 14/09/2010 10h48min54s BRT
-- Default comment for updating dictionary
UPDATE AD_Process_Para SET AD_Element_ID=1874 WHERE AD_Element_ID IN (SELECT AD_Element_ID FROM AD_Element WHERE UPPER(ColumnName)='ORG_LOCATION_ID')
;

-- 14/09/2010 10h48min54s BRT
-- Default comment for updating dictionary
DELETE FROM AD_Element WHERE UPPER(ColumnName)='ORG_LOCATION_ID'
;

-- 14/09/2010 10h48min54s BRT
-- Default comment for updating dictionary
UPDATE AD_Element SET ColumnName='Org_Location_ID',Updated=TO_TIMESTAMP('2010-09-14 10:48:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1874
;

-- 14/09/2010 10h48min54s BRT
-- Default comment for updating dictionary
UPDATE AD_Column SET ColumnName='Org_Location_ID', Name='Org Address', Description='Organization Location/Address', Help=NULL WHERE AD_Element_ID=1874
;

-- 14/09/2010 10h48min54s BRT
-- Default comment for updating dictionary
UPDATE AD_Process_Para SET ColumnName='Org_Location_ID', Name='Org Address', Description='Organization Location/Address', Help=NULL, AD_Element_ID=1874 WHERE UPPER(ColumnName)='ORG_LOCATION_ID' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- 14/09/2010 10h48min54s BRT
-- Default comment for updating dictionary
UPDATE AD_Process_Para SET ColumnName='Org_Location_ID', Name='Org Address', Description='Organization Location/Address', Help=NULL WHERE AD_Element_ID=1874 AND IsCentrallyMaintained='Y'
;