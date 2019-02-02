-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.

CREATE TABLE Organizacao (
ID_Organizacao integer PRIMARY KEY,
Nome varchar(50)
);

CREATE TABLE Pessoa (
ID_Pessoa integer PRIMARY KEY,
Nome varchar(50)
);

CREATE TABLE Atividade (
ID_Atividade integer PRIMARY KEY,
Descricao varchar(50)
);

CREATE TABLE Endereco (
ID_Endereco integer PRIMARY KEY,
ID_Pessoa integer,
FOREIGN KEY(ID_Pessoa) REFERENCES Pessoa (ID_Pessoa)
);

CREATE TABLE Cientifica (
Periodico integer,
ID_Producao integer
);

CREATE TABLE Tecnica (
Numero_Registro integer,
Data_Registro integer,
ID_Producao integer
);

CREATE TABLE Producao (
ID_Producao integer PRIMARY KEY,
Ano integer,
Titulo varchar(50),
ID_Pessoa integer,
FOREIGN KEY(ID_Pessoa) REFERENCES Pessoa (ID_Pessoa)
);

CREATE TABLE Palavra_Chave (
ID_Chave integer PRIMARY KEY,
Descricao varchar(50)
);

CREATE TABLE Autor (
ID_Autor integer PRIMARY KEY,
Nome varchar(50)
);

CREATE TABLE Organizacao_Pessoa (
ID_Pessoa integer,
ID_Organizacao integer,
Data_Inicial integer,
Data_Final integer,
ID_Organizacao_Pessoa integer PRIMARY KEY,
FOREIGN KEY(ID_Pessoa) REFERENCES Pessoa (ID_Pessoa),
FOREIGN KEY(ID_Organizacao) REFERENCES Organizacao (ID_Organizacao)
);

CREATE TABLE Atuacao_Profissional (
Data_Inicial integer,
ID_Atuacao_Profissional integer PRIMARY KEY,
Data_Final integer,
ID_Organizacao_Pessoa integer,
ID_Atividade integer,
FOREIGN KEY(ID_Organizacao_Pessoa) REFERENCES Organizacao_Pessoa (ID_Organizacao_Pessoa),
FOREIGN KEY(ID_Atividade) REFERENCES Atividade (ID_Atividade)
);

CREATE TABLE PC_Producao (
ID_Producao integer,
ID_Chave integer,
FOREIGN KEY(ID_Producao) REFERENCES Producao (ID_Producao),
FOREIGN KEY(ID_Chave) REFERENCES Palavra_Chave (ID_Chave)
);

CREATE TABLE PC_Autor (
ID_Producao integer,
ID_Autor integer,
FOREIGN KEY(ID_Producao) REFERENCES Producao (ID_Producao),
FOREIGN KEY(ID_Autor) REFERENCES Autor (ID_Autor)
);

CREATE TABLE Artistica (
ID_Producao integer,
FOREIGN KEY(ID_Producao) REFERENCES Producao (ID_Producao)
);

ALTER TABLE Cientifica ADD FOREIGN KEY(ID_Producao) REFERENCES Producao (ID_Producao);
ALTER TABLE Tecnica ADD FOREIGN KEY(ID_Producao) REFERENCES Producao (ID_Producao);
