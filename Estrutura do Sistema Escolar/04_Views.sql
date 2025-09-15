-- VIEW: Boletim por aluno com média geral

CREATE VIEW boletim_aluno AS
SELECT 
    a.id AS aluno_id,
    a.nome AS aluno_nome,
    d.nome AS disciplina,
    n.nota,
    ROUND(AVG(n.nota) OVER (PARTITION BY a.id), 2) AS media_geral
FROM nota n
JOIN aluno a ON n.aluno_id = a.id
JOIN disciplina d ON n.disciplina_id = d.id;

-- VIEW: Presença detalhada por aluno

CREATE VIEW presenca_detalhada AS
SELECT 
    a.id AS aluno_id,
    a.nome AS aluno_nome,
    d.nome AS disciplina,
    p.data_aula,
    CASE WHEN p.presente THEN 'Presente' ELSE 'Faltou' END AS status
FROM presenca p
JOIN aluno a ON p.aluno_id = a.id
JOIN disciplina d ON p.disciplina_id = d.id;

-- VIEW: Matrículas com nome do aluno e disciplina

CREATE VIEW matriculas_completas AS
SELECT 
    m.id AS matricula_id,
    a.nome AS aluno_nome,
    d.nome AS disciplina,
    m.data_matricula
FROM matricula m
JOIN aluno a ON m.aluno_id = a.id
JOIN disciplina d ON m.disciplina_id = d.id;