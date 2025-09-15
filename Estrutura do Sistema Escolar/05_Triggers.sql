-- TRIGGER: Validar se a nota está entre 0 e 10

CREATE FUNCTION validar_nota()
RETURNS TRIGGER AS $$
BEGIN
    IF NEW.nota < 0 OR NEW.nota > 10 THEN
        RAISE EXCEPTION 'Nota inválida: deve estar entre 0 e 10';
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trigger_validar_nota
BEFORE INSERT OR UPDATE ON nota
FOR EACH ROW
EXECUTE FUNCTION validar_nota();