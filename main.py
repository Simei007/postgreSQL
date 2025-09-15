from config import SessionLocal

def testar_conexao():
    try:
        session = SessionLocal()
        session.execute("SELECT 1")
        print("✅ Conexão com o banco de dados funcionando!")
        session.close()
    except Exception as e:
        print("❌ Erro na conexão:", e)

if __name__ == "__main__":
    testar_conexao()