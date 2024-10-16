-- 45. Quais os filmes alugados (sem repetição) para clientes que moram na “Argentina”?
SELECT DISTINCT f.titulo, p.pais
FROM filme f, cliente c, pais p, cidade ci, aluguel a, endereco e, inventario i
WHERE ( p.pais_id = ci.pais_id and a.cliente_id = c.cliente_id  and ci.cidade_id = e.cidade_id 
and a.inventario_id = i.inventario_id and i.filme_id = f.filme_id 
and c.endereco_id = e.endereco_id) and (p.pais_id = 6) 
GROUP BY f.titulo;

-- 46. Qual a quantidade de filmes alugados por Clientes que moram na “Chile”?
SELECT f.titulo, p.pais
FROM filme f, cliente c, pais p, cidade ci, aluguel a, endereco e, inventario i
WHERE ( p.pais_id = ci.pais_id and a.cliente_id = c.cliente_id  and ci.cidade_id = e.cidade_id 
and a.inventario_id = i.inventario_id and i.filme_id = f.filme_id 
and c.endereco_id = e.endereco_id) and (p.pais_id = 22) 
GROUP BY f.titulo;

-- 47. Qual a quantidade de filmes alugados por funcionário?
SELECT COUNT(f.titulo), fun.primeiro_nome
FROM filme f, funcionario fun, endereco e, cidade ci, inventario i, aluguel a
WHERE (f.filme_id = i.filme_id and fun.endereco_id = e.endereco_id and a.inventario_id = i.inventario_id 
and ci.cidade_id = e.cidade_id and fun.loja_id = i.loja_id)
GROUP BY fun.primeiro_nome;

select primeiro_nome from funcionario;

-- 47 feita pelo cantieri
SELECT funcionario_id, COUNT(*)
FROM aluguel
GROUP BY funcionario_id;

-- 48. Qual a quantidade de filmes alugados por funcionário para cada categoria?
/*SELECT COUNT(fa.filme_id), fun.primeiro_nome
FROM filme_categoria fa, funcionario fun, endereco e, cidade ci, inventario i, aluguel a, categoria ca
WHERE (fa.filme_id = i.filme_id and fun.endereco_id = e.endereco_id 
and a.inventario_id = i.inventario_id and ci.cidade_id = e.cidade_id 
and fun.loja_id = i.loja_id and fa.categoria_id = ca.categoria_id)
GROUP BY fun.primeiro_nome, ca.categoria_id;*/

-- 49. Quais Filmes possuem preço da Locação maior que a média de preço da locação?
SELECT AVG(preco_da_locacao)
FROM filme;

SELECT titulo, preco_da_locacao
FROM filme
WHERE preco_da_locacao > 2.98;

-- 50. Qual a soma da duração dos Filmes por categoria?
SELECT categoria_id, COUNT(*)
FROM filme_categoria, filme
WHERE (SELECT SUM(duracao_do_filme))
GROUP BY categoria_id

-- 51. Qual a quantidade de filmes locados mês a mês por ano?

-- 52. Qual o total pago por classificação de filmes alugados no ano de 2006?

-- 53. Qual a média mensal do valor pago por filmes alugados no ano de 2005?

-- 54. Qual o total pago por filme alugado no mês de Junho de 2006 por cliente?






