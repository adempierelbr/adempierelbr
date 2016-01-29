-- 29/01/2016 19h26min39s BRST
-- 
UPDATE AD_Column SET DefaultValue=NULL,Updated=TO_TIMESTAMP('2016-01-29 19:26:39','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1126451
;

-- 29/01/2016 19h26min43s BRST
-- 
INSERT INTO t_alter_column values('lbr_notafiscal','DeliveryViaRule','CHAR(1)',null,'NULL')
;

-- 29/01/2016 19h26min43s BRST
SELECT Register_Migration_Script ('175-FixDeliveryViaRuleDefault.sql') FROM DUAL
;
