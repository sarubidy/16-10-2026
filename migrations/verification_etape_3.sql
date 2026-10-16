-- « J'enregistre les commandes : la date, quels plats, et combien de chaque. »

\connect gargote_rado;

SELECT cm.id, p.libelle, cp.quantite, cm.date_commande FROM commande_plat cp JOIN plat p ON p.id = cp.plat_id JOIN commande cm ON cm.id = cp.commande_id;