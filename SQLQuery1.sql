DECLARE EXIT HANDLER FOR SQLEXCEPTION  -- cria um "handler" para tratar a transaction
    BEGIN
        ROLLBACK;  -- se acontecer algum erro, o handler vai fazer rollback
    END;

    START TRANSACTION;  -- inicia a transaction
        INSERT INTO PESSOA2(IDPESSOA,NOME) VALUES(NULL,'PEDRO2');
        INSERT INTO DEPENDENTES(IDDEP,NOME,IDPESSOA) VALUES(NULL,'CAROL',543);
        INSERT INTO DEPENDENTES(IDDEP,NOME,IDPESSOA) VALUES(NULL,'CAROL',1);
    COMMIT;  -- se chegou at� aqui, o handler n�o pegou erro, ent�o faz commit