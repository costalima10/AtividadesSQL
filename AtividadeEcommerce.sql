CREATE DATABASE db_ecommerce;
use db_ecommerce;

	CREATE TABLE tb_produtos(
    id BIGINT AUTO_INCREMENT,
	nome VARCHAR(255) NOT NULL,
	marca varchar(255)NOT null,
    quantidade int,
    validade DATE,
	preco DECIMAL NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO tb_produtos(nome, marca, quantidade, validade, preco) 
VALUES ("Biscoito","Traquinas","50", "2025-10-01",20.00),
("Torrada","Baudocco","25", "2024-10-01",10.00),
("Refrigerante","Coca-Cola","300", "2025-10-01",5.00),
("Refrigerante","Guarana","400", "2025-10-01",4.00),
("Macarrão","Renata","13", "2024-10-01",30.00),
("Sabonete","Protect","500", "2024-10-01",15.00),
("Sabão","ype","3", "2029-10-01",17.00),
("Sorvete","Kibon","27", "2028-10-01",12.00);

select * from tb_produtos;