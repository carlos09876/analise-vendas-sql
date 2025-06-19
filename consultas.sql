-- Criar tabela de vendas
CREATE TABLE vendas (
    id INTEGER PRIMARY KEY,
    produto TEXT,
    quantidade INTEGER,
    preco_unitario REAL
);

-- Inserir dados simulados
INSERT INTO vendas (produto, quantidade, preco_unitario) VALUES
('Camiseta', 10, 50.00),
('Tênis', 5, 250.00),
('Boné', 20, 35.00),
('Calça', 7, 120.00);

-- Consulta: Receita total por produto
SELECT produto, 
       SUM(quantidade * preco_unitario) AS receita_total
FROM vendas
GROUP BY produto
ORDER BY receita_total DESC;
