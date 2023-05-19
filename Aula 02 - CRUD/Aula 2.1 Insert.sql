-- Aula 2.1 Incluindo um registro na Tabela

INSERT INTO aluno (
	nome,
	cpf,
	observacao,
	idade,
	dinheiro,
	altura,
	ativo,
	data_nascimento,
	hora_aula,
	matriculado_em
)
VALUES (
	'Diogo',
	'12345678912',
	'PostgreSQL is a powerful, open source object-relational database system with over 35 years of active development that has earned it a strong reputation for reliability, feature robustness, and performance',
	35,
	100.50,
	1.81,
	TRUE,
	'1984-08-27',
	'17:30:00',
	'2023-05-15 12:32:45'
)

-- Atenção: Aspas Simples para INSERIR dados

SELECT * FROM aluno;