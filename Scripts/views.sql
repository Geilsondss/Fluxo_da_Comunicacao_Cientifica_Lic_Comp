create view instituicoes_validas as
select *
from instituicao
where nome_curso in ('COMPUTAÇÃO','CIÊNCIA DA COMPUTAÇÃO','CIÊNCIAS DA COMPUTAÇÃO')
and criacao_curso < '2020-01-01'
and inicio_funcionamento_curso < '2020-01-01';

