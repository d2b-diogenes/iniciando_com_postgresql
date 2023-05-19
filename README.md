# iniciando_com_postgresql
introducao primeiros passos postgresql

Aluno: Diógenes Bahia Bezerra
Curso: PostgreSQL
Carga horária: 8h
Instituição: Alura
Link do curso: https://cursos.alura.com.br/course/introducao-postgresql-primeiros-passos
Certificado do curso: https://cursos.alura.com.br/certificate/b46b1c55-b7e3-4f67-8028-685a710751de

Descrição da Aula:
    Crie a estrutura de uma tabela com CREATE TABLE
    Realize consultas com SELECT
    Adicione dados no banco com o INSERT
    Atualize e apague dados com UPDATE e DELETE
    Filtre os seus registros com WHERE
    Ordene os seus dados com o ORDER BY
    Junte registros de tabelas com JOIN

Aula 1:
    Como instalar o PostgreSQL e o pgAdmin
    Como conectar ao PostgreSQL, utilizando o terminal e o pgAdmin
    A criar o banco de dados pelo terminal e pelo pgAdmin
    Como apagar o banco de dados pelo terminal e pelo pgAdmin
    A criar tabela com os tipos de dados mais comuns:
        SERIAL, VARCHAR, CHAR, TEXT, INTEGER, NUMERIC, BOOLEAN, DATE, TIME e TIMESTAMP.

Aula 2:
    Como incluir um registro na tabela, entendendo a sintaxe de inclusão de cada tipo de campo
    A efetuar uma consulta simples, para listar os dados da tabela
    Como alterar um registro na tabela
    Como excluir um registro na tabela


Aula 3:
    A selecionar campos específicos da tabela
    Como definir um alias para os nomes dos campos
    A filtrar registros, utilizando o WHERE para campos do tipo de texto
        Operadores =, !=,<>, LIKE e NOT LIKE
        A diferença entre = e LIKE
        O funcionamento do caractere % no filtro com LIKE e NOT LIKE
        O funcionamento do caractere _ no filtro com LIKE e NOT LIKE
    Como filtrar utilizando IS NULL e IS NOT NULL
    Como filtrar registros para campos do tipos relacionados a números, datas e horas
        =, !=, <>, <, <=, >, >=
        BETWEEN
    Como filtrar registros para campos do tipo booleano
        =, !=, <>
    Como funciona os operadores lógicos AND e OR

Aula 4:
    Como funciona a chave primária
    Como funciona os campos que aceitam NULL e que não aceitam NULL (NOT NULL)
    Como funciona um campo UNIQUE
    Como criar uma chave primária
    Como funciona a chave estrangeira
    Como criar uma chave estrangeira
    Como criar consultas com relacionamentos
        INNER JOIN, LEFT JOIN, RIGHT JOIN, FULL JOIN, CROSS JOIN

Aula 5:
    Como funciona as restrições de chave estrangeira
    A diferença entre RESTRICT e CASCADE
    Como aplicar tipos diferentes de restrições de chave estrangeira no DELETE
        RESTRICT
        CASCADE
    A aplicar tipos diferentes de restrições de chave estrangeira no UPDATE
        RESTRICT
        CASCADE

Aula 6:
    Como ordenar uma consulta
        Ordenar utilizando os nomes de campo
        Ordenar com mais de um campo
        Ordenar por posição do campo
        Ordenar por ordem Crescente e Decrescente
        Ordenar com campos de tabelas diferentes
    Como limitar quantidade e paginar registros de consulta
        LIMIT e OFFSET
    Como funcionam as funções de agregação
        COUNT, SUM, MAX, MIN eAVG
    Como funciona a função de arredondamento ROUND
    Como funciona o agrupamento de dados
        A diferença entre DISTINCT e GROUP BY
        Onde utilizar o DISTINCT
        Onde utilizar o GROUP BY
        Como utilizar o GROUP BY com os nomes de campo
        Como utilizar o GROUP BY por posição
    Como funcionam os filtros por funções de agrupamento, utilizando HAVING
        A diferença entre WHERE e HAVING
        Como utilizar o HAVING
