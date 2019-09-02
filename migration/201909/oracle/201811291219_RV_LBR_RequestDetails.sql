-- Criação do relatório Detalhes de Solicitação

-- View: RV_LBR_RequestDetails

-- DROP VIEW RV_LBR_RequestDetails;

SET SQLBLANKLINES ON
SET DEFINE OFF

CREATE OR REPLACE VIEW RV_LBR_RequestDetails AS 
SELECT r.R_Request_ID, r.AD_Client_ID, r.AD_Org_ID, r.Created, r.CreatedBy, r.Updated, r.UpdatedBy, r.DocumentNo, r.R_RequestType_ID, r.R_Group_ID, r.R_Category_ID, r.C_Campaign_ID, r.R_Status_ID, r.Priority, r.PriorityUser, r.DueType, r.Summary, r.R_RequestRelated_ID, r.R_Resolution_ID, r.ConfidentialType, r.IsInvoiced, r.IsEscalated, r.IsSelfService, r.SalesRep_ID, r.DateLastAction, r.DateNextAction, r.DateLastAlert, r.M_ProductSpent_ID, r.QtySpent, r.TaskStatus, r.Result, r.LastResult, r.StartTime, r.EndTime, r.StartDate, r.CloseDate, r.C_BPartner_ID, bp.lbr_cnpj, bp.lbr_cpf, r.AD_User_ID, r.C_Project_ID, r.C_Invoice_ID, r.C_Payment_ID, r.QtyInvoiced, r.C_InvoiceRequest_ID, r.C_Order_ID, r.M_Product_ID, r.M_InOut_ID, r.A_Asset_ID, r.M_RMA_ID, r.RequestAmt FROM R_Request r
LEFT JOIN C_BPartner bp ON r.C_BPartner_ID = bp.C_BPartner_ID;

-- 29/11/2018 11h43min5s BRST
INSERT INTO AD_Table (AD_Table_ID,Name,Description,Help,TableName,LoadSeq,AccessLevel,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSecurityEnabled,IsDeleteable,IsHighVolume,IsView,EntityType,ImportTable,IsChangeLog,ReplicationType,CopyColumnsFromTable,IsCentrallyMaintained,IsSystemLanguage) VALUES (1120607,'Request Details','Details of Request','Report to see all details of request','RV_LBR_RequestDetails',0,'3',0,0,'Y',TO_DATE('2018-11-29 11:43:04','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-11-29 11:43:04','YYYY-MM-DD HH24:MI:SS'),100,'N','N','N','Y','LBRA','N','Y','L','N','Y','N')
;

-- 29/11/2018 17h13min52s BRST
UPDATE AD_Table_Trl SET Name='Detalhes de Solicitações',IsTranslated='Y',Updated=TO_DATE('2018-11-29 17:13:52','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Table_ID=1120607 AND AD_Language='pt_BR'
;

-- 29/11/2018 11h43min56s BRST
INSERT INTO AD_Sequence (Name,CurrentNext,IsAudited,StartNewYear,Description,IsActive,IsTableID,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Updated,UpdatedBy,AD_Sequence_ID,IsAutoSequence,StartNo,IncrementNo,CurrentNextSys) VALUES ('RV_LBR_RequestDetails',1000000,'N','N','Table RV_LBR_RequestDetails','Y','Y',0,0,TO_DATE('2018-11-29 11:43:56','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-11-29 11:43:56','YYYY-MM-DD HH24:MI:SS'),100,1153608,'Y',1000000,1,200000)
;

-- 29/11/2018 11h44min1s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable) VALUES (1130520,0.0,'Request','Request from a Business Partner or Prospect','The Request identifies a unique request from a Business Partner or Prospect.',1120607,'R_Request_ID',10,'N','N','N','N','N',30,0,0,'Y',TO_DATE('2018-11-29 11:44:00','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-11-29 11:44:00','YYYY-MM-DD HH24:MI:SS'),100,1516,'N','N','LBRA','N')
;

-- 29/11/2018 11h44min1s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable) VALUES (1130521,0.0,'Client','Client/Tenant for this installation.','A Client is a company or a legal entity. You cannot share data between Clients. Tenant is a synonym for Client.',1120607,129,'AD_Client_ID','@#AD_Client_ID@',10,'N','N','N','N','N',19,0,0,'Y',TO_DATE('2018-11-29 11:44:01','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-11-29 11:44:01','YYYY-MM-DD HH24:MI:SS'),100,102,'N','N','LBRA','N')
;

