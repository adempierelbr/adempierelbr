-- 13/03/2015 8h52min6s BRT
-- Disable Self-service Field
UPDATE AD_Field SET IsDisplayed='N',Updated=TO_DATE('2015-03-13 08:52:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=6562
;

-- 13/03/2015 8h52min17s BRT
-- Align transaction type field
UPDATE AD_Field SET IsSameLine='Y', SeqNo=75,Updated=TO_DATE('2015-03-13 08:52:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000277
;

-- 13/03/2015 9h20min22s BRT
-- Fix Error on Read-only logic
UPDATE AD_Column SET IsAlwaysUpdateable='N', ReadOnlyLogic=NULL,Updated=TO_DATE('2015-03-13 09:20:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=56376
;

-- 13/03/2015 9h21min42s BRT
-- Align Billieng Freight Method field
UPDATE AD_Field SET AD_FieldGroup_ID=131, IsSameLine='Y', SeqNo=255,Updated=TO_DATE('2015-03-13 09:21:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1123418
;

SELECT register_migration_script('100-Fix-SalesOrderFields.sql') FROM dual;
