-- 21/01/2016 17h32min48s BRST
UPDATE AD_Column SET IsKey='Y', IsUpdateable='N',Updated=TO_TIMESTAMP('2016-01-21 17:32:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1126798
;

-- 17/12/2015 12h41min35s BRST
SELECT Register_Migration_Script ('172-FixTaxLegalFW_Key.sql') FROM DUAL
;

