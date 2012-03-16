-- Author = Mario Grigioni
create or replace
FUNCTION MascaraCFOP
(
    p_string    VARCHAR2
)
 	RETURN VARCHAR2
AS

        v_Result VARCHAR2(80);
        v_CFOP   VARCHAR2(1);

BEGIN

    IF (p_string = null) THEN 
      RETURN '';
    END IF;
    
    v_CFOP := SUBSTR(p_String,1,1);
    
    IF (v_CFOP = '1') THEN        
      v_Result := '1000 - Entradas e/ou Aquisição de Serviços no Estado';
    ELSE
      IF (v_CFOP = '2') THEN
        v_Result := '2000 - Entradas e/ou Aquisição de Serviços de outros Estado';
      ELSE
        IF (v_CFOP = '3') THEN
          v_Result := '3000 - Entradas e/ou Aquisição de Serviços do Exterior';
        ELSE
          IF (v_CFOP = '5') THEN
            v_Result := '5000 - Saídas e/ou Pestação de Serviços no Estado';
          ELSE
            IF (v_CFOP = '6') THEN
              v_Result := '6000 - Saídas e/ou Pestação de Serviços de outros Estado';
            ELSE
              IF (v_CFOP = '7') THEN
                v_Result := '7000 - Saídas e/ou Pestação de Serviços do Exterior';
              END IF;
            END IF;
          END IF;
        END IF;
      END IF;
    END IF;
     
    RETURN v_Result;
    
END MascaraCFOP;