-- 29/11/2018 11h44min1s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,AD_Val_Rule_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable) VALUES (1130522,0.0,'Organization','Organizational entity within client','An organization is a unit of your client or legal entity - examples are store, department. You can share data between organizations.',1120607,104,'AD_Org_ID','@#AD_Org_ID@',10,'N','N','N','N','N',19,0,0,'Y',TO_DATE('2018-11-29 11:44:01','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-11-29 11:44:01','YYYY-MM-DD HH24:MI:SS'),100,113,'N','N','LBRA','N')
;

-- 29/11/2018 11h44min2s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable) VALUES (1130523,0.0,'Created','Date this record was created','The Created field indicates the date that this record was created.',1120607,'Created','SYSDATE',29,'N','N','N','N','N',16,0,0,'Y',TO_DATE('2018-11-29 11:44:01','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-11-29 11:44:01','YYYY-MM-DD HH24:MI:SS'),100,245,'N','N','LBRA','N')
;

-- 29/11/2018 11h44min2s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable) VALUES (1130524,0.0,'Created By','User who created this records','The Created By field indicates the user who created this record.',1120607,'CreatedBy',10,'N','N','N','N','N',18,110,0,0,'Y',TO_DATE('2018-11-29 11:44:02','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-11-29 11:44:02','YYYY-MM-DD HH24:MI:SS'),100,246,'N','N','LBRA','N')
;

-- 29/11/2018 11h44min3s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable) VALUES (1130525,0.0,'Updated','Date this record was updated','The Updated field indicates the date that this record was updated.',1120607,'Updated','SYSDATE',29,'N','N','N','N','N',16,0,0,'Y',TO_DATE('2018-11-29 11:44:02','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-11-29 11:44:02','YYYY-MM-DD HH24:MI:SS'),100,607,'N','N','LBRA','N')
;

-- 29/11/2018 11h44min3s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable) VALUES (1130526,0.0,'Updated By','User who updated this records','The Updated By field indicates the user who updated this record.',1120607,'UpdatedBy',10,'N','N','N','N','N',18,110,0,0,'Y',TO_DATE('2018-11-29 11:44:03','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-11-29 11:44:03','YYYY-MM-DD HH24:MI:SS'),100,608,'N','N','LBRA','N')
;

-- 29/11/2018 11h44min3s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable) VALUES (1130527,0.0,'Document No','Document sequence number of the document','The document number is usually automatically generated by the system and determined by the document type of the document. If the document is not saved, the preliminary number is displayed in "<>".

If the document type of your document has no automatic document sequence defined, the field is empty if you create a new document. This is for documents which usually have an external number (like vendor invoice).  If you leave the field empty, the system will generate a document number for you. The document sequence used for this fallback number is defined in the "Maintain Sequence" window with the name "DocumentNo_<TableName>", where TableName is the actual name of the table (e.g. C_Order).',1120607,'DocumentNo',30,'N','N','N','N','N',10,0,0,'Y',TO_DATE('2018-11-29 11:44:03','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-11-29 11:44:03','YYYY-MM-DD HH24:MI:SS'),100,290,'N','Y','LBRA','N')
;

-- 29/11/2018 11h44min4s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable) VALUES (1130528,0.0,'Request Type','Type of request (e.g. Inquiry, Complaint, ..)','Request Types are used for processing and categorizing requests. Options are Account Inquiry, Warranty Issue, etc.',1120607,'R_RequestType_ID',10,'N','N','N','N','N',19,0,0,'Y',TO_DATE('2018-11-29 11:44:03','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-11-29 11:44:03','YYYY-MM-DD HH24:MI:SS'),100,1894,'N','N','LBRA','N')
;

-- 29/11/2018 11h44min4s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable) VALUES (1130529,0.0,'Group','Request Group','Group of requests (e.g. version numbers, responsibility, ...)',1120607,'R_Group_ID',10,'N','N','N','N','N',19,0,0,'Y',TO_DATE('2018-11-29 11:44:04','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-11-29 11:44:04','YYYY-MM-DD HH24:MI:SS'),100,2704,'N','N','LBRA','N')
;

-- 29/11/2018 11h44min4s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable) VALUES (1130530,0.0,'Category','Request Category','Category or Topic of the Request ',1120607,'R_Category_ID',10,'N','N','N','N','N',19,0,0,'Y',TO_DATE('2018-11-29 11:44:04','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-11-29 11:44:04','YYYY-MM-DD HH24:MI:SS'),100,2705,'N','N','LBRA','N')
;

