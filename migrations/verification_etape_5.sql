-- « Je veux savoir quel serveur a pris la commande et à quelle table. Pour les plats à emporter, il n'y a pas de table. »

\connect gargote_rado;

SELECT COUNT(*) AS nombre_commandes, s.nom, s.prenom, SUM(pl.prix * cpl.quantite) AS total FROM commande_serveur cs JOIN serveur s ON s.id = cs.serveur_id JOIN commande c ON c.id = cs.commande_id JOIN commande_plat cpl ON cpl.commande_id = c.id JOIN plat pl ON pl.id = cpl.plat_id GROUP BY s.id ORDER BY total DESC;