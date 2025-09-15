-- 1. Listar todas as disciplinas com curso e professor
SELECT 
    d.nome AS disciplina,
    c.nome AS curso,
    p.nome AS professor,
    p.especialidade
FROM disciplina d
JOIN curso c ON d.curso_id = c.id
JOIN professor p ON d.professor_id = p.id;

-- 2. Ver todas as matrículas com nome do aluno e disciplina
SELECT 
    a.nome AS aluno,
    d.nome AS disciplina,
    m.data_matricula
FROM matricula m
JOIN aluno a ON m.aluno_id = a.id
JOIN disciplina d ON m.disciplina_id = d.id;

-- 3. Ver notas dos alunos com nome da disciplina
SELECT 
    a.nome AS aluno,
    d.nome AS disciplina,
    n.nota,
    n.data_avaliacao
FROM nota n
JOIN aluno a ON n.aluno_id = a.id
JOIN disciplina d ON n.disciplina_id = d.id;

-- 4. Ver presença por aluno e disciplina
SELECT 
    a.nome AS aluno,
    d.nome AS disciplina,
    p.data_aula,
    CASE WHEN p.presente THEN 'Presente' ELSE 'Faltou' END AS status
FROM presenca p
JOIN aluno a ON p.aluno_id = a.id
JOIN disciplina d ON p.disciplina_id = d.id;

-- 5. Ver média de notas por disciplina
SELECT 
    d.nome AS disciplina,
    ROUND(AVG(n.nota), 2) AS media_nota
FROM nota n
JOIN disciplina d ON n.disciplina_id = d.id
GROUP BY d.nome;

-- 6. Ver idade dos alunos
SELECT 
    nome,
    data_nascimento,
    EXTRACT(YEAR FROM AGE(CURRENT_DATE, data_nascimento)) AS idade
FROM aluno;

-- 7. Usar a VIEW: boletim_aluno
SELECT * FROM boletim_aluno;

-- 8. Usar a VIEW: presenca_detalhada
SELECT * FROM presenca_detalhada;

-- 9. Usar a FUNCTION: média de notas do aluno 1
SELECT media_por_aluno(1);

-- 10. Usar a FUNCTION: faltas do aluno 2
SELECT faltas_por_aluno(2);

-- 11. Usar a FUNCTION: disciplinas do aluno 3
SELECT * FROM disciplinas_por_aluno(3);