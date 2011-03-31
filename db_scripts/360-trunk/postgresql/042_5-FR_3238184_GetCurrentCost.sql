CREATE OR REPLACE FUNCTION getCurrentCost (
    p_AD_Client_ID    NUMERIC,
    p_M_Product_ID    NUMERIC,
    p_C_Period_ID     NUMERIC
)
 	RETURNS NUMERIC AS

$BODY$

DECLARE

    v_CurrentCost      NUMERIC;
    v_C_Period_ID      NUMERIC;
    v_StartDate        DATE;
    v_OldDate          DATE;
        
BEGIN

  v_CurrentCost := 0;
  v_C_Period_ID := p_C_Period_ID; 
       
  IF p_AD_Client_ID IS NULL  OR p_M_Product_ID IS NULL THEN
    
      RETURN v_CurrentCost;
        
  END IF;
     
  BEGIN
    SELECT MAX(avgL.FutureCostPrice) INTO v_CurrentCost
    FROM LBR_AverageCostLine avgL
      INNER JOIN LBR_AverageCost avgC ON (avgC.LBR_AverageCost_ID = avgL.LBR_AverageCost_ID)
    WHERE avgC.AD_Client_ID = p_AD_Client_ID AND avgC.C_Period_ID = v_C_Period_ID
      AND avgL.M_Product_ID = p_M_Product_ID;
      
    IF v_CurrentCost IS NULL OR v_CurrentCost = 0 THEN
      BEGIN
      
        IF v_C_Period_ID <= 0 THEN
          SELECT CurrentCostPrice INTO v_CurrentCost FROM M_Cost c 
          WHERE c.M_Product_ID = p_M_Product_ID AND c.C_AcctSchema_ID = p_AD_Client_ID AND c.AD_Org_ID = 0;
          
          RETURN v_CurrentCost;
        END IF;
      
        SELECT p.StartDate INTO v_StartDate FROM C_Period p WHERE p.C_Period_ID = v_C_Period_ID;
        v_OldDate := TRUNC(ADDDays(v_StartDate,-1),'MM');
        v_C_Period_ID := getPeriod(p_AD_Client_ID,v_OldDate);
        v_CurrentCost := getCurrentCost(p_AD_Client_ID,p_M_Product_ID,v_C_Period_ID);
                
        EXCEPTION
               WHEN NO_DATA_FOUND THEN v_CurrentCost := 0;
      END;
    END IF;
  END;

  IF v_CurrentCost IS NULL THEN
    v_CurrentCost := 0;
  END IF;
        
  RETURN v_CurrentCost;
    
END;

$BODY$
  LANGUAGE 'plpgsql'
