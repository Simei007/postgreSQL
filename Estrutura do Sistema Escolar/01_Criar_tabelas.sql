-- Criação das tabelas principais do sistema escolar

CREATE TABLE curso (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL
);

CREATE TABLE professor (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    especialidade VARCHAR(100)
);

CREATE TABLE disciplina (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    curso_id INT,
    professor_id INT
);

CREATE TABLE aluno (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    data_nascimento DATE NOT NULL
);

CREATE TABLE matricula (
    id SERIAL PRIMARY KEY,
    aluno_id INT,
    disciplina_id INT,
    data_matricula DATE NOT NULL
);

CREATE TABLE nota (
    id SERIAL PRIMARY KEY,
    aluno_id INT,
    disciplina_id INT,
    nota NUMERIC(4,2) NOT NULL,
    data_avaliacao DATE NOT NULL
);

CREATE TABLE presenca (
    id SERIAL PRIMARY KEY,
    aluno_id INT,
    disciplina_id INT,
    data_aula DATE NOT NULL,
    presente BOOLEAN NOT NULL
);