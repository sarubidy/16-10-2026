# ETAPE 1

`plat` (**id**,libelle,prix)    \

*Quel type choisissez-vous pour le prix ? Quel identifiant choisissez-vous ?*   \

type pour le prix : Decimal \
identifiant : 
```sql 
INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY
```
\ 

# ETAPE 2
`categorie` (**id**, libelle)   \

`plat` (**id**,libelle,prix,#categorie_id)  \

*Pourquoi ne pas simplement ajouter une colonne categorie VARCHAR(50) dans la table des plats ? Donnez un exemple de problème concret.* \

Parce que cela ne serait pas correcte au niveau syntaxe, imaginons qu'à chaque nouveau plat, il va alors y avoir une nouvelle categorie, exemple Boissons et Boisson ce n'est pas la même chose \