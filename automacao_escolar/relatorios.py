# Arquivo: relatorios.py
from config import SessionLocal
from models import Nota, Disciplina, Presenca, Aluno
from sqlalchemy import func
import matplotlib.pyplot as plt

def grafico_media_por_disciplina():
    session = SessionLocal()

    resultados = session.query(
        Disciplina.nome,
        func.avg(Nota.nota).label("media")
    ).join(Nota, Nota.disciplina_id == Disciplina.id).group_by(Disciplina.nome).all()

    disciplinas = [r[0] for r in resultados]
    medias = [float(r[1]) for r in resultados]

    plt.figure(figsize=(8, 5))
    plt.bar(disciplinas, medias, color='skyblue')
    plt.title("Média de Notas por Disciplina")
    plt.ylabel("Nota Média")
    plt.xticks(rotation=45)
    plt.tight_layout()
    plt.show()

    session.close()