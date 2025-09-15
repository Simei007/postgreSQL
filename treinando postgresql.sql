1. Criação de Tabelas
Aprender a modelar dados com CREATE TABLE, tipos de dados, chaves primárias e estrangeiras.
2. Consultas Básicas
Usar SELECT, WHERE, ORDER BY, LIMIT — o arroz com feijão das consultas.
3. Consultas Avançadas
Joins (INNER, LEFT, RIGHT), subconsultas, GROUP BY, HAVING, funções agregadas.
4. Manipulação de Dados
INSERT, UPDATE, DELETE, e como fazer tudo isso com segurança.
5. Funções e Procedimentos
Criar funções com CREATE FUNCTION, usar PL/pgSQL para lógica mais complexa.
6. Desempenho e Indexação
Como usar EXPLAIN, criar índices e otimizar consultas.

🧱 Funções de Definição de Estrutura

Essas são usadas para criar e modificar tabelas e esquemas.
- CREATE TABLE: Cria uma nova tabela.
- DROP TABLE: Exclui uma tabela existente.
- ALTER TABLE: Modifica a estrutura de uma tabela (adicionar coluna, mudar tipo, etc.).
- CREATE INDEX: Cria um índice para acelerar buscas.
- DROP INDEX: Remove um índice.

📥 Funções de Manipulação de Dados

Essas funções permitem inserir, atualizar e excluir dados.
- INSERT INTO: Adiciona novos registros.
- UPDATE: Modifica dados existentes.
- DELETE: Remove registros.
- TRUNCATE: Apaga todos os dados de uma tabela rapidamente.

🔍 Funções de Consulta

Usadas para buscar e filtrar informações.
- SELECT: Recupera dados.
- WHERE: Filtra registros com base em condições.
- ORDER BY: Ordena os resultados.
- GROUP BY: Agrupa registros com base em uma coluna.
- HAVING: Filtra grupos após o GROUP BY.
- JOIN: Junta dados de várias tabelas (INNER, LEFT, RIGHT, FULL).

📊 Funções Agregadas
Essas operam sobre conjuntos de dados e retornam um único valor.
|Funçao  |Descrição  | 
| COUNT() |Conta o número de registros  | 
| SUM() |Soma os valores de uma coluna numérica  | 
| AVG() |Calcula a média  | 
| MAX() |Retorna o maior valor  | 
| MIN() |Retorna o menor valor  | 



🧠 Funções de Texto
Manipulam strings e textos.
|Função  |Exemplo  |Resultado
| UPPER('abc') |Letras MAIÚSCULAS  | 'ABC' | 
| LOWER('ABC') |Letras minúsculas  | 'abc' | 
| LENGTH('texto') |Tamanho da string  | 5 | 
| CONCAT('a','b') |Junta strings  | 'ab' | 
| SUBSTRING('abc',1,2) |Pega parte da string  | 'ab' | 



📅 Funções de Data e Hora
Essenciais para trabalhar com datas.
|Função      |Descrição  
| NOW() |Retorna data e hora atual  | 
| CURRENT_DATE |Retorna apenas a data atual  | 
| AGE(data1, data2) |Diferença entre duas datas  | 
| EXTRACT(YEAR FROM data) |Extrai o ano de uma data  | 



🧪 Funções Lógicas e Condicionais
Controlam o fluxo das consultas.
- CASE: Cria condições tipo if/else.
- COALESCE: Retorna o primeiro valor não nulo.
- NULLIF: Retorna NULL se os dois valores forem iguais.
