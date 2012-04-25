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
 
UPDATE AD_Form SET ClassName='org.adempierelbr.apps.form.VGenBilling' WHERE AD_Form_ID=1000000
;

UPDATE AD_Form SET ClassName='org.adempierelbr.apps.form.VGenCNAB' WHERE AD_Form_ID=1000004
;

/******************************************************************************
 *  Caso tenha algum problema na geração dos boletos, use o script abaixo
 *      para voltar ao sistema antigo.
 *  
 *  UPDATE AD_Form SET ClassName='org.adempierelbr.apps.form.VFormBoleto' WHERE AD_Form_ID=1000000
 *  ;
 *
 *  UPDATE AD_Form SET ClassName='org.adempierelbr.apps.form.VFormCNAB' WHERE AD_Form_ID=1000004
 *  ;
 *
 *****************************************************************************/

UPDATE AD_SysConfig SET Value='360-trunk/056-LBR-36_BoletoWeb.sql' WHERE AD_SysConfig_ID=1100006
;


