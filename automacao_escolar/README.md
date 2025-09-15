# 🏫 Automação Escolar — Sistema Web com Flask e PostgreSQL

Este projeto é um sistema web para gerenciamento de alunos, disciplinas e notas escolares. Ele permite visualizar boletins, cadastrar avaliações, gerar gráficos de desempenho e exportar relatórios. Desenvolvido com **Flask**, **SQLAlchemy** e **PostgreSQL**, é ideal para escolas que desejam digitalizar o acompanhamento acadêmico.

---

## 📁 Estrutura do Projeto
---

## 🚀 Funcionalidades

- 📋 **Listagem de Alunos** (`/`)
- 🧾 **Boletim Individual** (`/boletim/<aluno_id>`)
- 📝 **Cadastro de Nota** (`/inserir-nota`)
- 📊 **Dashboard com Gráficos** (`/dashboard`)
- 📤 **Exportação de Relatórios** (via `exportador.py`)

---

## 🔧 Tecnologias Utilizadas

- **Python 3.13**
- **Flask**
- **SQLAlchemy**
- **PostgreSQL**
- **Chart.js** (para gráficos interativos)
- **HTML/CSS** (com estrutura Jinja2)

---

## 🛠️ Instalação

1. Clone o repositório:
   ```bash
   git clone https://github.com/seu-usuario/automacao_escolar.git

- Instale as dependências:
pip install flask sqlalchemy psycopg2

- Configure o banco de dados em config.py:
SQLALCHEMY_DATABASE_URL = "postgresql://usuario:senha@localhost/nome_do_banco"

- Inicie o servidor:
python web_app/app.py


- Acesse no navegador:
http://localhost:5000



📄 Principais Arquivos
app.py
Define as rotas principais da aplicação e renderiza os templates.

models.py
Contém os modelos ORM:
- Aluno: nome, matrícula
- Disciplina: nome
- Nota: nota, data da avaliação, aluno_id, disciplina_id

inserir_nota.html
Formulário para cadastrar uma nova nota com campos:
- Aluno
- Disciplina
- Nota
- Data da avaliação

dashboard.html
Exibe um gráfico de barras com médias por disciplina usando Chart.js.

📌 Próximos Passos
- [ ] Cadastro de alunos e disciplinas via interface
- [ ] Exportação de boletins em PDF
- [ ] Filtros por período ou turma
- [ ] Autenticação de usuários (admin/professor)

📬 Contato
Desenvolvido por SIMEI
📍 Santos, SP — Brasil







