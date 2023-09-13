# CREATE

# 1. CREATE TABLE nome_tabela (
# '' coluna tipo_dados constrains,
# '' pode adicionar + uma usando ,
# '' );
# 1.1. Deve dar o comando de usar algum BD;
# 1.2. Pode ser usado antes do nome, um [IF EXISTS] para não tentar criar um nome que já exite.

# Exemplo de criação de tabelas.
# CREATE TABLE IF NOT EXISTS tbl_Livro (
# ID_Livro smallint AUTO_INCREMENT PRIMARY KEY,
# Nome_Livro VARCHAR(50) NOT NULL,
# ISBN VARCHAR(30) NOT NULL,
# ID_Autor smallint NOT NULL,
# Data_Pub DATE NOT NULL,
# Preco_Livro decimal NOT NULL
# );


# READ

# 1. SHOW TABLES;
# 1.1. Mostra as tabelas existentes.

# 2. SELECT * FROM nome_tbl;
# 2.1. Mostra os INSERT da tabela.

# 3. SELECT MAX(nome_coluna)
# '' FROM nome_tbl;
# 3.1. Mostra o mais atual incremento.


# INSERT

# 1. INSERT INTO nome_tbl (Nome) VALUES ('Nome escohido');
# 1.1. Insere informações para a tabela;
# 1.2. exemplo de insert:
# '''' INSERT INTO tbl_teste_incremento (Nome) VALUES ('Ana');
# '''' INSERT INTO tbl_teste_incremento (Nome) VALUES ('Maria');
# '''' INSERT INTO tbl_teste_incremento (Nome) VALUES ('Julia');
# '''' INSERT INTO tbl_teste_incremento (Nome) VALUES ('Joana');


# EDIT

# 1. ALTER TABLE nome_tbl
# '' AUTO_INCREMENT = valor escolhido;
# 1.1. Altera o valor de incremento dos próximos resgistros da tabela.


# DELETE

# 1. DROP TABLE nome_tbl;
# 1.1. Exclui o banco de dados;

# 2. DELETE FROM nome_tbl
# 2.1. Exclui todos os registros da tabela.

# 3. DELETE FROM nome_tbl
# '' WHERE tipo do registro= 'registro';
# 3.1. Exclui os dados escolhidos.