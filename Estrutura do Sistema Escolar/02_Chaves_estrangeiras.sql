-- Adição das chaves estrangeiras para conectar as tabelas

-- DISCIPLINA depende de CURSO e PROFESSOR
ALTER TABLE disciplina
ADD CONSTRAINT fk_disciplina_curso
FOREIGN KEY (curso_id) REFERENCES curso(id);

ALTER TABLE disciplina
ADD CONSTRAINT fk_disciplina_professor
FOREIGN KEY (professor_id) REFERENCES professor(id);

-- MATRICULA depende de ALUNO e DISCIPLINA
ALTER TABLE matricula
ADD CONSTRAINT fk_matricula_aluno
FOREIGN KEY (aluno_id) REFERENCES aluno(id);

ALTER TABLE matricula
ADD CONSTRAINT fk_matricula_disciplina
FOREIGN KEY (disciplina_id) REFERENCES disciplina(id);

-- NOTA depende de ALUNO e DISCIPLINA
ALTER TABLE nota
ADD CONSTRAINT fk_nota_aluno
FOREIGN KEY (aluno_id) REFERENCES aluno(id);

ALTER TABLE nota
ADD CONSTRAINT fk_nota_disciplina
FOREIGN KEY (disciplina_id) REFERENCES disciplina(id);

-- PRESENCA depende de ALUNO e DISCIPLINA
ALTER TABLE presenca
ADD CONSTRAINT fk_presenca_aluno
FOREIGN KEY (aluno_id) REFERENCES aluno(id);

ALTER TABLE presenca
ADD CONSTRAINT fk_presenca_disciplina
FOREIGN KEY (disciplina_id) REFERENCES disciplina(id);