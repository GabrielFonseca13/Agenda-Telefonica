DROP DATABASE IF EXISTS agenda_telefonica ;

CREATE DATABASE agenda_telefonica;

USE agenda_telefonica ;

CREATE TABLE
    contato (
        id INT(14) PRIMARY KEY,
        nome VARCHAR(100),
        idade INT(3)
    );

CREATE TABLE
    telefone(
        idcontato INT(14),
        id INT(14),
        numero VARCHAR(16),
        PRIMARY KEY (idcontato, id),
        FOREIGN KEY (idcontato) REFERENCES contato(id)
    );