-- 20/02/2008 13h22min8s BRT
-- Default comment for updating dictionary
UPDATE AD_Column SET ReadOnlyLogic='@Processed@=''Y''',Updated=TO_TIMESTAMP('2008-02-20 13:22:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000575
;

-- 20/02/2008 13h22min8s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET Name='Process Now', Description=NULL, Help=NULL WHERE AD_Column_ID=1000575 AND IsCentrallyMaintained='Y'
;

-- 20/02/2008 13h22min50s BRT
-- Default comment for updating dictionary
UPDATE AD_Column SET ReadOnlyLogic='@Processed@=''Y''',Updated=TO_TIMESTAMP('2008-02-20 13:22:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000699
;

-- 20/02/2008 13h22min50s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET Name='Process Now', Description=NULL, Help=NULL WHERE AD_Column_ID=1000699 AND IsCentrallyMaintained='Y'
;