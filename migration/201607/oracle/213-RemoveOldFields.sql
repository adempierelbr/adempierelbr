-- 08/06/2016 14h15min57s BRT
DELETE  FROM  AD_Field_Trl WHERE AD_Field_ID=1100016
;

-- 08/06/2016 14h15min58s BRT
DELETE FROM AD_Field WHERE AD_Field_ID=1100016
;

-- 08/06/2016 14h16min6s BRT
DELETE  FROM  AD_Column_Trl WHERE AD_Column_ID=1100048
;

-- 08/06/2016 14h16min6s BRT
DELETE FROM AD_Column WHERE AD_Column_ID=1100048
;

-- 08/06/2016 14h16min50s BRT
DELETE  FROM  AD_Field_Trl WHERE AD_Field_ID=1100052
;

-- 08/06/2016 14h16min50s BRT
DELETE FROM AD_Field WHERE AD_Field_ID=1100052
;

-- 08/06/2016 14h17min3s BRT
DELETE  FROM  AD_Field_Trl WHERE AD_Field_ID=1125408
;

-- 08/06/2016 14h17min3s BRT
DELETE FROM AD_Field WHERE AD_Field_ID=1125408
;

-- 08/06/2016 14h17min9s BRT
DELETE  FROM  AD_Field_Trl WHERE AD_Field_ID=1120323
;

-- 08/06/2016 14h17min9s BRT
DELETE FROM AD_Field WHERE AD_Field_ID=1120323
;

-- 08/06/2016 14h17min25s BRT
UPDATE AD_Field SET SeqNo=280,Updated=TO_DATE('2016-06-08 14:17:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1124849
;

-- 08/06/2016 14h17min48s BRT
DELETE  FROM  AD_Column_Trl WHERE AD_Column_ID=1100085
;

-- 08/06/2016 14h17min48s BRT
DELETE FROM AD_Column WHERE AD_Column_ID=1100085
;

-- 08/06/2016 14h17min53s BRT
DELETE  FROM  AD_Column_Trl WHERE AD_Column_ID=1120464
;

-- 08/06/2016 14h17min53s BRT
DELETE FROM AD_Column WHERE AD_Column_ID=1120464
;

-- 08/06/2016 14h17min59s BRT
DELETE  FROM  AD_Column_Trl WHERE AD_Column_ID=1126609
;

-- 08/06/2016 14h17min59s BRT
DELETE FROM AD_Column WHERE AD_Column_ID=1126609
;

-- 08/06/2016 14h17min59s BRT
SELECT Register_Migration_Script ('213-RemoveOldFields.sql') FROM DUAL
;

EXIT