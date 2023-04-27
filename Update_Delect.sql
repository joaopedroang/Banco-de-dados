INSERT INTO curso (cod_curso, nome_curso, sigla)
VALUES
	(6, 'Engenharia da Computação', 'EC'),
	(7, 'Tecnologia em Redes de Computadores', 'TRC');
	
UPDATE curso SET nome_curso = 'Redes de Computadores' 
WHERE nome_curso = 'Tecnologia em Redes de Computadores';

UPDATE curso SET sigla = 'RC'
WHERE sigla = 'TRC';

DELETE FROM curso WHERE cod_curso = 7;

DELETE FROM curso WHERE cod_curso = 6;

SET foreign_key_checks = 0
DELETE FROM curso WHERE cod_curso = 1