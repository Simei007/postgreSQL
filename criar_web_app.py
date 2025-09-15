import os

# Diretório base da interface web
base_dir = "web_app"

# Subpastas
folders = ["templates", "static"]

# Arquivos e conteúdo inicial
arquivos = {
    "app.py": """# Arquivo principal do Flask
from flask import Flask, render_template, request
from config import SessionLocal
from models import Aluno, Nota, Disciplina
from sqlalchemy.orm import joinedload

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

if __name__ == '__main__':
    app.run(debug=True)
""",

    "templates/index.html": """<!DOCTYPE html>
<html>
<head>
    <title>Alunos</title>
</head>
<body>
    <h1>📋 Lista de Alunos</h1>
    <ul>
        {% for aluno in alunos %}
            <li><a href="/boletim/{{ aluno.id }}">{{ aluno.nome }}</a></li>
        {% endfor %}
    </ul>
</body>
</html>
""",

    "templates/boletim.html": """<!DOCTYPE html>
<html>
<head>
    <title>Boletim de {{ aluno.nome }}</title>
</head>
<body>
    <h1>📘 Boletim de {{ aluno.nome }}</h1>
    <ul>
        {% for nota in notas %}
            <li>{{ nota.disciplina.nome }}: {{ nota.nota }}</li>
        {% endfor %}
    </ul>
</body>
</html>
""",

    "templates/relatorios.html": """<!DOCTYPE html>
<html>
<head>
    <title>Relatórios</title>
</head>
<body>
    <h1>📊 Relatórios</h1>
    <p>Em breve: gráficos e análises!</p>
</body>
</html>
""",

    "static/style.css": """body {
    font-family: Arial, sans-serif;
    margin: 20px;
}
h1 {
    color: #2c3e50;
}
a {
    text-decoration: none;
    color: #2980b9;
}
a:hover {
    text-decoration: underline;
}
"""
}

# Criar estrutura
os.makedirs(base_dir, exist_ok=True)
for folder in folders:
    os.makedirs(os.path.join(base_dir, folder), exist_ok=True)

# Criar arquivos
for path, content in arquivos.items():
    full_path = os.path.join(base_dir, path)
    with open(full_path, "w", encoding="utf-8") as f:
        f.write(content)

print("✅ Camada 3 criada com sucesso em 'web_app/'")