/******************************************************************************
 * Copyright (C) 2013 Kenos Assessoria e Consultoria de Sistemas Ltda         *
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
UPDATE LBR_TaxFormula SET IsTaxIncluded='N' WHERE IsTaxIncluded='Y' AND LBR_TaxName_ID IN (1106006, 1106007, 1106008, 1106009);

UPDATE AD_SysConfig SET Value='360-trunk/063-AjustarImpostosFlagNaoIncluiImposto.sql' WHERE AD_SysConfig_ID=1100006
;
