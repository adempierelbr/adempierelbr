-- 28/07/2015 10h14min47s BRT
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,1121746,0,'LBR_WithholdType',TO_DATE('2015-07-28 10:14:46','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Withhold Type','Withhold Type',TO_DATE('2015-07-28 10:14:46','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 28/07/2015 10h14min47s BRT
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1121746 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 28/07/2015 10h15min3s BRT
UPDATE AD_Element_Trl SET IsTranslated='Y',Name='Tipo de Retenção',PrintName='Tipo de Retenção',Updated=TO_DATE('2015-07-28 10:15:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1121746 AND AD_Language='pt_BR'
;

-- 28/07/2015 10h15min56s BRT
INSERT INTO AD_Reference (AD_Client_ID,AD_Org_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,IsOrderByValue,Name,Updated,UpdatedBy,ValidationType) VALUES (0,0,1120214,TO_DATE('2015-07-28 10:15:55','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','N','LBR_TaxName - LBR_WithholdType',TO_DATE('2015-07-28 10:15:55','YYYY-MM-DD HH24:MI:SS'),100,'L')
;

-- 28/07/2015 10h15min56s BRT
INSERT INTO AD_Reference_Trl (AD_Language,AD_Reference_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Reference_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Reference t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Reference_ID=1120214 AND NOT EXISTS (SELECT * FROM AD_Reference_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Reference_ID=t.AD_Reference_ID)
;

-- 28/07/2015 10h16min31s BRT
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121570,1120214,TO_DATE('2015-07-28 10:16:30','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Amount Sum',TO_DATE('2015-07-28 10:16:30','YYYY-MM-DD HH24:MI:SS'),100,'A')
;

-- 28/07/2015 10h16min31s BRT
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121570 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 28/07/2015 10h16min51s BRT
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Ref_List_ID,AD_Reference_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1121571,1120214,TO_DATE('2015-07-28 10:16:50','YYYY-MM-DD HH24:MI:SS'),100,'LBRA','Y','Tax Sum',TO_DATE('2015-07-28 10:16:50','YYYY-MM-DD HH24:MI:SS'),100,'T')
;

-- 28/07/2015 10h16min51s BRT
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121571 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

-- 28/07/2015 10h16min59s BRT
UPDATE AD_Ref_List SET Name='Paid Amount Sum', Value='P',Updated=TO_DATE('2015-07-28 10:16:59','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121570
;

-- 28/07/2015 10h16min59s BRT
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=1121570
;

-- 28/07/2015 10h16min59s BRT
UPDATE AD_Ref_List_Trl SET Description=NULL,Name='Paid Amount Sum',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Ref_List_ID=1121570
;

-- 28/07/2015 10h17min8s BRT
UPDATE AD_Ref_List SET Name='Tax Amount',Updated=TO_DATE('2015-07-28 10:17:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121571
;

-- 28/07/2015 10h17min8s BRT
UPDATE AD_Ref_List_Trl SET IsTranslated='N' WHERE AD_Ref_List_ID=1121571
;

-- 28/07/2015 10h17min8s BRT
UPDATE AD_Ref_List_Trl SET Description=NULL,Name='Tax Amount',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Ref_List_ID=1121571
;

-- 28/07/2015 10h17min29s BRT
UPDATE AD_Ref_List_Trl SET Name='Valor do Imposto',Updated=TO_DATE('2015-07-28 10:17:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121571 AND AD_Language='pt_BR'
;

-- 28/07/2015 10h17min50s BRT
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Name='Somatório do Valor Pago',Updated=TO_DATE('2015-07-28 10:17:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121570 AND AD_Language='pt_BR'
;

-- 28/07/2015 10h17min55s BRT
UPDATE AD_Ref_List_Trl SET IsTranslated='Y',Updated=TO_DATE('2015-07-28 10:17:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Ref_List_ID=1121571 AND AD_Language='pt_BR'
;

-- 28/07/2015 10h18min46s BRT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1126611,1121746,0,17,1120214,1000025,'LBR_WithholdType',TO_DATE('2015-07-28 10:18:44','YYYY-MM-DD HH24:MI:SS'),100,'P','LBRA',1,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Withhold Type',0,TO_DATE('2015-07-28 10:18:44','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 28/07/2015 10h18min46s BRT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1126611 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 28/07/2015 10h18min49s BRT
ALTER TABLE LBR_TaxName ADD LBR_WithholdType CHAR(1) DEFAULT 'P'
;

-- 28/07/2015 10h19min9s BRT
UPDATE AD_Column SET DefaultValue='T',Updated=TO_DATE('2015-07-28 10:19:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1126611
;

-- 28/07/2015 10h19min13s BRT
ALTER TABLE LBR_TaxName MODIFY LBR_WithholdType CHAR(1) DEFAULT 'T'
;

-- 28/07/2015 10h20min18s BRT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_FieldGroup_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,DisplayLogic,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,SortNo,Updated,UpdatedBy) VALUES (0,1126611,113,1125409,0,1000018,TO_DATE('2015-07-28 10:20:17','YYYY-MM-DD HH24:MI:SS'),100,1,'@lbr_TaxType@=''S'' & @HasWithHold@=Y','LBRA','Y','Y','Y','N','N','N','N','N','Withhold Type',65,60,TO_DATE('2015-07-28 10:20:17','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 28/07/2015 10h20min18s BRT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1125409 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 28/07/2015 10h21min6s BRT
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2015-07-28 10:21:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125409
;

-- 28/07/2015 10h21min32s BRT
UPDATE AD_Column SET MandatoryLogic='@HasWithHold@=Y',Updated=TO_DATE('2015-07-28 10:21:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000444
;

-- 28/07/2015 11h21min23s BRT
UPDATE AD_Column SET VFormat=NULL,Updated=TO_DATE('2015-07-28 11:21:23','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000450
;

-- 28/07/2015 13h52min14s BRT
UPDATE AD_Column SET MandatoryLogic='@HasWithHold@=''Y''',Updated=TO_DATE('2015-07-28 13:52:14','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1126611
;

-- 28/07/2015 18h25min49s BRT
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,Description,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,1121748,0,'LBR_ProductWithhold_ID',TO_DATE('2015-07-28 18:25:48','YYYY-MM-DD HH24:MI:SS'),100,'Product for Withhold to be used in sales/purchase orders','LBRA','Y','Product for Withhold','Product for Withhold',TO_DATE('2015-07-28 18:25:48','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 28/07/2015 18h25min49s BRT
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1121748 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 28/07/2015 18h26min27s BRT
UPDATE AD_Element_Trl SET Name='Produto para Retenção',PrintName='Produto para Retenção',Description='Produto usado para calcular as retenções de impostos nos pedidos/faturas',Updated=TO_DATE('2015-07-28 18:26:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1121748 AND AD_Language='pt_BR'
;

-- 28/07/2015 18h26min48s BRT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1126612,1121748,0,30,162,227,'LBR_ProductWithhold_ID',TO_DATE('2015-07-28 18:26:48','YYYY-MM-DD HH24:MI:SS'),100,'Product for Withhold to be used in sales/purchase orders','LBRA',10,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Product for Withhold',0,TO_DATE('2015-07-28 18:26:48','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 28/07/2015 18h26min48s BRT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1126612 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 28/07/2015 18h26min50s BRT
ALTER TABLE AD_ClientInfo ADD LBR_ProductWithhold_ID NUMBER(10) DEFAULT NULL 
;

-- 28/07/2015 18h27min46s BRT
UPDATE AD_Field SET SeqNo=10020,Updated=TO_DATE('2015-07-28 18:27:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1122784
;

-- 28/07/2015 18h28min4s BRT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1126612,1125410,0,169,TO_DATE('2015-07-28 18:28:03','YYYY-MM-DD HH24:MI:SS'),100,'Product for Withhold to be used in sales/purchase orders',10,'LBRA','Y','Y','Y','N','N','N','N','Y','Product for Withhold',10030,TO_DATE('2015-07-28 18:28:03','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 28/07/2015 18h28min4s BRT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1125410 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 28/07/2015 18h31min53s BRT
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,Description,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,1121749,0,'LBR_WithholdGroup',TO_DATE('2015-07-28 18:31:53','YYYY-MM-DD HH24:MI:SS'),100,'Withhold Group','LBRA','Y','Withhold Group','Withhold Group',TO_DATE('2015-07-28 18:31:53','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 28/07/2015 18h31min53s BRT
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=1121749 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- 28/07/2015 18h36min18s BRT
UPDATE AD_Element_Trl SET IsTranslated='Y',Name='Grupo de Retenção',PrintName='Grupo de Retenção',Description='Grupo para efeito de calculo de retenção',Help='Os impostos que estão no mesmo Grupo de Retenção são somados para verificação do Limiar de Retenção',Updated=TO_DATE('2015-07-28 18:36:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=1121749 AND AD_Language='pt_BR'
;

-- 28/07/2015 18h37min15s BRT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1126613,1121749,0,10,1000025,'LBR_WithholdGroup',TO_DATE('2015-07-28 18:37:14','YYYY-MM-DD HH24:MI:SS'),100,'Withhold Group','LBRA',20,'Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Withhold Group',0,TO_DATE('2015-07-28 18:37:14','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 28/07/2015 18h37min15s BRT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1126613 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 28/07/2015 18h37min16s BRT
ALTER TABLE LBR_TaxName ADD LBR_WithholdGroup NVARCHAR2(20) DEFAULT NULL 
;

-- 28/07/2015 18h40min10s BRT
UPDATE AD_Field SET IsSameLine='N',Updated=TO_DATE('2015-07-28 18:40:10','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125409
;

-- 28/07/2015 18h40min30s BRT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_FieldGroup_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,DisplayLogic,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,SortNo,Updated,UpdatedBy) VALUES (0,1126613,113,1125411,0,1000018,TO_DATE('2015-07-28 18:40:29','YYYY-MM-DD HH24:MI:SS'),100,'Withhold Group',1,'@lbr_TaxType@=''S'' & @HasWithHold@=Y','LBRA','Y','Y','Y','N','N','N','N','Y','Withhold Group',66,60,TO_DATE('2015-07-28 18:40:29','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 28/07/2015 18h40min30s BRT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1125411 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 28/07/2015 18h41min15s BRT
UPDATE AD_Field SET DisplayLogic='@lbr_TaxType@=''S'' & @HasWithHold@=Y & @LBR_WithholdType@=T',Updated=TO_DATE('2015-07-28 18:41:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125409
;

-- 28/07/2015 18h41min44s BRT
UPDATE AD_Field SET DisplayLogic='@lbr_TaxType@=''S'' & @HasWithHold@=Y',Updated=TO_DATE('2015-07-28 18:41:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125409
;

-- 28/07/2015 18h41min46s BRT
UPDATE AD_Field SET DisplayLogic='@lbr_TaxType@=''S'' & @HasWithHold@=Y & @LBR_WithholdType@=T',Updated=TO_DATE('2015-07-28 18:41:46','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1125411
;

-- 28/07/2015 18h46min53s BRT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1126614,1000171,0,20,318,'HasWithHold',TO_DATE('2015-07-28 18:46:53','YYYY-MM-DD HH24:MI:SS'),100,'Y','Defines if the Tax, has WithHold','LBRA',1,'Defines if the Tax, has WithHold','Y','Y','N','N','N','N','N','Y','N','N','N','N','Y','Has WithHold',0,TO_DATE('2015-07-28 18:46:53','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 28/07/2015 18h46min53s BRT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1126614 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 28/07/2015 18h46min55s BRT
ALTER TABLE C_Invoice ADD HasWithHold CHAR(1) DEFAULT 'Y' CHECK (HasWithHold IN ('Y','N')) NOT NULL
;

-- 28/07/2015 18h49min11s BRT
UPDATE AD_Field SET IsDisplayed='N',Updated=TO_DATE('2015-07-28 18:49:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1000474
;

-- 28/07/2015 18h50min1s BRT
UPDATE AD_Field SET SeqNo=120,Updated=TO_DATE('2015-07-28 18:50:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1120077
;

-- 28/07/2015 18h50min19s BRT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,SortNo,Updated,UpdatedBy) VALUES (0,1126614,1125412,0,263,TO_DATE('2015-07-28 18:50:17','YYYY-MM-DD HH24:MI:SS'),100,'Defines if the Tax, has WithHold',22,'LBRA','Defines if the Tax, has WithHold','Y','Y','Y','N','N','N','N','Y','Has WithHold',125,0,TO_DATE('2015-07-28 18:50:17','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 28/07/2015 18h50min19s BRT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1125412 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 06/08/2015 14h23min25s BRT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1126616,1000171,0,20,259,'HasWithHold',TO_DATE('2015-08-06 14:23:24','YYYY-MM-DD HH24:MI:SS'),100,'Y','Defines if the Tax, has WithHold','LBRA',1,'Defines if the Tax, has WithHold','Y','Y','N','N','N','N','N','N','N','N','N','N','Y','Has WithHold',0,TO_DATE('2015-08-06 14:23:24','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 06/08/2015 14h23min25s BRT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1126616 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 06/08/2015 14h23min31s BRT
ALTER TABLE C_Order ADD HasWithHold CHAR(1) DEFAULT 'Y' CHECK (HasWithHold IN ('Y','N'))
;

-- 06/08/2015 14h25min16s BRT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,DisplayLogic,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1126616,1125414,0,186,TO_DATE('2015-08-06 14:25:14','YYYY-MM-DD HH24:MI:SS'),100,'Defines if the Tax, has WithHold',14,NULL,'LBRA','Defines if the Tax, has WithHold','Y','Y','Y','N','N','N','N','N','Has WithHold',341,TO_DATE('2015-08-06 14:25:14','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 06/08/2015 14h25min16s BRT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1125414 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

-- 06/08/2015 14h27min48s BRT
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1126617,1000171,0,20,291,'HasWithHold',TO_DATE('2015-08-06 14:27:47','YYYY-MM-DD HH24:MI:SS'),100,'Y','Defines if the Tax, has WithHold','LBRA',1,'Defines if the Tax, has WithHold','Y','Y','N','N','N','N','N','Y','N','N','N','N','Y','Has WithHold',0,TO_DATE('2015-08-06 14:27:47','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 06/08/2015 14h27min48s BRT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1126617 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 06/08/2015 14h27min49s BRT
ALTER TABLE C_BPartner ADD HasWithHold CHAR(1) DEFAULT 'Y' CHECK (HasWithHold IN ('Y','N')) NOT NULL
;

-- 06/08/2015 14h29min13s BRT
INSERT INTO AD_Field (AD_Client_ID,AD_Column_ID,AD_FieldGroup_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,DisplayLogic,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,SeqNo,Updated,UpdatedBy) VALUES (0,1126617,1000000,1125415,0,223,TO_DATE('2015-08-06 14:29:12','YYYY-MM-DD HH24:MI:SS'),100,'Defines if the Tax, has WithHold',3,'@IsCustomer@=Y','LBRA','Defines if the Tax, has WithHold','Y','Y','Y','N','N','N','N','Y','Has WithHold',275,TO_DATE('2015-08-06 14:29:12','YYYY-MM-DD HH24:MI:SS'),100)
;

-- 06/08/2015 14h29min13s BRT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Description,Help,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Description,t.Help,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=1125415 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

SELECT Register_Migration_Script ('125-ServiceTax.sql') FROM DUAL
;

EXIT