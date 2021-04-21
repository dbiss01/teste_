SELECT
	filme.id,
	filme.nome AS titulo_filme,
	filme.ano AS ano_lancamento
FROM
	ator, filme
WHERE
	ator.nome="Tom Hanks"
AND
	ator.id_filme=filme.id