# ProjetDB_RAFFIN_TISSIER
Mini-projet Base de données


Prompt :

Tu travailles dans le domaine de l’hôtellerie de luxe, de la restauration et des jeux d’argent. Ton entreprise, Le Grand Lotus, est un casino existant. Dans le cadre de cette étude, ses activités comprennent les séjours hôteliers, la restauration, les jeux de casino et l’organisation de tournois internationaux de poker réunissant des joueurs du monde entier. C’est une entreprise comparable aux établissements Barrière, au Groupe Partouche ou au Casino de Monte-Carlo, avec une activité de tournois inspirée des World Series of Poker.
Les données ont été collectées sur :
•	Les clients et joueurs : identité, nationalité et fidélité.
•	Les chambres, les réservations de séjours et leur facturation.
•	Les réservations au restaurant, les plats et les commandes.
•	Les tables de jeu, le personnel et les affectations des croupiers.
•	Les tournois de poker : dates, buy-ins, dotations garanties, inscriptions, classements et gains.
•	Les paiements et leurs modes de règlement.
Inspire-toi des sites web suivants : https://www.casinosbarriere.com/, https://www.partouche.com/, https://www.montecarlosbm.com/ et https://www.wsop.com/. Ces références servent de comparaison : elles ne décrivent pas directement le Grand Lotus. Distingue les informations vérifiées sur cet établissement des hypothèses retenues pour le projet.
Ton entreprise veut appliquer MERISE pour concevoir un système d’information. Tu es chargé de la partie analyse, c’est-à-dire de collecter les besoins auprès de l’entreprise. Elle a fait appel à un étudiant en ingénierie informatique pour réaliser ce projet. Tu dois lui fournir les informations nécessaires pour qu’il applique ensuite lui-même les étapes suivantes de conception et de développement de la base de données.
D’abord, établis les règles de gestion des données de ton entreprise, sous la forme d’une liste à puces. Elles doivent correspondre aux informations que fournit quelqu’un qui connaît le fonctionnement de l’entreprise, mais pas comment se construit un système d’information.
Ensuite, à partir de ces règles, fournis un dictionnaire de données brutes avec les colonnes suivantes, regroupées dans un tableau : signification de la donnée, type, taille en nombre de caractères ou de chiffres. Il doit y avoir entre 25 et 35 données élémentaires distinctes, avec une seule donnée par ligne. Il sert à fournir des informations supplémentaires sur chaque donnée, notamment sa taille et son type, mais sans a priori sur la manière dont les données vont être modélisées ensuite.
Fournis donc les règles de gestion et le dictionnaire de données.

<img width="454" height="610" alt="image" src="https://github.com/user-attachments/assets/9645a312-4478-48a5-b098-1e743960a9b5" />

Dictionnaire 
| N° | Signification de la donnée                                       | Type | Taille en nombre de caractères ou de chiffres |
| -- | ---------------------------------------------------------------- | ---- | --------------------------------------------- |
| 1  | Numéro du client                                                 | AN   | 8 caractères                                  |
| 2  | Nom du client                                                    | AN   | 50 caractères                                 |
| 3  | Prénom du client                                                 | AN   | 50 caractères                                 |
| 4  | Date de naissance du client                                      | D    | 10 caractères                                 |
| 5  | Nationalité déclarée du client                                   | AN   | 50 caractères                                 |
| 6  | Niveau de fidélité du client                                     | AN   | 10 caractères                                 |
| 7  | Nombre de points de fidélité du client                           | N    | 9 chiffres entiers                            |
| 8  | Numéro de la chambre                                             | AN   | 4 caractères                                  |
| 9  | Référence du séjour                                              | AN   | 12 caractères                                 |
| 10 | Date d’arrivée du séjour                                         | D    | 10 caractères                                 |
| 11 | Date de départ du séjour                                         | D    | 10 caractères                                 |
| 12 | Tarif par nuit convenu pour une chambre dans un séjour, en euros | N    | 8 chiffres, dont 2 décimales                  |
| 13 | Numéro de la facture                                             | AN   | 12 caractères                                 |
| 14 | Montant total de la facture, en euros                            | N    | 10 chiffres, dont 2 décimales                 |
| 15 | Numéro de la table du restaurant                                 | AN   | 4 caractères                                  |
| 16 | Date et heure prévues pour la réservation au restaurant          | DH   | 16 caractères                                 |
| 17 | Nombre de convives de la réservation au restaurant               | N    | 3 chiffres entiers                            |
| 18 | Numéro de la commande du restaurant                              | AN   | 12 caractères                                 |
| 19 | Nom du plat                                                      | AN   | 80 caractères                                 |
| 20 | Quantité commandée d’un plat                                     | N    | 3 chiffres entiers                            |
| 21 | Prix unitaire appliqué au plat dans une commande, en euros       | N    | 7 chiffres, dont 2 décimales                  |
| 22 | Numéro de la table de jeu                                        | AN   | 6 caractères                                  |
| 23 | Type de jeu proposé sur la table                                 | AN   | 20 caractères                                 |
| 24 | Matricule du croupier                                            | AN   | 8 caractères                                  |
| 25 | Nom du croupier                                                  | AN   | 50 caractères                                 |
| 26 | Date de service du croupier                                      | D    | 10 caractères                                 |
| 27 | Nom de l’édition du tournoi                                      | AN   | 100 caractères                                |
| 28 | Date du tournoi                                                  | D    | 10 caractères                                 |
| 29 | Montant du buy-in du tournoi, en euros                           | N    | 9 chiffres, dont 2 décimales                  |
| 30 | Dotation garantie du tournoi, en euros                           | N    | 11 chiffres, dont 2 décimales                 |
| 31 | Rang final du joueur dans le tournoi                             | N    | 5 chiffres entiers                            |
| 32 | Gain attribué au joueur dans le tournoi, en euros                | N    | 11 chiffres, dont 2 décimales                 |
| 33 | Date et heure du paiement                                        | DH   | 16 caractères                                 |
| 34 | Montant du paiement, en euros                                    | N    | 11 chiffres, dont 2 décimales                 |
| 35 | Mode de règlement du paiement                                    | AN   | 15 caractères                                 |



