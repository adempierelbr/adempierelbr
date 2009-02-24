--[ 1879547 ] Campo NCM e posição nos campos da Janela Produto
-- AD_COLUMN
UPDATE adempiere.ad_column SET ad_reference_value_id = 1000017 where ad_column_id = 1000318;
-- AD_FIELD
UPDATE adempiere.ad_field SET IsDisplayed='N' where ad_field_id = 52015; -- GROUP 1
UPDATE adempiere.ad_field SET IsDisplayed='N' where ad_field_id = 52016; -- GROUP 2

exit
