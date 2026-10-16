-- « Je veux la liste de mes plats avec leur prix. »

\connect gargote_rado;

SELECT libelle, prix FROM plat ORDER BY prix DESC;