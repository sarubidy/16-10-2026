CREATE DATABASE gargote_rado;
\connect gargote_rado;

CREATE TABLE plat
(
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    libelle VARCHAR(50),
    prix DECIMAL(10,2)
);

INSERT INTO plat(libelle, prix) VALUES ('Romazava', 7000);
INSERT INTO plat(libelle, prix) VALUES ('Ravitoto sy henakisoa', 8000);
INSERT INTO plat(libelle, prix) VALUES ('Akoho sy voanio', 8500);
INSERT INTO plat(libelle, prix) VALUES ('Mi sao', 6000);
INSERT INTO plat(libelle, prix) VALUES ('Soupe chinoise', 5000);
INSERT INTO plat(libelle, prix) VALUES ('Mofo gasy (les 4)', 1000);
INSERT INTO plat(libelle, prix) VALUES ('Ranon''apango',500);