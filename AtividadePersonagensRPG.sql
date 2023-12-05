CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes(
id bigint AUTO_INCREMENT,
classe varchar(255) NOT NULL,
especialidade varchar(255) NOT NULL,
PRIMARY KEY (id)
);

SELECT * FROM tb_classes;

INSERT INTO tb_classes(classe, especialidade)
VALUES ("guerreiro","especialidade: Mestre de batalha"),
("barbaro", "especialidade: Coração de tigre"), 
("monge","especialidade: Caminho da palma"),
("paladinho","especialidade: Cavaleiro dos Deuses"),
("clerigo","especialidade: Servo da Luz"),
("mago","especialidade: Deus das Tempestades"),
("feiticeiro","especialidade: Sorlock Infernal"), 
("bruxo","especialidade: Encantador de Almas"),
("ladino","especialidade: Assassino das Sombras"),
("ranger","especialidade: Caçador de Demonios"),
("Druida","especialidade: Circulo da Terra"),
("bardo","especialidade: Sopros Deslumbrantes");

CREATE TABLE tb_personagens(
id bigint AUTO_INCREMENT,
nome varchar(255) NOT NULL,
raca int NOT NULL,
forca int NOT NULL,
estamina int NOT NULL,
classe_id bigint,
PRIMARY KEY (id),
FOREIGN KEY (classe_id) REFERENCES tb_classes(id)
);

SELECT * FROM tb_personagens;

ALTER TABLE tb_personagens rename column forca to poder_ataque;

ALTER TABLE tb_personagens rename column estamina to poder_defesa;

alter table tb_personagens drop column  magia;

alter table tb_personagens modify raca varchar(100);

INSERT INTO tb_personagens (nome, raca, poder_ataque, poder_defesa, classe_id)
VALUES ("Bianca", "Tieflings", 5000, 3000, 11),
("Daniel", "Orc", 4000, 8000, 2),
("kevin", "Humano", 8000, 2000, 7),
("Isabella", "Gnomo", 4000, 4000, 10),
("Luis", "Anão", 6000, 9000, 1),
("Pedro", "Elfo", 3500, 4200, 8),
("Iwakura", "Drakonato", 6000, 5000, 3),
("Kaellen", "Halfings", 6300, 1300, 12),
("Richardson","Humano", 7300, 9400, 4),
("Arthur", "Drow", 6050, 5040, 9),
("Felipe", "Elfo", 9500, 3000, 6),
("Grazi", "Meio-Elfo", 6000, 3700, 5);

select * from tb_personagens where poder_ataque ;  
                  
SELECT * FROM tb_personagens
WHERE poder_ataque BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens WHERE nome LIKE "%c%";

SELECT nome, raca, poder_ataque, poder_defesa, tb_classes.classe, tb_classes.especialidade
FROM tb_personagens
INNER JOIN tb_classes
ON tb_personagens.classe_id = tb_classes.id
WHERE tb_classes.classe = "druida";

