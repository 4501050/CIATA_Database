select codusuario, email, 'update gusuario set email = '+''''+codusuario+'@terceiros.mackenzi.br'+' where codusuario = '+''''+codusuario+''''+';'  as sql
from gusuario
where email like '4501050%'


update gusuario set email = 'CIATA_INTEGRACAO@terceiros.mackenzie.br' where codusuario = 'CIATA_INTEGRACAO';
update gusuario set email = 'CIATA_INTEGRACAO_RBS@terceiros.mackenzie.br' where codusuario = 'CIATA_INTEGRACAO_RBS';
update gusuario set email = 'CIATA_INTEGRACAO_RM@terceiros.mackenzie.br' where codusuario = 'CIATA_INTEGRACAO_RM';
update gusuario set email = 'TOTVS_LYNN@terceiros.mackenzie.br' where codusuario = 'TOTVS_LYNN';
update gusuario set email = 'TOTVS_LYNN_MESTRE@terceiros.mackenzie.br' where codusuario = 'TOTVS_LYNN_MESTRE';



-- Fumio
select codpessoa,*
from saluno
where ra = '10741479'

select *
from hatendente
where codpessoa = 1013530


RA - 10741479
CODPESSOA - 1013530
CODATENDENTE - 10660

