Explication des stratégies utilisées.

Pour commencer, on repart du code fourni dans example 2 : initialement, tous les robots vont dans une direction aléatoire avec changement de position de temps en temps, et en évitant les murs.

# Rapporteur

Dès qu'un robot détecte la cible, il retient sa position en mémoire, puis part à la recherche des autres robots.
Dès qu'il croise un autre robot, il lui passe l'information de la position de la cible. C'est un *rapporteur*.

* Avec une certaine proba (0.3), il va lui même devenir rapporteur et partir dans une autre direction pour propager la positioni
* Dans le cas contraire, il va se rendre vers la cible pour l'attaquer

Au bout d'un certain temps (appelé `TTR` pour *Time To Report*), la mission de rapportage d'un robot se termine et il se dirige de lui même vers la cible.

Le plus long avec cette solution c'est le temps de trouver la cible pour la première fois.
Quelques fois, les robots finissent leur `TTR` avant que tous soient au courant de l'emplacement de la cible, mais si on ne met pas en place ce temps limite, on peut se trouver dans un cas où une partie des robots sait où se trouve la cible pas continue encore à chercher à rapporter l'emplacement.



# Résultats

## Moyennes

Les calculs sont faits sur 10 simulations.


| Modèle     | Temps moyen | Meilleur temps | Pire temps |
|-----------:|-------------|----------------|------------|
| exemple1   | 140.811     | 43.362         | 595.089    |
| exemple2   | 109.9065    | 54.681         | 185.493    |
| rapporteur | 85.9914     | 58.08          | 127.512    |

## Records

| Modèle     | Meilleur temps | Pire temps |
|-----------:|----------------|------------|
| exemple1   | 38.313         | 595.089    |
| exemple2   | 50.226         | 310.563    |
| rapporteur | 58.08          | 276.705    |
