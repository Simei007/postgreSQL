# Arquivo: exportador.py
from config import SessionLocal
from models import Aluno, Nota, Disciplina
import pandas as pd

def exportar_boletim_excel(aluno_id):
    session = SessionLocal()

    aluno = session.query(Aluno).filter_by(id=aluno_id).first()
    notas = session.query(Nota).join(Disciplina).filter(Nota.aluno_id == aluno_id).all()

    dados = [{
        "Disciplina": nota.disciplina.nome,
        "Nota": float(nota.nota),
        "Data": nota.data_avaliacao.strftime("%d/%m/%Y")
    } for nota in notas]

    df = pd.DataFrame(dados)
    nome_arquivo = f"boletim_{aluno.nome.replace(' ', '_')}.xlsx"
    df.to_excel(nome_arquivo, index=False)

    print(f"✅ Boletim exportado: {nome_arquivo}")
    session.close()