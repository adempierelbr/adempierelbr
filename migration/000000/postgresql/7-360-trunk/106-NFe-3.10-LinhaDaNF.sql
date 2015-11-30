-- 19/03/2015 10h4min18s BRT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1126588,306,0,12,1000028,'FreightAmt',TO_TIMESTAMP('2015-03-19 10:04:18','YYYY-MM-DD HH24:MI:SS'),100,'0','Freight Amount ','LBRA',10,'The Freight Amount indicates the amount charged for Freight in the document currency.','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Freight Amount',0,TO_TIMESTAMP('2015-03-19 10:04:18','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 19/03/2015 10h4min18s BRT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1126588 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 19/03/2015 10h4min20s BRT
ALTER TABLE LBR_NotaFiscalLine ADD COLUMN FreightAmt NUMERIC DEFAULT '0' 
;

-- 19/03/2015 10h4min48s BRT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1126589,1000223,0,12,1000028,'lbr_InsuranceAmt',TO_TIMESTAMP('2015-03-19 10:04:47','YYYY-MM-DD HH24:MI:SS'),100,'0','Defines the Insurance Amt','LBRA',10,'Defines the Insurance Amt','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Insurance Amt',0,TO_TIMESTAMP('2015-03-19 10:04:47','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 19/03/2015 10h4min48s BRT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1126589 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 19/03/2015 10h4min49s BRT
ALTER TABLE LBR_NotaFiscalLine ADD COLUMN lbr_InsuranceAmt NUMERIC DEFAULT '0' 
;

-- 19/03/2015 10h5min7s BRT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1126588,1124989,0,1000021,TO_TIMESTAMP('2015-03-19 10:05:06','YYYY-MM-DD HH24:MI:SS'),100,'Freight Amount ',10,'LBRA','The Freight Amount indicates the amount charged for Freight in the document currency.','Y','Y','Y','N','N','N','N','N','Freight Amount',TO_TIMESTAMP('2015-03-19 10:05:06','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 19/03/2015 10h5min7s BRT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1124989 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 19/03/2015 10h5min8s BRT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) VALUES (0,1126589,1124990,0,1000021,TO_TIMESTAMP('2015-03-19 10:05:07','YYYY-MM-DD HH24:MI:SS'),100,'Defines the Insurance Amt',10,'LBRA','Defines the Insurance Amt','Y','Y','Y','N','N','N','N','N','Insurance Amt',TO_TIMESTAMP('2015-03-19 10:05:07','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 19/03/2015 10h5min8s BRT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1124990 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 21/03/2015 19h22min36s BRT
UPDATE AD_Workflow SET AD_WF_Node_ID=1120083, IsValid='Y',Updated=TO_TIMESTAMP('2015-03-21 19:22:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Workflow_ID=1120021
;

-- 21/03/2015 19h24min51s BRT
UPDATE AD_Column SET ReadOnlyLogic='@DocStatus@!DR',Updated=TO_TIMESTAMP('2015-03-21 19:24:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1126590
;

-- 21/03/2015 19h27min3s BRT
UPDATE AD_Tab SET IsInsertRecord='Y', IsReadOnly='N',Updated=TO_TIMESTAMP('2015-03-21 19:27:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=1000027
;

-- 01/04/2015 18h59min9s BRT
UPDATE AD_Column SET DefaultValue='0',Updated=TO_TIMESTAMP('2015-04-01 18:59:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1123543
;

-- 01/04/2015 18h59min13s BRT
INSERT INTO t_alter_column values('lbr_notafiscalline','DiscountAmt','NUMERIC',null,'0')
;

UPDATE AD_Field SET IsCentrallyMaintained='N',  AD_FieldGroup_ID=103, IsDisplayed='Y', DisplayLogic=NULL, DisplayLength=10, SeqNo=190, SortNo=null, IsSameLine='N', IsReadOnly='N', DefaultValue=NULL WHERE AD_Field_ID=1000387;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=103, IsDisplayed='Y', DisplayLogic='@lbr_IsService@=''Y''', DisplayLength=1000, SeqNo=250, SortNo=null, IsSameLine='N', IsReadOnly='N', DefaultValue=NULL WHERE AD_Field_ID=1000633;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=103, IsDisplayed='Y', DisplayLogic=NULL, DisplayLength=0, SeqNo=200, SortNo=0, IsSameLine='Y', IsReadOnly='N', DefaultValue=NULL WHERE AD_Field_ID=1122353;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=103, IsDisplayed='Y', DisplayLogic=NULL, DisplayLength=10, SeqNo=170, SortNo=null, IsSameLine='N', IsReadOnly='N', DefaultValue=NULL WHERE AD_Field_ID=1000396;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=103, IsDisplayed='Y', DisplayLogic=NULL, DisplayLength=10, SeqNo=180, SortNo=null, IsSameLine='Y', IsReadOnly='N', DefaultValue=NULL WHERE AD_Field_ID=1000393;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=103, IsDisplayed='Y', DisplayLogic=NULL, DisplayLength=10, SeqNo=240, SortNo=null, IsSameLine='Y', IsReadOnly='N', DefaultValue=NULL WHERE AD_Field_ID=1000389;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=103, IsDisplayed='Y', DisplayLogic=NULL, DisplayLength=13, SeqNo=230, SortNo=null, IsSameLine='N', IsReadOnly='N', DefaultValue=NULL WHERE AD_Field_ID=1122777;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=106, IsDisplayed='N', DisplayLogic=NULL, DisplayLength=22, SeqNo=0, SortNo=null, IsSameLine='Y', IsReadOnly='N', DefaultValue=NULL WHERE AD_Field_ID=1000391;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=106, IsDisplayed='N', DisplayLogic=NULL, DisplayLength=22, SeqNo=0, SortNo=null, IsSameLine='Y', IsReadOnly='N', DefaultValue=NULL WHERE AD_Field_ID=1000397;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=106, IsDisplayed='N', DisplayLogic=NULL, DisplayLength=3, SeqNo=0, SortNo=null, IsSameLine='N', IsReadOnly='N', DefaultValue=NULL WHERE AD_Field_ID=1000616;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=106, IsDisplayed='N', DisplayLogic=NULL, DisplayLength=3, SeqNo=0, SortNo=null, IsSameLine='Y', IsReadOnly='N', DefaultValue=NULL WHERE AD_Field_ID=1120000;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=106, IsDisplayed='Y', DisplayLogic=NULL, DisplayLength=1, SeqNo=100, SortNo=null, IsSameLine='Y', IsReadOnly='N', DefaultValue=NULL WHERE AD_Field_ID=1122914;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=106, IsDisplayed='Y', DisplayLogic=NULL, DisplayLength=22, SeqNo=120, SortNo=null, IsSameLine='N', IsReadOnly='N', DefaultValue=NULL WHERE AD_Field_ID=1000394;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=106, IsDisplayed='Y', DisplayLogic=NULL, DisplayLength=22, SeqNo=130, SortNo=null, IsSameLine='Y', IsReadOnly='N', DefaultValue=NULL WHERE AD_Field_ID=1000392;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=106, IsDisplayed='Y', DisplayLogic=NULL, DisplayLength=22, SeqNo=140, SortNo=null, IsSameLine='N', IsReadOnly='N', DefaultValue=NULL WHERE AD_Field_ID=1000367;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=106, IsDisplayed='Y', DisplayLogic=NULL, DisplayLength=22, SeqNo=150, SortNo=null, IsSameLine='Y', IsReadOnly='N', DefaultValue=NULL WHERE AD_Field_ID=1000362;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=106, IsDisplayed='Y', DisplayLogic=NULL, DisplayLength=22, SeqNo=160, SortNo=null, IsSameLine='N', IsReadOnly='N', DefaultValue=NULL WHERE AD_Field_ID=1000615;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=106, IsDisplayed='Y', DisplayLogic=NULL, DisplayLength=22, SeqNo=90, SortNo=null, IsSameLine='N', IsReadOnly='N', DefaultValue=NULL WHERE AD_Field_ID=1000366;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=106, IsDisplayed='Y', DisplayLogic=NULL, DisplayLength=60, SeqNo=110, SortNo=null, IsSameLine='N', IsReadOnly='N', DefaultValue=NULL WHERE AD_Field_ID=1000395;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=1120056, IsDisplayed='Y', DisplayLogic=NULL, DisplayLength=10, SeqNo=260, SortNo=null, IsSameLine='N', IsReadOnly='N', DefaultValue=NULL WHERE AD_Field_ID=1124953;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=1120056, IsDisplayed='Y', DisplayLogic=NULL, DisplayLength=22, SeqNo=280, SortNo=null, IsSameLine='N', IsReadOnly='N', DefaultValue=NULL WHERE AD_Field_ID=1124956;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=1120056, IsDisplayed='Y', DisplayLogic=NULL, DisplayLength=22, SeqNo=300, SortNo=null, IsSameLine='N', IsReadOnly='N', DefaultValue=NULL WHERE AD_Field_ID=1124954;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=1120056, IsDisplayed='Y', DisplayLogic=NULL, DisplayLength=22, SeqNo=310, SortNo=null, IsSameLine='Y', IsReadOnly='N', DefaultValue=NULL WHERE AD_Field_ID=1124955;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=1120056, IsDisplayed='Y', DisplayLogic=NULL, DisplayLength=3, SeqNo=270, SortNo=null, IsSameLine='Y', IsReadOnly='N', DefaultValue=NULL WHERE AD_Field_ID=1124957;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=1120056, IsDisplayed='Y', DisplayLogic=NULL, DisplayLength=3, SeqNo=290, SortNo=null, IsSameLine='Y', IsReadOnly='N', DefaultValue=NULL WHERE AD_Field_ID=1124958;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=125, IsDisplayed='N', DisplayLogic=NULL, DisplayLength=22, SeqNo=0, SortNo=null, IsSameLine='Y', IsReadOnly='N', DefaultValue=NULL WHERE AD_Field_ID=1000385;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=null, IsDisplayed='N', DisplayLogic=NULL, DisplayLength=1, SeqNo=0, SortNo=null, IsSameLine='N', IsReadOnly='N', DefaultValue=NULL WHERE AD_Field_ID=1000358;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=null, IsDisplayed='N', DisplayLogic=NULL, DisplayLength=10, SeqNo=0, SortNo=null, IsSameLine='N', IsReadOnly='N', DefaultValue=NULL WHERE AD_Field_ID=1000390;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=null, IsDisplayed='N', DisplayLogic=NULL, DisplayLength=22, SeqNo=0, SortNo=null, IsSameLine='N', IsReadOnly='N', DefaultValue=NULL WHERE AD_Field_ID=1000363;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=null, IsDisplayed='Y', DisplayLogic=NULL, DisplayLength=1, SeqNo=30, SortNo=0, IsSameLine='N', IsReadOnly='N', DefaultValue=NULL WHERE AD_Field_ID=1000619;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=null, IsDisplayed='Y', DisplayLogic=NULL, DisplayLength=10, SeqNo=210, SortNo=null, IsSameLine='N', IsReadOnly='N', DefaultValue=NULL WHERE AD_Field_ID=1124989;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=null, IsDisplayed='Y', DisplayLogic=NULL, DisplayLength=10, SeqNo=220, SortNo=null, IsSameLine='Y', IsReadOnly='N', DefaultValue=NULL WHERE AD_Field_ID=1124990;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=null, IsDisplayed='Y', DisplayLogic=NULL, DisplayLength=22, SeqNo=10, SortNo=null, IsSameLine='N', IsReadOnly='N', DefaultValue=NULL WHERE AD_Field_ID=1000360;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=null, IsDisplayed='Y', DisplayLogic=NULL, DisplayLength=22, SeqNo=20, SortNo=null, IsSameLine='Y', IsReadOnly='N', DefaultValue=NULL WHERE AD_Field_ID=1000365;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=null, IsDisplayed='Y', DisplayLogic=NULL, DisplayLength=22, SeqNo=40, SortNo=null, IsSameLine='N', IsReadOnly='N', DefaultValue=NULL WHERE AD_Field_ID=1000361;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=null, IsDisplayed='Y', DisplayLogic=NULL, DisplayLength=22, SeqNo=60, SortNo=null, IsSameLine='N', IsReadOnly='N', DefaultValue=NULL WHERE AD_Field_ID=1000359;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=null, IsDisplayed='Y', DisplayLogic=NULL, DisplayLength=22, SeqNo=70, SortNo=0, IsSameLine='Y', IsReadOnly='N', DefaultValue=NULL WHERE AD_Field_ID=1124872;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=null, IsDisplayed='Y', DisplayLogic=NULL, DisplayLength=255, SeqNo=80, SortNo=null, IsSameLine='N', IsReadOnly='N', DefaultValue=NULL WHERE AD_Field_ID=1000386;
UPDATE AD_Field SET IsCentrallyMaintained='Y',  AD_FieldGroup_ID=null, IsDisplayed='Y', DisplayLogic=NULL, DisplayLength=3, SeqNo=50, SortNo=null, IsSameLine='Y', IsReadOnly='N', DefaultValue=NULL WHERE AD_Field_ID=1000388;

SELECT register_migration_script('106-NFe-3.10-LinhaDaNF.sql') FROM dual;