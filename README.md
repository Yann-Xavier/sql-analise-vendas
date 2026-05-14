# SQL Analise de Vendas

Projeto SQL para analise comercial usando tabelas de clientes, produtos,
pedidos e itens de pedido.

## Objetivo

Demonstrar consultas SQL para portfolio:

- joins entre tabelas relacionais;
- agregacoes;
- ranking de produtos;
- faturamento por cliente;
- ticket medio;
- evolucao mensal.

## Como executar com SQLite

```bash
sqlite3 vendas.db < schema.sql
sqlite3 vendas.db < seed.sql
sqlite3 vendas.db < queries.sql
```

## Arquivos

- `schema.sql`: cria as tabelas.
- `seed.sql`: insere dados de exemplo.
- `queries.sql`: contem consultas analiticas.

