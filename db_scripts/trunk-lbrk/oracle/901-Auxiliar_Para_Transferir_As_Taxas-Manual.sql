/******************************************************************************
 * Copyright (C) 2011 Ricardo Santana                                         *
 * Copyright (C) 2011 Kenos Assessoria e Consultoria de Sistemas Ltda         *
 * This program is free software; you can redistribute it and/or modify it    *
 * under the terms version 2 of the GNU General Public License as published   *
 * by the Free Software Foundation. This program is distributed in the hope   *
 * that it will be useful, but WITHOUT ANY WARRANTY; without even the implied *
 * warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.           *
 * See the GNU General Public License for more details.                       *
 * You should have received a copy of the GNU General Public License along    *
 * with this program; if not, write to the Free Software Foundation, Inc.,    *
 * 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA.                     *
 *****************************************************************************/
SELECT 'UPDATE C_Tax SET LBR_TaxName_ID=' || (SELECT MAX(tn.LBR_TaxName_ID) FROM LBR_TaxName tn WHERE tn.AD_Client_ID=0 AND TRIM(tn.Name)=TRIM(LBR_TaxName.Name))
|| ' WHERE LBR_TaxName_ID=' || LBR_TaxName_ID || ';'
FROM LBR_TaxName WHERE AD_Client_ID <> 0
;
SELECT 'UPDATE LBR_TaxLine SET LBR_TaxName_ID=' || (SELECT MAX(tn.LBR_TaxName_ID) FROM LBR_TaxName tn WHERE tn.AD_Client_ID=0 AND TRIM(tn.Name)=TRIM(LBR_TaxName.Name))
|| ' WHERE LBR_TaxName_ID=' || LBR_TaxName_ID || ';'
FROM LBR_TaxName WHERE AD_Client_ID <> 0
;
SELECT 'DELETE FROM LBR_TaxFormula WHERE LBR_TaxName_ID=' || LBR_TaxName_ID || ';'
FROM LBR_TaxName WHERE AD_Client_ID <> 0 AND TRIM(Name) IN (SELECT TRIM(tn.Name) FROM LBR_TaxName tn WHERE tn.AD_Client_ID=0)
;
SELECT 'DELETE FROM LBR_TaxName WHERE LBR_TaxName_ID=' || LBR_TaxName_ID || ';'
FROM LBR_TaxName WHERE AD_Client_ID <> 0 AND TRIM(Name) IN (SELECT TRIM(tn.Name) FROM LBR_TaxName tn WHERE tn.AD_Client_ID=0)
;

EXIT