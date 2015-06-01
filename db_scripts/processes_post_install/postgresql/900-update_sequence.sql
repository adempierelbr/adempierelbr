-- 	Atualiza AD_Sequence, intervalo 1000000 - 1999999 para AdempiereLBR
--	BF: 2796433 - Atualizar somente as sequencias que sao ID de tabelas.
UPDATE AD_Sequence SET CurrentNext=2000000 WHERE CurrentNext<2000000 AND IsTableID='Y'
;