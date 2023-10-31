CREATE TABLE tbl_teste_incremento (
Codigo smallint PRIMARY KEY AUTO_INCREMENT,
Nome VARCHAR(20) NOT NULL
) AUTO_INCREMENT = 15;


INSERT INTO tbl_teste_incremento (Nome) VALUES ('bibi');
INSERT INTO tbl_teste_incremento (Nome) VALUES ('melox');
INSERT INTO tbl_teste_incremento (Nome) VALUES ('fabi');
INSERT INTO tbl_teste_incremento (Nome) VALUES ('murilo');

 ALTER TABLE tbl_teste_incremento
 AUTO_INCREMENT = 90;
 
 
SELECT * FROM tbl_teste_incremento;

SHOW TABLES;

SELECT MAX(Codigo)
FROM tbl_teste_incremento;