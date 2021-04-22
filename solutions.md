Explication des stratégies utilisées.

Pour commencer, on repart du code fourni dans example 2 : initialement, tous les robots vont dans une direction aléatoire avec changement de position de temps en temps, et en évitant les murs.

# Rapporteur

Dès qu'un robot détecte la cible, il retient sa position en mémoire, puis part à la recherche des autres robots.
Dès qu'il croise un autre robot, il lui passe l'information de la position de la cible. C'est un *rapporteur*.

* Avec une certaine proba (0.3), il va lui même devenir rapporteur et partir dans une autre direction pour propager la positioni
* Dans le cas contraire, il va se rendre vers la cible pour l'attaquer

Au bout d'un certain temps (appelé `TTR` pour *Time To Report*), la mission de rapportage d'un robot se termine et il se dirige de lui même vers la cible.

Le plus long avec cette solution c'est le temps de trouver la cible pour la première fois