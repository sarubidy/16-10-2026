-- « Certains clients sont des habitués, je veux les reconnaître. Mais la plupart sont de passage et je ne leur demande rien. »

\connect gargote_rado;

SELECT COALESCE(cl.nom, 'client de passage') AS nom, COALESCE(cl.prenom,null) AS prenom, cm.date_commande FROM commande_client cc JOIN client cl ON cl.id = cc.client_id JOIN commande cm ON cm.id = cc.commande_id;