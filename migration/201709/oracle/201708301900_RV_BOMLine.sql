CREATE	OR REPLACE	VIEW RV_BOMLine AS 

WITH TR_BOMLine
(
    Orig_Product_ID,
	BOM_Product_ID,
	PP_Product_BOMLine_ID,
    QtyBOM,
	Depth,
    Tree
)

AS 
(
    SELECT
        pb.M_Product_ID AS Orig_Product_ID,
        pb.M_Product_ID AS BOM_Product_ID,
        0 AS PP_Product_BOMLine_ID,
        1 AS QtyBOM,
        0 AS Depth,
        '' || pb.M_Product_ID AS Tree
        
    FROM
        PP_Product_BOM pb 
        
    UNION ALL
    
    SELECT
        bl.Orig_Product_ID,
        pl.M_Product_ID AS BOM_Product_ID,
        pl.PP_Product_BOMLine_ID,
        (bl.QtyBOM * pl.QtyBOM) AS QtyBOM,
        (bl.Depth + 1) AS Depth,
        bl.Tree || '|' || pl.M_Product_ID AS Tree
        
    FROM
        PP_Product_BOMLine pl,
        PP_Product_BOM pb,
        TR_BOMline bl 
        
    WHERE
        (pb.PP_Product_BOM_ID = pl.PP_Product_BOM_ID
        AND pb.M_Product_ID = bl.BOM_Product_ID)
) 

SELECT
	bl.AD_Client_ID,
	bl.AD_Org_ID,
	bl.CreatedBy,
	bl.UpdatedBy,
	bl.Updated,
	bl.Created,
	t.Orig_Product_ID AS M_Product_ID,
	bl.IsActive,
	bl.PP_Product_BOM_ID,
	bl.PP_Product_BOMLine_ID,
	bl.Description,
	bl.IsCritical,
	bl.ComponentType,
	t.BOM_Product_ID  AS TM_Product_ID,
	bl.C_UOM_ID,
	bl.IssueMethod,
	bl.Line,
	bl.M_AttributeSetInstance_ID,
	bl.Scrap,
	bl.ValidFrom,
	bl.ValidTo,
	t.QtyBOM,
	bl.Qtybatch,
	bl.IsQtyPercentage,
	t.Depth,
    t.Tree
    
FROM
	TR_BOMline t 

INNER JOIN 
	PP_Product_BOMLine bl 
	ON (t.PP_Product_BOMLine_ID = bl.PP_Product_BOMLine_ID)
;

-- KenosERP/017-Fix-RV_BOMLine.sql
SELECT Register_Migration_Script ('201708301900_RV_BOMLine.sql') FROM DUAL
;

EXIT