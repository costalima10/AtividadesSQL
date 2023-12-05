create database db_colaboradores;
use db_colaboradores;
CREATE TABLE tb_colaboradores(
    cracha BIGINT AUTO_INCREMENT,
	nome VARCHAR(255) NOT NULL,
	cargo varchar(255)NOT null,
    admissao DATE,
	salario DECIMAL NOT NULL,
    PRIMARY KEY (cracha)
);

select * from tb_colaboradores;

INSERT INTO tb_colaboradores(nome, cargo, admissao, salario) 
VALUES ("Gabriel","CEO", "2023-12-04", 60000.00),
("Arthur","VICE CEO", "2023-12-04", 50000.00),
("Luis","DIRETOR GERAL", "2023-12-04", 40000.00),
("Kevin","DIRETOR DE COMUNICAÇÃO", "2023-12-04", 30000.00),
("Iwakura","DIRETOR DE PESSOAS", "2023-12-04", 20000.00),
("Isabella","DIRETORA DE TI", "2023-12-04", 10000.00),
("Bianca","PROGRAMADORA PLENO", "2023-12-04", 8000.00);

select * from tb_colaboradores where salario > 10000;
select * from tb_colaboradores where salario <= 10000;


