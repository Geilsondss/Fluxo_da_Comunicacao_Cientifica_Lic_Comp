CREATE VIEW instituicoes_validas AS
SELECT *
FROM instituicao
WHERE nome_curso IN ('COMPUTAÇÃO','CIÊNCIA DA COMPUTAÇÃO','CIÊNCIAS DA COMPUTAÇÃO')
AND criacao_curso < '2020-01-01'
AND inicio_funcionamento_curso < '2020-01-01';

