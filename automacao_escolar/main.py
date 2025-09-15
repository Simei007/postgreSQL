# Arquivo: main.py
from boletim import gerar_boletim
from relatorios import grafico_media_por_disciplina
from exportador import exportar_boletim_excel

# Testar boletim
gerar_boletim(1)

# Testar gráfico
grafico_media_por_disciplina()

# Testar exportação
exportar_boletim_excel(1)