## Conteúdo

1. **Inserção de Registros**: Exemplos de inserção de novos registros de produtos no banco de dados.
2. **Atualização de Registros**: Como atualizar o preço de um produto específico.
3. **Consultas Select**: Várias consultas select para recuperar:
    - Todos os registros de lojas específicas.
    - As maiores e menores datas de inclusão de produtos.
    - O número total de registros de produtos.
    - Produtos com descrições que começam com uma letra específica.
    - Soma dos preços dos produtos agrupados por loja.
    - Soma dos preços dos produtos por loja com uma condição.
4. **Consultas com Join**: Consultas select avançadas combinando várias tabelas para recuperar dados abrangentes, como:
    - Detalhes da loja, detalhes do produto e quantidades em estoque para uma loja específica.
    - Produtos que existem em uma tabela, mas não em outra (produtos vs. estoque).
5. **Funções Agregadas**: Utilizando funções SQL como `MAX`, `MIN`, `SUM` e `COUNT` para várias finalidades analíticas.

## Tabelas

### Produtos

- **cod_prod**: Código do Produto (Chave Primária)
- **loj_prod**: Código da Loja (Chave Primária)
- **desc_prod**: Descrição do Produto
- **dt_inclu_prod**: Data de Inclusão do Produto
- **preco_prod**: Preço do Produto

### Estoque

- **cod_prod**: Código do Produto (Chave Primária)
- **loj_prod**: Código da Loja (Chave Primária)
- **qtd_prod**: Quantidade em Estoque

### Lojas

- **loj_prod**: Código da Loja (Chave Primária)
- **desc_loj**: Descrição da Loja

## Uso

Essas consultas SQL podem ser usadas como referência ou modelo para gerenciar e analisar inventários de produtos em bancos de dados relacionais. Os exemplos cobrem uma gama de operações, desde inserção e atualizações básicas de dados até joins e agregações complexas.
