CREATE TABLE DEPARTAMENTO (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL
);

CREATE TABLE FUNCIONARIO (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    salario DECIMAL(10,2) NOT NULL,  -- 👈 vírgula aqui!
    data_admissao DATE NOT NULL,
    departamento_id INT,
    FOREIGN KEY (departamento_id) REFERENCES DEPARTAMENTO(id)
);