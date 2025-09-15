-- Departamentos
INSERT INTO DEPARTAMENTO (nome)VALUES
('Financeiro'),
('RH'),
('TI');

-- Funcionários
INSERT INTO FUNCIONARIO (nome, salario, data_admissao, departamento_id) VALUES
('Ana', 5000.00, '2022-03-15', 1),
('Beatriz', 4500.00, '2023-05-22', 2),
('Bruno', 5200.00, '2021-07-01', 2),
('Carlos', 6100.00, '2020-11-20', 3),
('Diana', 4800.00, '2023-01-10', 1);