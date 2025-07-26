-- Database: Fluxo-da-Comunicacao-Cientifica-Lic-Comp

-- DROP DATABASE IF EXISTS "Fluxo-da-Comunicacao-Cientifica-Lic-Comp";

CREATE DATABASE "Fluxo-da-Comunicacao-Cientifica-Lic-Comp"
    WITH 
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'Portuguese_Brazil.1252'
    LC_CTYPE = 'Portuguese_Brazil.1252'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1;


CREATE TABLE IF NOT EXISTS Instituicao
(
    id_instituicao integer PRIMARY KEY ,
    nome character varying(255),
    uf character(2) ,
    modalidade character varying(15),
    vagas_anuais integer,
    sigla character varying(15),
    categoria_administrativa character varying(50),
    criacao_curso date,
    inicio_funcionamento_curso date,
    nome_curso character varying(100),
	repositorio character varying(15)
)


CREATE TABLE IF NOT EXISTS TCC
(
    id_tcc integer PRIMARY KEY,
    titulo character varying(255),
    link character varying(100),
    data_apresentacao date,
    data_publicacao date,
    area character varying(100),
    numero_autores integer
)

CREATE TABLE IF NOT EXISTS Autor
(
    id_autor integer PRIMARY KEY,
    nome character varying(255),
    genero character varying(10),
    id_tcc integer,
    id_instituicao integer,
	FOREIGN KEY (id_tcc) REFERENCES TCC (id_tcc),
	FOREIGN KEY (id_instituicao) REFERENCES Instituicao (id_instituicao)
)

CREATE TABLE Assunto (
  id_tcc INT,
  assunto VARCHAR(255),
  PRIMARY KEY (id_tcc, assunto),
  FOREIGN KEY (id_tcc) REFERENCES TCC(id_tcc)
);

CREATE TABLE Palavra_Chave (
  id_tcc INT,
  palavra_chave VARCHAR(255),
  PRIMARY KEY (id_tcc, palavra_chave),
  FOREIGN KEY (id_tcc) REFERENCES TCC(id_tcc)
);
