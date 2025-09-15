-- Função: Calcular média de notas de um aluno

CREATE FUNCTION media_por_aluno(id_aluno INT)
RETURNS NUMERIC AS $$
DECLARE
    resultado NUMERIC;
BEGIN
    SELECT AVG(nota) INTO resultado
    FROM nota
    WHERE aluno_id = id_aluno;
    RETURN ROUND(resultado, 2);
END;
$$ LANGUAGE plpgsql;

-- Função: Contar número de faltas de um aluno

CREATE FUNCTION faltas_por_aluno(id_aluno INT)
RETURNS INT AS $$
DECLARE
    total_faltas INT;
BEGIN
    SELECT COUNT(*) INTO total_faltas
    FROM presenca
    WHERE aluno_id = id_aluno AND presente = FALSE;
    RETURN total_faltas;
END;
$$ LANGUAGE plpgsql;

-- Função: Retornar disciplinas de um aluno

CREATE FUNCTION disciplinas_por_aluno(id_aluno INT)
RETURNS TABLE(disciplina_nome VARCHAR) AS $$
BEGIN
    RETURN QUERY
    SELECT d.nome
    FROM matricula m
    JOIN disciplina d ON m.disciplina_id = d.id
    WHERE m.aluno_id = id_aluno;
END;
$$ LANGUAGE plpgsql;