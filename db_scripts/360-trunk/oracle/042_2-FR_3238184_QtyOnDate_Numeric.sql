create or replace
FUNCTION QtyOnDate
( 
	Product_ID 		IN NUMBER,
        InDate	DATE
)
RETURN NUMBER

AS
          Quantity		NUMBER := 0;
          vP	        NUMBER := 0;
  
BEGIN

  SELECT Aux.M_Product_ID, SUM(Aux.QtyOnHand) AS QtyOnHand 
        INTO vP, Quantity FROM

--    Qty On Hand
  (SELECT DISTINCT    '1', s.M_Product_ID, SUM(s.QtyOnHand) AS QtyOnHand, l.M_Warehouse_ID, l.M_Locator_ID
              FROM    M_Storage s
        INNER JOIN    M_Locator l ON s.M_Locator_ID = l.M_Locator_ID
        INNER JOIN    M_Warehouse w ON l.M_Warehouse_ID=w.M_Warehouse_ID
             WHERE    s.M_Product_ID = Product_ID
              AND     w.lbr_WarehouseType NOT LIKE '3RD' --TERCEIROS EM NOSSO PODER
          GROUP BY    s.M_Product_ID, l.M_Warehouse_ID, l.M_Locator_ID
UNION ALL
--    Transaction Entries
            SELECT    '2', t.M_Product_ID, SUM(t.MovementQty) * -1 AS QtyOnHand, l.M_Warehouse_ID, t.M_Locator_ID
              FROM    M_Transaction t
        INNER JOIN    M_Locator l ON t.M_Locator_ID = l.M_Locator_ID
        INNER JOIN    M_Warehouse w ON l.M_Warehouse_ID=w.M_Warehouse_ID
             WHERE    TRUNC(t.MovementDate, 'DD') >= TRUNC(InDate, 'DD')
               AND    w.lbr_WarehouseType NOT LIKE '3RD' --TERCEIROS EM NOSSO PODER
               AND    t.M_Product_ID = Product_ID
          GROUP BY    t.M_Product_ID, l.M_Warehouse_ID, t.M_Locator_ID) Aux
    
      GROUP BY M_Product_ID;
	
      IF (Quantity IS NULL) THEN
        Quantity := 0;
      END IF;
        
        RETURN Quantity;
        
        
END QtyOnDate;