-- 29/11/2018 11h44min5s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable) VALUES (1130531,0.0,'Campaign','Marketing Campaign','The Campaign defines a unique marketing program.  Projects can be associated with a pre defined Marketing Campaign.  You can then report based on a specific Campaign.',1120607,'C_Campaign_ID',10,'N','N','N','N','N',19,0,0,'Y',TO_DATE('2018-11-29 11:44:04','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-11-29 11:44:04','YYYY-MM-DD HH24:MI:SS'),100,550,'N','N','LBRA','N')
;

-- 29/11/2018 11h44min5s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable) VALUES (1130532,0.0,'Status','Request Status','Status if the request (open, closed, investigating, ..)',1120607,'R_Status_ID',10,'N','N','N','N','N',19,0,0,'Y',TO_DATE('2018-11-29 11:44:05','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-11-29 11:44:05','YYYY-MM-DD HH24:MI:SS'),100,2706,'N','N','LBRA','N')
;

-- 29/11/2018 11h44min5s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable) VALUES (1130533,0.0,'Priority','Indicates if this request is of a high, medium or low priority.','The Priority indicates the importance of this request.',1120607,'Priority',1,'N','N','N','N','N',11,0,0,'Y',TO_DATE('2018-11-29 11:44:05','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-11-29 11:44:05','YYYY-MM-DD HH24:MI:SS'),100,1514,'N','N','LBRA','N')
;

-- 29/11/2018 11h44min6s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable) VALUES (1130534,0.0,'User Importance','Priority of the issue for the User',1120607,'PriorityUser','5',1,'N','N','N','N','N',17,154,0,0,'Y',TO_DATE('2018-11-29 11:44:06','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-11-29 11:44:06','YYYY-MM-DD HH24:MI:SS'),100,2708,'N','N','LBRA','N')
;

-- 29/11/2018 11h44min6s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable) VALUES (1130535,0.0,'Due type','Status of the next action for this Request','The Due Type indicates if this request is Due, Overdue or Scheduled.',1120607,'DueType','5',1,'N','N','N','N','N',17,222,0,0,'Y',TO_DATE('2018-11-29 11:44:06','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-11-29 11:44:06','YYYY-MM-DD HH24:MI:SS'),100,1504,'N','N','LBRA','N')
;

-- 29/11/2018 11h44min7s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable) VALUES (1130536,0.0,'Summary','Textual summary of this request','The Summary allows free form text entry of a recap of this request.',1120607,'Summary',2000,'N','N','N','N','N',14,0,0,'Y',TO_DATE('2018-11-29 11:44:06','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-11-29 11:44:06','YYYY-MM-DD HH24:MI:SS'),100,1521,'N','N','LBRA','N')
;

-- 29/11/2018 11h44min7s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable) VALUES (1130537,0.0,'Related Request','Related Request (Master Issue, ..)','Request related to this request',1120607,'R_RequestRelated_ID',10,'N','N','N','N','N',30,341,0,0,'Y',TO_DATE('2018-11-29 11:44:07','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-11-29 11:44:07','YYYY-MM-DD HH24:MI:SS'),100,2710,'N','N','LBRA','N')
;

-- 29/11/2018 11h44min7s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable) VALUES (1130538,0.0,'Resolution','Request Resolution','Resolution status (e.g. Fixed, Rejected, ..)',1120607,'R_Resolution_ID',10,'N','N','N','N','N',19,0,0,'Y',TO_DATE('2018-11-29 11:44:07','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-11-29 11:44:07','YYYY-MM-DD HH24:MI:SS'),100,2707,'N','N','LBRA','N')
;

-- 29/11/2018 11h44min8s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,DefaultValue,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable) VALUES (1130539,0.0,'Confidentiality','Type of Confidentiality',1120607,'ConfidentialType','C',1,'N','N','N','N','N',17,340,0,0,'Y',TO_DATE('2018-11-29 11:44:07','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-11-29 11:44:07','YYYY-MM-DD HH24:MI:SS'),100,2709,'N','N','LBRA','N')
;

-- 29/11/2018 11h44min8s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable) VALUES (1130540,0.0,'Invoiced','Is this invoiced?','If selected, invoices are created',1120607,'IsInvoiced',1,'N','N','N','N','N',20,0,0,'Y',TO_DATE('2018-11-29 11:44:08','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-11-29 11:44:08','YYYY-MM-DD HH24:MI:SS'),100,387,'N','N','LBRA','N')
;

