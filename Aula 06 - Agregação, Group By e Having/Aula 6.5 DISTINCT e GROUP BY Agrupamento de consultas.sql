-- Aula 6.5 Agrupamento de consultas

-- Fazendo uma consulta retornando todos os funcionários
SELECT nome,
	sobrenome
	FROM funcionarios
	ORDER BY nome;

-- Fazendo uma consulta listando todos os nomes sem que eles se repitam
SELECT DISTINCT -- Fará a distinção do campo "nome" apenas e não trará nomes repeditos
		nome
	FROM funcionarios
	ORDER BY nome;
	
-- Fazendo uma consulta listando todos os nomes e sobrenomes sem que eles se repitam
SELECT DISTINCT -- Agora o "DISTINCT" fará a distinção levendo em consideração os campos "nome" e "sobrenome" e não trará repetidos 
	nome,
	sobrenome
	FROM funcionarios
	ORDER BY nome;
	
-- Fazendo uma agregação, é preciso usar o GROUP BY 
SELECT nome,
	sobrenome,
	COUNT (id) -- Não é possível usar o DISTINCT para fazer um Agregação
	FROM funcionarios
	GROUP BY nome, sobrenome -- Para usar a função de Agregação é preciso colocar os campos no "GROUP BY"
	ORDER BY nome;
	
-- Fazendo uma consulta para saber a quantidade de alunos por curso e ordenando a lista de curso na ordem crescente
SELECT curso.nome,
		COUNT (aluno.id) -- Fez a agregação dos alunos cadastrados em cada curso
	FROM aluno
	JOIN aluno_curso ON aluno.id = aluno_curso.aluno_id
	JOIN curso ON aluno_curso.curso_id = curso.id
	GROUP BY 1 -- Fez o agrupamento pelo único campo que seria mostrado
	ORDER BY 1; -- Ordenou a lista por meio da primeira coluna, nome do curso