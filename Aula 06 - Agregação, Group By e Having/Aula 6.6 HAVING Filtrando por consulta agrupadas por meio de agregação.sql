-- Aula 6.6 Filtrando por consulta agrupadas por meio de agregação 


INSERT INTO 


-- Filtrando por meio de um campo: é usado o WHERE
SELECT curso.nome,
		COUNT(aluno.id)
	FROM curso
	LEFT JOIN aluno_curso ON curso.id = aluno_curso.curso_id
	LEFT JOIN aluno ON aluno_curso.aluno_id = aluno.id
		WHERE curso.nome = 'JAVA' -- Comando que funciona buscando pelo CAMPO da tabela
		GROUP BY 1;


-- Filtrando por meio de uma função de agrupamento: é usado um HAVING	
-- Filtrando para retornar os cursos que NÃO TEM alunos cadastrados
SELECT curso.nome,
		COUNT(aluno.id)
	FROM curso
	LEFT JOIN aluno_curso ON curso.id = aluno_curso.curso_id
	LEFT JOIN aluno ON aluno_curso.aluno_id = aluno.id
		GROUP BY 1
			HAVING COUNT(aluno.id) = 0; -- Comando que trabalha junto com a função de agregação para filtrar por meio das agregaçãoes
			
			
-- Filtrando para retornar os cursos que TEM alunos cadastrados
SELECT curso.nome,
		COUNT (aluno.id)
	FROM curso
	LEFT JOIN aluno_curso ON curso.id = aluno_curso.curso_id
	LEFT JOIN aluno ON aluno_curso.aluno_id = aluno.id
		GROUP BY 1
			HAVING COUNT(aluno.id) > 0; -- Comando que trabalha junto com a função de agregação para filtrar por meio das agregaçãoes