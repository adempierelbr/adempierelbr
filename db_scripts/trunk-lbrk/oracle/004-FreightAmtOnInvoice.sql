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
-- 04/10/2011 16h56min2s BRT
-- Adicionar a coluna do frete na linha da fatura
INSERT INTO AD_Column (AD_Client_ID,AD_Column_ID,AD_Element_ID,AD_Org_ID,AD_Reference_ID,AD_Table_ID,ColumnName,Created,CreatedBy,DefaultValue,Description,EntityType,FieldLength,Help,IsActive,IsAllowLogging,IsAlwaysUpdateable,IsAutocomplete,IsEncrypted,IsIdentifier,IsKey,IsMandatory,IsParent,IsSelectionColumn,IsSyncDatabase,IsTranslated,IsUpdateable,Name,SeqNo,Updated,UpdatedBy,Version) VALUES (0,1106006,306,0,12,333,'FreightAmt',TO_DATE('2011-10-04 16:56:02','YYYY-MM-DD HH24:MI:SS'),100,'0','Freight Amount ','LBRA',10,'The Freight Amount indicates the amount charged for Freight in the document currency.','Y','Y','N','N','N','N','N','Y','N','N','N','N','Y','Freight Amount',0,TO_DATE('2011-10-04 16:56:02','YYYY-MM-DD HH24:MI:SS'),100,0)
;

-- 04/10/2011 16h56min2s BRT
-- Adicionar a coluna do frete na linha da fatura
INSERT INTO AD_Column_Trl (AD_Language,AD_Column_ID, Name, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Column_ID, t.Name, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Column t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Column_ID=1106006 AND NOT EXISTS (SELECT * FROM AD_Column_Trl tt WHERE tt.AD_Language=l.AD_Language AND tt.AD_Column_ID=t.AD_Column_ID)
;

-- 04/10/2011 16h56min25s BRT
-- Adicionar a coluna do frete na linha da fatura
ALTER TABLE C_InvoiceLine ADD FreightAmt NUMBER DEFAULT 0 NOT NULL
;

