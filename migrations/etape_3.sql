\connect gargote_rado;

CREATE TABLE commande
(
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    date_commande TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE commande_plat
(
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    commande_id INT REFERENCES commande(id),
    plat_id INT REFERENCES plat(id),
    quantite INT
);

INSERT INTO commande(date_commande) VALUES('2026-10-16 12:00:00');
INSERT INTO commande_plat(commande_id, plat_id, quantite) VALUES(1, 1, 2);
INSERT INTO commande_plat(commande_id, plat_id, quantite) VALUES(1, 7, 2);
INSERT INTO commande_plat(commande_id, plat_id, quantite) VALUES(1, 6, 1);

