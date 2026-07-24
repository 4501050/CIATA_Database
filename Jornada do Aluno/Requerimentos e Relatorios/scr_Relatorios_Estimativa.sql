-- Criado em 24/07/2026
-- Gera a quantidade de execuções de todos os relatórios/serviços do Educacional


SELECT *
FROM (
        SELECT  YEAR(RECCREATEDON) ANO, 
                MONTH(RECCREATEDON) MES, 
                IDREL, 
                SUBSTRING(DESCRELAT,1,PATINDEX('%-%',DESCRELAT)-1) AS CODIGO,
                REPLACE(REPLACE(SUBSTRING(DESCRELAT,PATINDEX('%-%',DESCRELAT)+2,LEN(DESCRELAT) ),'.PDF',''),'.NONE','') AS NOME,
                COUNT(*) AS QTD_GERACAO
        FROM GRELBATCH
        WHERE CODCOLIGADA = 1
        AND CODSISTEMA = 'S'
        GROUP BY        YEAR(RECCREATEDON), 
                        MONTH(RECCREATEDON),
                        IDREL, 
                        SUBSTRING(DESCRELAT,1,PATINDEX('%-%',DESCRELAT)-1),
                        REPLACE(REPLACE(SUBSTRING(DESCRELAT,PATINDEX('%-%',DESCRELAT)+2,LEN(DESCRELAT) ),'.PDF',''),'.NONE','')
) DADOS
ORDER BY QTD_GERACAO DESC
