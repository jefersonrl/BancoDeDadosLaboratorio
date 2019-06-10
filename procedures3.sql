use dbescola;

DELIMITER $$
CREATE PROCEDURE selecionar_aluno_especifico (IN snome varchar(255))
BEGIN
SELECT * FROM alunos WHERE nome = snome;
END $$
DELIMITER ;

CALL selecionar_aluno_especifico("Jeferson Roberto de Lima");

DELIMITER $$
CREATE PROCEDURE inserir_instrutores (IN snome varchar(255), semail varchar(255), svalor_hora double, scertificados varchar(255))
BEGIN
INSERT INTO instrutores(nome, email, valor_hora, certificados) VALUES(snome, semail, svalor_hora, scertificados);
END $$
DELIMITER ;

CALL inserir_instrutores("Pedro", "pedro@gmail.com", 20, "pós-graduado");