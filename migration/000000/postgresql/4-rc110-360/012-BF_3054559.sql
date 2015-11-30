insert into adempiere.ad_element (AD_ELEMENT_ID,AD_CLIENT_ID,AD_ORG_ID,ISACTIVE,CREATED,CREATEDBY,UPDATED,UPDATEDBY,COLUMNNAME,ENTITYTYPE,
NAME,PRINTNAME,DESCRIPTION,HELP,PO_NAME,PO_PRINTNAME,PO_DESCRIPTION,PO_HELP) 
values (1100037,0,0,'Y',now(),100,now(),100,'lbr_MotivoCancel','LBRA','Motivo do Cancelamento','Motivo do Cancelamento',
'Motivo do Cancelamento (Entre 15 e 255 caracteres)','Campo para ser lancado o motivo do cancelamento da NF, deve conter entre 15 e 255 caracteres e é obrigatório para cancelar uma NF-e.',
null,null,null,null);

INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1100037 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

insert into adempiere.ad_column
(AD_COLUMN_ID,AD_CLIENT_ID,AD_ORG_ID,ISACTIVE,CREATED,UPDATED,CREATEDBY,UPDATEDBY,NAME,DESCRIPTION,HELP,VERSION,ENTITYTYPE,COLUMNNAME,
AD_TABLE_ID,AD_REFERENCE_ID,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,FIELDLENGTH,DEFAULTVALUE,ISKEY,ISPARENT,ISMANDATORY,ISUPDATEABLE,READONLYLOGIC,
ISIDENTIFIER,SEQNO,ISTRANSLATED,ISENCRYPTED,CALLOUT,VFORMAT,VALUEMIN,VALUEMAX,ISSELECTIONCOLUMN,AD_ELEMENT_ID,AD_PROCESS_ID,ISSYNCDATABASE,
ISALWAYSUPDATEABLE,COLUMNSQL,MANDATORYLOGIC,INFOFACTORYCLASS,ISAUTOCOMPLETE,ISALLOWLOGGING,FORMATPATTERN) 
values (1100105,0,0,'Y',now(),now(),100,100,'Motivo do Cancelamento','Motivo do Cancelamento (Entre 15 e 255 caracteres)',
'Campo para ser lancado o motivo do cancelamento da NF, deve conter entre 15 e 255 caracteres e é obrigatório para cancelar uma NF-e.',
0,'LBRA','lbr_MotivoCancel',1000027,10,null,null,255,null,'N','N','N','Y',null,'N',0,'N','N',null,null,null,null,'N',1100037,null,'N','Y',
null,null,null,'N','Y',null);

INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1100105 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

