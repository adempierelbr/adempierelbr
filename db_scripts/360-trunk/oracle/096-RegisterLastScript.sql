-- Feb 8, 2012 5:46:45 PM COT
-- IDEMPIERE-139 Store the last migration script applied
INSERT INTO AD_Element (AD_Element_ID,ColumnName,Help,EntityType,Name,Description,PrintName,AD_Client_ID,Created,Updated,IsActive,AD_Org_ID,CreatedBy,UpdatedBy) VALUES (200002,'LastMigrationScriptApplied',NULL,'D','Last Migration Script Applied','Register of the filename for the last migration script applied on this database','Last Migration Script Applied',0,TO_DATE('2012-02-08 17:46:44','YYYY-MM-DD HH24:MI:SS'),TO_DATE('2012-02-08 17:46:44','YYYY-MM-DD HH24:MI:SS'),'Y',0,100,100)
;

-- Feb 8, 2012 5:46:45 PM COT
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Help,PO_Description,PO_Help,Name,Description,PrintName,PO_PrintName,PO_Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Help,t.PO_Description,t.PO_Help,t.Name,t.Description,t.PrintName,t.PO_PrintName,t.PO_Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=200002 AND NOT EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Element_ID=t.AD_Element_ID)
;

-- Feb 8, 2012 5:48:50 PM COT
INSERT INTO AD_Column (AD_Column_ID,AD_Table_ID,EntityType,Version,IsMandatory,IsTranslated,IsIdentifier,SeqNo,IsParent,FieldLength,IsSelectionColumn,AD_Reference_ID,IsSyncDatabase,IsKey,AD_Element_ID,IsAutocomplete,IsAllowLogging,IsEncrypted,IsUpdateable,IsAlwaysUpdateable,ColumnName,Description,Name,CreatedBy,Updated,AD_Client_ID,AD_Org_ID,IsActive,Created,UpdatedBy) VALUES (200015,531,'D',0,'N','N','N',0,'N',255,'N',10,'N','N',200002,'N','Y','N','Y','N','LastMigrationScriptApplied','Register of the filename for the last migration script applied on this database','Last Migration Script Applied',100,TO_DATE('2012-02-08 17:48:49','YYYY-MM-DD HH24:MI:SS'),0,0,'Y',TO_DATE('2012-02-08 17:48:49','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Feb 8, 2012 5:48:50 PM COT
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=200015 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- Feb 8, 2012 5:49:09 PM COT
ALTER TABLE AD_System ADD LastMigrationScriptApplied NVARCHAR2(255) DEFAULT NULL 
;

-- Feb 8, 2012 5:51:34 PM COT
INSERT INTO AD_Field (SortNo,IsEncrypted,DisplayLength,IsDisplayed,IsSameLine,IsHeading,AD_Column_ID,IsFieldOnly,SeqNo,IsCentrallyMaintained,AD_Tab_ID,AD_Field_ID,IsReadOnly,EntityType,Description,Name,UpdatedBy,AD_Org_ID,IsActive,Created,AD_Client_ID,CreatedBy,Updated) VALUES (0,'N',40,'Y','N','N',200015,'N',290,'Y',440,200000,'N','D','Register of the filename for the last migration script applied on this database','Last Migration Script Applied',100,0,'Y',TO_DATE('2012-02-08 17:51:34','YYYY-MM-DD HH24:MI:SS'),0,100,TO_DATE('2012-02-08 17:51:34','YYYY-MM-DD HH24:MI:SS'))
;

-- Feb 8, 2012 5:51:34 PM COT
INSERT INTO AD_Field_Trl (AD_Language,AD_Field_ID, Help,Description,Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Field_ID, t.Help,t.Description,t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Field t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Field_ID=200000 AND NOT EXISTS (SELECT * FROM AD_Field_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Field_ID=t.AD_Field_ID)
;

UPDATE AD_System
  SET LastMigrationScriptApplied='816_IDEMPIERE-139_LastMigrationScriptApplied.sql'
WHERE LastMigrationScriptApplied<'816_IDEMPIERE-139_LastMigrationScriptApplied.sql'
   OR LastMigrationScriptApplied IS NULL
;

CREATE OR REPLACE FUNCTION register_migration_script
(
    p_script IN VARCHAR2
)
RETURN VARCHAR2
IS
    PRAGMA AUTONOMOUS_TRANSACTION;
    v_return VARCHAR2(255);
    v_scriptid INTEGER;
BEGIN
    v_return := p_script || ' successfully registered';
    UPDATE AD_System
      SET LastMigrationScriptApplied=p_script
    WHERE LastMigrationScriptApplied<p_script
       OR LastMigrationScriptApplied IS NULL;
    SELECT MAX(AD_MigrationScript_ID)
	INTO v_scriptid
        FROM AD_MigrationScript
	WHERE Name = p_script;
    IF (v_scriptid IS NULL)
    THEN
        INSERT INTO ad_migrationscript 
            (isapply, scriptroll, ad_migrationscript_uu, 
             status, projectname, releaseno, 
             name, filename, ad_client_id, 
             ad_org_id, created, createdby, 
             updated, updatedby, isactive, 
             ad_migrationscript_id) 
        VALUES
            ('Y', 'N', generate_uuid(),
             'CO', 'iDempiere', (select releaseno from ad_system), 
             p_script, 'oracle/'||p_script, 0, 
             0, SYSDATE, 100, 
             SYSDATE, 100, 'Y', 
             nextidfunc(53081,'N')); 
    ELSE
        v_return := p_script || ' was already applied';
        DBMS_OUTPUT.PUT_LINE(v_return);
	UPDATE ad_migrationscript
	    SET updated=SYSDATE, description = COALESCE(description, ' ') || ' reapplied'
	    WHERE ad_migrationscript_id = v_scriptid;
    END IF;
    COMMIT;
    RETURN v_return;
END register_migration_script;
/

ALTER TABLE AD_MigrationScript ADD ReleaseNo NVARCHAR(20) DEFAULT NULL 
;

--	iDempiere Scripts
SELECT register_migration_script('816_IDEMPIERE-139_LastMigrationScriptApplied.sql') FROM dual;
SELECT register_migration_script('901_IDEMPIERE-420.sql') FROM dual;

--	Legacy LBR
SELECT register_migration_script('001-lbr_tables.sql') FROM dual;
SELECT register_migration_script('002-lbr_columns.sql') FROM dual;
SELECT register_migration_script('010-ad_entitytype.sql') FROM dual;
SELECT register_migration_script('011-ad_element.sql') FROM dual;
SELECT register_migration_script('012-ad_val_rule.sql') FROM dual;
SELECT register_migration_script('013-ad_reference.sql') FROM dual;
SELECT register_migration_script('014-ad_process.sql') FROM dual;
SELECT register_migration_script('015-ad_window.sql') FROM dual;
SELECT register_migration_script('016-ad_table.sql') FROM dual;
SELECT register_migration_script('017-ad_column.sql') FROM dual;
SELECT register_migration_script('018-ad_ref_table.sql') FROM dual;
SELECT register_migration_script('019-ad_ref_list.sql') FROM dual;
SELECT register_migration_script('020-ad_process_para.sql') FROM dual;
SELECT register_migration_script('021-ad_form.sql') FROM dual;
SELECT register_migration_script('022-ad_tab.sql') FROM dual;
SELECT register_migration_script('023-ad_fieldgroup.sql') FROM dual;
SELECT register_migration_script('024-ad_field.sql') FROM dual;
SELECT register_migration_script('025-ad_menu.sql') FROM dual;
SELECT register_migration_script('026-ad_treenodemm.sql') FROM dual;
SELECT register_migration_script('027-callout.sql') FROM dual;
SELECT register_migration_script('100-c_city.sql') FROM dual;
SELECT register_migration_script('200-lbr_bank.sql') FROM dual;
SELECT register_migration_script('201-lbr_bankinfo.sql') FROM dual;
SELECT register_migration_script('202-lbr_taxname.sql') FROM dual;
SELECT register_migration_script('203-lbr_taxformula.sql') FROM dual;
SELECT register_migration_script('204-lbr_tax.sql') FROM dual;
SELECT register_migration_script('205-lbr_taxline.sql') FROM dual;
SELECT register_migration_script('206-lbr_icmsmatrix.sql') FROM dual;
SELECT register_migration_script('207-lbr_cfop.sql') FROM dual;
SELECT register_migration_script('208-lbr_ncm.sql') FROM dual;
SELECT register_migration_script('209-lbr_productcategory.sql') FROM dual;
SELECT register_migration_script('210-lbr_bpartnercategory.sql') FROM dual;
SELECT register_migration_script('001-FR_1862321.sql') FROM dual;
SELECT register_migration_script('002-LBR_DocType_Acct.sql') FROM dual;
SELECT register_migration_script('003-AD_Field.sql') FROM dual;
SELECT register_migration_script('004-BF_1873658.sql') FROM dual;
SELECT register_migration_script('005-BF_1874527.sql') FROM dual;
SELECT register_migration_script('006-BF_1876662.sql') FROM dual;
SELECT register_migration_script('007-LBR_MatrixPrinter.sql') FROM dual;
SELECT register_migration_script('008-BF_1877272.sql') FROM dual;
SELECT register_migration_script('009-ProcPrintNF.sql') FROM dual;
SELECT register_migration_script('010-BF_1879547.sql') FROM dual;
SELECT register_migration_script('011-SubTributaria.sql') FROM dual;
SELECT register_migration_script('012-SubTributaria.sql') FROM dual;
SELECT register_migration_script('013-LBR_CFOPLine.sql') FROM dual;
SELECT register_migration_script('014-lbr_WithholdFrequency.sql') FROM dual;
SELECT register_migration_script('015-lbr_TaxStatus_and_LegalMessage.sql') FROM dual;
SELECT register_migration_script('016-lbr_ProductSource.sql') FROM dual;
SELECT register_migration_script('017-SitTributaria_Order_and_Invoice.sql') FROM dual;
SELECT register_migration_script('018-DocTypePOO.sql') FROM dual;
SELECT register_migration_script('019-lbr_HasFiscalDocument.sql') FROM dual;
SELECT register_migration_script('020-lbr_IsIEExempt.sql') FROM dual;
SELECT register_migration_script('021-LBR_TaxGroup.sql') FROM dual;
SELECT register_migration_script('022-BPartner_TransactionType.sql') FROM dual;
SELECT register_migration_script('023-Withhold_Order.sql') FROM dual;
SELECT register_migration_script('024-BF_1891288.sql') FROM dual;
SELECT register_migration_script('025-BF_1891918.sql') FROM dual;
SELECT register_migration_script('026-BF_1891914.sql') FROM dual;
SELECT register_migration_script('027-C_Region.sql') FROM dual;
SELECT register_migration_script('028-C_DocType.sql') FROM dual;
SELECT register_migration_script('029-LBR_CFOPLine.sql') FROM dual;
SELECT register_migration_script('030-CFOPCategory.sql') FROM dual;
SELECT register_migration_script('031-LBR_NFTax.sql') FROM dual;
SELECT register_migration_script('032-BF_1894392.sql') FROM dual;
SELECT register_migration_script('033-BF_1895503.sql') FROM dual;
SELECT register_migration_script('034-BF_1902910.sql') FROM dual;
SELECT register_migration_script('034-BPartner.sql') FROM dual;
SELECT register_migration_script('035-NotaFiscal_ES.sql') FROM dual;
SELECT register_migration_script('036-ProcGenerateNFE.sql') FROM dual;
SELECT register_migration_script('037-ProcCreateFields.sql') FROM dual;
SELECT register_migration_script('038-ProcGenerateNF.sql') FROM dual;
SELECT register_migration_script('039-ProcPrintNF.sql') FROM dual;
SELECT register_migration_script('040-ProcCancelNF.sql') FROM dual;
SELECT register_migration_script('041-BF_1898017.sql') FROM dual;
SELECT register_migration_script('042-BF_1898640.sql') FROM dual;
SELECT register_migration_script('043-DocType_Window.sql') FROM dual;
SELECT register_migration_script('044-AjustesNF.sql') FROM dual;
SELECT register_migration_script('045-AjustesDocPrint.sql') FROM dual;
SELECT register_migration_script('046-FR_1902544.sql') FROM dual;
SELECT register_migration_script('047-BF_1902926.sql') FROM dual;
SELECT register_migration_script('048-NFLine_ServiceTaxes.sql') FROM dual;
SELECT register_migration_script('049-AjustesDocPrint.sql') FROM dual;
SELECT register_migration_script('050-AjustesDocPrint.sql') FROM dual;
SELECT register_migration_script('051-FR_1904953.sql') FROM dual;
SELECT register_migration_script('052-FR_1905256.sql') FROM dual;
SELECT register_migration_script('053-FR_1905257.sql') FROM dual;
SELECT register_migration_script('054-FR_1905429.sql') FROM dual;
SELECT register_migration_script('055-FR_1905789.sql') FROM dual;
SELECT register_migration_script('056-AjustesNF.sql') FROM dual;
SELECT register_migration_script('057-WindowBoleto.sql') FROM dual;
SELECT register_migration_script('058-FR_1907040.sql') FROM dual;
SELECT register_migration_script('059-FR_1907134.sql') FROM dual;
SELECT register_migration_script('060-AjustesBoleto.sql') FROM dual;
SELECT register_migration_script('061-AjustesBoleto.sql') FROM dual;
SELECT register_migration_script('062-AjustesBPartner.sql') FROM dual;
SELECT register_migration_script('063-FR_1916758.sql') FROM dual;
SELECT register_migration_script('064-FR_1916758_2.sql') FROM dual;
SELECT register_migration_script('065-FR_1919490.sql') FROM dual;
SELECT register_migration_script('066-AjusteCB.sql') FROM dual;
SELECT register_migration_script('067-MissingScript.sql') FROM dual;
SELECT register_migration_script('068-LBR_BankInfo_BB.sql') FROM dual;
SELECT register_migration_script('069-FR_1943044.sql') FROM dual;
SELECT register_migration_script('070-FR_1954112.sql') FROM dual;
SELECT register_migration_script('071-FR_1954103.sql') FROM dual;
SELECT register_migration_script('072-BF_1954195.sql') FROM dual;
SELECT register_migration_script('073-BF_1960451.sql') FROM dual;
SELECT register_migration_script('074-BF_1967315.sql') FROM dual;
SELECT register_migration_script('075-FR_1985766.sql') FROM dual;
SELECT register_migration_script('076-FR_1986687.sql') FROM dual;
SELECT register_migration_script('077-BF_2018174.sql') FROM dual;
SELECT register_migration_script('078-OtherNF.sql') FROM dual;
SELECT register_migration_script('079-FormOutrasNF.sql') FROM dual;
SELECT register_migration_script('080-MissingFieldsOtherNF.sql') FROM dual;
SELECT register_migration_script('081-OtherNFDocType.sql') FROM dual;
SELECT register_migration_script('082-BF_SequenceCheck.sql') FROM dual;
SELECT register_migration_script('083-Manufacture.sql') FROM dual;
SELECT register_migration_script('084-OtherNFWindow.sql') FROM dual;
SELECT register_migration_script('085-BF_BPartnerWindow.sql') FROM dual;
SELECT register_migration_script('086-FR_2104510.sql') FROM dual;
SELECT register_migration_script('087-OtherNFWindow2.sql') FROM dual;
SELECT register_migration_script('088-BankInfo_Unibanco.sql') FROM dual;
SELECT register_migration_script('089-FR_2343379.sql') FROM dual;
SELECT register_migration_script('090-PrepareVersion100.sql') FROM dual;
SELECT register_migration_script('001-LineSpacing_Config.sql') FROM dual;
SELECT register_migration_script('002-Allow_NegativeStock.sql') FROM dual;
SELECT register_migration_script('003-FR_2209683.sql') FROM dual;
SELECT register_migration_script('004-BF_Script003.sql') FROM dual;
SELECT register_migration_script('005-FR_2200626.sql') FROM dual;
SELECT register_migration_script('006-LoginValidator.sql') FROM dual;
SELECT register_migration_script('007-ProcGenerateRPS.sql') FROM dual;
SELECT register_migration_script('008-I_BPartner.sql') FROM dual;
SELECT register_migration_script('009-OtherNF_TableChanges.sql') FROM dual;
SELECT register_migration_script('010-OtherNF_WindowChanges.sql') FROM dual;
SELECT register_migration_script('011-OtherNF_DocType_Minor_Tweaks.sql') FROM dual;
SELECT register_migration_script('012-BF_FixEntityType.sql') FROM dual;
SELECT register_migration_script('013-Retroactive_ServiceTax.sql') FROM dual;
SELECT register_migration_script('014-PN_Unificados.sql') FROM dual;
SELECT register_migration_script('015-Inserts_NotaFiscal.sql') FROM dual;
SELECT register_migration_script('016-CustoFrete.sql') FROM dual;
SELECT register_migration_script('017-Insert_LBR_NFEntrada.sql') FROM dual;
SELECT register_migration_script('018-Insert_LBR_NotaFiscal.sql') FROM dual;
SELECT register_migration_script('019-NotaFiscal_Notes.sql') FROM dual;
SELECT register_migration_script('020-lbr_NFEntrada_trl.sql') FROM dual;
SELECT register_migration_script('021-DefineCFOP_Charge.sql') FROM dual;
SELECT register_migration_script('028-SINTEGRA.sql') FROM dual;
SELECT register_migration_script('029-NFe.sql') FROM dual;
SELECT register_migration_script('030-NFe_CountryCode_ServiceCode.sql') FROM dual;
SELECT register_migration_script('031-NFe_CountryCodes.sql') FROM dual;
SELECT register_migration_script('032-NFe_CityCodes.sql') FROM dual;
SELECT register_migration_script('033-BF_3002228_FixCityCodes.sql') FROM dual;
SELECT register_migration_script('001-ChangeFormClassname_FR2974197.sql') FROM dual;
SELECT register_migration_script('002-FR3036024.sql') FROM dual;
SELECT register_migration_script('003-MissingColumnsNF.sql') FROM dual;
SELECT register_migration_script('004-indexes_and_constraints.sql') FROM dual;
SELECT register_migration_script('005-Refactor_Boletos.sql') FROM dual;
SELECT register_migration_script('006-FR3040735.sql') FROM dual;
SELECT register_migration_script('007-AD_ModelValidator.sql') FROM dual;
SELECT register_migration_script('008-BF_3047089.sql') FROM dual;
SELECT register_migration_script('009-BF_ReadOnlyBP.sql') FROM dual;
SELECT register_migration_script('010-BF_3051683.sql') FROM dual;
SELECT register_migration_script('011-FR_3051686.sql') FROM dual;
SELECT register_migration_script('012-BF_3054559.sql') FROM dual;
SELECT register_migration_script('013-FR_3043643.sql') FROM dual;
SELECT register_migration_script('014-BF_3067106.sql') FROM dual;
SELECT register_migration_script('015-FR_3067611.sql') FROM dual;
SELECT register_migration_script('016-FR_3073329.sql') FROM dual;
SELECT register_migration_script('017-BF_3076582.sql') FROM dual;
SELECT register_migration_script('018-FR_3078880.sql') FROM dual;
SELECT register_migration_script('019-FR_3078890.sql') FROM dual;
SELECT register_migration_script('020-BF_3078773.sql') FROM dual;
SELECT register_migration_script('021-FR_3078989.sql') FROM dual;
SELECT register_migration_script('022-ReturnToLBR.sql') FROM dual;
SELECT register_migration_script('023-ReturnToLBR_2.sql') FROM dual;
SELECT register_migration_script('024-FR_3118613.sql') FROM dual;
SELECT register_migration_script('025-FR_3079621.sql') FROM dual;
SELECT register_migration_script('026-BF_3023520.sql') FROM dual;
SELECT register_migration_script('001-FixIDs.sql') FROM dual;
SELECT register_migration_script('001-NovosImpostos.sql') FROM dual;
SELECT register_migration_script('002-TaxIncluded.sql') FROM dual;
SELECT register_migration_script('003-UpdateTaxIncluded.sql') FROM dual;
SELECT register_migration_script('004-FreightAmtOnInvoice.sql') FROM dual;
SELECT register_migration_script('005-LBR_NCMTax.sql') FROM dual;
SELECT register_migration_script('006-FixFormulaST.sql') FROM dual;
SELECT register_migration_script('007-CFOPTabDocType.sql') FROM dual;
SELECT register_migration_script('008-TaxDefinition.sql') FROM dual;
SELECT register_migration_script('009-LBR_ICMSMatrix.sql') FROM dual;
SELECT register_migration_script('010-LBR_TaxStatus.sql') FROM dual;
SELECT register_migration_script('011-LBR_TaxStatus-Data.sql') FROM dual;
SELECT register_migration_script('012-CalloutCFOP.sql') FROM dual;
SELECT register_migration_script('013-ColunaValidFrom.sql') FROM dual;
SELECT register_migration_script('014-RV_InvoicePaySchedule.sql') FROM dual;
SELECT register_migration_script('015-SetNFWindowToTransaction.sql') FROM dual;
SELECT register_migration_script('016-NoBaseLanguage.sql') FROM dual;
SELECT register_migration_script('017-FixIdendificadorLegalMessage.sql') FROM dual;
SELECT register_migration_script('018-TaxStatus-ICMSST.sql') FROM dual;
SELECT register_migration_script('019-INSSeISSRT.sql') FROM dual;
SELECT register_migration_script('020-FixSelectionColumn.sql') FROM dual;
SELECT register_migration_script('020-LBR_NFLineTax_CST.sql') FROM dual;
SELECT register_migration_script('021-LBR_NCMTax-Substitution.sql') FROM dual;
SELECT register_migration_script('022-lbr_Brand-NotaFiscal.sql') FROM dual;
SELECT register_migration_script('023-FixNoBaseLanguage.sql') FROM dual;
SELECT register_migration_script('024-LBR-18-RemoverCreateFromDoLBR.sql') FROM dual;
SELECT register_migration_script('025-LBR_FixTaxGroup.sql') FROM dual;
SELECT register_migration_script('901-Auxiliar_Para_Transferir_As_Taxas-Manual.sql') FROM dual;
SELECT register_migration_script('910-Auxiliar_Acertat_Passado-Manual.sql') FROM dual;
SELECT register_migration_script('001-FixIDs.sql') FROM dual;
SELECT register_migration_script('027-BF_3148121.sql') FROM dual;
SELECT register_migration_script('028-FR_3165874.sql') FROM dual;
SELECT register_migration_script('029-FR_3165874.sql') FROM dual;
SELECT register_migration_script('030-LBR_NFeWebService.sql') FROM dual;
SELECT register_migration_script('031-FR_3168718.sql') FROM dual;
SELECT register_migration_script('032-FR_3170485.sql') FROM dual;
SELECT register_migration_script('033-FR_3170580.sql') FROM dual;
SELECT register_migration_script('034-FR_3175772.sql') FROM dual;
SELECT register_migration_script('035_1-FR_3176418.sql') FROM dual;
SELECT register_migration_script('035_2-FR_3176418.sql') FROM dual;
SELECT register_migration_script('036-FR_3176413.sql') FROM dual;
SELECT register_migration_script('037-FR_3178503.sql') FROM dual;
SELECT register_migration_script('038-FR_3189340.sql') FROM dual;
SELECT register_migration_script('039-BF_3168718.sql') FROM dual;
SELECT register_migration_script('040-FR_3220195.sql') FROM dual;
SELECT register_migration_script('041-FR_3238184.sql') FROM dual;
SELECT register_migration_script('042_1-FR_3238184.sql') FROM dual;
SELECT register_migration_script('042_2-FR_3238184_QtyOnDate_Numeric.sql') FROM dual;
SELECT register_migration_script('042_3-FR_3238184_QtyOnDate_Integer.sql') FROM dual;
SELECT register_migration_script('042_4-FR_3238184_GetPeriod.sql') FROM dual;
SELECT register_migration_script('042_5-FR_3238184_GetCurrentCost.sql') FROM dual;
SELECT register_migration_script('043-FR_3191322.sql') FROM dual;
SELECT register_migration_script('044-FR_3301126.sql') FROM dual;
SELECT register_migration_script('045-794_791_BF3214377_FixFirstOf.sql') FROM dual;
SELECT register_migration_script('046-ECD_MissingFields.sql') FROM dual;
SELECT register_migration_script('047-NFe_SCAN.sql') FROM dual;
SELECT register_migration_script('048-NFeReference.sql') FROM dual;
SELECT register_migration_script('049-BF_LBR-5_RemocaoCallOutTaxBR.sql') FROM dual;
SELECT register_migration_script('050-BF_LBR-6_RemoverPriceEnteredBR.sql') FROM dual;
SELECT register_migration_script('051-BF_LBR-6_RemoverCheckBoxPrecoBrasil.sql') FROM dual;
SELECT register_migration_script('052-BF_LBR-9-SincronizarCampoRPSStatus.sql') FROM dual;
SELECT register_migration_script('053-LBR_26_RevertScripts.sql') FROM dual;
SELECT register_migration_script('054-Callout_LBR_Tax_ID.sql') FROM dual;
SELECT register_migration_script('055-SequenceValidators.sql') FROM dual;
SELECT register_migration_script('056-LBR-36_BoletoWeb.sql') FROM dual;
SELECT register_migration_script('057-LBR-39_CartaDeCorrecao_CCe.sql') FROM dual;
SELECT register_migration_script('058-LBR-39_WebService_Eventos.sql') FROM dual;
SELECT register_migration_script('059-ProcCancelProduction.sql') FROM dual;
SELECT register_migration_script('060_LBR-54_CertificadoA3.sql') FROM dual;
SELECT register_migration_script('061-NFeStatus-2011.003.sql') FROM dual;
SELECT register_migration_script('062-NFeStatus-2012.002.sql') FROM dual;
SELECT register_migration_script('063-AjustarImpostosFlagNaoIncluiImposto.sql') FROM dual;
SELECT register_migration_script('064-OrigemDoProduto.sql') FROM dual;
SELECT register_migration_script('065-FlagDocumentoProprioNFe.sql') FROM dual;
SELECT register_migration_script('066-Organizacao0NaoExibedanaNFeLot.sql') FROM dual;
SELECT register_migration_script('066-OrigemProdutoNF.sql') FROM dual;
SELECT register_migration_script('067-CodigosCSOSN.sql') FROM dual;
SELECT register_migration_script('068-DesabilitarCampoLoteJanelaNotaFiscal.sql') FROM dual;
SELECT register_migration_script('069-ValidacaoDinamicaCampoCST.sql') FROM dual;
SELECT register_migration_script('070-CampoModelo_e_Serie_naNF.sql') FROM dual;
SELECT register_migration_script('070-CorrecaoTraducaoAcaoDocumento.sql') FROM dual;
SELECT register_migration_script('071-CriarTabelaJanelaGerarSPED.sql') FROM dual;
SELECT register_migration_script('071-MensagemEnvioBoletoporEmail.sql') FROM dual;
SELECT register_migration_script('072-DesabilitarOrganizacao0.sql') FROM dual;
SELECT register_migration_script('073-LBR_LegalProductDescription.sql') FROM dual;
SELECT register_migration_script('074-RemoveCalloutIsIEExempt.sql') FROM dual;
SELECT register_migration_script('075-DiscountAmtNotaFiscalLine.sql') FROM dual;
SELECT register_migration_script('076-OutrasDespesasAcessorias.sql') FROM dual;
SELECT register_migration_script('077-IPIValorAgregado.sql') FROM dual;
SELECT register_migration_script('078-TagLBR_TAXBASE_DISCOUNT_PRINT_NF.sql') FROM dual;
SELECT register_migration_script('079-LBR_FreightCostRule.sql') FROM dual;
SELECT register_migration_script('080-OrderByNotaFiscal.sql') FROM dual;
SELECT register_migration_script('081-IBPTTax_postgres.sql') FROM dual;
SELECT register_migration_script('086-IndexFor_LBR_TaxAssessment.sql') FROM dual;
SELECT register_migration_script('087-NoShowOrg0_LBR_TaxAssessmen.sql') FROM dual;
SELECT register_migration_script('088-LBR_INCOTERMS.sql') FROM dual;
SELECT register_migration_script('089-Script_webservices_prod_hom.sql') FROM dual;
SELECT register_migration_script('090-InserirPOReferenceLinhaPedido.sql') FROM dual;
SELECT register_migration_script('091-OrigemProdutoNF.sql') FROM dual;
SELECT register_migration_script('092-FixEntityTypes.sql') FROM dual;
SELECT register_migration_script('093-FixOrderFieldsSequence.sql') FROM dual;
SELECT register_migration_script('094-CriarRegimeTributario.sql') FROM dual;
SELECT register_migration_script('095-CorrigirCampoContatoNFeOrganizacao.sql') FROM dual;

SELECT register_migration_script('096-RegisterLastScript.sql') FROM dual;
