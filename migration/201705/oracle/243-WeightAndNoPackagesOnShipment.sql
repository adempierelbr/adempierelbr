-- 04/11/2016 9h27min25s BRST
UPDATE AD_Field SET SeqNo=500,IsDisplayed='Y' WHERE AD_Field_ID=54716
;

-- 04/11/2016 9h30min16s BRST
UPDATE AD_Field SET DisplayLogic='@DeliveryViaRule@=S', IsSameLine='N', SeqNo=255,Updated=TO_DATE('2016-11-04 09:30:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=54716
;

-- 04/11/2016 9h27min25s BRST
UPDATE AD_Field SET IsDisplayed='N' WHERE AD_Field_ID=54715
;

-- 04/11/2016 9h27min25s BRST
SELECT Register_Migration_Script ('243-WeightAndNoPackagesOnShipment.sql') FROM DUAL
;

EXIT
