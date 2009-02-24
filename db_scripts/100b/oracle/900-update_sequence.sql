-- Atualiza AD_Sequence, intervalo 1000000 - 1999999 para AdempiereLBR
UPDATE ADEMPIERE.AD_SEQUENCE SET CurrentNext = 2000000 WHERE CurrentNext < 2000000;

exit
