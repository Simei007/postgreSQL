# 🏫 Automação Escolar — Projeto com Flask e PostgreSQL

Este projeto é um sistema web para gerenciar alunos, disciplinas e notas escolares. Ele permite visualizar boletins, cadastrar avaliações, gerar gráficos de desempenho e exportar relatórios.

## 📁 Estrutura do Projeto

- `automacao_escolar/`  
  Pasta principal do sistema web com Flask:
  - `app.py` — Arquivo principal da aplicação
  - `models.py` — Define as tabelas Aluno, Disciplina e Nota
  - `config.py` — Conexão com o banco PostgreSQL
  - `boletim.py`, `automacao.py`, `exportador.py`, `main.py` — Lógicas auxiliares
  - `templates/` — Páginas HTML:
    - `index.html` — Lista de alunos
    - `boletim.html` — Boletim individual
    - `inserir_nota.html` — Formulário de nota
    - `dashboard.html` — Gráfico de médias por disciplina
    - `relatorios.html` — Página de relatórios
  - `static/style.css` — Estilo da interface

- `Criar Tabelas/`  
  Scripts para criação das tabelas no banco de dados.

- `Estrutura do Sistema Escolar/`  
  Organização lógica e arquivos auxiliares.

- Arquivos adicionais:
  - `criar_estrutura.py` — Gera estrutura inicial do banco
  - `criar_web_app.py` — Cria base do app Flask
  - `remoção de todas as tabelas.sql` — Script para limpar o banco
  - `treinando postgresql.sql` — Testes com SQL
  - `teste.py` — Arquivo de testes

## 🚀 Como rodar

1. Configure o banco em `config.py`
2. Execute `app.py` para iniciar o servidor
3. Acesse `http://localhost:5000` no navegador


---

## 🚀 Funcionalidades

- 📋 Listagem de alunos
- 🧾 Boletim individual por aluno
- 📝 Cadastro de notas com data de avaliação
- 📊 Dashboard com gráfico de médias por disciplina
- 📤 Exportação de relatórios (em desenvolvimento)

---

## 🛠️ Tecnologias Utilizadas

| Tecnologia     | Função                          |
|----------------|----------------------------------|
| Python 3.13    | Lógica da aplicação              |
| Flask          | Framework web                    |
| SQLAlchemy     | ORM para banco de dados          |
| PostgreSQL     | Banco relacional                 |
| Chart.js       | Gráficos interativos no dashboard |
| HTML/CSS       | Interface web com Jinja2         |

---

## 📈 Exemplo de Gráfico

O dashboard usa Chart.js para exibir a média das notas por disciplina:

```javascript
new Chart(ctx, {
  type: 'bar',
  data: {
    labels: ['Matemática', 'Português'],
    datasets: [{
      label: 'Média das Notas',
      data: [7.5, 8.2]
    }]
  }
});

📦 Instalação e Execução
# Instale as dependências
pip install flask sqlalchemy psycopg2

# Configure o banco em config.py
# Exemplo:
SQLALCHEMY_DATABASE_URL = "postgresql://usuario:senha@localhost/nome_do_banco"

# Inicie o servidor
python web_app/app.py


Acesse no navegador:
http://localhost:5000

👤 Autor
SIMEI
📍 Santos, SP — Brasil




