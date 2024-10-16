/*Qual a maior duração da locação dentre os filmes*/
SELECT MAX(duracao_da_locacao)
FROM filme;

/*Quantos filmes possuem a maior duração de locação?*/
SELECT COUNT(titulo) 
FROM filme
WHERE duracao_da_locacao = (SELECT MAX(duracao_da_locacao)
FROM filme);

/*Quantos filmes do idioma "JAPANESE" ou "GERMAN" possuem maior duração de locação?*/
SELECT COUNT(*)
FROM filme
WHERE idioma_id = 3 AND duracao_da_locacao = (SELECT MAX(duracao_da_locacao)
FROM filme) OR  idioma_id = 6 AND duracao_da_locacao = (SELECT MAX(duracao_da_locacao)
FROM filme);

/*Qual a quantidade de filmes por classificação e preço da locação*/
SELECT preco_da_locacao, classificacao,  COUNT(*) 
FROM filme 
group by classificacao, preco_da_locacao;

/*Qual o maior tempo de duração por categoria*/
SELECT categoria_id, MAX(duracao_do_filme)
FROM filme, filme_categoria
GROUP BY categoria_id;

/*Listar a quantidade de filmes por categoria*/
SELECT categoria_id, COUNT(*)
FROM filme_categoria
GROUP BY categoria_id;

/*Listar a quantidade de filmes classificados como "G" por categoria*/
SELECT classificacao, categoria_id, COUNT(titulo)
FROM filme f, filme_categoria fc
WHERE classificacao = "G" and f.filme_id=fc.filme_id
GROUP BY classificacao, categoria_id;

/*Listar a quantidade de filmes classificados como "G" e "PG" por categoria */
SELECT classificacao, categoria_id, COUNT(titulo)
FROM filme f, filme_categoria fc
WHERE  f.filme_id=fc.filme_id 
GROUP BY classificacao, categoria_id
HAVING classificacao = "G" OR classificacao = "PG";  

/*Listar a quantidade de filmes por categoria e classificação*/
SELECT categoria_id, classificacao, COUNT(*)
FROM filme_categoria fc , filme f
WHERE f.filme_id=fc.filme_id 
GROUP BY categoria_id, classificacao;

/*Qual a quantidade de filmes por Ator ordenando decrescente por quantidade?*/
SELECT ator_id, COUNT(filme_id) as filmes
FROM filme_ator
GROUP BY ator_id
ORDER BY filmes DESC;

/*Qual a quantidade de filmes por ano de lançamento ordenando por quantidade crescente*/
SELECT ano_de_lancamento, COUNT(filme_id) as filmes
FROM filme
GROUP BY ano_de_lancamento
ORDER BY filmes ASC;

/*Listar os anos de lançamento que possuem mais de 400 filmes*/
SELECT ano_de_lancamento, COUNT(*)
FROM filme
WHERE filme_id >400




