-- 29/11/2018 11h44min8s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable) VALUES (1130541,0.0,'Escalated','This request has been escalated','The Escalated checkbox indicates that this request has been escalated or raised in importance.',1120607,'IsEscalated',1,'N','N','N','N','N',17,319,0,0,'Y',TO_DATE('2018-11-29 11:44:08','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-11-29 11:44:08','YYYY-MM-DD HH24:MI:SS'),100,1509,'N','N','LBRA','N')
;

-- 29/11/2018 11h44min9s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable) VALUES (1130542,0.0,'Self-Service','This is a Self-Service entry or this entry can be changed via Self-Service','Self-Service allows users to enter data or update their data.  The flag indicates, that this record was entered or created via Self-Service or that the user can change it via the Self-Service functionality.',1120607,'IsSelfService',1,'N','N','N','N','N',20,0,0,'Y',TO_DATE('2018-11-29 11:44:08','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-11-29 11:44:08','YYYY-MM-DD HH24:MI:SS'),100,2063,'N','N','LBRA','N')
;

-- 29/11/2018 11h44min9s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable) VALUES (1130543,0.0,'Sales Representative','Sales Representative or Company Agent','The Sales Representative indicates the Sales Rep for this Region.  Any Sales Rep must be a valid internal user.',1120607,'SalesRep_ID',10,'N','N','N','N','N',18,190,0,0,'Y',TO_DATE('2018-11-29 11:44:09','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-11-29 11:44:09','YYYY-MM-DD HH24:MI:SS'),100,1063,'N','N','LBRA','N')
;

-- 29/11/2018 11h44min9s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable) VALUES (1130544,0.0,'Date last action','Date this request was last acted on','The Date Last Action indicates that last time that the request was acted on.',1120607,'DateLastAction',29,'N','N','N','N','N',16,0,0,'Y',TO_DATE('2018-11-29 11:44:09','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-11-29 11:44:09','YYYY-MM-DD HH24:MI:SS'),100,1502,'N','N','LBRA','N')
;

-- 29/11/2018 11h44min10s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable) VALUES (1130545,0.0,'Date next action','Date that this request should be acted on','The Date Next Action indicates the next scheduled date for an action to occur for this request.',1120607,'DateNextAction',29,'N','N','N','N','N',16,0,0,'Y',TO_DATE('2018-11-29 11:44:09','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-11-29 11:44:09','YYYY-MM-DD HH24:MI:SS'),100,1503,'N','N','LBRA','N')
;

-- 29/11/2018 11h44min10s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable) VALUES (1130546,0.0,'Last Alert','Date when last alert were sent','The last alert date is updated when a reminder email is sent',1120607,'DateLastAlert',29,'N','N','N','N','N',15,0,0,'Y',TO_DATE('2018-11-29 11:44:10','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-11-29 11:44:10','YYYY-MM-DD HH24:MI:SS'),100,2629,'N','N','LBRA','N')
;

-- 29/11/2018 11h44min11s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable) VALUES (1130547,0.0,'Product Used','Product/Resource/Service used in Request','Invoicing uses the Product used.',1120607,'M_ProductSpent_ID',10,'N','N','N','N','N',30,162,0,0,'Y',TO_DATE('2018-11-29 11:44:10','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-11-29 11:44:10','YYYY-MM-DD HH24:MI:SS'),100,2716,'N','N','LBRA','N')
;

-- 29/11/2018 11h44min11s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable) VALUES (1130548,0.0,'Quantity Used','Quantity used for this event',1120607,'QtySpent',131089,'N','N','N','N','N',29,0,0,'Y',TO_DATE('2018-11-29 11:44:11','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-11-29 11:44:11','YYYY-MM-DD HH24:MI:SS'),100,2715,'N','N','LBRA','N')
;

-- 29/11/2018 11h44min12s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable) VALUES (1130549,0.0,'Task Status','Status of the Task','Completion Rate and Status of the Task',1120607,'TaskStatus',1,'N','N','N','N','N',17,366,0,0,'Y',TO_DATE('2018-11-29 11:44:11','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-11-29 11:44:11','YYYY-MM-DD HH24:MI:SS'),100,2898,'N','N','LBRA','N')
;

-- 29/11/2018 11h44min12s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable) VALUES (1130550,0.0,'Result','Result of the action taken','The Result indicates the result of any action taken on this request.',1120607,'Result',2000,'N','N','N','N','N',14,0,0,'Y',TO_DATE('2018-11-29 11:44:12','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-11-29 11:44:12','YYYY-MM-DD HH24:MI:SS'),100,546,'N','N','LBRA','N')
;

