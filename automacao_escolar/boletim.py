from config import SessionLocal
from models import Aluno, Nota, Disciplina
from sqlalchemy.orm import joinedload

def gerar_boletim(aluno_id):
    session = SessionLocal()

    aluno = session.query(Aluno).filter_by(id=aluno_id).first()
    if not aluno:
        print("❌ Aluno não encontrado.")
        return

    print(f"\n📘 Boletim de: {aluno.nome}\n")

    notas = session.query(Nota).options(joinedload(Nota.disciplina)).filter_by(aluno_id=aluno_id).all()

    if not notas:
        print("Nenhuma nota registrada.")
        return

    total = 0
    for nota in notas:
        print(f"📚 {nota.disciplina.nome}: {nota.nota}")
        total += float(nota.nota)

    media = round(total / len(notas), 2)
    print(f"\n📊 Média Geral: {media}")

    session.close()