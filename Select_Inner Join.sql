SELECT matricula, nome, cpf FROM aluno WHERE matricula = "202300006"

SELECT * FROM curso

SELECT * FROM curso WHERE sigla = "JD"

SELECT * FROM curso WHERE sigla = "JD" OR sigla = "CCO"

SELECT * FROM curso, aluno WHERE matricula = "202300001" AND sigla = "CCO"

SELECT * FROM aluno_curso WHERE aluno = "202300001"

SELECT * FROM aluno_curso, aluno WHERE matricula = "202300001"

SELECT * FROM aluno_curso INNER JOIN aluno ON aluno = matricula WHERE matricula = "202300001"

SELECT nome_curso, sigla, matricula, nome, cpf FROM aluno_curso 
INNER JOIN aluno ON aluno = matricula 
INNER JOIN curso ON curso = cod_curso WHERE matricula = "202300001"

SELECT nome, matricula, nome_curso, turno, nome_disciplina FROM aluno
INNER JOIN aluno_curso ON matricula = aluno_curso.aluno
INNER JOIN curso ON curso = cod_curso
INNER JOIN aluno_turma ON aluno_turma.aluno = matricula 
INNER JOIN turma ON aluno_turma.turma = cod_turma  
INNER JOIN disciplina ON disciplina = cod_disciplina
WHERE matricula = "202300001"