-- 29/11/2018 11h44min12s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable) VALUES (1130551,0.0,'Last Result','Result of last contact','The Last Result identifies the result of the last contact made.',1120607,'LastResult',2000,'N','N','N','N','N',10,0,0,'Y',TO_DATE('2018-11-29 11:44:12','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-11-29 11:44:12','YYYY-MM-DD HH24:MI:SS'),100,431,'N','N','LBRA','N')
;

-- 29/11/2018 11h44min13s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable) VALUES (1130552,0.0,'Start Time','Time started',1120607,'StartTime',29,'N','N','N','N','N',16,0,0,'Y',TO_DATE('2018-11-29 11:44:12','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-11-29 11:44:12','YYYY-MM-DD HH24:MI:SS'),100,2713,'N','N','LBRA','N')
;

-- 29/11/2018 11h44min13s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable) VALUES (1130553,0.0,'End Time','End of the time span',1120607,'EndTime',29,'N','N','N','N','N',16,0,0,'Y',TO_DATE('2018-11-29 11:44:13','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-11-29 11:44:13','YYYY-MM-DD HH24:MI:SS'),100,2714,'N','N','LBRA','N')
;

-- 29/11/2018 11h44min13s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable) VALUES (1130554,0.0,'Start Date','First effective day (inclusive)','The Start Date indicates the first or starting date',1120607,'StartDate',29,'N','N','N','N','N',15,0,0,'Y',TO_DATE('2018-11-29 11:44:13','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-11-29 11:44:13','YYYY-MM-DD HH24:MI:SS'),100,574,'N','N','LBRA','N')
;

-- 29/11/2018 11h44min14s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable) VALUES (1130555,0.0,'Close Date','Close Date','The Start Date indicates the last or final date',1120607,'CloseDate',29,'N','N','N','N','N',15,0,0,'Y',TO_DATE('2018-11-29 11:44:13','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-11-29 11:44:13','YYYY-MM-DD HH24:MI:SS'),100,2721,'N','N','LBRA','N')
;

-- 29/11/2018 11h44min14s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable) VALUES (1130556,0.0,'Business Partner ','Identifies a Business Partner','A Business Partner is anyone with whom you transact.  This can include Vendor, Customer, Employee or Salesperson',1120607,'C_BPartner_ID',10,'N','N','N','N','N',30,0,0,'Y',TO_DATE('2018-11-29 11:44:14','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-11-29 11:44:14','YYYY-MM-DD HH24:MI:SS'),100,187,'N','N','LBRA','N')
;

-- 29/11/2018 11h44min14s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable) VALUES (1130557,0.0,'CNPJ','Used to identify Legal Entities in Brazil','Used to identify Legal Entities in Brazil',1120607,'lbr_CNPJ',18,'N','N','N','N','N',10,0,0,'Y',TO_DATE('2018-11-29 11:44:14','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-11-29 11:44:14','YYYY-MM-DD HH24:MI:SS'),100,1000009,'N','N','LBRA','N')
;

-- 29/11/2018 11h44min15s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable) VALUES (1130558,0.0,'CPF','Used to identify individuals in Brazil','Used to identify individuals in Brazil',1120607,'lbr_CPF',14,'N','N','N','N','N',10,0,0,'Y',TO_DATE('2018-11-29 11:44:14','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-11-29 11:44:14','YYYY-MM-DD HH24:MI:SS'),100,1000010,'N','N','LBRA','N')
;

-- 29/11/2018 11h44min15s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable) VALUES (1130559,0.0,'User/Contact','User within the system - Internal or Business Partner Contact','The User identifies a unique user in the system. This could be an internal user or a business partner contact',1120607,'AD_User_ID',10,'N','N','N','N','N',30,0,0,'Y',TO_DATE('2018-11-29 11:44:15','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-11-29 11:44:15','YYYY-MM-DD HH24:MI:SS'),100,138,'N','N','LBRA','N')
;

-- 29/11/2018 11h44min16s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable) VALUES (1130560,0.0,'Project','Financial Project','A Project allows you to track and control internal or external activities.',1120607,'C_Project_ID',10,'N','N','N','N','N',19,0,0,'Y',TO_DATE('2018-11-29 11:44:15','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-11-29 11:44:15','YYYY-MM-DD HH24:MI:SS'),100,208,'N','N','LBRA','N')
;

-- 29/11/2018 11h44min16s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable) VALUES (1130561,0.0,'Invoice','Invoice Identifier','The Invoice Document.',1120607,'C_Invoice_ID',10,'N','N','N','N','N',30,0,0,'Y',TO_DATE('2018-11-29 11:44:16','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-11-29 11:44:16','YYYY-MM-DD HH24:MI:SS'),100,1008,'N','N','LBRA','N')
;

