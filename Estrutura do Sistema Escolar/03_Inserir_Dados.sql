-- Inserção de dados fictícios para testes

-- Cursos
INSERT INTO curso (nome) VALUES
('Matemática'),
('História'),
('Biologia');

-- Professores
INSERT INTO professor (nome, especialidade) VALUES
('Ana Souza', 'Álgebra'),
('João Lima', 'História Moderna'),
('Carlos Mendes', 'Genética');

-- Disciplinas
INSERT INTO disciplina (nome, curso_id, professor_id) VALUES
('Álgebra I', 1, 1),
('História Geral', 2, 2),
('Genética Básica', 3, 3);

-- Alunos
INSERT INTO aluno (nome, data_nascimento) VALUES
('Mariana Silva', '2005-06-12'),
('Pedro Oliveira', '2004-09-30'),
('Larissa Costa', '2006-01-25');

-- Matrículas
INSERT INTO matricula (aluno_id, disciplina_id, data_matricula) VALUES
(1, 1, '2025-02-01'),
(2, 2, '2025-02-03'),
(3, 3, '2025-02-05'),
(1, 3, '2025-02-10');

-- Notas
INSERT INTO nota (aluno_id, disciplina_id, nota, data_avaliacao) VALUES
(1, 1, 8.5, '2025-03-10'),
(2, 2, 7.0, '2025-03-12'),
(3, 3, 9.2, '2025-03-15'),
(1, 3, 6.8, '2025-03-18');

-- Presenças
INSERT INTO presenca (aluno_id, disciplina_id, data_aula, presente) VALUES
(1, 1, '2025-03-01', TRUE),
(2, 2, '2025-03-01', FALSE),
(3, 3, '2025-03-01', TRUE),
(1, 3, '2025-03-01', TRUE);