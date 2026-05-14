-- Insere uma base pequena para testar as consultas analiticas.

INSERT INTO customers (customer_id, customer_name, segment, state) VALUES
    (1, 'Atlas Tecnologia', 'SaaS', 'SP'),
    (2, 'Alpha Contabil', 'Contabilidade', 'RJ'),
    (3, 'Beta Servicos', 'Servicos', 'MG'),
    (4, 'Delta Comercio', 'Varejo', 'PR');

INSERT INTO products (product_id, product_name, category, unit_price) VALUES
    (1, 'Plano Starter', 'Assinaturas', 99.90),
    (2, 'Plano Pro', 'Assinaturas', 249.90),
    (3, 'Consultoria', 'Servicos', 450.00),
    (4, 'Treinamento', 'Servicos', 700.00);

INSERT INTO orders (order_id, customer_id, order_date) VALUES
    (1, 1, '2024-01-05'),
    (2, 2, '2024-01-08'),
    (3, 1, '2024-02-03'),
    (4, 3, '2024-02-10'),
    (5, 4, '2024-03-01');

INSERT INTO order_items (order_item_id, order_id, product_id, quantity, unit_price) VALUES
    (1, 1, 2, 2, 249.90),
    (2, 1, 3, 1, 450.00),
    (3, 2, 1, 5, 99.90),
    (4, 3, 4, 1, 700.00),
    (5, 4, 2, 1, 249.90),
    (6, 5, 1, 3, 99.90),
    (7, 5, 3, 2, 450.00);