-- 29/11/2018 11h44min16s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable) VALUES (1130562,0.0,'Payment','Payment identifier','The Payment is a unique identifier of this payment.',1120607,'C_Payment_ID',10,'N','N','N','N','N',30,0,0,'Y',TO_DATE('2018-11-29 11:44:16','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-11-29 11:44:16','YYYY-MM-DD HH24:MI:SS'),100,1384,'N','N','LBRA','N')
;

-- 29/11/2018 11h44min17s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable) VALUES (1130563,0.0,'Quantity Invoiced','Invoiced Quantity','The Invoiced Quantity indicates the quantity of a product that have been invoiced.',1120607,'QtyInvoiced',131089,'N','N','N','N','N',29,0,0,'Y',TO_DATE('2018-11-29 11:44:16','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-11-29 11:44:16','YYYY-MM-DD HH24:MI:SS'),100,529,'N','N','LBRA','N')
;

-- 29/11/2018 11h44min17s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,AD_Reference_ID,AD_Reference_Value_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable) VALUES (1130564,0.0,'Request Invoice','The generated invoice for this request','The optionally generated invoice for the request',1120607,'C_InvoiceRequest_ID',10,'N','N','N','N','N',30,336,0,0,'Y',TO_DATE('2018-11-29 11:44:17','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-11-29 11:44:17','YYYY-MM-DD HH24:MI:SS'),100,2717,'N','N','LBRA','N')
;

-- 29/11/2018 11h44min18s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable) VALUES (1130565,0.0,'Order','Order','The Order is a control document.  The  Order is complete when the quantity ordered is the same as the quantity shipped and invoiced.  When you close an order, unshipped (backordered) quantities are cancelled.',1120607,'C_Order_ID',10,'N','N','N','N','N',30,0,0,'Y',TO_DATE('2018-11-29 11:44:17','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-11-29 11:44:17','YYYY-MM-DD HH24:MI:SS'),100,558,'N','N','LBRA','N')
;

-- 29/11/2018 11h44min18s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable) VALUES (1130566,0.0,'Product','Product, Service, Item','Identifies an item which is either purchased or sold in this organization.',1120607,'M_Product_ID',10,'N','N','N','N','N',30,0,0,'Y',TO_DATE('2018-11-29 11:44:18','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-11-29 11:44:18','YYYY-MM-DD HH24:MI:SS'),100,454,'N','N','LBRA','N')
;

-- 29/11/2018 11h44min18s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable) VALUES (1130567,0.0,'Shipment/Receipt','Material Shipment Document','The Material Shipment / Receipt ',1120607,'M_InOut_ID',10,'N','N','N','N','N',30,0,0,'Y',TO_DATE('2018-11-29 11:44:18','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-11-29 11:44:18','YYYY-MM-DD HH24:MI:SS'),100,1025,'N','N','LBRA','N')
;

-- 29/11/2018 11h44min19s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable) VALUES (1130568,0.0,'Asset','Asset used internally or by customers','An asset is either created by purchasing or by delivering a product.  An asset can be used internally or be a customer asset.',1120607,'A_Asset_ID',10,'N','N','N','N','N',30,0,0,'Y',TO_DATE('2018-11-29 11:44:18','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-11-29 11:44:18','YYYY-MM-DD HH24:MI:SS'),100,1884,'N','N','LBRA','N')
;

-- 29/11/2018 11h44min19s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable) VALUES (1130569,0.0,'RMA','Return Material Authorization','A Return Material Authorization may be required to accept returns and to create Credit Memos',1120607,'M_RMA_ID',10,'N','N','N','N','N',19,0,0,'Y',TO_DATE('2018-11-29 11:44:19','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-11-29 11:44:19','YYYY-MM-DD HH24:MI:SS'),100,2412,'N','N','LBRA','N')
;

-- 29/11/2018 11h44min19s BRST
INSERT INTO AD_Column (AD_Column_ID,Version,Name,Description,Help,AD_Table_ID,ColumnName,FieldLength,IsKey,IsParent,IsMandatory,IsTranslated,IsIdentifier,AD_Reference_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,AD_Element_ID,IsUpdateable,IsSelectionColumn,EntityType,IsAlwaysUpdateable) VALUES (1130570,0.0,'Request Amount','Amount associated with this request','The Request Amount indicates any amount that is associated with this request.  For example, a warranty amount or refund amount.',1120607,'RequestAmt',131089,'N','N','N','N','N',12,0,0,'Y',TO_DATE('2018-11-29 11:44:19','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-11-29 11:44:19','YYYY-MM-DD HH24:MI:SS'),100,1520,'N','N','LBRA','N')
;

