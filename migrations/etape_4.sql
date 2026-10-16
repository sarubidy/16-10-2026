\connect gargote_rado;

CREATE TABLE client
(
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    nom VARCHAR(50),
    prenom VARCHAR(50),
    telephone VARCHAR(20)
);

CREATE TABLE commande_client
(
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    commande_id INT REFERENCES commande(id),
    client_id INT REFERENCES client(id) DEFAULT NULL
);

INSERT INTO commande(date_commande) VALUES('2026-10-17 12:00:00');
INSERT INTO commande_plat(commande_id, plat_id, quantite) VALUES(2, 1, 2);
INSERT INTO commande_plat(commande_id, plat_id, quantite) VALUES(2, 7, 2);
INSERT INTO commande_plat(commande_id, plat_id, quantite) VALUES(2, 6, 1);

INSERT INTO client(nom, prenom, telephone) VALUES('Rakoto', 'Jean', '032 12 345 67');
INSERT INTO commande_client(commande_id, client_id) VALUES(1, 1);
INSERT INTO commande_client(commande_id, client_id) VALUES(2, 1);