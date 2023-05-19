-- Aula 6.1 Ordenando Consultas

-- Criando a tabela 
CREATE TABLE funcionarios (
	
	id SERIAL PRIMARY KEY,
	matricula VARCHAR(10),
	nome VARCHAR(255),
	sobrenome VARCHAR(255)
	
);

DROP TABLE funcionarios


-- Inserindo dados na tabela funcionários
INSERT INTO funcionarios (matricula, nome, sobrenome) VALUES ('M001', 'Diogo', 'Mascarenhas');
INSERT INTO funcionarios (matricula, nome, sobrenome) VALUES ('M002', 'Vinícius', 'Dias');
INSERT INTO funcionarios (matricula, nome, sobrenome) VALUES ('M003', 'Nico', 'Steppat');
INSERT INTO funcionarios (matricula, nome, sobrenome) VALUES ('M004', 'João', 'Roberto');
INSERT INTO funcionarios (matricula, nome, sobrenome) VALUES ('M005', 'Diogo', 'Mascarenhas');
INSERT INTO funcionarios (matricula, nome, sobrenome) VALUES ('M006', 'Alberto', 'Martins');
INSERT INTO funcionarios (matricula, nome, sobrenome) VALUES ('M007', 'João', 'Fernandez');


-- Ordenando pelo campo "nome" na ordem crescente
SELECT *
	FROM funcionarios
	ORDER BY nome; -- Comando para ordenar. Quando não é informada a ordem, por padrão é Crescente.


-- Ordenando pelo campo "nome" na ordem Decrescente
SELECT *
	FROM funcionarios
	ORDER BY nome DESC;
	
-- Ordenando pelo número que representa a posição da coluna:
-- Ordenando pelo campo "sobrenome" na ordem Decrescente
SELECT *
	FROM funcionarios
	ORDER BY 4 DESC; -- O Comando trás 4 colunas e o campo "sobrenome" está na 4ª coluna


-- Ordenando pelo campo "nome" na ordem crescente e depois por "sobrenome" na ordem decrescente
SELECT *
	FROM funcionarios
	ORDER BY nome, sobrenome DESC
	
-- Ordenando pelo número que representa a posição da coluna:
-- Ordenando pelo campo "nome" na ordem crescente e depois por "sobrenome" na ordem decrescente
SELECT *
	FROM funcionarios
	ORDER BY 3, 4 DESC -- O Comando trás 4 colunas e o campo "nome" está na 3ª coluna e o campo "sobrenome" está na 4ª coluna


-- Ordenando pelo campo "nome" na ordem decrescente e depois por "matricula" na ordem crescente
SELECT *
	FROM funcionarios
	ORDER BY nome DESC, matricula ASC -- Pode colocar ou não "ASC" para ordenar de forma crescente
	

-- Tabelas Alunos e Cursos, ordenando por "cursos" na ordem decrescente e "alunos" na ordem crescente
SELECT 
	aluno.nome AS "Nome do Aluno",
	curso.nome AS Curso_nome
	FROM aluno
	JOIN aluno_curso ON aluno_curso.aluno_id = aluno.id
	JOIN curso ON curso.id = aluno_curso.curso_id
	ORDER BY curso.nome DESC, aluno.nome -- Foi necessário informar o nome da tabela, pois os campo "nome" é duplicado, ele é encontrado tanto na tabela "curso" como na tabela "aluno"