-- 29/11/2018 11h48min31s BRST
INSERT INTO AD_ReportView (AD_ReportView_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,AD_Table_ID,EntityType) VALUES (1120041,0,0,'Y',TO_DATE('2018-11-29 11:48:30','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-11-29 11:48:30','YYYY-MM-DD HH24:MI:SS'),100,'RequestDetails',1120607,'LBRA')
;

-- 29/11/2018 11h50min5s BRST
INSERT INTO AD_Process (AD_Process_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,IsReport,Value,IsDirectPrint,AD_ReportView_ID,AccessLevel,EntityType,Statistic_Count,Statistic_Seconds,IsBetaFunctionality,IsServerProcess,ShowHelp,CopyFromProcess) VALUES (1120226,0,0,'Y',TO_DATE('2018-11-29 11:50:05','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-11-29 11:50:05','YYYY-MM-DD HH24:MI:SS'),100,'RV_LBR_RequestDetails','Y','Request Details','N',1120041,'3','LBRA',0,0,'N','N','Y','N')
;

-- 29/11/2018 17h11min9s BRST
UPDATE AD_Process_Trl SET IsTranslated='Y',Name='Detalhes de Solicitações',Description='Relatório para poder analisar as solicitações',Help='Relatório em que é possível fazer análises das solicitações abertas, filtrando por Período, Vencimento, Tipo de Solicitação.',Updated=TO_DATE('2018-11-29 17:11:09','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Process_ID=1120226 AND AD_Language='pt_BR'
;

-- 29/11/2018 11h51min31s BRST
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,Help,AD_Process_ID,SeqNo,AD_Reference_ID,IsRange,FieldLength,IsMandatory,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID) VALUES (1120440,0,0,'Y',TO_DATE('2018-11-29 11:51:30','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-11-29 11:51:30','YYYY-MM-DD HH24:MI:SS'),100,'Created','Date this record was created','The Created field indicates the date that this record was created.',1120226,10,15,'Y',0,'N','Created','Y','LBRA',245)
;

-- 29/11/2018 11h59min29s BRST
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,Help,AD_Process_ID,SeqNo,AD_Reference_ID,AD_Reference_Value_ID,IsRange,FieldLength,IsMandatory,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID) VALUES (1120441,0,0,'Y',TO_DATE('2018-11-29 11:59:29','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-11-29 11:59:29','YYYY-MM-DD HH24:MI:SS'),100,'Task Status','Status of the Task','Completion Rate and Status of the Task',1120226,20,17,366,'N',0,'N','TaskStatus','Y','LBRA',2898)
;

-- 29/11/2018 12h0min37s BRST
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,Help,AD_Process_ID,SeqNo,AD_Reference_ID,AD_Reference_Value_ID,IsRange,FieldLength,IsMandatory,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID) VALUES (1120442,0,0,'Y',TO_DATE('2018-11-29 12:00:36','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-11-29 12:00:36','YYYY-MM-DD HH24:MI:SS'),100,'Due type','Status of the next action for this Request','The Due Type indicates if this request is Due, Overdue or Scheduled.',1120226,30,17,222,'N',0,'N','DueType','Y','LBRA',1504)
;

-- 29/11/2018 12h1min24s BRST
INSERT INTO AD_Process_Para (AD_Process_Para_ID,AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,Name,Description,Help,AD_Process_ID,SeqNo,AD_Reference_ID,AD_Reference_Value_ID,IsRange,FieldLength,IsMandatory,ColumnName,IsCentrallyMaintained,EntityType,AD_Element_ID) VALUES (1120443,0,0,'Y',TO_DATE('2018-11-29 12:01:24','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-11-29 12:01:24','YYYY-MM-DD HH24:MI:SS'),100,'Request Type','Type of request (e.g. Inquiry, Complaint, ..)','Request Types are used for processing and categorizing requests. Options are Account Inquiry, Warranty Issue, etc.',1120226,40,17,218,'N',0,'N','R_RequestType_ID','Y','LBRA',1894)
;

