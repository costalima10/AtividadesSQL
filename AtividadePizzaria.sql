CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

CREATE TABLE tb_categorias (
id bigint AUTO_INCREMENT,
tipo varchar(255) NOT NULL,
descricao varchar(255),
PRIMARY KEY (id)
);


INSERT INTO tb_categorias (tipo, descricao)
VALUES('Doce', 'Pizzas doces'),
('Salgada', 'salgadas diversos sabores'),
('Vegana', 'Pizza sem origem animal, feita somente com ingredientes veganos'),
('Vegetariana', 'Pizzas sem carne, com ingredientes vegetarianos'),
('Misto', 'Pizzas especiais da pizzaria');

SELECT * FROM tb_categorias;

CREATE TABLE tb_pizzas (
id bigint AUTO_INCREMENT,
nome varchar(255) NOT NULL,
preco DECIMAL(6,2) NOT NULL,
ingredientes varchar(255) NOT NULL,
categorias_id BIGINT NOT NULL,
FOREIGN KEY (categorias_id) REFERENCES tb_categorias(id),
PRIMARY KEY (id)
);

INSERT INTO tb_pizzas (nome, preco, ingredientes, categorias_id)
VALUES 
("Chocolate e Morango", 60.00, "Chocolate, morango", 2),
("Quatro Queijos", 50.00, "Molho de tomate, mussarela, provolone, parmesão, gorgonzola", 1),
("Calabresa", 35.00, "Molho de tomate, calabresa, cebola, mussarela", 1),
("Vegetariana", 45.00, "Molho de tomate, mussarela, tomate, cebola, pimentão, azeitona, cogumelos", 3),
("Vegana", 40.00, "Queijo vegano, Pimentão, Orégano, Abobrinha, Calabresa vegana, Tomate", 4),
("Frango e Catupiry", 55.00, "Molho de tomate, frango desfiado, catupiry", 5),
("Banana e Canela", 35.00, "Banana, canela, leite condensado", 2),
("Margarita", 40.00, "Molho de tomate, mussarela, manjericão", 1);

DELETE FROM tb_pizzas WHERE id BETWEEN 9 AND 16;

SELECT * FROM tb_pizzas WHERE preco > 45;

SELECT * FROM tb_pizzas WHERE preco BETWEEN  50 AND 100;

SELECT * FROM tb_pizzas WHERE nome LIKE "%M%";

SELECT nome, preco, ingredientes, tb_categorias.id
FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categorias_id = tb_categorias.id
WHERE tb_categorias.tipo = "Doce";