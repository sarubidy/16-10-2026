-- « Je range mes plats par catégorie : plats malagasy, plats chinois, soupes, desserts, boissons. »

\connect gargote_rado;

SELECT count(p.id) AS nombre, c.libelle categorie FROM plat p JOIN categorie c ON c.id = p.categorie_id GROUP BY c.id; 