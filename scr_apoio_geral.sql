-- Scripts de Apoio para o time CIATA


SELECT TOP 10 *  
FROM SCURSO

SELECT CODCURSO, NOME, LEN(NOME)
FROM SCURSO
ORDER BY 3

SELECT CODSTATUS, DESCRICAO, LEN(DESCRICAO)
FROM SSTATUS
ORDER BY 3

SELECT *
FROM GJOBX
WHERE RECCREATEDBY IN ('AMA0585','AMS0586')

SELECT *
FROM GJOBX
WHERE IDJOB IN ('9150545','9149562')

SELECT *
FROM GJOB

--('9150545','9149562')

SELECT *
FROM GJOBXEXECUCAO
WHERE IDJOB IN ('9150545','9149562')


--SP_HELP GJOBXEXECUCAO


--sp_help PFREMBASEMESEVT
--sp_help PFREMBASEMES

select *
from PFREMBASEMES

select *
from gdic
where tabela in ('PFREMBASEMES','PFREMBASEMESEVT','pfunc')
and coluna = '#'


select *
from gsistema



SELECT TOP 100 *
FROM GJOBXEXECUCAO
WHERE IDJOB IN ('9150545','9149562')


select *
from gjobx
where idjob in (
        select idjob
        from GJOBXEXECUCAO
        where datainiexec >= '2026-07-23 00:00:00.000')

SELECT *
FROM SYSOBJECTS
WHERE XTYPE = 'U'
AND NAME LIKE 'RR%'

select top 10 *
from rlogexec

select top 10 *
from GJOB
where codsistema = 'S'
and relatorio = 1

--codusuario = '10741479'

--codsistema = 'S'

--Instantâneo - RptExecutorProcess


select *
from gjobx
where idjob in ('9345749')


select *
from rreports


--146532-core-instance-N-RM-D-CBOCMD-1-75fe3WIN-SP03

--9345749

SELECT *
FROM GJOBLOG
WHERE IDJOBX = 9345749


SELECT DESCRELAT, YEAR(RECCREATEDON), MONTH(RECCREATEDON), COUNT(*)
FROM GRELBATCH
WHERE CODCOLIGADA = 1
AND CODSISTEMA = 'S'
AND IDREL = 1511
GROUP BY YEAR(RECCREATEDON), MONTH(RECCREATEDON), DESCRELAT
--AND DESCRELAT LIKE '%001.02.02.18%'


SELECT TOP 10 *
FROM GJOB

SELECT 
    R.CODCOLIGADA,
    R.ID AS ID_RELATORIO,
    R.NOME AS NOME_RELATORIO,
    R.CODAPLIC,
    J.IDJOB,
    J.USUARIOSOLICITANTE,
    E.DATAINEXEC,
    E.DATAFIMEXEC,
    E.STATUS,
    CASE E.STATUS 
        WHEN 0 THEN 'Pendente'
        WHEN 1 THEN 'Em Execução'
        WHEN 2 THEN 'Concluído com Sucesso'
        WHEN 3 THEN 'Cancelado'
        WHEN 4 THEN 'Erro/Inconcluso'
        ELSE 'Outro'
    END AS DESC_STATUS
FROM RRPTREPORT R
INNER JOIN GJOBX J 
    ON J.DESCRICAO LIKE '%' + R.NOME + '%'
   OR J.PARAMETROS LIKE '%' + CAST(R.ID AS VARCHAR) + '%'
INNER JOIN GJOBXEXECUCAOHST E 
    ON E.CODCOLIGADA = J.CODCOLIGADA 
   AND E.IDJOB = J.IDJOB
WHERE R.ID = 1511 -- Informe o ID do relatório desejado
ORDER BY E.DATAINEXEC DESC;


select *
from gJOBXEXECUCAOHSt
where idjob = '9345757'


select top 10 *
from gjobxexecucaohst  
where reccreatedby = '10741479'

--textostatus like '%1552'      


select *
from qcubox




