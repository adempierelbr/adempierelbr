-- 23/11/2010 10h5min36s BRST
-- LBR-54 - Compatibilidade com os certificados A3 em cartão
INSERT INTO AD_Ref_List (AD_Client_ID,AD_Org_ID,AD_Reference_ID,AD_Ref_List_ID,Created,CreatedBy,EntityType,IsActive,Name,Updated,UpdatedBy,Value) VALUES (0,0,1100000,1121184,TO_TIMESTAMP('2010-11-23 10:05:36','YYYY-MM-DD HH24:MI:SS'),0,'LBRA','Y','PKCS#11',TO_TIMESTAMP('2010-11-23 10:05:36','YYYY-MM-DD HH24:MI:SS'),0,'P11')
;

-- 23/11/2010 10h5min36s BRST
-- LBR-54 - Compatibilidade com os certificados A3 em cartão
INSERT INTO AD_Ref_List_Trl (AD_Language,AD_Ref_List_ID, Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Ref_List_ID, t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Ref_List t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Ref_List_ID=1121184 AND NOT EXISTS (SELECT * FROM AD_Ref_List_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Ref_List_ID=t.AD_Ref_List_ID)
;

UPDATE AD_SysConfig SET Value='360-trunk/060_LBR-54_CertificadoA3.sql' WHERE AD_SysConfig_ID=1100006
;
