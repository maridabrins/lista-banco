

/* ALterar o ano de lançamento =2007 para filmes que iniciam com a letra B */
UPDATE filme 
SET  ano_de_lancamento = 2007 
WHERE titulo LIKE  'B%';

/*Alterar o ano de lançamento igual 2008 para filmes que possuem duração da locação menor que 4 e classificação igual a "PG"*/
UPDATE filme 
SET ano_de_lancamento = 2008  
WHERE classificacao = 'PG' AND duracao_da_locacao < 4;

SET SQL_SAFE_UPDATES=0;

/*Alterar o idioma para "German" dos filmes que possuem preço da locação maior que 4 */
UPDATE filme 
SET idioma_id = 6  
WHERE preco_da_locacao > 4;

SELECT * FROM filme;

/*Alterar o idioma para "JAPANESE" dos Filmes que possuem preço da locação igual 0.99*/
UPDATE filme 
SET idioma_id = 3 
WHERE preco_da_locacao = 0.99;

/* Listar, sem repetição, os preços de locação dos filmes cadastrados*/
SELECT DISTINCT preco_da_locacao FROM filme;

/*Listar a quantidade de filmes por preço da locação */
SELECT preco_da_locacao, COUNT(*) 
FROM filme group by preco_da_locacao;

/* Listar os preços da locação que possuam mais de 340 filmes*/
SELECT preco_da_locacao 
FROM filme 
group by preco_da_locacao > 340;

/* Listar a quantidade de atores por filme ordenando por quantidade de atores crescentes*/
SELECT filme_id, COUNT(ator_id)atores
 FROM filme_ator 
 GROUP BY filme_id 
 ORDER BY atores ASC;

/*Listar a quantidade de atores para os filmes que possuem mais de 5 atores ordenando por quantidade de atores decrescente */
SELECT filme_id, COUNT(ator_id)atores 
FROM filme_ator 
GROUP BY filme_id 
HAVING atores > 5 
ORDER BY atores DESC;

/*Listar o t´tulo e a quantidade de atores para os filmes que possuem o idioma "JAPANESE" e mais 10 atores ordenando por ordem alfabética
 de título e ordem crescente de quantidade de atores*/
SELECT filme_ator.filme_id,  COUNT(ator_id)atores, titulo
FROM filme_ator, filme
where idioma_id = 3 and filme.filme_id=filme_ator.filme_id /*o filme_id precisa estar igual nas duas tabelas que ele esta armazenado*/
GROUP BY filme_ator.filme_id, titulo
HAVING  atores >10
ORDER BY titulo;


select * from filme
where idioma_id=3







