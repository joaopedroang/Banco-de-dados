SELECT matricula, nome, cpf FROM aluno WHERE matricula = "202300006"

SELECT * FROM curso

SELECT * FROM curso WHERE sigla = "JD"

SELECT * FROM curso WHERE sigla = "JD" OR sigla = "CCO"

SELECT * FROM curso, aluno WHERE matricula = "202300001" AND sigla = "CCO"

SELECT * FROM aluno_curso WHERE aluno = "202300001"

SELECT * FROM aluno_curso, aluno WHERE matricula = "202300001"

SELECT * FROM aluno_curso INNER JOIN aluno ON aluno = matricula WHERE matricula = "202300001"

SELECT nome_curso, sigla, matricula, nome, cpf FROM aluno_curso INNER JOIN aluno ON aluno = matricula 
INNER JOIN curso ON curso = cod_curso WHERE matricula = "202300001"
