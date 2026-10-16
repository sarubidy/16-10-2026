\connect gargote_rado;

CREATE TABLE categorie
(
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    libelle VARCHAR(50)
);

ALTER TABLE plat ADD COLUMN categorie_id INT REFERENCES categorie(id);

INSERT INTO categorie(libelle) VALUES('Plat malagasy');
INSERT INTO categorie(libelle) VALUES('Plat chinois');
INSERT INTO categorie(libelle) VALUES('Soupe');
INSERT INTO categorie(libelle) VALUES('Dessert et goûter');
INSERT INTO categorie(libelle) VALUES('Boisson');

UPDATE plat SET categorie_id = 1 WHERE id = 1 OR id = 2 OR id = 3;
UPDATE plat SET categorie_id = 2 WHERE id = 4;
UPDATE plat SET categorie_id = 3 WHERE id = 5;
UPDATE plat SET categorie_id = 4 WHERE id = 6;
UPDATE plat SET categorie_id = 5 WHERE id = 7;
