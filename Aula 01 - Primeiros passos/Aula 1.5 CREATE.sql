-- Documentação Postgres
	-- https://www.postgresql.org/docs/12/datatype.html

-- Numeric Types: https://www.postgresql.org/docs/12/datatype-numeric.html
interger -- Interio
real -- aceita até 6 campos decimaiis
serial -- igual ao inteiro, mas insere automaticamente o contador 
numeric - NUMERIC(10,2) -- representa: 12345678,90 -- 10 caracteres e 2 casas decimais


-- Caracteres: https://www.postgresql.org/docs/15/datatype-character.html
varchar(n)
char(n)
text


-- Boolean type
boolean

-- Date/Time
date -- formatando data '1984-08-27'
time -- formatando horário '17:30:00'
timestamp -- Formatando '2023-05-15 12:32:45'

CREATE TABLE aluno (
	id SERIAL,
	nome VARCHAR(255),
	cpf CHAR(11),
	observacao TEXT,
	idade INTEGER,
	dinheiro NUMERIC(10,2),
	altura REAL,
	ativo BOOLEAN,
	data_nascimento DATE,
	hora_aula TIME,
	matriculado_em TIMESTAMP	
)

SELECT * FROM ALUNO;