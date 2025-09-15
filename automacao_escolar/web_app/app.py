import sys
import os
sys.path.append(os.path.abspath(os.path.join(os.path.dirname(__file__), '..')))

# Arquivo principal do Flask
from flask import Flask, render_template, request, redirect, url_for

from config import SessionLocal
from models import Aluno, Nota, Disciplina
from sqlalchemy.orm import joinedload
from datetime import datetime

app = Flask(__name__)

@app.route('/')
def index():
    session = SessionLocal()
    alunos = session.query(Aluno).all()
    session.close()
    return render_template('index.html', alunos=alunos)

@app.route('/boletim/<int:aluno_id>')
def boletim(aluno_id):
    session = SessionLocal()
    aluno = session.query(Aluno).filter_by(id=aluno_id).first()
    notas = session.query(Nota).options(joinedload(Nota.disciplina)).filter_by(aluno_id=aluno_id).all()
    session.close()
    return render_template('boletim.html', aluno=aluno, notas=notas)

@app.route('/dashboard')
def dashboard():
    session = SessionLocal()
    disciplinas = session.query(Disciplina).all()

    nomes = []
    medias = []

    for d in disciplinas:
        notas = session.query(Nota).filter_by(disciplina_id=d.id).all()
        media = sum(n.nota for n in notas) / len(notas) if notas else 0
        nomes.append(d.nome)
        medias.append(round(media, 2))

    session.close()
    return render_template('dashboard.html', nomes=nomes, medias=medias)

@app.route('/inserir-nota', methods=['GET', 'POST'])
def inserir_nota():
    aluno_id = request.args.get('aluno_id', type=int)

    if request.method == 'POST':
        aluno_id = int(request.form['aluno_id'])
        disciplina_id = int(request.form['disciplina_id'])
        nota_valor = float(request.form['nota'])
        data_avaliacao = datetime.strptime(request.form['data_avaliacao'], '%Y-%m-%d').date()

        nova_nota = Nota(
            aluno_id=aluno_id,
            disciplina_id=disciplina_id,
            nota=nota_valor,
            data_avaliacao=data_avaliacao
        )

        session = SessionLocal()
        session.add(nova_nota)
        session.commit()
        session.close()
        return redirect(url_for('index'))

    return render_template('inserir_nota.html', aluno_id=aluno_id)

if __name__ == '__main__':
    app.run(debug=True)