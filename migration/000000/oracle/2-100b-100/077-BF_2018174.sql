-- 14/07/2008 9h8min7s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=240,IsDisplayed='Y' WHERE AD_Field_ID=1000009
;

-- 14/07/2008 9h8min7s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET SeqNo=250,IsDisplayed='Y' WHERE AD_Field_ID=1000012
;

-- 14/07/2008 9h8min18s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_TIMESTAMP('2008-07-14 09:08:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000009
;

-- 14/07/2008 9h8min21s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET IsSameLine='N',Updated=TO_TIMESTAMP('2008-07-14 09:08:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000012
;

-- 14/07/2008 9h8min34s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET DisplayLogic='@AD_Language@=''pt_BR'' & @lbr_IsIEExempt@=''N'' & @IsActive@=''Y''',Updated=TO_TIMESTAMP('2008-07-14 09:08:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000012
;

-- 14/07/2008 9h8min41s BRT
-- Default comment for updating dictionary
UPDATE AD_Field SET DisplayLogic='@AD_Language@=''pt_BR'' & @IsActive@=''Y''',Updated=TO_TIMESTAMP('2008-07-14 09:08:41','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000013
;

-- 14/07/2008 15h21min32s BRT
-- Default comment for updating dictionary
UPDATE AD_Tab SET WhereClause='MovementType IN (''C-'', ''C+'')',Updated=TO_TIMESTAMP('2008-07-14 15:21:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=257
;

-- 14/07/2008 15h21min47s BRT
-- Default comment for updating dictionary
UPDATE AD_Tab SET WhereClause='MovementType IN (''V-'', ''V+'')',Updated=TO_TIMESTAMP('2008-07-14 15:21:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Tab_ID=296
;

exit
