-- 18/02/2008 9h23min16s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=0,IsDisplayed='N' WHERE AD_Field_ID=1000468
;

-- 18/02/2008 9h23min50s BRT
-- Default comment for updating dictionary
INSERT INTO AD_Field (AD_Column_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,SortNo,Updated,AD_Client_ID,UpdatedBy,AD_Field_ID) VALUES (1000592,0,223,TO_TIMESTAMP('2008-02-18 09:23:50','YYYY-MM-DD HH24:MI:SS'),100,'Description Printed on Nota Fiscal',255,'U','Description Printed on Nota Fiscal','Y','Y','Y','N','N','N','N','N','Nota Fiscal Description',300,0,TO_TIMESTAMP('2008-02-18 09:23:50','YYYY-MM-DD HH24:MI:SS'),0,100,1000496)
;

-- Feb 18, 2008 9:26:12 AM BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=300,IsDisplayed='Y' WHERE AD_Field_ID=1000398
;