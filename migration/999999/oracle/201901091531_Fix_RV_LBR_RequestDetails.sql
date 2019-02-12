SET SQLBLANKLINES ON
SET DEFINE OFF

-- Correção no script RV_LBR_RequestDetails
-- 09/01/2019 15h14min41s BRST

DELETE FROM AD_Sequence WHERE AD_Sequence_ID=1153608;

SELECT Register_Migration_Script ('201901091531_Fix_RV_LBR_RequestDetails.sql') FROM DUAL
;
