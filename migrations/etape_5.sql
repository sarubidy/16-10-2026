\connect gargote_rado;

CREATE TABLE serveur
(
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    nom VARCHAR(50),
    prenom VARCHAR(50),
    email VARCHAR(20)
);

CREATE TABLE table_resto
(
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    designation VARCHAR(50),
    capacite INT
);

CREATE TABLE commande_serveur
(
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    serveur_id INT REFERENCES serveur(id),
    commande_id INT REFERENCES commande(id),
    table_resto_id INT REFERENCES table_resto(id) DEFAULT NULL
);

INSERT INTO serveur(nom, prenom, email) VALUES('Lalao', 'Rasoa', 'lalaorasoa@gmail.com');
INSERT INTO serveur(nom, prenom, email) VALUES('Njaka', 'Rakoto', 'njarakoto@gmail.com');

INSERT INTO table_resto(designation, capacite) VALUES('Table 1', 4);
INSERT INTO table_resto(designation, capacite) VALUES('Table 2', 4);
INSERT INTO table_resto(designation, capacite) VALUES('Table 3', 4);
INSERT INTO table_resto(designation, capacite) VALUES('Table 4', 4);
INSERT INTO table_resto(designation, capacite) VALUES('Table 5', 4);
INSERT INTO table_resto(designation, capacite) VALUES('Table 6', 4);
INSERT INTO table_resto(designation, capacite) VALUES('Table 7', 4);
INSERT INTO table_resto(designation, capacite) VALUES('Table 8', 4);

INSERT INTO commande(date_commande) VALUES('2026-10-17 16:30:00');

INSERT INTO commande_plat(commande_id, plat_id, quantite) VALUES(3, 2, 1);
INSERT INTO commande_plat(commande_id, plat_id, quantite) VALUES(3, 3, 1);

INSERT INTO commande_client(commande_id, client_id) VALUES(3, null);

INSERT INTO commande_serveur(serveur_id, commande_id, table_resto_id) VALUES(1, 1, 1);
INSERT INTO commande_serveur(serveur_id, commande_id, table_resto_id) VALUES(2, 3, null);
INSERT INTO commande_serveur(serveur_id, commande_id, table_resto_id) VALUES(2, 2, 8);

