-- 30/10/2018 15h9min38s BRST
-- Accounting for Vendor Liability per Charge
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,Updated,UpdatedBy,Version) VALUES (0,1130500,1057,0,25,396,'V_Liability_Services_Acct',TO_TIMESTAMP('2018-10-30 15:09:37','YYYY-MM-DD HH24:MI:SS'),100,'Account for Vendor Service Liability','LBRA',22,'The Vendor Service Liability account indicates the account to use for recording service liabilities.  It is used if you need to distinguish between Liability for products and services. This account is only used, if posting to service accounts is enabled in the accounting schema.','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Vendor Service Liability',TO_TIMESTAMP('2018-10-30 15:09:37','YYYY-MM-DD HH24:MI:SS'),100,1)
;

-- 30/10/2018 15h9min38s BRST
-- Accounting for Vendor Liability per Charge
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1130500 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 30/10/2018 15h10min15s BRST
-- Accounting for Vendor Liability per Charge
INSERT INTO t_alter_column values('c_charge_acct','V_Liability_Services_Acct','NUMERIC(10)',null,'NULL')
;

-- 30/10/2018 15h10min55s BRST
-- Accounting for Vendor Liability per Charge
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1130500,1127509,0,331,TO_TIMESTAMP('2018-10-30 15:10:54','YYYY-MM-DD HH24:MI:SS'),100,'Account for Vendor Service Liability',26,'LBRA','The Vendor Service Liability account indicates the account to use for recording service liabilities.  It is used if you need to distinguish between Liability for products and services. This account is only used, if posting to service accounts is enabled in the accounting schema.','Y','Y','Y','N','N','N','N','N','Vendor Service Liability',80,TO_TIMESTAMP('2018-10-30 15:10:54','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 30/10/2018 15h10min55s BRST
-- Accounting for Vendor Liability per Charge
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1127509 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 30/10/2018 15h10min55s BRST
SELECT Register_Migration_Script ('201810301412_VendorLiabilityPerCharge.sql') FROM DUAL
;