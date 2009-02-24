-- 10/09/2008 16h51min23s BRT
-- Default comment for updating dictionary
INSERT INTO AD_SysConfig (AD_Client_ID,AD_Org_ID,AD_SysConfig_ID,ConfigurationLevel,Created,CreatedBy,Description,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1100001,'C',TO_DATE('2008-09-10 16:51:23','YYYY-MM-DD HH24:MI:SS'),100,'Y/N - Permite que um Envio/Recebimento de material seja feito sem ter uma ordem vinculada na linha','LBRA','Y','LBR_ALLOW_MM_SHIP_RECEIPT_WITHOUT_ORDER',TO_DATE('2008-09-10 16:51:23','YYYY-MM-DD HH24:MI:SS'),100,'N')
;

-- 10/09/2008 16h53min36s BRT
-- Default comment for updating dictionary
INSERT INTO AD_SysConfig (AD_Client_ID,AD_Org_ID,AD_SysConfig_ID,ConfigurationLevel,Created,CreatedBy,Description,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1100002,'C',TO_DATE('2008-09-10 16:53:36','YYYY-MM-DD HH24:MI:SS'),100,'Y/N - Permite que um Embarque/Recebimento seja estornado com faturas vinculadas (Desabilite para que seja necessario estornar as faturas primeiro)','LBRA','Y','LBR_ALLOW_REVERSE_SHIP_RECEIT_WITH_OPEN_INVOICE',TO_DATE('2008-09-10 16:53:36','YYYY-MM-DD HH24:MI:SS'),100,'N')
;

-- 10/09/2008 16h54min40s BRT
-- Default comment for updating dictionary
INSERT INTO AD_SysConfig (AD_Client_ID,AD_Org_ID,AD_SysConfig_ID,ConfigurationLevel,Created,CreatedBy,Description,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1100003,'C',TO_DATE('2008-09-10 16:54:40','YYYY-MM-DD HH24:MI:SS'),100,'Y/N - Permite que um Embarque/Recebimento tenha 2 linhas vinculadas na mesma linha do pedido de compras','LBRA','Y','LBR_ALLOW_DUPLICATED_ORDERLINE_ON_SHIP_RECEIPT',TO_DATE('2008-09-10 16:54:40','YYYY-MM-DD HH24:MI:SS'),100,'N')
;

-- 10/09/2008 16h56min38s BRT
-- Default comment for updating dictionary
INSERT INTO AD_SysConfig (AD_Client_ID,AD_Org_ID,AD_SysConfig_ID,ConfigurationLevel,Created,CreatedBy,Description,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1100004,'C',TO_DATE('2008-09-10 16:56:38','YYYY-MM-DD HH24:MI:SS'),100,'Y/N - Permite que um Envio/Recebimento seja feito com quantidade MAIOR que a ordem.','LBRA','Y','LBR_MATCH_SHIPMENT_RECEIPT_AND_ORDER_QTY',TO_DATE('2008-09-10 16:56:38','YYYY-MM-DD HH24:MI:SS'),100,'Y')
;

exit
