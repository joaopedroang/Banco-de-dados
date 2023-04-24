SELECT nome, matricula, nome_curso, nome_disciplina FROM aluno
INNER JOIN aluno_curso ON aluno_curso.aluno = matricula
INNER JOIN curso ON aluno_curso.curso = cod_curso
INNER JOIN aluno_turma ON aluno_turma.aluno = matricula 
INNER JOIN turma ON aluno_turma.turma = cod_turma  
INNER JOIN disciplina ON turma.disciplina = cod_disciplina
WHERE matricula = "202300001" 

