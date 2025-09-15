import os

# Nome da pasta principal
base_dir = "automacao_escolar"

# Lista de arquivos a serem criados
arquivos = [
    "config.py",
    "models.py",
    "boletim.py",
    "relatorios.py",
    "exportador.py",
    "main.py"
]

# Criar pasta principal
os.makedirs(base_dir, exist_ok=True)

# Criar arquivos vazios dentro da pasta
for nome in arquivos:
    caminho = os.path.join(base_dir, nome)
    with open(caminho, "w", encoding="utf-8") as f:
        f.write(f"# Arquivo: {nome}\n")

print("✅ Estrutura criada com sucesso!")