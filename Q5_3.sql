SELECT
	ator.id,
	ator.nome AS nome_ator
FROM
	ator, filme, diretor
WHERE
	filme.ano="2015"
AND
	diretor.nome LIKE "%Spielberg%"
AND
	ator.id_filme=filme.id
