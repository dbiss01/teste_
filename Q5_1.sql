SELECT 
	filme.id, 
	filme.nome AS titulo_filme,
	filme.ano AS ano_lancamento,
	diretor.nome AS diretor,
	(SELECT AVG(nota) FROM avaliacao WHERE filme.id = avaliacao.id_filme ) mediaAvaliacao
FROM 
	filme, avaliacao, diretor
WHERE 
	filme.id = avaliacao.id_filme
AND
	filme.id = diretor.id_filme
ORDER BY
	avaliacao.nota desc
LIMIT
	3