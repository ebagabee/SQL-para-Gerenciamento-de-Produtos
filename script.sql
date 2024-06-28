-- Inserir um registro na tabela de produtos:

INSERT INTO produtos (cod_prod, loj_prod, desc_prod, dt_inclu_prod, preco_prod)
VALUES (170, 2, 'LEITE CONDENSADO MOCOCA', '2010-12-30', 45.40);

-- Alterar o preço do produto para R$95,40:
UPDATE produtos
SET preco_prod = 95.40
WHERE cod_prod = 170 AND loj_prod = 2;

-- Select trazendo todos os registros da loja 1 e 2:
SELECT * FROM produtos
WHERE loj_prod IN (1, 2);

-- Select para trazer a maior e a menor data de inclusão do produto:

SELECT MAX(dt_inclu_prod) AS maior_data, MIN(dt_inclu_prod) AS menor_data
FROM produtos;

-- Select para trazer a quantidade total de registros existentes na tabela de produtos:

SELECT COUNT(*) AS total_registros
FROM produtos;

-- Select para trazer todos os produtos que comecem com a letra “L”:

SELECT * FROM produtos
WHERE desc_prod LIKE 'L%';

-- Select para trazer a soma de todos os preços dos produtos totalizado por loja:
SELECT loj_prod, SUM(preco_prod) AS total_preco
FROM produtos
GROUP BY loj_prod;

-- Select para trazer a soma de todos os preços dos produtos totalizados por loja que seja maior que R$100.000:
SELECT loj_prod, SUM(preco_prod) AS total_preco
FROM produtos
GROUP BY loj_prod
HAVING SUM(preco_prod) > 100000;

-- Select combinando as tabelas produtos, estoque e lojas para trazer informações da loja 1:

SELECT l.loj_prod, l.desc_loj, p.cod_prod, p.desc_prod, p.preco_prod, e.qtd_prod
FROM produtos p
JOIN estoque e ON p.cod_prod = e.cod_prod AND p.loj_prod = e.loj_prod
JOIN lojas l ON p.loj_prod = l.loj_prod
WHERE l.loj_prod = 1;

-- Select para trazer todos os produtos que existem na tabela de produtos que não existem na tabela de estoque:

SELECT p.*
FROM produtos p
LEFT JOIN estoque e ON p.cod_prod = e.cod_prod AND p.loj_prod = e.loj_prod
WHERE e.cod_prod IS NULL;

-- Select para trazer todos os produtos que existem na tabela de estoque que não existem na tabela de produtos:

SELECT e.*
FROM estoque e
LEFT JOIN produtos p ON e.cod_prod = p.cod_prod AND e.loj_prod = p.loj_prod
WHERE p.cod_prod IS NULL;