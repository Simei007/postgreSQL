from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy import Column, Integer, String, Date, Numeric, Boolean, ForeignKey, Float
from sqlalchemy.orm import relationship

Base = declarative_base()

class Curso(Base):
    __tablename__ = 'curso'
    id = Column(Integer, primary_key=True)
    nome = Column(String)

    disciplinas = relationship("Disciplina", backref="curso")

class Professor(Base):
    __tablename__ = 'professor'
    id = Column(Integer, primary_key=True)
    nome = Column(String)
    especialidade = Column(String)

    disciplinas = relationship("Disciplina", backref="professor")

class Disciplina(Base):
    __tablename__ = 'disciplina'
    id = Column(Integer, primary_key=True)
    nome = Column(String)
    curso_id = Column(Integer, ForeignKey('curso.id'))
    professor_id = Column(Integer, ForeignKey('professor.id'))

    notas = relationship("Nota", backref="disciplina")
    presencas = relationship("Presenca", backref="disciplina")
    matriculas = relationship("Matricula", backref="disciplina")

class Aluno(Base):
    __tablename__ = 'aluno'
    id = Column(Integer, primary_key=True)
    nome = Column(String)
    data_nascimento = Column(Date)

    notas = relationship("Nota", backref="aluno")
    presencas = relationship("Presenca", backref="aluno")
    matriculas = relationship("Matricula", backref="aluno")

class Matricula(Base):
    __tablename__ = 'matricula'
    id = Column(Integer, primary_key=True)
    aluno_id = Column(Integer, ForeignKey('aluno.id'))
    disciplina_id = Column(Integer, ForeignKey('disciplina.id'))
    data_matricula = Column(Date)

from datetime import date

class Nota(Base):
    __tablename__ = 'nota'
    id = Column(Integer, primary_key=True)
    aluno_id = Column(Integer, ForeignKey('aluno.id'))
    disciplina_id = Column(Integer, ForeignKey('disciplina.id'))
    nota = Column(Float)
    data_avaliacao = Column(Date, nullable=False)  # ← campo obrigatório

class Presenca(Base):
    __tablename__ = 'presenca'
    id = Column(Integer, primary_key=True)
    aluno_id = Column(Integer, ForeignKey('aluno.id'))
    disciplina_id = Column(Integer, ForeignKey('disciplina.id'))
    data_aula = Column(Date)
    presente = Column(Boolean)