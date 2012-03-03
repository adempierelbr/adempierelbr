-- 03/03/2012 9h51min5s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
DELETE  FROM  AD_Field_Trl WHERE AD_Field_ID=1103000
;

-- 03/03/2012 9h51min5s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
DELETE FROM AD_Field WHERE AD_Field_ID=1103000
;

-- 03/03/2012 9h51min45s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
DELETE  FROM  AD_Column_Trl WHERE AD_Column_ID=1103000
;

-- 03/03/2012 9h51min45s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
DELETE FROM AD_Column WHERE AD_Column_ID=1103000
;

-- 03/03/2012 9h51min52s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
DELETE  FROM  AD_Element_Trl WHERE AD_Element_ID=1103000
;

-- 03/03/2012 9h51min52s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
DELETE FROM AD_Element WHERE AD_Element_ID=1103000
;

UPDATE AD_SysConfig SET Value='360-trunk/050_1-BF_LBR-6_RemoverPriceEnteredBR.sql' WHERE AD_SysConfig_ID=1100006;

