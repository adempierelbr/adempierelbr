-- 15/09/2016 14h46min44s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE C_Country SET lbr_CountryCode='00590',Updated=TO_DATE('2016-09-15 14:46:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE C_Country_ID=112
;

-- 15/09/2016 15h3min59s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE C_Country SET lbr_CountryCode='01508',Updated=TO_DATE('2016-09-15 15:03:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE C_Country_ID=50004
;

-- 15/09/2016 15h17min59s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE C_Country SET lbr_CountryCode='03595',Updated=TO_DATE('2016-09-15 15:17:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE C_Country_ID=50003
;

-- 15/09/2016 15h21min21s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE C_Country SET lbr_CountryCode='05738',Updated=TO_DATE('2016-09-15 15:21:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE C_Country_ID=105
;

-- 15/09/2016 15h22min14s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE C_Country SET lbr_CountryCode='05780',Updated=TO_DATE('2016-09-15 15:22:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE C_Country_ID=273
;

-- 15/09/2016 15h33min44s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE C_Country SET lbr_CountryCode='08486',Updated=TO_DATE('2016-09-15 15:33:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE C_Country_ID=203
;

-- 15/09/2016 11h54min9s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE C_Country SET lbr_CountryCode='01619',Updated=TO_DATE('2016-09-15 11:54:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE C_Country_ID=316
;

-- 01/09/2016 17h50min30s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
SELECT Register_Migration_Script ('233-AddCountryCode.sql') FROM DUAL
;

EXIT