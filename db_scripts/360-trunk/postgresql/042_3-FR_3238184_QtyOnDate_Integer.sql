CREATE OR REPLACE FUNCTION "adempiere"."qtyondate" (in product_id numeric, in indate timestamptz) RETURNS numeric AS
$BODY$
BEGIN
	return qtyondate(product_id::int4, indate);
END
$BODY$
LANGUAGE 'plpgsql'
