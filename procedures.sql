use dbAula;

DELIMITER $$
CREATE PROCEDURE selecionar_alunos (IN quantidade int)
BEGIN
SELECT * FROM tbAlunos LIMIT quantidade;
END $$
DELIMITER ;

CALL selecionar_alunos(2);

DELIMITER $$
CREATE PROCEDURE Verificar_Quantidade_Alunos(OUT quantidade INT)
BEGIN
    SELECT COUNT(*) INTO quantidade FROM tbAlunos;  
END $$
DELIMITER ;

CALL Verificar_Quantidade_Alunos(@total);
SELECT @total;