CREATE DATABASE db_estudantes;

use db_estudantes;

CREATE TABLE tb_estudantes(
    matricula BIGINT AUTO_INCREMENT,
	nome VARCHAR(255) NOT NULL,
	dataDeNascimento DATE,
    nota decimal,
	curso VARCHAR(255) NOT NULL,
    PRIMARY KEY (matricula)
);

select * from tb_estudantes;

INSERT INTO tb_estudantes(nome, dataDeNascimento, nota, curso) 
VALUES ("Gabriel","2000-12-10","7.0", "S.I"),
("Kaellen","1984-07-02","6.0", "ADM"),
("Jefferson","1997-05-28","4.0", "C.I"),
("Iwakura","1996-12-19","8.0", "ADS"),
("Kevin","1999-03-01","6", "S.I"),
("Arthur","2000-03-06","5", "ADM"),
("Pedro","2003-07-26","3", "R.P"),
("Bianca","1998-05-30","9", "C.i");

select * from tb_estudantes where nota >=7;
select * from tb_estudantes where nota <=7;