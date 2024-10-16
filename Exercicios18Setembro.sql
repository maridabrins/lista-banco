
#revisão: 25- Listar a quantidade de filmes classificados como "G" por categoria	
SELECT  COUNT(f.titulo), c.nome
FROM filme f, filme_categoria fc, categoria c
WHERE f.classificacao = "G" and f.filme_id = fc.filme_id and fc.categoria_id = c.categoria_id
GROUP BY c.categoria_id;

#revisão: 26- Listar a quantidade de filmes classificados como "G" ou "PG" por categoria
SELECT  COUNT(f.titulo), c.nome
FROM filme f, filme_categoria fc, categoria c
WHERE (f.classificacao = "G" or f.classificacao = 'PG' ) and f.filme_id = fc.filme_id and fc.categoria_id = c.categoria_id
GROUP BY c.categoria_id;

#revisão: 27- Listar a quantidade de filmes por categoria e classificação 
SELECT  COUNT(f.titulo), c.nome, f.classificacao
FROM filme f, filme_categoria fc, categoria c
WHERE f.filme_id = fc.filme_id and fc.categoria_id = c.categoria_id
GROUP BY c.categoria_id, f.classificacao;

#31. Listar os anos de lançamento dos filmes que possuem mais de 100 filmes com preço da locação 
#maior que a média do preço da locação dos filmes da categoria "Children"?
SELECT AVG(preco_da_locacao)
FROM filme;

SELECT COUNT(titulo), f.ano_de_lancamento
FROM filme f,categoria c, filme_categoria fc 
WHERE f.preco_da_locacao > 2.98 and f.filme_id = fc.filme_id and fc.categoria_id= c.categoria_id and c.nome="Children" 
GROUP BY f.ano_de_lancamento 
HAVING COUNT(f.titulo) > 100 ;

#32. Quais as cidades e seu pais correspondente que pertencem a um país que inicie com A
SELECT pais, cidade
FROM pais p, cidade c
WHERE (p.pais LIKE 'A%') and p.pais_id = c.pais_id
GROUP BY cidade, pais;

#33. Qual a quantidade de cidades por pais em ordem decrescente?
SELECT pais, count(cidade) as quantidade
FROM pais p, cidade c
WHERE p.pais_id = c.pais_id
GROUP BY p.pais_id
ORDER BY quantidade DESC;

#34. Qual é a quantidade de cidades que iniciam com a letra "A" por pais em ordem crescente?
SELECT pais, COUNT(cidade) 
FROM pais p, cidade c
WHERE (c.cidade LIKE 'A%') and  p.pais_id = c.pais_id
GROUP BY p.pais_id
ORDER BY c.cidade ASC;

SELECT * FROM cidade




	