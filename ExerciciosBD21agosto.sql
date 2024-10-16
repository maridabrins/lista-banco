SELECT pais FROM pais;

SELECT COUNT(DISTINCT pais) quantidade_pais FROM pais;

SELECT DISTINCT ano_de_lancamento FROM filme;

SELECT * FROM filme WHERE duracao_do_filme >100 AND classificacao = 'G';

SELECT classificacao, COUNT(*) FROM filme group by classificacao;

SELECT DISTINCT preco_da_locacao FROM filme

