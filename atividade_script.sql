CREATE DATABASE DB_vendas;

USE DB_vendas;


CREATE TABLE Produto (
    Codigo_Produto INT PRIMARY KEY,
    Nome_Produto VARCHAR(100)
);


CREATE TABLE Nota_Fiscal (
    Numero_NF INT PRIMARY KEY,
    Data_NF DATE,
    Valor_NF FLOAT
);


CREATE TABLE Itens (
    Codigo_Produto INT,
    Numero_NF INT,
    Quantidade INT,
    PRIMARY KEY (Codigo_Produto, Numero_NF),
    FOREIGN KEY (Codigo_Produto) REFERENCES Produto(Codigo_Produto),
    FOREIGN KEY (Numero_NF) REFERENCES Nota_Fiscal(Numero_NF)
);


ALTER TABLE Produto MODIFY COLUMN Nome_Produto VARCHAR(50);


ALTER TABLE Nota_Fiscal ADD COLUMN ICMS FLOAT AFTER Numero_NF;


ALTER TABLE Produto ADD COLUMN Peso FLOAT;


ALTER TABLE Itens 
ADD Num_item INT AUTO_INCREMENT PRIMARY KEY FIRST;


DESCRIBE Produto;


DESCRIBE Nota_Fiscal;


ALTER TABLE Nota_Fiscal CHANGE Valor_NF ValorTotal_NF FLOAT;


ALTER TABLE Nota_Fiscal DROP COLUMN Data_NF;


DROP TABLE Itens;


ALTER TABLE Nota_Fiscal RENAME TO Venda;

















