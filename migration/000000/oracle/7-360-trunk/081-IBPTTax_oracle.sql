-- 29/07/2013 10h56min11s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
insert into AD_Table(AD_Client_ID,AD_Org_ID,AD_Table_ID,AccessLevel,CopyColumnsFromTable,Created,CreatedBy,EntityType,Help,ImportTable,IsActive,IsCentrallyMaintained,IsChangeLog,IsDeleteable,IsHighVolume,IsSecurityEnabled,IsSystemLanguage,IsView,LoadSeq,Name,ReplicationType,TableName,Updated,UpdatedBy) values (0, 0, 1120342, '4', 'N', TO_DATE('2013-07-29 10:56:11','YYYY-MM-DD HH24:MI:SS'), 0, 'LBRA', 'A Lei 12.741 nasceu de uma iniciativa popular liderada pela Federação das Associações Comerciais do Estado de São Paulo - FACESP e reuniu 139 entidades de grande representatividade nacional, com o objetivo de tornar claro à sociedade que os tributos são pagos pelo consumidor em todas as operações comerciais e não apenas quando o cidadão faz o pagamento diretamente através de uma guia, conforme suposto pela maioria das pessoas pesquisadas. Foram 1,5 milhões de assinaturas e o apoio de 90% da população, conforme pesquisa IBOPE realizada, encomendada pela ACSP.', 'N', 'Y', 'Y', 'N', 'Y', 'N', 'N', 'N', 'N', 0, 'Tabela de Impostos do IBPT', 'L', 'LBR_IBPTax', TO_DATE('2013-07-29 10:56:11','YYYY-MM-DD HH24:MI:SS'), 0)
;

-- 29/07/2013 10h56min11s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
insert into AD_Table_Trl(AD_Language,AD_Table_ID,Name,IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy)  (select l.AD_Language, t.AD_Table_ID, t.Name, 'N', t.AD_Client_ID, t.AD_Org_ID, t.Created, t.Createdby, t.Updated, t.UpdatedBy from AD_Language l, AD_Table t where ((l.IsActive = 'Y') AND (l.IsSystemLanguage = 'Y') AND (l.IsBaseLanguage = 'N') AND (t.AD_Table_ID = 1120342) AND (NOT (EXISTS (select * from AD_Table_Trl tt where ((tt.AD_Language = l.AD_Language) AND (tt.AD_Table_ID = t.AD_Table_ID)))))))
;

-- 29/07/2013 10h56min11s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator

-- 29/07/2013 10h56min19s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Table SET AccessLevel='3',Updated=TO_DATE('2013-07-29 10:56:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Table_ID=1120342;

-- 29/07/2013 10h56min27s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Table SET EntityType='LBRA',Updated=TO_DATE('2013-07-29 10:56:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Table_ID=1120342;

-- 29/07/2013 10h56min42s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
insert into AD_Column(AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) values (0, 1125053, 102, 0, 19, 1120342, 'AD_Client_ID', TO_DATE('2013-07-29 10:56:42','YYYY-MM-DD HH24:MI:SS'), 0, 'Client/Tenant for this installation.', 'LBRA', 10, 'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.', 'Y', 'N', 'N', 'N', 'N', 'Y', 'N', 'N', 'N', 'N', 'N', 'Client', 0, TO_DATE('2013-07-29 10:56:42','YYYY-MM-DD HH24:MI:SS'), 0, 0)
;

-- 29/07/2013 10h56min42s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
insert into AD_Column_Trl(AD_Language,AD_Column_ID,Name,IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy)  (select l.AD_Language, t.AD_Column_ID, t.Name, 'N', t.AD_Client_ID, t.AD_Org_ID, t.Created, t.Createdby, t.Updated, t.UpdatedBy from AD_Language l, AD_Column t where ((l.IsActive = 'Y') AND (l.IsSystemLanguage = 'Y') AND (l.IsBaseLanguage = 'N') AND (t.AD_Column_ID = 1125053) AND (NOT (EXISTS (select * from AD_Column_Trl tt where ((tt.AD_Language = l.AD_Language) AND (tt.AD_Column_ID = t.AD_Column_ID)))))))
;

-- 29/07/2013 10h56min42s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
insert into AD_Column(AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) values (0, 1125054, 113, 0, 19, 1120342, 'AD_Org_ID', TO_DATE('2013-07-29 10:56:42','YYYY-MM-DD HH24:MI:SS'), 0, 'Organizational entity within client', 'LBRA', 10, 'An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.', 'Y', 'N', 'N', 'N', 'N', 'Y', 'N', 'N', 'N', 'N', 'N', 'Organization', 0, TO_DATE('2013-07-29 10:56:42','YYYY-MM-DD HH24:MI:SS'), 0, 0)
;

-- 29/07/2013 10h56min42s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
insert into AD_Column_Trl(AD_Language,AD_Column_ID,Name,IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy)  (select l.AD_Language, t.AD_Column_ID, t.Name, 'N', t.AD_Client_ID, t.AD_Org_ID, t.Created, t.Createdby, t.Updated, t.UpdatedBy from AD_Language l, AD_Column t where ((l.IsActive = 'Y') AND (l.IsSystemLanguage = 'Y') AND (l.IsBaseLanguage = 'N') AND (t.AD_Column_ID = 1125054) AND (NOT (EXISTS (select * from AD_Column_Trl tt where ((tt.AD_Language = l.AD_Language) AND (tt.AD_Column_ID = t.AD_Column_ID)))))))
;

-- 29/07/2013 10h56min42s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
insert into AD_Column(AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) values (0, 1125055, 209, 0, 18, 157, 1120342, 1000003, 'C_Region_ID', TO_DATE('2013-07-29 10:56:42','YYYY-MM-DD HH24:MI:SS'), 0, 'Identifies a geographical Region', 'LBRA', 10, 'The Region identifies a unique Region for this Country.', 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'Y', 'Region', 0, TO_DATE('2013-07-29 10:56:42','YYYY-MM-DD HH24:MI:SS'), 0, 0)
;

-- 29/07/2013 10h56min42s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
insert into AD_Column_Trl(AD_Language,AD_Column_ID,Name,IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy)  (select l.AD_Language, t.AD_Column_ID, t.Name, 'N', t.AD_Client_ID, t.AD_Org_ID, t.Created, t.Createdby, t.Updated, t.UpdatedBy from AD_Language l, AD_Column t where ((l.IsActive = 'Y') AND (l.IsSystemLanguage = 'Y') AND (l.IsBaseLanguage = 'N') AND (t.AD_Column_ID = 1125055) AND (NOT (EXISTS (select * from AD_Column_Trl tt where ((tt.AD_Language = l.AD_Language) AND (tt.AD_Column_ID = t.AD_Column_ID)))))))
;

-- 29/07/2013 10h56min42s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
insert into AD_Column(AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) values (0, 1125056, 245, 0, 16, 1120342, 'Created', TO_DATE('2013-07-29 10:56:42','YYYY-MM-DD HH24:MI:SS'), 0, 'Date this record was created', 'LBRA', 7, 'The Created field indicates the date that this record was created.', 'Y', 'N', 'N', 'N', 'N', 'Y', 'N', 'N', 'N', 'N', 'N', 'Created', 0, TO_DATE('2013-07-29 10:56:42','YYYY-MM-DD HH24:MI:SS'), 0, 0)
;

-- 29/07/2013 10h56min42s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
insert into AD_Column_Trl(AD_Language,AD_Column_ID,Name,IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy)  (select l.AD_Language, t.AD_Column_ID, t.Name, 'N', t.AD_Client_ID, t.AD_Org_ID, t.Created, t.Createdby, t.Updated, t.UpdatedBy from AD_Language l, AD_Column t where ((l.IsActive = 'Y') AND (l.IsSystemLanguage = 'Y') AND (l.IsBaseLanguage = 'N') AND (t.AD_Column_ID = 1125056) AND (NOT (EXISTS (select * from AD_Column_Trl tt where ((tt.AD_Language = l.AD_Language) AND (tt.AD_Column_ID = t.AD_Column_ID)))))))
;

-- 29/07/2013 10h56min42s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
insert into AD_Column(AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) values (0, 1125057, 246, 0, 18, 110, 1120342, 'CreatedBy', TO_DATE('2013-07-29 10:56:42','YYYY-MM-DD HH24:MI:SS'), 0, 'User who created this records', 'LBRA', 10, 'The Created By field indicates the user who created this record.', 'Y', 'N', 'N', 'N', 'N', 'Y', 'N', 'N', 'N', 'N', 'N', 'Created By', 0, TO_DATE('2013-07-29 10:56:42','YYYY-MM-DD HH24:MI:SS'), 0, 0)
;

-- 29/07/2013 10h56min42s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
insert into AD_Column_Trl(AD_Language,AD_Column_ID,Name,IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy)  (select l.AD_Language, t.AD_Column_ID, t.Name, 'N', t.AD_Client_ID, t.AD_Org_ID, t.Created, t.Createdby, t.Updated, t.UpdatedBy from AD_Language l, AD_Column t where ((l.IsActive = 'Y') AND (l.IsSystemLanguage = 'Y') AND (l.IsBaseLanguage = 'N') AND (t.AD_Column_ID = 1125057) AND (NOT (EXISTS (select * from AD_Column_Trl tt where ((tt.AD_Language = l.AD_Language) AND (tt.AD_Column_ID = t.AD_Column_ID)))))))
;

-- 29/07/2013 10h56min42s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
insert into AD_Column(AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) values (0, 1125048, 275, 0, 14, 1120342, 'Description', TO_DATE('2013-07-29 10:56:42','YYYY-MM-DD HH24:MI:SS'), 0, 'Optional short description of the record', 'LBRA', 255, 'A description is limited to 255 characters.', 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'Y', 'Description', 0, TO_DATE('2013-07-29 10:56:42','YYYY-MM-DD HH24:MI:SS'), 0, 0)
;

-- 29/07/2013 10h56min42s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
insert into AD_Column_Trl(AD_Language,AD_Column_ID,Name,IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy)  (select l.AD_Language, t.AD_Column_ID, t.Name, 'N', t.AD_Client_ID, t.AD_Org_ID, t.Created, t.Createdby, t.Updated, t.UpdatedBy from AD_Language l, AD_Column t where ((l.IsActive = 'Y') AND (l.IsSystemLanguage = 'Y') AND (l.IsBaseLanguage = 'N') AND (t.AD_Column_ID = 1125048) AND (NOT (EXISTS (select * from AD_Column_Trl tt where ((tt.AD_Language = l.AD_Language) AND (tt.AD_Column_ID = t.AD_Column_ID)))))))
;

-- 29/07/2013 10h56min42s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
insert into AD_Column(AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) values (0, 1125058, 348, 0, 20, 1120342, 'IsActive', TO_DATE('2013-07-29 10:56:42','YYYY-MM-DD HH24:MI:SS'), 0, 'Y', 'The record is active in the system', 'LBRA', 1, 'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.There are two reasons for de-activating and not deleting records:(1) The system requires the record for audit purposes.(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.', 'Y', 'N', 'N', 'N', 'N', 'Y', 'N', 'N', 'N', 'N', 'Y', 'Active', 0, TO_DATE('2013-07-29 10:56:42','YYYY-MM-DD HH24:MI:SS'), 0, 0)
;

-- 29/07/2013 10h56min42s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
insert into AD_Column_Trl(AD_Language,AD_Column_ID,Name,IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy)  (select l.AD_Language, t.AD_Column_ID, t.Name, 'N', t.AD_Client_ID, t.AD_Org_ID, t.Created, t.Createdby, t.Updated, t.UpdatedBy from AD_Language l, AD_Column t where ((l.IsActive = 'Y') AND (l.IsSystemLanguage = 'Y') AND (l.IsBaseLanguage = 'N') AND (t.AD_Column_ID = 1125058) AND (NOT (EXISTS (select * from AD_Column_Trl tt where ((tt.AD_Language = l.AD_Language) AND (tt.AD_Column_ID = t.AD_Column_ID)))))))
;

-- 29/07/2013 10h56min42s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
insert into AD_Element(AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) values (0, 1121416, 0, 'LBR_IBPTax_ID', TO_DATE('2013-07-29 10:56:42','YYYY-MM-DD HH24:MI:SS'), 0, 'LBRA', 'Y', 'Tabela de Impostos do IBPT', 'Tabela de Impostos do IBPT', TO_DATE('2013-07-29 10:56:42','YYYY-MM-DD HH24:MI:SS'), 0)
;

-- 29/07/2013 10h56min42s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
insert into AD_Element_Trl(AD_Language,AD_Element_ID,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName,IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy)  (select l.AD_Language, t.AD_Element_ID, t.Description, t.Help, t.Name, t.PO_Description, t.PO_Help, t.PO_Name, t.PO_PrintName, t.PrintName, 'N', t.AD_Client_ID, t.AD_Org_ID, t.Created, t.Createdby, t.Updated, t.UpdatedBy from AD_Language l, AD_Element t where ((l.IsActive = 'Y') AND (l.IsSystemLanguage = 'Y') AND (l.IsBaseLanguage = 'N') AND (t.AD_Element_ID = 1121416) AND (NOT (EXISTS (select * from AD_Element_Trl tt where ((tt.AD_Language = l.AD_Language) AND (tt.AD_Element_ID = t.AD_Element_ID)))))))
;

-- 29/07/2013 10h56min42s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
insert into AD_Column(AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) values (0, 1125059, 1121416, 0, 13, 1120342, 'LBR_IBPTax_ID', TO_DATE('2013-07-29 10:56:42','YYYY-MM-DD HH24:MI:SS'), 0, 'LBRA', 10, 'Y', 'N', 'N', 'N', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'Tabela de Impostos do IBPT', 0, TO_DATE('2013-07-29 10:56:42','YYYY-MM-DD HH24:MI:SS'), 0, 0)
;

-- 29/07/2013 10h56min42s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
insert into AD_Column_Trl(AD_Language,AD_Column_ID,Name,IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy)  (select l.AD_Language, t.AD_Column_ID, t.Name, 'N', t.AD_Client_ID, t.AD_Org_ID, t.Created, t.Createdby, t.Updated, t.UpdatedBy from AD_Language l, AD_Column t where ((l.IsActive = 'Y') AND (l.IsSystemLanguage = 'Y') AND (l.IsBaseLanguage = 'N') AND (t.AD_Column_ID = 1125059) AND (NOT (EXISTS (select * from AD_Column_Trl tt where ((tt.AD_Language = l.AD_Language) AND (tt.AD_Column_ID = t.AD_Column_ID)))))))
;

-- 29/07/2013 10h56min42s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
insert into AD_Column(AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) values (0, 1125060, 1000134, 0, 19, 1120342, 'LBR_NCM_ID', TO_DATE('2013-07-29 10:56:42','YYYY-MM-DD HH24:MI:SS'), 0, 'Primary key table LBR_NCM', 'LBRA', 10, 'Primary key table LBR_NCM', 'Y', 'N', 'N', 'N', 'N', 'Y', 'N', 'N', 'N', 'N', 'Y', 'NCM', 0, TO_DATE('2013-07-29 10:56:42','YYYY-MM-DD HH24:MI:SS'), 0, 0)
;

-- 29/07/2013 10h56min42s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
insert into AD_Column_Trl(AD_Language,AD_Column_ID,Name,IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy)  (select l.AD_Language, t.AD_Column_ID, t.Name, 'N', t.AD_Client_ID, t.AD_Org_ID, t.Created, t.Createdby, t.Updated, t.UpdatedBy from AD_Language l, AD_Column t where ((l.IsActive = 'Y') AND (l.IsSystemLanguage = 'Y') AND (l.IsBaseLanguage = 'N') AND (t.AD_Column_ID = 1125060) AND (NOT (EXISTS (select * from AD_Column_Trl tt where ((tt.AD_Language = l.AD_Language) AND (tt.AD_Column_ID = t.AD_Column_ID)))))))
;

-- 29/07/2013 10h56min42s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
insert into AD_Column(AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) values (0, 1125061, 1000094, 0, 1000006, 1120342, 'LBR_Tax_ID', TO_DATE('2013-07-29 10:56:42','YYYY-MM-DD HH24:MI:SS'), 0, 'Primary key table LBR_Tax', 'LBRA', 10, 'Primary key table LBR_Tax', 'Y', 'N', 'N', 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'Y', 'Brazilian Tax', 1, TO_DATE('2013-07-29 10:56:42','YYYY-MM-DD HH24:MI:SS'), 0, 0)
;

-- 29/07/2013 10h56min42s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
insert into AD_Column_Trl(AD_Language,AD_Column_ID,Name,IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy)  (select l.AD_Language, t.AD_Column_ID, t.Name, 'N', t.AD_Client_ID, t.AD_Org_ID, t.Created, t.Createdby, t.Updated, t.UpdatedBy from AD_Language l, AD_Column t where ((l.IsActive = 'Y') AND (l.IsSystemLanguage = 'Y') AND (l.IsBaseLanguage = 'N') AND (t.AD_Column_ID = 1125061) AND (NOT (EXISTS (select * from AD_Column_Trl tt where ((tt.AD_Language = l.AD_Language) AND (tt.AD_Column_ID = t.AD_Column_ID)))))))
;

-- 29/07/2013 10h56min42s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
insert into AD_Column(AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) values (0, 1125062, 607, 0, 16, 1120342, 'Updated', TO_DATE('2013-07-29 10:56:42','YYYY-MM-DD HH24:MI:SS'), 0, 'Date this record was updated', 'LBRA', 7, 'The Updated field indicates the date that this record was updated.', 'Y', 'N', 'N', 'N', 'N', 'Y', 'N', 'N', 'N', 'N', 'N', 'Updated', 0, TO_DATE('2013-07-29 10:56:42','YYYY-MM-DD HH24:MI:SS'), 0, 0)
;

-- 29/07/2013 10h56min42s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
insert into AD_Column_Trl(AD_Language,AD_Column_ID,Name,IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy)  (select l.AD_Language, t.AD_Column_ID, t.Name, 'N', t.AD_Client_ID, t.AD_Org_ID, t.Created, t.Createdby, t.Updated, t.UpdatedBy from AD_Language l, AD_Column t where ((l.IsActive = 'Y') AND (l.IsSystemLanguage = 'Y') AND (l.IsBaseLanguage = 'N') AND (t.AD_Column_ID = 1125062) AND (NOT (EXISTS (select * from AD_Column_Trl tt where ((tt.AD_Language = l.AD_Language) AND (tt.AD_Column_ID = t.AD_Column_ID)))))))
;

-- 29/07/2013 10h56min42s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
insert into AD_Column(AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) values (0, 1125063, 608, 0, 18, 110, 1120342, 'UpdatedBy', TO_DATE('2013-07-29 10:56:42','YYYY-MM-DD HH24:MI:SS'), 0, 'User who updated this records', 'LBRA', 10, 'The Updated By field indicates the user who updated this record.', 'Y', 'N', 'N', 'N', 'N', 'Y', 'N', 'N', 'N', 'N', 'N', 'Updated By', 0, TO_DATE('2013-07-29 10:56:42','YYYY-MM-DD HH24:MI:SS'), 0, 0)
;

-- 29/07/2013 10h56min42s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
insert into AD_Column_Trl(AD_Language,AD_Column_ID,Name,IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy)  (select l.AD_Language, t.AD_Column_ID, t.Name, 'N', t.AD_Client_ID, t.AD_Org_ID, t.Created, t.Createdby, t.Updated, t.UpdatedBy from AD_Language l, AD_Column t where ((l.IsActive = 'Y') AND (l.IsSystemLanguage = 'Y') AND (l.IsBaseLanguage = 'N') AND (t.AD_Column_ID = 1125063) AND (NOT (EXISTS (select * from AD_Column_Trl tt where ((tt.AD_Language = l.AD_Language) AND (tt.AD_Column_ID = t.AD_Column_ID)))))))
;

-- 29/07/2013 10h56min42s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
insert into AD_Column(AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) values (0, 1125064, 617, 0, 15, 1120342, 'ValidFrom', TO_DATE('2013-07-29 10:56:42','YYYY-MM-DD HH24:MI:SS'), 0, 'Valid from including this date (first day)', 'LBRA', 7, 'The Valid From date indicates the first day of a date range', 'Y', 'N', 'N', 'N', 'N', 'Y', 'N', 'N', 'N', 'N', 'Y', 'Valid from', 0, TO_DATE('2013-07-29 10:56:42','YYYY-MM-DD HH24:MI:SS'), 0, 0)
;

-- 29/07/2013 10h56min42s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
insert into AD_Column_Trl(AD_Language,AD_Column_ID,Name,IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy)  (select l.AD_Language, t.AD_Column_ID, t.Name, 'N', t.AD_Client_ID, t.AD_Org_ID, t.Created, t.Createdby, t.Updated, t.UpdatedBy from AD_Language l, AD_Column t where ((l.IsActive = 'Y') AND (l.IsSystemLanguage = 'Y') AND (l.IsBaseLanguage = 'N') AND (t.AD_Column_ID = 1125064) AND (NOT (EXISTS (select * from AD_Column_Trl tt where ((tt.AD_Language = l.AD_Language) AND (tt.AD_Column_ID = t.AD_Column_ID)))))))
;

-- 29/07/2013 10h56min42s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
insert into AD_Column(AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAlwaysUpdateable,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) values (0, 1125065, 1000248, 0, 20, 1120342, 'lbr_HasSubstitution', TO_DATE('2013-07-29 10:56:42','YYYY-MM-DD HH24:MI:SS'), 0, 'N', 'Defines if the record has Substituion', 'LBRA', 1, 'Defines if the record has Substituion', 'Y', 'N', 'N', 'N', 'N', 'Y', 'N', 'N', 'N', 'N', 'Y', 'Has Substitution', 0, TO_DATE('2013-07-29 10:56:42','YYYY-MM-DD HH24:MI:SS'), 0, 0)
;

-- 29/07/2013 10h56min42s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
insert into AD_Column_Trl(AD_Language,AD_Column_ID,Name,IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy)  (select l.AD_Language, t.AD_Column_ID, t.Name, 'N', t.AD_Client_ID, t.AD_Org_ID, t.Created, t.Createdby, t.Updated, t.UpdatedBy from AD_Language l, AD_Column t where ((l.IsActive = 'Y') AND (l.IsSystemLanguage = 'Y') AND (l.IsBaseLanguage = 'N') AND (t.AD_Column_ID = 1125065) AND (NOT (EXISTS (select * from AD_Column_Trl tt where ((tt.AD_Language = l.AD_Language) AND (tt.AD_Column_ID = t.AD_Column_ID)))))))
;

-- 29/07/2013 10h57min20s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
DELETE  FROM  AD_Column_Trl WHERE AD_Column_ID=1125055;

-- 29/07/2013 10h57min20s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
DELETE FROM AD_Column WHERE AD_Column_ID=1125055;

-- 29/07/2013 10h57min35s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
DELETE  FROM  AD_Column_Trl WHERE AD_Column_ID=1125064;

-- 29/07/2013 10h57min35s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
DELETE FROM AD_Column WHERE AD_Column_ID=1125064;

-- 29/07/2013 10h57min37s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
DELETE  FROM  AD_Column_Trl WHERE AD_Column_ID=1125065;

-- 29/07/2013 10h57min37s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
DELETE FROM AD_Column WHERE AD_Column_ID=1125065;

-- 29/07/2013 10h57min40s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
DELETE  FROM  AD_Column_Trl WHERE AD_Column_ID=1125061;

-- 29/07/2013 10h57min40s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
DELETE FROM AD_Column WHERE AD_Column_ID=1125061;

-- 29/07/2013 10h57min43s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
DELETE  FROM  AD_Column_Trl WHERE AD_Column_ID=1125060;

-- 29/07/2013 10h57min43s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
DELETE FROM AD_Column WHERE AD_Column_ID=1125060;

-- 29/07/2013 10h58min32s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
insert into AD_Column(AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Reference_Value_ID,AD_Table_ID,AD_Val_Rule_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) values (0, 1125049, 1000134, 0, 18, 1000017, 1120342, 1120030, 'LBR_NCM_ID', TO_DATE('2013-07-29 10:58:32','YYYY-MM-DD HH24:MI:SS'), 0, 'Primary key table LBR_NCM', 'LBRA', 10, 'Primary key table LBR_NCM', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'Y', 'NCM', 0, TO_DATE('2013-07-29 10:58:32','YYYY-MM-DD HH24:MI:SS'), 0, 0)
;

-- 29/07/2013 10h58min32s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
insert into AD_Column_Trl(AD_Language,AD_Column_ID,Name,IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy)  (select l.AD_Language, t.AD_Column_ID, t.Name, 'N', t.AD_Client_ID, t.AD_Org_ID, t.Created, t.Createdby, t.Updated, t.UpdatedBy from AD_Language l, AD_Column t where ((l.IsActive = 'Y') AND (l.IsSystemLanguage = 'Y') AND (l.IsBaseLanguage = 'N') AND (t.AD_Column_ID = 1125049) AND (NOT (EXISTS (select * from AD_Column_Trl tt where ((tt.AD_Language = l.AD_Language) AND (tt.AD_Column_ID = t.AD_Column_ID)))))))
;

-- 29/07/2013 10h58min36s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET IsMandatory='Y',Updated=TO_DATE('2013-07-29 10:58:36','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1125049;

-- 29/07/2013 11h0min48s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
insert into AD_Column(AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) values (0, 1125050, 1000127, 0, 12, 1120342, 'lbr_TaxRate', TO_DATE('2013-07-29 11:00:48','YYYY-MM-DD HH24:MI:SS'), 0, '0', 'Indicates the Tax Rate', 'LBRA', 11, 'Indicates the Tax Rate', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'Y', 'N', 'N', 'N', 'N', 'Y', 'Tax Rate', 0, TO_DATE('2013-07-29 11:00:48','YYYY-MM-DD HH24:MI:SS'), 0, 0)
;

-- 29/07/2013 11h0min48s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
insert into AD_Column_Trl(AD_Language,AD_Column_ID,Name,IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy)  (select l.AD_Language, t.AD_Column_ID, t.Name, 'N', t.AD_Client_ID, t.AD_Org_ID, t.Created, t.Createdby, t.Updated, t.UpdatedBy from AD_Language l, AD_Column t where ((l.IsActive = 'Y') AND (l.IsSystemLanguage = 'Y') AND (l.IsBaseLanguage = 'N') AND (t.AD_Column_ID = 1125050) AND (NOT (EXISTS (select * from AD_Column_Trl tt where ((tt.AD_Language = l.AD_Language) AND (tt.AD_Column_ID = t.AD_Column_ID)))))))
;

-- 29/07/2013 11h1min32s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
insert into AD_Element(AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,PrintName,Updated,UpdatedBy) values (0, 1121417, 0, 'lbr_TaxRateImp', TO_DATE('2013-07-29 11:01:32','YYYY-MM-DD HH24:MI:SS'), 0, 'Indicates the Imported Tax Rate ', 'LBRA', 'Indicates the Imported Tax Rate ', 'Y', 'Tax Rate(Imported)', 'Tax Rate(Imported)', TO_DATE('2013-07-29 11:01:32','YYYY-MM-DD HH24:MI:SS'), 0)
;

-- 29/07/2013 11h1min32s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
insert into AD_Element_Trl(AD_Language,AD_Element_ID,Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName,IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy)  (select l.AD_Language, t.AD_Element_ID, t.Description, t.Help, t.Name, t.PO_Description, t.PO_Help, t.PO_Name, t.PO_PrintName, t.PrintName, 'N', t.AD_Client_ID, t.AD_Org_ID, t.Created, t.Createdby, t.Updated, t.UpdatedBy from AD_Language l, AD_Element t where ((l.IsActive = 'Y') AND (l.IsSystemLanguage = 'Y') AND (l.IsBaseLanguage = 'N') AND (t.AD_Element_ID = 1121417) AND (NOT (EXISTS (select * from AD_Element_Trl tt where ((tt.AD_Language = l.AD_Language) AND (tt.AD_Element_ID = t.AD_Element_ID)))))))
;

-- 29/07/2013 11h1min51s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
insert into AD_Column(AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) values (0, 1125051, 1121417, 0, 12, 1120342, 'lbr_TaxRateImp', TO_DATE('2013-07-29 11:01:51','YYYY-MM-DD HH24:MI:SS'), 0, '0', 'Indicates the Imported Tax Rate ', 'LBRA', 11, 'Indicates the Imported Tax Rate ', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'Y', 'N', 'N', 'N', 'N', 'Y', 'Tax Rate(Imported)', 0, TO_DATE('2013-07-29 11:01:51','YYYY-MM-DD HH24:MI:SS'), 0, 0)
;

-- 29/07/2013 11h1min51s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
insert into AD_Column_Trl(AD_Language,AD_Column_ID,Name,IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy)  (select l.AD_Language, t.AD_Column_ID, t.Name, 'N', t.AD_Client_ID, t.AD_Org_ID, t.Created, t.Createdby, t.Updated, t.UpdatedBy from AD_Language l, AD_Column t where ((l.IsActive = 'Y') AND (l.IsSystemLanguage = 'Y') AND (l.IsBaseLanguage = 'N') AND (t.AD_Column_ID = 1125051) AND (NOT (EXISTS (select * from AD_Column_Trl tt where ((tt.AD_Language = l.AD_Language) AND (tt.AD_Column_ID = t.AD_Column_ID)))))))
;

-- 29/07/2013 11h2min19s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
insert into AD_Column(AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) values (0, 1125052, 624, 0, 10, 1120342, 'Version', TO_DATE('2013-07-29 11:02:19','YYYY-MM-DD HH24:MI:SS'), 0, 'Version of the table definition', 'LBRA', 11, 'The Version indicates the version of this table definition.', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'Y', 'N', 'N', 'N', 'N', 'Y', 'Version', 0, TO_DATE('2013-07-29 11:02:19','YYYY-MM-DD HH24:MI:SS'), 0, 0)
;

-- 29/07/2013 11h2min19s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
insert into AD_Column_Trl(AD_Language,AD_Column_ID,Name,IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy)  (select l.AD_Language, t.AD_Column_ID, t.Name, 'N', t.AD_Client_ID, t.AD_Org_ID, t.Created, t.Createdby, t.Updated, t.UpdatedBy from AD_Language l, AD_Column t where ((l.IsActive = 'Y') AND (l.IsSystemLanguage = 'Y') AND (l.IsBaseLanguage = 'N') AND (t.AD_Column_ID = 1125052) AND (NOT (EXISTS (select * from AD_Column_Trl tt where ((tt.AD_Language = l.AD_Language) AND (tt.AD_Column_ID = t.AD_Column_ID)))))))
;

-- 29/07/2013 11h3min23s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
CREATE TABLE LBR_IBPTax (AD_Client_ID NUMBER(10) NOT NULL, AD_Org_ID NUMBER(10) NOT NULL, Created DATE NOT NULL, CreatedBy NUMBER(10) NOT NULL, Description NVARCHAR2(255) DEFAULT NULL , IsActive CHAR(1) DEFAULT 'Y' CHECK (IsActive IN ('Y','N')) NOT NULL, LBR_IBPTax_ID NUMBER(10) NOT NULL, LBR_NCM_ID NUMBER(10) NOT NULL, Updated DATE NOT NULL, UpdatedBy NUMBER(10) NOT NULL, Version NVARCHAR2(11) NOT NULL, lbr_TaxRate NUMBER DEFAULT 0 NOT NULL, lbr_TaxRateImp NUMBER DEFAULT 0 NOT NULL, CONSTRAINT LBR_IBPTax_Key PRIMARY KEY (LBR_IBPTax_ID))
;

-- 29/07/2013 11h3min53s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
insert into AD_Window(AD_Client_ID,AD_Org_ID,AD_Window_ID,Created,CreatedBy,EntityType,IsActive,IsBetaFunctionality,IsDefault,IsSOTrx,Name,Processing,Updated,UpdatedBy,WinHeight,WinWidth,WindowType) values (0, 0, 1120081, TO_DATE('2013-07-29 11:03:53','YYYY-MM-DD HH24:MI:SS'), 0, 'LBRA', 'Y', 'N', 'N', 'Y', 'Tabela de Impostos do IBPT', 'N', TO_DATE('2013-07-29 11:03:53','YYYY-MM-DD HH24:MI:SS'), 0, 0, 0, 'M')
;

-- 29/07/2013 11h3min53s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
insert into AD_Window_Trl(AD_Language,AD_Window_ID,Description,Help,Name,IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy)  (select l.AD_Language, t.AD_Window_ID, t.Description, t.Help, t.Name, 'N', t.AD_Client_ID, t.AD_Org_ID, t.Created, t.Createdby, t.Updated, t.UpdatedBy from AD_Language l, AD_Window t where ((l.IsActive = 'Y') AND (l.IsSystemLanguage = 'Y') AND (l.IsBaseLanguage = 'N') AND (t.AD_Window_ID = 1120081) AND (NOT (EXISTS (select * from AD_Window_Trl tt where ((tt.AD_Language = l.AD_Language) AND (tt.AD_Window_ID = t.AD_Window_ID)))))))
;

-- 29/07/2013 11h4min14s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
insert into AD_Tab(AD_Client_ID,AD_Org_ID,AD_Tab_ID,AD_Table_ID,AD_Window_ID,Created,CreatedBy,EntityType,HasTree,ImportFields,IsActive,IsAdvancedTab,IsInfoTab,IsInsertRecord,IsReadOnly,IsSingleRow,IsSortTab,IsTranslationTab,Name,Processing,SeqNo,TabLevel,Updated,UpdatedBy) values (0, 0, 1120124, 1120342, 1120081, TO_DATE('2013-07-29 11:04:14','YYYY-MM-DD HH24:MI:SS'), 0, 'LBRA', 'N', 'N', 'Y', 'N', 'N', 'Y', 'N', 'N', 'N', 'N', 'Tabela de Impostos do IBPT', 'N', 10, 0, TO_DATE('2013-07-29 11:04:14','YYYY-MM-DD HH24:MI:SS'), 0)
;

-- 29/07/2013 11h4min14s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
insert into AD_Tab_Trl(AD_Language,AD_Tab_ID,CommitWarning,Description,Help,Name,IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy)  (select l.AD_Language, t.AD_Tab_ID, t.CommitWarning, t.Description, t.Help, t.Name, 'N', t.AD_Client_ID, t.AD_Org_ID, t.Created, t.Createdby, t.Updated, t.UpdatedBy from AD_Language l, AD_Tab t where ((l.IsActive = 'Y') AND (l.IsSystemLanguage = 'Y') AND (l.IsBaseLanguage = 'N') AND (t.AD_Tab_ID = 1120124) AND (NOT (EXISTS (select * from AD_Tab_Trl tt where ((tt.AD_Language = l.AD_Language) AND (tt.AD_Tab_ID = t.AD_Tab_ID)))))))
;

-- 29/07/2013 11h4min21s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
insert into AD_Field(AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) values (0, 1125058, 1123886, 0, 1120124, TO_DATE('2013-07-29 11:04:21','YYYY-MM-DD HH24:MI:SS'), 0, 'The record is active in the system', 1, 'LBRA', 'There are two methods of making records unavailable in the system: One is to delete the record, the other is to de-activate the record. A de-activated record is not available for selection, but available for reports.There are two reasons for de-activating and not deleting records:(1) The system requires the record for audit purposes.(2) The record is referenced by other records. E.g., you cannot delete a Business Partner, if there are invoices for this partner record existing. You de-activate the Business Partner and prevent that this record is used for future entries.', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'Active', TO_DATE('2013-07-29 11:04:21','YYYY-MM-DD HH24:MI:SS'), 0)
;

-- 29/07/2013 11h4min21s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
insert into AD_Field_Trl(AD_Language,AD_Field_ID,Description,Help,Name,IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy)  (select l.AD_Language, t.AD_Field_ID, t.Description, t.Help, t.Name, 'N', t.AD_Client_ID, t.AD_Org_ID, t.Created, t.Createdby, t.Updated, t.UpdatedBy from AD_Language l, AD_Field t where ((l.IsActive = 'Y') AND (l.IsSystemLanguage = 'Y') AND (l.IsBaseLanguage = 'N') AND (t.AD_Field_ID = 1123886) AND (NOT (EXISTS (select * from AD_Field_Trl tt where ((tt.AD_Language = l.AD_Language) AND (tt.AD_Field_ID = t.AD_Field_ID)))))))
;

-- 29/07/2013 11h4min21s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
insert into AD_Field(AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) values (0, 1125053, 1123887, 0, 1120124, TO_DATE('2013-07-29 11:04:21','YYYY-MM-DD HH24:MI:SS'), 0, 'Client/Tenant for this installation.', 10, 'LBRA', 'A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'Client', TO_DATE('2013-07-29 11:04:21','YYYY-MM-DD HH24:MI:SS'), 0)
;

-- 29/07/2013 11h4min21s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
insert into AD_Field_Trl(AD_Language,AD_Field_ID,Description,Help,Name,IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy)  (select l.AD_Language, t.AD_Field_ID, t.Description, t.Help, t.Name, 'N', t.AD_Client_ID, t.AD_Org_ID, t.Created, t.Createdby, t.Updated, t.UpdatedBy from AD_Language l, AD_Field t where ((l.IsActive = 'Y') AND (l.IsSystemLanguage = 'Y') AND (l.IsBaseLanguage = 'N') AND (t.AD_Field_ID = 1123887) AND (NOT (EXISTS (select * from AD_Field_Trl tt where ((tt.AD_Language = l.AD_Language) AND (tt.AD_Field_ID = t.AD_Field_ID)))))))
;

-- 29/07/2013 11h4min21s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
insert into AD_Field(AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) values (0, 1125048, 1123888, 0, 1120124, TO_DATE('2013-07-29 11:04:21','YYYY-MM-DD HH24:MI:SS'), 0, 'Optional short description of the record', 255, 'LBRA', 'A description is limited to 255 characters.', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'Description', TO_DATE('2013-07-29 11:04:21','YYYY-MM-DD HH24:MI:SS'), 0)
;

-- 29/07/2013 11h4min21s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
insert into AD_Field_Trl(AD_Language,AD_Field_ID,Description,Help,Name,IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy)  (select l.AD_Language, t.AD_Field_ID, t.Description, t.Help, t.Name, 'N', t.AD_Client_ID, t.AD_Org_ID, t.Created, t.Createdby, t.Updated, t.UpdatedBy from AD_Language l, AD_Field t where ((l.IsActive = 'Y') AND (l.IsSystemLanguage = 'Y') AND (l.IsBaseLanguage = 'N') AND (t.AD_Field_ID = 1123888) AND (NOT (EXISTS (select * from AD_Field_Trl tt where ((tt.AD_Language = l.AD_Language) AND (tt.AD_Field_ID = t.AD_Field_ID)))))))
;

-- 29/07/2013 11h4min21s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
insert into AD_Field(AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) values (0, 1125049, 1123889, 0, 1120124, TO_DATE('2013-07-29 11:04:21','YYYY-MM-DD HH24:MI:SS'), 0, 'Primary key table LBR_NCM', 10, 'LBRA', 'Primary key table LBR_NCM', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'NCM', TO_DATE('2013-07-29 11:04:21','YYYY-MM-DD HH24:MI:SS'), 0)
;

-- 29/07/2013 11h4min21s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
insert into AD_Field_Trl(AD_Language,AD_Field_ID,Description,Help,Name,IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy)  (select l.AD_Language, t.AD_Field_ID, t.Description, t.Help, t.Name, 'N', t.AD_Client_ID, t.AD_Org_ID, t.Created, t.Createdby, t.Updated, t.UpdatedBy from AD_Language l, AD_Field t where ((l.IsActive = 'Y') AND (l.IsSystemLanguage = 'Y') AND (l.IsBaseLanguage = 'N') AND (t.AD_Field_ID = 1123889) AND (NOT (EXISTS (select * from AD_Field_Trl tt where ((tt.AD_Language = l.AD_Language) AND (tt.AD_Field_ID = t.AD_Field_ID)))))))
;

-- 29/07/2013 11h4min21s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
insert into AD_Field(AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) values (0, 1125054, 1123890, 0, 1120124, TO_DATE('2013-07-29 11:04:21','YYYY-MM-DD HH24:MI:SS'), 0, 'Organizational entity within client', 10, 'LBRA', 'An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'Organization', TO_DATE('2013-07-29 11:04:21','YYYY-MM-DD HH24:MI:SS'), 0)
;

-- 29/07/2013 11h4min21s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
insert into AD_Field_Trl(AD_Language,AD_Field_ID,Description,Help,Name,IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy)  (select l.AD_Language, t.AD_Field_ID, t.Description, t.Help, t.Name, 'N', t.AD_Client_ID, t.AD_Org_ID, t.Created, t.Createdby, t.Updated, t.UpdatedBy from AD_Language l, AD_Field t where ((l.IsActive = 'Y') AND (l.IsSystemLanguage = 'Y') AND (l.IsBaseLanguage = 'N') AND (t.AD_Field_ID = 1123890) AND (NOT (EXISTS (select * from AD_Field_Trl tt where ((tt.AD_Language = l.AD_Language) AND (tt.AD_Field_ID = t.AD_Field_ID)))))))
;

-- 29/07/2013 11h4min21s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
insert into AD_Field(AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,DisplayLength,EntityType,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) values (0, 1125059, 1123891, 0, 1120124, TO_DATE('2013-07-29 11:04:21','YYYY-MM-DD HH24:MI:SS'), 0, 10, 'LBRA', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'Tabela de Impostos do IBPT', TO_DATE('2013-07-29 11:04:21','YYYY-MM-DD HH24:MI:SS'), 0)
;

-- 29/07/2013 11h4min21s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
insert into AD_Field_Trl(AD_Language,AD_Field_ID,Description,Help,Name,IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy)  (select l.AD_Language, t.AD_Field_ID, t.Description, t.Help, t.Name, 'N', t.AD_Client_ID, t.AD_Org_ID, t.Created, t.Createdby, t.Updated, t.UpdatedBy from AD_Language l, AD_Field t where ((l.IsActive = 'Y') AND (l.IsSystemLanguage = 'Y') AND (l.IsBaseLanguage = 'N') AND (t.AD_Field_ID = 1123891) AND (NOT (EXISTS (select * from AD_Field_Trl tt where ((tt.AD_Language = l.AD_Language) AND (tt.AD_Field_ID = t.AD_Field_ID)))))))
;

-- 29/07/2013 11h4min21s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
insert into AD_Field(AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) values (0, 1125050, 1123892, 0, 1120124, TO_DATE('2013-07-29 11:04:21','YYYY-MM-DD HH24:MI:SS'), 0, 'Indicates the Tax Rate', 11, 'LBRA', 'Indicates the Tax Rate', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'Tax Rate', TO_DATE('2013-07-29 11:04:21','YYYY-MM-DD HH24:MI:SS'), 0)
;

-- 29/07/2013 11h4min21s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
insert into AD_Field_Trl(AD_Language,AD_Field_ID,Description,Help,Name,IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy)  (select l.AD_Language, t.AD_Field_ID, t.Description, t.Help, t.Name, 'N', t.AD_Client_ID, t.AD_Org_ID, t.Created, t.Createdby, t.Updated, t.UpdatedBy from AD_Language l, AD_Field t where ((l.IsActive = 'Y') AND (l.IsSystemLanguage = 'Y') AND (l.IsBaseLanguage = 'N') AND (t.AD_Field_ID = 1123892) AND (NOT (EXISTS (select * from AD_Field_Trl tt where ((tt.AD_Language = l.AD_Language) AND (tt.AD_Field_ID = t.AD_Field_ID)))))))
;

-- 29/07/2013 11h4min21s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
insert into AD_Field(AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) values (0, 1125051, 1123893, 0, 1120124, TO_DATE('2013-07-29 11:04:21','YYYY-MM-DD HH24:MI:SS'), 0, 'Indicates the Imported Tax Rate ', 11, 'LBRA', 'Indicates the Imported Tax Rate ', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'Tax Rate(Imported)', TO_DATE('2013-07-29 11:04:21','YYYY-MM-DD HH24:MI:SS'), 0)
;

-- 29/07/2013 11h4min21s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
insert into AD_Field_Trl(AD_Language,AD_Field_ID,Description,Help,Name,IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy)  (select l.AD_Language, t.AD_Field_ID, t.Description, t.Help, t.Name, 'N', t.AD_Client_ID, t.AD_Org_ID, t.Created, t.Createdby, t.Updated, t.UpdatedBy from AD_Language l, AD_Field t where ((l.IsActive = 'Y') AND (l.IsSystemLanguage = 'Y') AND (l.IsBaseLanguage = 'N') AND (t.AD_Field_ID = 1123893) AND (NOT (EXISTS (select * from AD_Field_Trl tt where ((tt.AD_Language = l.AD_Language) AND (tt.AD_Field_ID = t.AD_Field_ID)))))))
;

-- 29/07/2013 11h4min21s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
insert into AD_Field(AD_Client_ID,AD_Column_ID,AD_Field_ID,AD_Org_ID,AD_Tab_ID,Created,CreatedBy,Description,DisplayLength,EntityType,Help,IsActive,IsCentrallyMaintained,IsDisplayed,IsEncrypted,IsFieldOnly,IsHeading,IsReadOnly,IsSameLine,Name,Updated,UpdatedBy) values (0, 1125052, 1123894, 0, 1120124, TO_DATE('2013-07-29 11:04:21','YYYY-MM-DD HH24:MI:SS'), 0, 'Version of the table definition', 11, 'LBRA', 'The Version indicates the version of this table definition.', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'Version', TO_DATE('2013-07-29 11:04:21','YYYY-MM-DD HH24:MI:SS'), 0)
;

-- 29/07/2013 11h4min21s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
insert into AD_Field_Trl(AD_Language,AD_Field_ID,Description,Help,Name,IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy)  (select l.AD_Language, t.AD_Field_ID, t.Description, t.Help, t.Name, 'N', t.AD_Client_ID, t.AD_Org_ID, t.Created, t.Createdby, t.Updated, t.UpdatedBy from AD_Language l, AD_Field t where ((l.IsActive = 'Y') AND (l.IsSystemLanguage = 'Y') AND (l.IsBaseLanguage = 'N') AND (t.AD_Field_ID = 1123894) AND (NOT (EXISTS (select * from AD_Field_Trl tt where ((tt.AD_Language = l.AD_Language) AND (tt.AD_Field_ID = t.AD_Field_ID)))))))
;

-- 29/07/2013 11h4min40s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2013-07-29 11:04:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1123890;

-- 29/07/2013 11h5min47s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=10,IsDisplayed='Y' WHERE AD_Field_ID=1123887;

-- 29/07/2013 11h5min47s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=20,IsDisplayed='Y' WHERE AD_Field_ID=1123890;

-- 29/07/2013 11h5min47s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=30,IsDisplayed='Y' WHERE AD_Field_ID=1123886;

-- 29/07/2013 11h5min47s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=40,IsDisplayed='Y' WHERE AD_Field_ID=1123894;

-- 29/07/2013 11h5min47s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=50,IsDisplayed='Y' WHERE AD_Field_ID=1123889;

-- 29/07/2013 11h5min47s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=60,IsDisplayed='Y' WHERE AD_Field_ID=1123892;

-- 29/07/2013 11h5min47s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=70,IsDisplayed='Y' WHERE AD_Field_ID=1123893;

-- 29/07/2013 11h5min47s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET SeqNo=80,IsDisplayed='Y' WHERE AD_Field_ID=1123888;

-- 29/07/2013 11h6min4s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2013-07-29 11:06:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1123894;

-- 29/07/2013 11h6min11s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET IsSameLine='Y',Updated=TO_DATE('2013-07-29 11:06:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1123893;

-- 29/07/2013 11h6min24s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
--UPDATE AD_Field SET AD_FieldGroup_ID=2000004,Updated=TO_DATE('2013-07-29 11:06:24','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1123892;

-- 29/07/2013 11h6min30s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET AD_FieldGroup_ID=125,Updated=TO_DATE('2013-07-29 11:06:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1123894;

-- 29/07/2013 11h6min50s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Tab SET EntityType='LBRA',Updated=TO_DATE('2013-07-29 11:06:50','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Tab_ID=1120124;

-- 29/07/2013 11h7min2s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET EntityType='LBRA',Updated=TO_DATE('2013-07-29 11:07:02','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1123894;

-- 29/07/2013 11h7min3s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET EntityType='LBRA',Updated=TO_DATE('2013-07-29 11:07:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1123889;

-- 29/07/2013 11h7min4s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET EntityType='LBRA',Updated=TO_DATE('2013-07-29 11:07:04','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1123892;

-- 29/07/2013 11h7min6s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Field SET EntityType='LBRA',Updated=TO_DATE('2013-07-29 11:07:06','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Field_ID=1123893;

-- 29/07/2013 11h7min30s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET EntityType='LBRA',Updated=TO_DATE('2013-07-29 11:07:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1125049;

-- 29/07/2013 11h7min32s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET EntityType='LBRA',Updated=TO_DATE('2013-07-29 11:07:32','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1125052;

-- 29/07/2013 11h7min34s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET EntityType='LBRA',Updated=TO_DATE('2013-07-29 11:07:34','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1125050;

-- 29/07/2013 11h7min51s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET EntityType='LBRA',Updated=TO_DATE('2013-07-29 11:07:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1125051;

-- 29/07/2013 11h8min0s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Table SET AD_Window_ID=1120081,Updated=TO_DATE('2013-07-29 11:08:00','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Table_ID=1120342;

-- 29/07/2013 11h8min15s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
ALTER TABLE LBR_IBPTax MODIFY UpdatedBy NUMBER(10)
;

-- 29/07/2013 11h9min3s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
insert into AD_Menu(AD_Client_ID,AD_Menu_ID,AD_Org_ID,AD_Window_ID,Action,Created,CreatedBy,EntityType,IsActive,IsCentrallyMaintained,IsReadOnly,IsSOTrx,IsSummary,Name,Updated,UpdatedBy) values (0, 1120194, 0, 1120081, 'W', TO_DATE('2013-07-29 11:09:03','YYYY-MM-DD HH24:MI:SS'), 0, 'LBRA', 'Y', 'Y', 'N', 'Y', 'N', 'Tabela de Impostos do IBPT', TO_DATE('2013-07-29 11:09:03','YYYY-MM-DD HH24:MI:SS'), 0)
;

-- 29/07/2013 11h9min3s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
insert into AD_Menu_Trl(AD_Language,AD_Menu_ID,Description,Name,IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy)  (select l.AD_Language, t.AD_Menu_ID, t.Description, t.Name, 'N', t.AD_Client_ID, t.AD_Org_ID, t.Created, t.Createdby, t.Updated, t.UpdatedBy from AD_Language l, AD_Menu t where ((l.IsActive = 'Y') AND (l.IsSystemLanguage = 'Y') AND (l.IsBaseLanguage = 'N') AND (t.AD_Menu_ID = 1120194) AND (NOT (EXISTS (select * from AD_Menu_Trl tt where ((tt.AD_Language = l.AD_Language) AND (tt.AD_Menu_ID = t.AD_Menu_ID)))))))
;

-- 29/07/2013 11h9min3s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
insert into AD_TreeNodeMM(AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Tree_ID,Node_ID,Parent_ID,SeqNo)  (select t.AD_Client_ID, 0, 'Y', SysDate, 0, SysDate, 0, t.AD_Tree_ID, 1120194, 0, 999 from AD_Tree t where ((t.AD_Client_ID = 0) AND (t.IsActive = 'Y') AND (t.IsAllNodes = 'Y') AND (t.TreeType = 'MM') AND (NOT (EXISTS (select * from AD_TreeNodeMM e where ((e.AD_Tree_ID = t.AD_Tree_ID) AND (Node_ID = 1120194)))))))
;

-- 29/07/2013 11h9min6s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120194;

-- 29/07/2013 11h9min6s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
--UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=2000001;

-- 29/07/2013 11h9min6s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120017;

-- 29/07/2013 11h9min6s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000001;

-- 29/07/2013 11h9min6s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000008;

-- 29/07/2013 11h9min6s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000004;

-- 29/07/2013 11h9min6s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000037;

-- 29/07/2013 11h9min6s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1100000;

-- 29/07/2013 11h9min9s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120194;

-- 29/07/2013 11h9min9s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000023;

-- 29/07/2013 11h9min9s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000015;

-- 29/07/2013 11h9min9s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000014;

-- 29/07/2013 11h9min9s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000035;

-- 29/07/2013 11h9min9s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000039;

-- 29/07/2013 11h9min9s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120014;

-- 29/07/2013 11h9min9s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000009;

-- 29/07/2013 11h9min12s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
--UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=2000001;

-- 29/07/2013 11h9min12s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120017;

-- 29/07/2013 11h9min12s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000001;

-- 29/07/2013 11h9min12s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000008;

-- 29/07/2013 11h9min12s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120194;

-- 29/07/2013 11h9min12s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000004;

-- 29/07/2013 11h9min12s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000037;

-- 29/07/2013 11h9min12s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000000, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1100000;

-- 29/07/2013 11h9min14s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000023;

-- 29/07/2013 11h9min14s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000015;

-- 29/07/2013 11h9min14s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000014;

-- 29/07/2013 11h9min14s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000035;

-- 29/07/2013 11h9min14s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000039;

-- 29/07/2013 11h9min14s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120014;

-- 29/07/2013 11h9min14s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120194;

-- 29/07/2013 11h9min14s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000009;

-- 29/07/2013 11h9min16s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000023;

-- 29/07/2013 11h9min16s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000015;

-- 29/07/2013 11h9min16s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000014;

-- 29/07/2013 11h9min16s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000035;

-- 29/07/2013 11h9min16s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000039;

-- 29/07/2013 11h9min16s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120014;

-- 29/07/2013 11h9min16s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120194;

-- 29/07/2013 11h9min16s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120194;

-- 29/07/2013 11h9min16s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=8, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000009;

-- 29/07/2013 11h9min18s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000023;

-- 29/07/2013 11h9min18s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000015;

-- 29/07/2013 11h9min18s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000014;

-- 29/07/2013 11h9min18s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000035;

-- 29/07/2013 11h9min18s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000039;

-- 29/07/2013 11h9min18s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000009;

-- 29/07/2013 11h9min18s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120014;

-- 29/07/2013 11h9min18s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120194;

-- 29/07/2013 11h9min18s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=8, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000009;

-- 29/07/2013 11h9min29s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Menu SET EntityType='LBRA',Updated=TO_DATE('2013-07-29 11:09:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Menu_ID=1120194;

-- 29/07/2013 11h52min18s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
insert into AD_Process(AD_Client_ID,AD_Org_ID,AD_Process_ID,AccessLevel,Classname,CopyFromProcess,Created,CreatedBy,Description,EntityType,IsActive,IsBetaFunctionality,IsDirectPrint,IsReport,IsServerProcess,Name,ShowHelp,Statistic_Count,Statistic_Seconds,Updated,UpdatedBy,Value) values (0, 0, 1120126, '3', 'org.adempierelbr.process.ProcImportIBPTax', 'N', TO_DATE('2013-07-29 11:52:18','YYYY-MM-DD HH24:MI:SS'), 0, 'Efetuar a importação da tabela de aliquotas apriximadas de impostos de acordo com o IBPT', 'LBRA', 'Y', 'N', 'N', 'N', 'N', 'Importar tabela de Alíquotas de Impostos do IBPT', 'Y', 0, 0, TO_DATE('2013-07-29 11:52:18','YYYY-MM-DD HH24:MI:SS'), 0, 'ProcImportIBPTax')
;

-- 29/07/2013 11h52min18s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
insert into AD_Process_Trl(AD_Language,AD_Process_ID,Description,Help,Name,IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy)  (select l.AD_Language, t.AD_Process_ID, t.Description, t.Help, t.Name, 'N', t.AD_Client_ID, t.AD_Org_ID, t.Created, t.Createdby, t.Updated, t.UpdatedBy from AD_Language l, AD_Process t where ((l.IsActive = 'Y') AND (l.IsSystemLanguage = 'Y') AND (l.IsBaseLanguage = 'N') AND (t.AD_Process_ID = 1120126) AND (NOT (EXISTS (select * from AD_Process_Trl tt where ((tt.AD_Language = l.AD_Language) AND (tt.AD_Process_ID = t.AD_Process_ID)))))))
;

-- 29/07/2013 11h53min14s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
insert into AD_Process_Para(AD_Client_ID,AD_Element_ID,AD_Org_ID,AD_Process_ID,AD_Process_Para_ID,AD_Reference_ID,ColumnName,Created,CreatedBy,EntityType,FieldLength,IsActive,IsCentrallyMaintained,IsMandatory,IsRange,Name,SeqNo,Updated,UpdatedBy) values (0, 50022, 0, 1120126, 1120143, 38, 'File_Directory', TO_DATE('2013-07-29 11:53:14','YYYY-MM-DD HH24:MI:SS'), 0, 'LBRA', 0, 'Y', 'Y', 'Y', 'N', 'Caminho do Arquivo CSV', 10, TO_DATE('2013-07-29 11:53:14','YYYY-MM-DD HH24:MI:SS'), 0)
;

-- 29/07/2013 11h53min14s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
insert into AD_Process_Para_Trl(AD_Language,AD_Process_Para_ID,Description,Help,Name,IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy)  (select l.AD_Language, t.AD_Process_Para_ID, t.Description, t.Help, t.Name, 'N', t.AD_Client_ID, t.AD_Org_ID, t.Created, t.Createdby, t.Updated, t.UpdatedBy from AD_Language l, AD_Process_Para t where ((l.IsActive = 'Y') AND (l.IsSystemLanguage = 'Y') AND (l.IsBaseLanguage = 'N') AND (t.AD_Process_Para_ID = 1120143) AND (NOT (EXISTS (select * from AD_Process_Para_Trl tt where ((tt.AD_Language = l.AD_Language) AND (tt.AD_Process_Para_ID = t.AD_Process_Para_ID)))))))
;

-- 29/07/2013 11h53min21s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Process_Para SET EntityType='LBRA',Updated=TO_DATE('2013-07-29 11:53:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Process_Para_ID=1120143;

-- 29/07/2013 11h55min22s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
insert into AD_Menu(AD_Client_ID,AD_Menu_ID,AD_Org_ID,AD_Process_ID,Action,Created,CreatedBy,EntityType,IsActive,IsCentrallyMaintained,IsReadOnly,IsSOTrx,IsSummary,Name,Updated,UpdatedBy) values (0, 1120195, 0, 1120126, 'P', TO_DATE('2013-07-29 11:55:22','YYYY-MM-DD HH24:MI:SS'), 0, 'LBRA', 'Y', 'Y', 'N', 'Y', 'N', 'Importar tabela de Alíquotas de Impostos do IBPT', TO_DATE('2013-07-29 11:55:22','YYYY-MM-DD HH24:MI:SS'), 0)
;

-- 29/07/2013 11h55min22s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
insert into AD_Menu_Trl(AD_Language,AD_Menu_ID,Description,Name,IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy)  (select l.AD_Language, t.AD_Menu_ID, t.Description, t.Name, 'N', t.AD_Client_ID, t.AD_Org_ID, t.Created, t.Createdby, t.Updated, t.UpdatedBy from AD_Language l, AD_Menu t where ((l.IsActive = 'Y') AND (l.IsSystemLanguage = 'Y') AND (l.IsBaseLanguage = 'N') AND (t.AD_Menu_ID = 1120195) AND (NOT (EXISTS (select * from AD_Menu_Trl tt where ((tt.AD_Language = l.AD_Language) AND (tt.AD_Menu_ID = t.AD_Menu_ID)))))))
;

-- 29/07/2013 11h55min22s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
insert into AD_TreeNodeMM(AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Tree_ID,Node_ID,Parent_ID,SeqNo)  (select t.AD_Client_ID, 0, 'Y', SysDate, 0, SysDate, 0, t.AD_Tree_ID, 1120195, 0, 999 from AD_Tree t where ((t.AD_Client_ID = 0) AND (t.IsActive = 'Y') AND (t.IsAllNodes = 'Y') AND (t.TreeType = 'MM') AND (NOT (EXISTS (select * from AD_TreeNodeMM e where ((e.AD_Tree_ID = t.AD_Tree_ID) AND (Node_ID = 1120195)))))))
;

-- 29/07/2013 11h55min25s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000023;

-- 29/07/2013 11h55min25s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000015;

-- 29/07/2013 11h55min25s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000014;

-- 29/07/2013 11h55min25s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000035;

-- 29/07/2013 11h55min25s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000039;

-- 29/07/2013 11h55min25s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000009;

-- 29/07/2013 11h55min25s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120014;

-- 29/07/2013 11h55min25s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120195;

-- 29/07/2013 11h55min25s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=8, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120194;

-- 29/07/2013 11h56min34s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
insert into AD_Menu(AD_Client_ID,AD_Menu_ID,AD_Org_ID,Created,CreatedBy,EntityType,IsActive,IsCentrallyMaintained,IsReadOnly,IsSOTrx,IsSummary,Name,Updated,UpdatedBy) values (0, 1120196, 0, TO_DATE('2013-07-29 11:56:34','YYYY-MM-DD HH24:MI:SS'), 0, 'LBRA', 'Y', 'Y', 'N', 'N', 'Y', 'IBPT (Tabela de Impostos Aproximados)', TO_DATE('2013-07-29 11:56:34','YYYY-MM-DD HH24:MI:SS'), 0)
;

-- 29/07/2013 11h56min34s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
insert into AD_Menu_Trl(AD_Language,AD_Menu_ID,Description,Name,IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy)  (select l.AD_Language, t.AD_Menu_ID, t.Description, t.Name, 'N', t.AD_Client_ID, t.AD_Org_ID, t.Created, t.Createdby, t.Updated, t.UpdatedBy from AD_Language l, AD_Menu t where ((l.IsActive = 'Y') AND (l.IsSystemLanguage = 'Y') AND (l.IsBaseLanguage = 'N') AND (t.AD_Menu_ID = 1120196) AND (NOT (EXISTS (select * from AD_Menu_Trl tt where ((tt.AD_Language = l.AD_Language) AND (tt.AD_Menu_ID = t.AD_Menu_ID)))))))
;

-- 29/07/2013 11h56min34s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
insert into AD_TreeNodeMM(AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Tree_ID,Node_ID,Parent_ID,SeqNo)  (select t.AD_Client_ID, 0, 'Y', SysDate, 0, SysDate, 0, t.AD_Tree_ID, 1120196, 0, 999 from AD_Tree t where ((t.AD_Client_ID = 0) AND (t.IsActive = 'Y') AND (t.IsAllNodes = 'Y') AND (t.TreeType = 'MM') AND (NOT (EXISTS (select * from AD_TreeNodeMM e where ((e.AD_Tree_ID = t.AD_Tree_ID) AND (Node_ID = 1120196)))))))
;

-- 29/07/2013 11h56min37s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000023;

-- 29/07/2013 11h56min37s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000015;

-- 29/07/2013 11h56min37s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000014;

-- 29/07/2013 11h56min37s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000035;

-- 29/07/2013 11h56min37s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000039;

-- 29/07/2013 11h56min37s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000009;

-- 29/07/2013 11h56min37s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120014;

-- 29/07/2013 11h56min37s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120196;

-- 29/07/2013 11h56min37s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=8, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120195;

-- 29/07/2013 11h56min37s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=9, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120194;

-- 29/07/2013 11h56min39s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1120196, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120195;

-- 29/07/2013 11h56min40s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000023;

-- 29/07/2013 11h56min40s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000015;

-- 29/07/2013 11h56min40s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=2, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000014;

-- 29/07/2013 11h56min40s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=3, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000035;

-- 29/07/2013 11h56min40s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=4, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000039;

-- 29/07/2013 11h56min40s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=5, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1000009;

-- 29/07/2013 11h56min40s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=6, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120014;

-- 29/07/2013 11h56min40s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=7, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120014;

-- 29/07/2013 11h56min40s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=8, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120196;

-- 29/07/2013 11h56min40s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1000008, SeqNo=9, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120194;

-- 29/07/2013 11h56min43s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1120196, SeqNo=0, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120194;

-- 29/07/2013 11h56min43s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_TreeNodeMM SET Parent_ID=1120196, SeqNo=1, Updated=SysDate WHERE AD_Tree_ID=10 AND Node_ID=1120195;

-- 29/07/2013 11h57min1s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Menu SET Name='Importar tabela de Impostos do IBPT',Updated=TO_DATE('2013-07-29 11:57:01','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Menu_ID=1120195;

-- 29/07/2013 11h57min1s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Menu_Trl SET IsTranslated='N' WHERE AD_Menu_ID=1120195;

-- 29/07/2013 11h57min1s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Menu_Trl SET Description=NULL,Name='Importar tabela de Impostos do IBPT',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Menu_ID=1120195;

-- 29/07/2013 11h57min5s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Menu_Trl SET IsTranslated='Y',Name='Importar tabela de Impostos do IBPT',Updated=TO_DATE('2013-07-29 11:57:05','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Menu_ID=1120195 AND AD_Language='pt_BR';

-- 29/07/2013 11h57min17s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Process_Trl SET IsTranslated='Y',Name='Importar tabela de Impostos do IBPT',Updated=TO_DATE('2013-07-29 11:57:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Process_ID=1120126 AND AD_Language='pt_BR';

-- 29/07/2013 11h57min21s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Process SET Name='Importar tabela de Impostos do IBPT',Updated=TO_DATE('2013-07-29 11:57:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Process_ID=1120126;

-- 29/07/2013 11h57min21s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Process_Trl SET IsTranslated='N' WHERE AD_Process_ID=1120126;

-- 29/07/2013 11h57min21s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Process_Trl SET Description='Efetuar a importação da tabela de aliquotas apriximadas de impostos de acordo com o IBPT',Help=NULL,Name='Importar tabela de Impostos do IBPT',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Process_ID=1120126;

-- 29/07/2013 11h57min21s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Menu SET Description='Efetuar a importação da tabela de aliquotas apriximadas de impostos de acordo com o IBPT', IsActive='Y', Name='Importar tabela de Impostos do IBPT',Updated=TO_DATE('2013-07-29 11:57:21','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Menu_ID=1120195;

-- 29/07/2013 11h57min21s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Menu_Trl SET IsTranslated='N' WHERE AD_Menu_ID=1120195;

-- 29/07/2013 11h57min21s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Menu_Trl SET Description='Efetuar a importação da tabela de aliquotas apriximadas de impostos de acordo com o IBPT',Name='Importar tabela de Impostos do IBPT',IsTranslated='Y' WHERE AD_Language='en_US' AND AD_Menu_ID=1120195;

-- 29/07/2013 12h0min54s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Process_Para SET AD_Reference_ID=39,Updated=TO_DATE('2013-07-29 12:00:54','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Process_Para_ID=1120143;

-- 29/07/2013 13h53min11s BRT
-- I forgot to set the DICTIONARY_ID_COMMENTS System Configurator
UPDATE AD_Column SET AD_Val_Rule_ID=NULL,Updated=TO_DATE('2013-07-29 13:53:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=0 WHERE AD_Column_ID=1125049;

EXIT