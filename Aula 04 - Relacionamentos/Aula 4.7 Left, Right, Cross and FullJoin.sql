-- Aula 4.7 Left, Right, Cross and FullJoin

-- Quando é feito o JOIN ele irá juntar as 3 tabelas e irá retornar apenas as os campos que se relacionam nas 2 tabelas
-- A ordem de junção das tabelas é: 1º aluno, 2º aluno_curso e 3º curso
SELECT
	aluno.nome AS "Nome aluno",
	curso.nome AS Curso_nome
	FROM aluno
	JOIN aluno_curso ON aluno_curso.aluno_id = aluno.id
	JOIN curso       ON curso.id = aluno_curso.curso_id;


-- Adicionando um aluno que não está cadastrado em nenhum curso
INSERT INTO aluno (nome) VALUES ('Nico');


-- Para retornar todos os alunos, mesmo os alunos que não tem matrícula em nenhum curso, e os apenas os cursos que tem alunos matriculados
-- São 3 tabelas, é como se jogasse a visão para a esquerda, para a tabela "aluno", para ver todos os alunos
SELECT
	aluno.nome AS "Nome aluno",
	curso.nome AS Curso_nome
	FROM aluno
LEFT JOIN aluno_curso ON aluno_curso.aluno_id = aluno.id
LEFT JOIN curso       ON curso.id = aluno_curso.curso_id;


-- Inserindo um curso que não tem nenhum aluno matriculado
INSERT INTO curso (nome) VALUES ('C#');


-- Para retornar todos os cursos, mesmo os cursos que não tem aluno matriculado, e apenas os alunos que estão matriculados em algum curso
-- São 3 tabelas, é como se jogasse a visão para a direita, para a tabela "curso", para ver todos o cursos
SELECT
	aluno.nome AS "Nome aluno",
	curso.nome AS Curso_nome
	FROM aluno
RIGHT JOIN aluno_curso ON aluno_curso.aluno_id = aluno.id
RIGHT JOIN curso       ON curso.id = aluno_curso.curso_id;


-- Para retonar o cruzamento entre todos os alunos e todos os cursos
-- Nesse caso, precisa mais da tabela "aluno_curso"
SELECT
	aluno.nome AS "Nome aluno",
	curso.nome AS Curso_nome
	FROM aluno
CROSS JOIN curso;