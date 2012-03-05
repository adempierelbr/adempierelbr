create or replace
FUNCTION getPeriod
(
    p_AD_Client_ID    NUMBER,
    p_StartDate       DATE
)
 	RETURN NUMBER
AS

        v_Period      NUMBER;
        
BEGIN

    v_Period := 0;

    IF p_AD_Client_ID IS NULL  OR p_StartDate IS NULL THEN
    
        RETURN v_Period;
        
    END IF;
    
    BEGIN
      SELECT MAX(C_Period_ID) INTO v_Period
      FROM C_Period WHERE AD_Client_ID = p_AD_Client_ID AND StartDate = TRUNC(p_StartDate,'MM');
      
      EXCEPTION
        WHEN NO_DATA_FOUND THEN v_Period := 0;
    END;

        
    RETURN v_Period;
    
END getPeriod;