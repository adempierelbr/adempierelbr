CREATE OR REPLACE FUNCTION "adempiere"."qtyondate" (in product_id int4, in indate timestamptz) RETURNS numeric AS
$BODY$
DECLARE
    Quantity		NUMERIC := 0;
    vP	            NUMERIC := 0;
BEGIN

  SELECT Aux.M_Product_ID, SUM(Aux.QtyOnHand) AS QtyOnHand 
        INTO vP, Quantity FROM

  (SELECT DISTINCT    '1', s.M_Product_ID, SUM(s.QtyOnHand) AS QtyOnHand, l.M_Warehouse_ID, l.M_Locator_ID
              FROM    M_Storage s
        INNER JOIN    M_Locator l ON s.M_Locator_ID = l.M_Locator_ID
        INNER JOIN    M_Warehouse w ON l.M_Warehouse_ID=w.M_Warehouse_ID
             WHERE    s.M_Product_ID = Product_ID
             AND      w.lbr_WarehouseType NOT LIKE '3RD'
          GROUP BY    s.M_Product_ID, l.M_Warehouse_ID, l.M_Locator_ID
UNION
            SELECT    '2', t.M_Product_ID, SUM(t.MovementQty) * -1 AS QtyOnHand, l.M_Warehouse_ID, t.M_Locator_ID
              FROM    M_Transaction t
        INNER JOIN    M_Locator l ON t.M_Locator_ID = l.M_Locator_ID
        INNER JOIN    M_Warehouse w ON l.M_Warehouse_ID=w.M_Warehouse_ID
             WHERE    TRUNC(t.MovementDate) >= TRUNC(InDate)
               AND    w.lbr_WarehouseType NOT LIKE '3RD'
               AND    t.M_Product_ID = Product_ID
          GROUP BY    t.M_Product_ID, l.M_Warehouse_ID, t.M_Locator_ID) Aux
    
      GROUP BY M_Product_ID;
	
      IF (Quantity IS NULL) THEN
        Quantity := 0;
      END IF;
        
      RETURN Quantity;
END
$BODY$
LANGUAGE 'plpgsql'
