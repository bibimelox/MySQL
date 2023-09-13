# CONSTRAINS

# 1. NOT NULL
# 1.1. Impõe a uma coluna a não aceitar valores NULL;
# 1.2. Obriga um campo a sempre possuir um valor.

# 2. UNIQUE
# 2.1. Identifica de forma única cada registro em uma tabela de um BD;
# 2.2. Impede a repetição de dados nas colunas;
# 2.3. Você pode ter várias UNIQUE em uma tabela, mas PRIMARY KEY pode ter somente uma por tabela;
# 2.4. Garante a unicidade de informações na sua tabela;
# 2.5. Não pode ser utilizada para relacionamentos de foreign key com outras tabelas.

# 3. PRIMARY KEY
# 3.1. Garante a unicidade de informações na sua tabela;
# 3.2. Pode ser utilizada para relacionamentos de foreign key com outras tabelas.

# 4. FOREIGN KEY
# 4.1. Responsável pela conexão de tabelas para fazer as relacões;
# 4.2. CONSTRAINT nome_da_constraint FOREIGN KEY (Coluna que vai receber a constraint)
# '''' REFERENCES nome_da_outra_tbl (Nome da coluna que vai conectar com a primeira coluna)


# 5. DEFAULT
# 5.1. Insere um valor padrão em uma coluna caso esteja NULL, ou seja, não esteja especificado.

# 6. AUTO_INCREMENT
# 6.1. Auto incrementa um valor não especificado;
# 6.2. Só é possível usar uma coluna de auto incremento por tabela;
# 6.3. Precisa de um NOT NULL para poder incrementar os valores NULL.
# 6.4. O padrão é que inicie incrementando do 1, caso queira que se inicie em tal valor:
# '''' AUTO_INCREMNET = 15;
