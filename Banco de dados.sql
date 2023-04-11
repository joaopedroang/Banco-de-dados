CREATE TABLE curso (
	cod_curso INTEGER,
	nome VARCHAR (100),
	sigla VARCHAR (5),
	PRIMARY KEY (cod_curso)
);

CREATE TABLE disciplina (
	cod_disciplina INTEGER,
	nome VARCHAR (100),
	curso INTEGER,
	PRIMARY KEY (cod_disciplina),
	CONSTRAINT fk_curso FOREIGN KEY (curso) REFERENCES curso (cod_curso) ON UPDATE NO ACTION ON DELETE NO ACTION 
);

CREATE TABLE turma (
	cod_turma INTEGER,
	turno VARCHAR (5),
	localidade VARCHAR (5),
	disciplina INTEGER,
	PRIMARY KEY (cod_turma),
	CONSTRAINT fk_disciplina FOREIGN KEY (disciplina) REFERENCES disciplina (cod_disciplina) ON UPDATE NO ACTION ON DELETE NO ACTION 
);

CREATE TABLE aluno (
	matricula INTEGER,
	cpf INTEGER,
	nome VARCHAR (100),
	curso INTEGER,
	turma INTEGER,
	PRIMARY KEY (matricula),
	CONSTRAINT fk_curso1 FOREIGN KEY (curso) REFERENCES curso (cod_curso) ON UPDATE NO ACTION ON DELETE NO ACTION,
	CONSTRAINT fk_turma FOREIGN KEY (turma) REFERENCES turma (cod_turma) ON UPDATE NO ACTION ON DELETE NO ACTION
);

ALTER TABLE disciplina
DROP FOREIGN KEY fk_curso;

INSERT INTO curso (cod_curso, nome, sigla)
VALUES 
	(1, "Ciências da computação", "CCO"),
	(2, "Análise e desenvolvimento de sistemas", "ADS"),
	(3, "Gestão de tecnologia da informação", "GTI"),
	(4, "Jogos digitais", "JD");
	
INSERT INTO disciplina (cod_disciplina, nome, curso)
VALUES 
	(1, "Banco de dados", ),
	(2, "Programação", ),
	(3, "Estrutura de dados"),
	(4, "Modelagem", ),
	(5, "Engenharia de softwares")