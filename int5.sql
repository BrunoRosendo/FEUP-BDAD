.mode columns
.headers on
.nullvalue NULL


-- Esta interrogação destina-se a ir buscar todos os conteudos com classificação maior que 4.8 
-- e que um dado utilizador (neste caso, perfil = 1) ainda não tenha visto
-- (Possivelmente para adicionar aos Recomendados)

SELECT titulo, classificacao
FROM Conteudo
WHERE Conteudo.classificacao > 4.8 and Conteudo.id not in (
	SELECT idConteudo
	FROM Historico 
	WHERE Historico.idPerfil = 1 
	)
