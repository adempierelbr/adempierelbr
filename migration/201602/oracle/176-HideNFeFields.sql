-- 30/01/2016 0h13min25s BRST
UPDATE AD_Field SET DisplayLogic='@lbr_NFeProt@!''''',Updated=TO_DATE('2016-01-30 00:13:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1100049
;

-- 30/01/2016 0h13min42s BRST
UPDATE AD_Field SET DisplayLogic='@lbr_DigestValue@!''''',Updated=TO_DATE('2016-01-30 00:13:42','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1100044
;

-- 30/01/2016 0h15min22s BRST
UPDATE AD_Field SET DisplayLogic='@lbr_NFeStatus@!''''',Updated=TO_DATE('2016-01-30 00:15:22','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1100050
;

-- 30/01/2016 0h15min34s BRST
UPDATE AD_Field SET DisplayLogic='@lbr_NFENo@!''''',Updated=TO_DATE('2016-01-30 00:15:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1001078
;

-- 30/01/2016 0h15min46s BRST
UPDATE AD_Field SET DisplayLogic='@lbr_NFeID@!''''',Updated=TO_DATE('2016-01-30 00:15:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1100047
;

-- 30/01/2016 0h16min23s BRST
UPDATE AD_Field SET DisplayLogic='@lbr_NFModel@=''S1''',Updated=TO_DATE('2016-01-30 00:16:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1120264
;

-- 30/01/2016 0h16min23s BRST
SELECT Register_Migration_Script ('176-HideNFeFields.sql') FROM DUAL
;

EXIT