-- 29/11/2018 12h2min4s BRST
INSERT INTO AD_Menu (AD_Menu_ID,Name,Description,"action",AD_Client_ID,AD_Org_ID,IsActive,Created,CreatedBy,Updated,UpdatedBy,IsSummary,AD_Process_ID,IsSOTrx,IsReadOnly,EntityType,IsCentrallyMaintained) VALUES (1120317,'Request Details','Request Details Report','R',0,0,'Y',TO_DATE('2018-11-29 12:02:03','YYYY-MM-DD HH24:MI:SS'),100,TO_DATE('2018-11-29 12:02:03','YYYY-MM-DD HH24:MI:SS'),100,'N',1120226,'N','N','LBRA','Y')
;

-- 29/11/2018 17h12min58s BRST
UPDATE AD_Menu_Trl SET IsTranslated='Y',Name='Detalhes de Solicitações',Updated=TO_DATE('2018-11-29 17:12:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=1120317 AND AD_Language='pt_BR'
;

-- 29/11/2018 12h2min4s BRST
INSERT INTO AD_TreeNodeMM (AD_Client_ID,AD_Org_ID, IsActive,Created,CreatedBy,Updated,UpdatedBy, AD_Tree_ID, Node_ID, Parent_ID, SeqNo) SELECT t.AD_Client_ID, 0, 'Y', statement_timestamp(), 100, statement_timestamp(), 100,t.AD_Tree_ID, 1120317, 0, 999 FROM AD_Tree t WHERE t.AD_Client_ID=0 AND t.IsActive='Y' AND t.IsAllNodes='Y' AND t.TreeType='MM' AND NOT EXISTS (SELECT * FROM AD_TreeNodeMM e WHERE e.AD_Tree_ID=t.AD_Tree_ID AND Node_ID=1120317)
;

-- 29/11/2018 12h3min50s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=218
;

-- 29/11/2018 12h3min50s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=153
;

-- 29/11/2018 12h3min50s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=263
;

-- 29/11/2018 12h3min50s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=3, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=166
;

-- 29/11/2018 12h3min50s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=4, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=203
;

-- 29/11/2018 12h3min50s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=5, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53242
;

-- 29/11/2018 12h3min50s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=6, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=236
;

-- 29/11/2018 12h3min50s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=7, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=183
;

-- 29/11/2018 12h3min50s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=8, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=160
;

-- 29/11/2018 12h3min50s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=9, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=278
;

-- 29/11/2018 12h3min50s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=10, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=345
;

-- 29/11/2018 12h3min50s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=11, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53296
;

-- 29/11/2018 12h3min50s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=12, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53014
;

-- 29/11/2018 12h3min50s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=13, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=53108
;

-- 29/11/2018 12h3min50s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=14, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000000
;

-- 29/11/2018 12h3min50s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=15, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1000003
;

-- 29/11/2018 12h3min50s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=0, SeqNo=16, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120016
;

-- 29/11/2018 12h3min50s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=528, SeqNo=0, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=309
;

-- 29/11/2018 12h3min50s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=528, SeqNo=1, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=332
;

-- 29/11/2018 12h3min50s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=528, SeqNo=2, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=526
;

-- 29/11/2018 12h3min50s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=528, SeqNo=3, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=527
;

-- 29/11/2018 12h3min50s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=528, SeqNo=4, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=525
;

-- 29/11/2018 12h3min50s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=528, SeqNo=5, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=523
;

-- 29/11/2018 12h3min50s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=528, SeqNo=6, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=524
;

-- 29/11/2018 12h3min50s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=528, SeqNo=7, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=308
;

-- 29/11/2018 12h3min50s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=528, SeqNo=8, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=535
;

-- 29/11/2018 12h3min50s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=528, SeqNo=9, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=337
;

-- 29/11/2018 12h3min50s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=528, SeqNo=10, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=1120317
;

-- 29/11/2018 12h3min50s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=528, SeqNo=11, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=333
;

-- 29/11/2018 12h3min50s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=528, SeqNo=12, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=560
;

-- 29/11/2018 12h3min50s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=528, SeqNo=13, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=559
;

-- 29/11/2018 12h3min50s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=528, SeqNo=14, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=562
;

-- 29/11/2018 12h3min50s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=528, SeqNo=15, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=564
;

-- 29/11/2018 12h3min50s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=528, SeqNo=16, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=563
;

-- 29/11/2018 12h3min50s BRST
UPDATE AD_TreeNodeMM SET Parent_ID=528, SeqNo=17, Updated=statement_timestamp() WHERE AD_Tree_ID=10 AND Node_ID=561
;

SELECT Register_Migration_Script ('201811291219_RV_LBR_RequestDetails.sql') FROM DUAL
;