insert into adempiere.ad_field 
(AD_FIELD_ID,AD_CLIENT_ID,AD_ORG_ID,ISACTIVE,CREATED,CREATEDBY,UPDATED,UPDATEDBY,NAME,DESCRIPTION,HELP,ISCENTRALLYMAINTAINED,AD_TAB_ID,
AD_COLUMN_ID,AD_FIELDGROUP_ID,ISDISPLAYED,DISPLAYLOGIC,DISPLAYLENGTH,ISREADONLY,SEQNO,SORTNO,ISSAMELINE,ISHEADING,ISFIELDONLY,ISENCRYPTED,
ENTITYTYPE,OBSCURETYPE,AD_REFERENCE_ID,ISMANDATORY,INCLUDED_TAB_ID,DEFAULTVALUE,AD_REFERENCE_VALUE_ID,AD_VAL_RULE_ID,INFOFACTORYCLASS) 
values (1100077,0,0,'Y',now(),100,now(),100,
'Motivo do Cancelamento','Motivo do Cancelamento (Entre 15 e 255 caracteres)',
'Campo para ser lancado o motivo do cancelamento da NF, deve conter entre 15 e 255 caracteres e é obrigatório para cancelar uma NF-e.','Y',
1000020,1100105,1100002,'Y','@lbr_NFeID@ ! ''''',40,'N',150,null,'N','N','N','N','LBRA',null,null,null,null,null,null,null,null);

INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1100077 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 27/08/2010 16h44min24s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y' WHERE AD_Field_ID=1100050
;

-- 27/08/2010 16h44min24s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=80,IsDisplayed='Y' WHERE AD_Field_ID=1100046
;

-- 27/08/2010 16h44min24s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=90,IsDisplayed='Y' WHERE AD_Field_ID=1100047
;

-- 27/08/2010 16h44min24s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=100,IsDisplayed='Y' WHERE AD_Field_ID=1100049
;

-- 27/08/2010 16h44min24s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=110,IsDisplayed='Y' WHERE AD_Field_ID=1100051
;

-- 27/08/2010 16h44min24s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=120,IsDisplayed='Y' WHERE AD_Field_ID=1100048
;

-- 27/08/2010 16h44min24s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=130,IsDisplayed='Y' WHERE AD_Field_ID=1100044
;

-- 27/08/2010 16h44min24s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=140,IsDisplayed='Y' WHERE AD_Field_ID=1100077
;

-- 27/08/2010 16h44min24s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=150,IsDisplayed='Y' WHERE AD_Field_ID=1000353
;

-- 27/08/2010 16h44min24s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=160,IsDisplayed='Y' WHERE AD_Field_ID=1000354
;

-- 27/08/2010 16h44min24s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=170,IsDisplayed='Y' WHERE AD_Field_ID=1000345
;

-- 27/08/2010 16h44min24s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=180,IsDisplayed='Y' WHERE AD_Field_ID=1000350
;

-- 27/08/2010 16h44min24s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=190,IsDisplayed='Y' WHERE AD_Field_ID=1000355
;

-- 27/08/2010 16h44min24s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=200,IsDisplayed='Y' WHERE AD_Field_ID=1000348
;

-- 27/08/2010 16h44min24s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=210,IsDisplayed='Y' WHERE AD_Field_ID=1000352
;

-- 27/08/2010 16h44min24s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=220,IsDisplayed='Y' WHERE AD_Field_ID=1000382
;

-- 27/08/2010 16h44min24s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=230,IsDisplayed='Y' WHERE AD_Field_ID=1000618
;

-- 27/08/2010 16h44min24s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=240,IsDisplayed='Y' WHERE AD_Field_ID=1100037
;

-- 27/08/2010 16h44min24s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=250,IsDisplayed='Y' WHERE AD_Field_ID=1000371
;

-- 27/08/2010 16h44min24s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=260,IsDisplayed='Y' WHERE AD_Field_ID=1000890
;

-- 27/08/2010 16h44min24s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=270,IsDisplayed='Y' WHERE AD_Field_ID=1000882
;

-- 27/08/2010 16h44min24s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=280,IsDisplayed='Y' WHERE AD_Field_ID=1100146
;

-- 27/08/2010 16h44min24s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=290,IsDisplayed='Y' WHERE AD_Field_ID=1000883
;

-- 27/08/2010 16h44min24s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=300,IsDisplayed='Y' WHERE AD_Field_ID=1000372
;

-- 27/08/2010 16h44min24s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=310,IsDisplayed='Y' WHERE AD_Field_ID=1000379
;

-- 27/08/2010 16h44min24s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=320,IsDisplayed='Y' WHERE AD_Field_ID=1000637
;

-- 27/08/2010 16h44min24s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=330,IsDisplayed='Y' WHERE AD_Field_ID=1000369
;

-- 27/08/2010 16h44min24s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=340,IsDisplayed='Y' WHERE AD_Field_ID=1000343
;

-- 27/08/2010 16h44min24s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=350,IsDisplayed='Y' WHERE AD_Field_ID=1000351
;

-- 27/08/2010 16h44min24s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=360,IsDisplayed='Y' WHERE AD_Field_ID=1000329
;

-- 27/08/2010 16h44min24s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=370,IsDisplayed='Y' WHERE AD_Field_ID=1000306
;

-- 27/08/2010 16h44min24s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=380,IsDisplayed='Y' WHERE AD_Field_ID=1000319
;

-- 27/08/2010 16h44min24s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=390,IsDisplayed='Y' WHERE AD_Field_ID=1000307
;

-- 27/08/2010 16h44min24s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=400,IsDisplayed='Y' WHERE AD_Field_ID=1000332
;

-- 27/08/2010 16h44min24s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=410,IsDisplayed='Y' WHERE AD_Field_ID=1000331
;

-- 27/08/2010 16h44min24s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=420,IsDisplayed='Y' WHERE AD_Field_ID=1000330
;

-- 27/08/2010 16h44min24s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=430,IsDisplayed='Y' WHERE AD_Field_ID=1000308
;

-- 27/08/2010 16h44min24s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=440,IsDisplayed='Y' WHERE AD_Field_ID=1000302
;

-- 27/08/2010 16h44min24s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=450,IsDisplayed='Y' WHERE AD_Field_ID=1000303
;

-- 27/08/2010 16h44min24s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=460,IsDisplayed='Y' WHERE AD_Field_ID=1000304
;

-- 27/08/2010 16h44min24s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=470,IsDisplayed='Y' WHERE AD_Field_ID=1000305
;

-- 27/08/2010 16h44min24s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=480,IsDisplayed='Y' WHERE AD_Field_ID=1000313
;

-- 27/08/2010 16h44min24s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=490,IsDisplayed='Y' WHERE AD_Field_ID=1000316
;

-- 27/08/2010 16h44min24s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=500,IsDisplayed='Y' WHERE AD_Field_ID=1000314
;

-- 27/08/2010 16h44min24s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=510,IsDisplayed='Y' WHERE AD_Field_ID=1000318
;

-- 27/08/2010 16h44min24s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=520,IsDisplayed='Y' WHERE AD_Field_ID=1000317
;

-- 27/08/2010 16h44min24s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=530,IsDisplayed='Y' WHERE AD_Field_ID=1000315
;

-- 27/08/2010 16h44min24s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=540,IsDisplayed='Y' WHERE AD_Field_ID=1000309
;

-- 27/08/2010 16h44min24s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=550,IsDisplayed='Y' WHERE AD_Field_ID=1000310
;

-- 27/08/2010 16h44min24s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=560,IsDisplayed='Y' WHERE AD_Field_ID=1000311
;

-- 27/08/2010 16h44min24s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=570,IsDisplayed='Y' WHERE AD_Field_ID=1000312
;

-- 27/08/2010 16h44min24s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=580,IsDisplayed='Y' WHERE AD_Field_ID=1000349
;

-- 27/08/2010 16h44min24s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=590,IsDisplayed='Y' WHERE AD_Field_ID=1000324
;

-- 27/08/2010 16h44min24s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=600,IsDisplayed='Y' WHERE AD_Field_ID=1000327
;

-- 27/08/2010 16h44min24s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=610,IsDisplayed='Y' WHERE AD_Field_ID=1000325
;

-- 27/08/2010 16h44min24s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=620,IsDisplayed='Y' WHERE AD_Field_ID=1000328
;

-- 27/08/2010 16h44min24s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=630,IsDisplayed='Y' WHERE AD_Field_ID=1000368
;

-- 27/08/2010 16h44min24s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=640,IsDisplayed='Y' WHERE AD_Field_ID=1000326
;

-- 27/08/2010 16h44min24s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=650,IsDisplayed='Y' WHERE AD_Field_ID=1000320
;

-- 27/08/2010 16h44min24s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=660,IsDisplayed='Y' WHERE AD_Field_ID=1000321
;

-- 27/08/2010 16h44min24s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=670,IsDisplayed='Y' WHERE AD_Field_ID=1000322
;

-- 27/08/2010 16h44min24s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=680,IsDisplayed='Y' WHERE AD_Field_ID=1000323
;

-- 27/08/2010 16h44min24s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=690,IsDisplayed='Y' WHERE AD_Field_ID=1000384
;

-- 27/08/2010 16h44min24s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=700,IsDisplayed='Y' WHERE AD_Field_ID=1000496
;

-- 27/08/2010 16h44min24s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=710,IsDisplayed='Y' WHERE AD_Field_ID=1000375
;

-- 27/08/2010 16h44min24s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=720,IsDisplayed='Y' WHERE AD_Field_ID=1000625
;

-- 27/08/2010 16h44min24s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=730,IsDisplayed='Y' WHERE AD_Field_ID=1000356
;

-- 27/08/2010 16h44min24s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=740,IsDisplayed='Y' WHERE AD_Field_ID=1000337
;

-- 27/08/2010 16h44min24s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=750,IsDisplayed='Y' WHERE AD_Field_ID=1000340
;

-- 27/08/2010 16h44min24s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=760,IsDisplayed='Y' WHERE AD_Field_ID=1000338
;

-- 27/08/2010 16h44min24s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=770,IsDisplayed='Y' WHERE AD_Field_ID=1000342
;

-- 27/08/2010 16h44min24s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=780,IsDisplayed='Y' WHERE AD_Field_ID=1000341
;

-- 27/08/2010 16h44min24s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=790,IsDisplayed='Y' WHERE AD_Field_ID=1000339
;

-- 27/08/2010 16h44min24s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=800,IsDisplayed='Y' WHERE AD_Field_ID=1000333
;

-- 27/08/2010 16h44min24s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=810,IsDisplayed='Y' WHERE AD_Field_ID=1000334
;

-- 27/08/2010 16h44min24s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=820,IsDisplayed='Y' WHERE AD_Field_ID=1000335
;

-- 27/08/2010 16h44min24s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=830,IsDisplayed='Y' WHERE AD_Field_ID=1000336
;

-- 27/08/2010 16h44min24s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=840,IsDisplayed='Y' WHERE AD_Field_ID=1000659
;

-- 27/08/2010 16h44min24s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=850,IsDisplayed='Y' WHERE AD_Field_ID=1000660
;

-- 27/08/2010 16h44min24s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=860,IsDisplayed='Y' WHERE AD_Field_ID=1000381
;

-- 27/08/2010 16h44min24s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=870,IsDisplayed='Y' WHERE AD_Field_ID=1000374
;

-- 27/08/2010 16h44min24s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=880,IsDisplayed='Y' WHERE AD_Field_ID=1000373
;

-- 27/08/2010 16h44min24s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=890,IsDisplayed='Y' WHERE AD_Field_ID=1000378
;

-- 27/08/2010 16h44min24s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=900,IsDisplayed='Y' WHERE AD_Field_ID=1000376
;

-- 27/08/2010 16h44min24s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=910,IsDisplayed='Y' WHERE AD_Field_ID=1000380
;

-- 27/08/2010 16h44min24s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=920,IsDisplayed='Y' WHERE AD_Field_ID=1001079
;

-- 27/08/2010 16h44min24s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=930,IsDisplayed='Y' WHERE AD_Field_ID=1001087
;

-- 27/08/2010 16h44min24s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=940,IsDisplayed='Y' WHERE AD_Field_ID=1000370
;

-- 27/08/2010 16h44min24s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=950,IsDisplayed='Y' WHERE AD_Field_ID=1000377
;

-- 27/08/2010 16h44min24s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=960,IsDisplayed='Y' WHERE AD_Field_ID=1001085
;

-- 27/08/2010 16h44min24s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=970,IsDisplayed='Y' WHERE AD_Field_ID=1001090
;

-- 27/08/2010 16h44min24s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=980,IsDisplayed='Y' WHERE AD_Field_ID=1001089
;

-- 27/08/2010 16h44min24s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=990,IsDisplayed='Y' WHERE AD_Field_ID=1001086
;

-- 27/08/2010 16h44min24s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=1000,IsDisplayed='Y' WHERE AD_Field_ID=1001080
;

-- 27/08/2010 16h44min24s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=1010,IsDisplayed='Y' WHERE AD_Field_ID=1001081
;

-- 27/08/2010 16h44min24s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=1020,IsDisplayed='Y' WHERE AD_Field_ID=1001082
;

-- 27/08/2010 16h44min24s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=1030,IsDisplayed='Y' WHERE AD_Field_ID=1001083
;

-- 27/08/2010 16h44min34s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET IsSameLine='N',Updated=TO_TIMESTAMP('2010-08-27 16:44:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000354
;

-- 27/08/2010 16h44min44s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET AD_FieldGroup_ID=1100002,Updated=TO_TIMESTAMP('2010-08-27 16:44:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1100044
;

-- 27/08/2010 16h44min47s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET AD_FieldGroup_ID=1100002,Updated=TO_TIMESTAMP('2010-08-27 16:44:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1100048
;

-- 27/08/2010 16h44min49s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET AD_FieldGroup_ID=1100002,Updated=TO_TIMESTAMP('2010-08-27 16:44:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1100051
;

-- 27/08/2010 16h44min52s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET AD_FieldGroup_ID=1100002,Updated=TO_TIMESTAMP('2010-08-27 16:44:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1100049
;

-- 27/08/2010 16h44min54s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET AD_FieldGroup_ID=1100002,Updated=TO_TIMESTAMP('2010-08-27 16:44:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1100047
;

-- 27/08/2010 16h44min57s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET AD_FieldGroup_ID=1100002,Updated=TO_TIMESTAMP('2010-08-27 16:44:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1100046
;

-- 27/08/2010 16h47min23s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=60,IsDisplayed='Y' WHERE AD_Field_ID=1000353
;

-- 27/08/2010 16h47min23s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=150,IsDisplayed='Y' WHERE AD_Field_ID=1000357
;

-- 27/08/2010 16h47min37s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET AD_FieldGroup_ID=NULL,Updated=TO_TIMESTAMP('2010-08-27 16:47:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000353
;

-- 27/08/2010 16h47min48s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2010-08-27 16:47:48','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000354
;

-- 27/08/2010 16h50min37s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=80,IsDisplayed='Y' WHERE AD_Field_ID=1100048
;

-- 27/08/2010 16h50min37s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=90,IsDisplayed='Y' WHERE AD_Field_ID=1100046
;

-- 27/08/2010 16h50min37s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=100,IsDisplayed='Y' WHERE AD_Field_ID=1100047
;

-- 27/08/2010 16h50min37s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=110,IsDisplayed='Y' WHERE AD_Field_ID=1100049
;

-- 27/08/2010 16h50min37s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=120,IsDisplayed='Y' WHERE AD_Field_ID=1100051
;

-- 27/08/2010 16h50min44s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET DisplayLength=22,Updated=TO_TIMESTAMP('2010-08-27 16:50:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1100050
;

-- 27/08/2010 16h50min49s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2010-08-27 16:50:49','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1100044
;

UPDATE AD_SysConfig SET Value='RC110-360/011-BF_3054559.sql' WHERE AD_SysConfig_ID=1100006
;
