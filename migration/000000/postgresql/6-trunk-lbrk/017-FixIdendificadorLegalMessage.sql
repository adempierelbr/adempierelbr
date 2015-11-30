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
-- 02/12/2011 15h56min3s BRST
-- Fix: Identificador da Tabela estava com o ID
UPDATE AD_Column SET IsIdentifier='N', IsUpdateable='N',Updated=TO_TIMESTAMP('2011-12-02 15:56:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000633
;

-- 02/12/2011 15h56min11s BRST
-- Fix: Identificador da Tabela estava com o ID
UPDATE AD_Column SET IsIdentifier='Y',Updated=TO_TIMESTAMP('2011-12-02 15:56:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Column_ID=1000641
;

