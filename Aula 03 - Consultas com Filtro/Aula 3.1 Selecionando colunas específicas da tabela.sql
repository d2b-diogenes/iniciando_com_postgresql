-- Aula 3.1 Selecionando colunas específicas da tabela

SELECT 
	nome AS "Nome do Aluno",
	idade,
	matriculado_em AS quando_se_matriculou
FROM aluno;

-- Atenção: Aspas Duplas para DAR nome por meio do ALIAS (AS) à nomes que tem espaço dentro dele

