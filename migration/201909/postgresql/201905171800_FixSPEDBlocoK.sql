-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
-- 17/05/2019 17h25min37s BRT
UPDATE AD_Column SET IsMandatory='Y',Updated=TO_TIMESTAMP('2019-05-17 17:25:37','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1130585
;

-- 17/05/2019 17h25min44s BRT
INSERT INTO t_alter_column values('lbr_bookinventory','M_Product_ID','NUMERIC(10)',null,null)
;

-- 17/05/2019 17h25min44s BRT
INSERT INTO t_alter_column values('lbr_bookinventory','M_Product_ID',null,'NOT NULL',null)
;

-- 17/05/2019 17h25min52s BRT
UPDATE AD_Column SET IsMandatory='Y',Updated=TO_TIMESTAMP('2019-05-17 17:25:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1130587
;

-- 17/05/2019 17h25min56s BRT
INSERT INTO t_alter_column values('lbr_bookinventory','MovementDate','TIMESTAMP',null,null)
;

-- 17/05/2019 17h25min56s BRT
INSERT INTO t_alter_column values('lbr_bookinventory','MovementDate',null,'NOT NULL',null)
;

-- 17/05/2019 17h26min15s BRT
UPDATE AD_Column SET IsMandatory='Y',Updated=TO_TIMESTAMP('2019-05-17 17:26:15','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1130588
;

-- 17/05/2019 17h26min18s BRT
INSERT INTO t_alter_column values('lbr_bookinventory','QtyBook','NUMERIC',null,null)
;

-- 17/05/2019 17h26min18s BRT
INSERT INTO t_alter_column values('lbr_bookinventory','QtyBook',null,'NOT NULL',null)
;

-- 17/05/2019 17h26min36s BRT
UPDATE AD_Column SET IsMandatory='Y',Updated=TO_TIMESTAMP('2019-05-17 17:26:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1130589
;

-- 17/05/2019 17h26min39s BRT
INSERT INTO t_alter_column values('lbr_bookinventory','lbr_WarehouseType','VARCHAR(3)',null,'OWN')
;

-- 17/05/2019 17h26min40s BRT
UPDATE LBR_BookInventory SET lbr_WarehouseType='OWN' WHERE lbr_WarehouseType IS NULL
;

-- 17/05/2019 17h26min40s BRT
INSERT INTO t_alter_column values('lbr_bookinventory','lbr_WarehouseType',null,'NOT NULL',null)
;

-- 17/05/2019 17h27min0s BRT
UPDATE AD_Field SET IsDisplayed='N', AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, Updated=TO_TIMESTAMP('2019-05-17 17:27:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127990
;

-- 17/05/2019 17h29min9s BRT
UPDATE AD_Process SET Classname='org.adempierelbr.sped.efd.process.GeneratedBookInv',Updated=TO_TIMESTAMP('2019-05-17 17:29:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=1120227
;

-- 17/05/2019 17h45min20s BRT
UPDATE AD_Field SET DisplayLogic='@lbr_WarehouseType@ ! ''OWN''', AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, Updated=TO_TIMESTAMP('2019-05-17 17:45:20','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1127989
;

-- 17/05/2019 17h45min32s BRT
UPDATE AD_Field SET DisplayLogic='@lbr_WarehouseType@ ! ''OWN''', AD_Reference_Value_ID=NULL, AD_Val_Rule_ID=NULL, Updated=TO_TIMESTAMP('2019-05-17 17:45:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Field_ID=1128009
;

-- 17/05/2019 17h57min8s BRT
UPDATE AD_Column SET DefaultValue='@AD_Org_ID@',Updated=TO_TIMESTAMP('2019-05-17 17:57:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1130579
;

SELECT Register_Migration_Script ('201905171800_FixSPEDBlocoK.sql') FROM DUAL
;