<img width="997" height="862" alt="Capture d&#39;écran 2026-11-09 172228" src="https://github.com/user-attachments/assets/c3ad030c-906e-476a-9b58-23385cc5dd36" />
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

Dictionnaire des Données
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

Comment nous avons réfléchi au MCD
Nous avons réalisé notre MCD avec Looping à partir du dictionnaire des données et des règles de gestion. Il contient 15 entités et 18 associations.
L’entité CLIENT est reliée aux différentes activités du Grand Lotus. Un même client peut réserver un séjour, manger au restaurant et participer à un tournoi. Ses informations personnelles sont enregistrées une seule fois.

La partie hôtel:
Un client peut réserver plusieurs séjours. Chaque séjour appartient à un seul client et comprend au moins une chambre.
Nous avons placé TarifNuitConvenu dans l’association COMPRENDRE, car le prix dépend de la chambre et du séjour. Une même chambre peut donc être réservée à des tarifs différents.
La date de départ doit être après la date d’arrivée. Deux séjours ne peuvent pas occuper la même chambre en même temps.

La partie restaurant:
Chaque réservation concerne un client et une table. Elle indique la date, l’heure et le nombre de convives.
Une commande est prise en charge par un client et servie à une table. Elle contient au moins un plat. L’association CONTENIR précise la quantité et le prix appliqué pour chaque plat de la commande.
Cela permet de garder le prix payé au moment de la commande, même si le prix du plat change ensuite.

Les factures et les paiements:
Chaque facture appartient à un client. Elle peut regrouper les prestations d’un séjour et ses commandes de restaurant, ou concerner une commande indépendante.
Une facture peut être réglée en plusieurs paiements. Chaque paiement concerne soit une facture, soit une inscription à un tournoi, mais jamais les deux. Il doit obligatoirement être lié à l’une de ces destinations.
Cette règle correspond à une contrainte d’exclusion et de totalité, entre les associations REGLER et ACQUITTER.

Les tournois et les croupiers:
Un tournoi utilise au moins une table de jeu. Un client peut participer à plusieurs tournois, mais il ne peut s’inscrire qu’une fois au même tournoi.
L’entité INSCRIPTION contient le rang final et le gain du participant. Ces informations peuvent rester vides tant que les résultats ne sont pas connus.
L’association AFFECTER indique sur quelle table travaille un croupier à une date donnée.

Les deux éléments avancés
Nous avons utilisé une association ternaire et une entité faible.
L’association AFFECTER relie trois entités : CROUPIER, TABLE_JEU et JOUR_SERVICE. Elle permet, par exemple, d’indiquer qu’un croupier travaille sur une table précise un jour donné. Nous avons retenu la règle d’une seule table par croupier et par jour.
L’entité INSCRIPTION est identifiée par rapport à TOURNOI. Le numéro d’inscription est unique dans un tournoi, mais il peut être réutilisé dans un autre tournoi. Pour identifier une inscription, il faut donc connaître son numéro et le tournoi concerné.
Cette identification relative apparaît avec la notation 1,1(R) dans Looping. Au passage au MLD, la clé sera composée de id_tournoi et de id_inscription.
La normalisation

Nous avons organisé le modèle pour éviter de répéter les mêmes informations :
- Pour la 1FN, chaque attribut contient une seule valeur. Les plats d’une commande sont représentés par une association, pas par une liste dans un attribut.
- Pour la 2FN, les attributs dépendent de la clé entière. Par exemple, le tarif convenu dépend à la fois du séjour et de la chambre.
- Pour la 3FN, les informations restent dans l’entité qu’elles décrivent. Le nom du client reste dans CLIENT et les informations du tournoi restent dans TOURNOI.
Le niveau de fidélité est calculé à partir des points plutôt que stocké comme une information indépendante. Les règles de calcul et les contraintes supplémentaires accompagnent le MCD, car les cardinalités ne suffisent pas à tout représenter.

<img width="743" height="439" alt="Capture d&#39;écran 2026-10-16 101641" src="https://github.com/user-attachments/assets/403cc937-3d9a-4156-8aa6-48eec7a97347" />

"Modèle Logique de Données" (MLD)
1. LIENT(id_client, NumClient, Nom_Client, Prenom_Client, Date_Naissance, Nationalite)
2. ADHESION_FIDELITE(id_fidelite, PointsFidelite, Niveau_Fidélité, #id_client)
3. SEJOUR(id_sejour, Ref_Sejour, Date_Arrivee, Date_Depart, #id_facture, #id_client)
4. CHAMBRE(id_chambre, Num_Chambre)
5. COMPRENDRE(#id_sejour, #id_chambre, Tarif_Nuit_Convenu)
6. RESERVATION_RESTAURANT(id_reservation, Date_Heure_Reservation, Nb_Convives, #id_table_restaurant, #id_client)
7. TABLE_RESTAURANT(id_table_restaurant, Num_Table_Restaurant)
8. COMMANDE(id_commande, Num_Commande, #id_facture, #id_table_restaurant, #id_client)
9. PLAT(id_plat, Nom_Plat)
10. CONTENIR(#id_commande, #id_plat, Quantite, Prix_UnitaireApplique)
11. FACTURE(id_facture, Num_Facture, Montant_Total, #id_client)
12. PAIEMENT(id_paiement, Date_Heure_Paiement, Montant_Paiement, Mode_Reglement, #id_facture, #id_client)
13. INSCRIPTION(#id_tournoi, id_inscription, Rang_Final, Gain_Attribue, #id_paiement, #id_client)
14. TOURNOI(id_tournoi, Nom_Edition, Date_Tournoi, BuyIn, Dotation_Garantie)
15. TABLE_JEU(id_table_jeu, Num_TableJeu, Type_Jeu)
16. CROUPIER(id_croupier, Matricule_Croupier, Nom_Croupier)
17. JOUR_SERVICE(id_jour, Date_Service)
18. AFFECTER(#id_table_jeu, #id_croupier, #id_jour)
19. MOBILISER(#id_tournoi, #id_table_jeu)
<img width="1330" height="860" alt="Capture d&#39;écran 2026-11-09 100355" src="https://github.com/user-attachments/assets/dd04464c-6d1b-4071-8d78-a0bf844bfb45" />

Prompt 2 
Donne les requêtes d’insertion permettant de remplir la base de données du Grand Lotus, un
hôtel-restaurant-casino qui organise des tournois de poker, dont le modèle relationnel est le suivant :
CLIENT(id_client, NumClient, NomClient, PrenomClient, DateNaissance, Nationalite)
Clé primaire : id_client.
ADHESION_FIDELITE(id_fidelite, PointsFidelite, Niveau_Fidelite, #id_client)
Clé primaire : id_fidelite.
CHAMBRE(id_chambre, NumChambre)
Clé primaire : id_chambre.
SEJOUR(id_sejour, RefSejour, DateArrivee, DateDepart, #id_facture, #id_client)
Clé primaire : id_sejour.
COMPRENDRE(#id_sejour, #id_chambre, TarifNuitConvenu)
Clé primaire composée : (id_sejour, id_chambre).
TABLE_RESTAURANT(id_table_restaurant, NumTableRestaurant)
Clé primaire : id_table_restaurant.
RESERVATION_RESTAURANT(id_reservation, DateHeureReservation, NbConvives, #id_table_restaurant,
#id_client)
Clé primaire : id_reservation.
COMMANDE(id_commande, NumCommande, #id_facture, #id_table_restaurant, #id_client)
Clé primaire : id_commande.
PLAT(id_plat, NomPlat)
Clé primaire : id_plat.
CONTENIR(#id_commande, #id_plat, Quantite, PrixUnitaireApplique)
Clé primaire composée : (id_commande, id_plat).
FACTURE(id_facture, NumFacture, MontantTotal, #id_client)
Clé primaire : id_facture.
PAIEMENT(id_paiement, DateHeurePaiement, MontantPaiement, ModeReglement, #id_facture, #id_client)
Clé primaire : id_paiement.
TOURNOI(id_tournoi, NomEdition, DateTournoi, BuyIn, DotationGarantie)
Clé primaire : id_tournoi.
INSCRIPTION(#id_tournoi, id_inscription, RangFinal, GainAttribue, #id_paiement, #id_client)
Clé primaire composée : (id_tournoi, id_inscription).
TABLE_JEU(id_table_jeu, NumTableJeu, TypeJeu)
Clé primaire : id_table_jeu.
CROUPIER(id_croupier, MatriculeCroupier, NomCroupier)
Clé primaire : id_croupier.
JOUR_SERVICE(id_jour, DateService)
Clé primaire : id_jour.
AFFECTER(#id_table_jeu, #id_croupier, #id_jour)
Clé primaire composée : (id_table_jeu, id_croupier, id_jour).
MOBILISER(#id_tournoi, #id_table_jeu)
Clé primaire composée : (id_tournoi, id_table_jeu).

Clés et quantités
Les clés primaires sont indiquées après chaque relation. Les clés étrangères sont identifiées par # et
portent le même nom que les clés primaires auxquelles elles font référence. Le symbole # ne doit pas
apparaître dans le script SQL.
Il doit y avoir exactement :- 40 lignes dans CLIENT ;- 25 lignes dans ADHESION_FIDELITE ;- 20 lignes dans CHAMBRE ;- 50 lignes dans SEJOUR ;- 70 lignes dans COMPRENDRE ;- 12 lignes dans TABLE_RESTAURANT ;- 40 lignes dans RESERVATION_RESTAURANT ;- 60 lignes dans COMMANDE ;- 20 lignes dans PLAT ;- 150 lignes dans CONTENIR ;- 50 lignes dans FACTURE ;- 100 lignes dans PAIEMENT ;- 8 lignes dans TOURNOI ;- 60 lignes dans INSCRIPTION ;- 12 lignes dans TABLE_JEU ;- 10 lignes dans CROUPIER ;- 15 lignes dans JOUR_SERVICE ;- 60 lignes dans AFFECTER ;- 16 lignes dans MOBILISER ;
Chaque séjour doit comprendre au moins une chambre. Chaque commande doit contenir au moins un plat.
Chaque tournoi doit mobiliser au moins une table de poker.
Les clés étrangères doivent faire référence à des clés primaires existantes. Commence par remplir les
tables sans clés étrangères, puis les tables dont les clés étrangères font référence à des tables déjà
remplies.
Fichiers joints
Les données doivent respecter les types, les tailles et les contraintes SQL présents dans les deux fichiers
joints :- 1_creation.sql, éventuellement nommé 1_creation(1).sql ; - 2_contraintes.sql, éventuellement nommé
2_contraintes(1).sql.
Respecte toutes les contraintes PRIMARY KEY, FOREIGN KEY, NOT NULL, UNIQUE et CHECK. Ne
modifie pas la structure et ne désactive aucune contrainte. Fournis explicitement les identifiants.
Contraintes et cohérence des données
Respecte notamment les règles suivantes :- Les points de fidélité sont positifs ou nuls.- Le niveau est Bronze de 0 à 999 points, Argent de 1000 à 4999, Or de 5000 à 14999 et Platine à partir de
15000.- Le départ d’un séjour est après son arrivée.- Les tarifs par nuit, les quantités, les nombres de convives et les paiements sont strictement positifs.- Les autres montants et les gains sont positifs ou nuls.- Les modes de règlement sont Carte, Especes, Virement ou Cheque.- Un client possède au maximum une adhésion de fidélité.- Un croupier est affecté à une seule table au maximum par jour.- Un client ne s’inscrit qu’une fois à un même tournoi.- Les rangs renseignés sont positifs et distincts dans un tournoi.- Le rang et le gain peuvent être NULL avant les résultats.
Pour assurer la cohérence du jeu de données, applique également les règles et hypothèses suivantes :- Les clients sont majeurs au moment de leurs activités.- Les séjours d’une même chambre ne se chevauchent pas. Un nouveau séjour peut commencer le jour du
départ précédent.- Une réservation au restaurant dure deux heures. Les réservations d’une même table ne se chevauchent
pas.- Une table de jeu ne participe pas à deux tournois le même jour.- Une facture correspond soit à un séjour et éventuellement à des commandes du même client, soit à une
seule commande sans séjour.- Le montant d’une facture correspond aux prestations associées : nombre de nuits multiplié par le tarif de
chaque chambre, plus les quantités des plats multipliées par leurs prix unitaires.
3
Paiements et résultats des tournois- Un paiement concerne exclusivement une facture ou une inscription. Pour un paiement de tournoi,
id_facture dans PAIEMENT est NULL et l’inscription référence ce paiement avec id_paiement.- Le client qui paie est celui de la facture ou de l’inscription.- Le total payé pour une facture ne dépasse pas son montant.- Le paiement d’une inscription est égal au buy-in du tournoi.- Pour chaque tournoi terminé, le total des gains distribués atteint au moins la dotation garantie.
Variété des données
Assure-toi que les noms et prénoms des clients sont fictifs, d’origines variées et mixtes. Varie les
nationalités, les niveaux de fidélité, les dates et les modes de règlement.
Prévois des clients sans séjour, des plats jamais commandés, des factures partiellement payées et des
inscriptions dont le classement et le gain sont encore inconnus. Utilise NULL uniquement dans les
colonnes qui l’autorisent.
Format du résultat
Fournis l’ensemble sous la forme d’un script MySQL complet, à enregistrer dans 3_insertion.sql et à
exécuter une seule fois sur les tables vides, après les deux fichiers joints.
Commence par :
USE Mini_projet2_Grand_lotus;
Utilise des INSERT INTO avec les noms des colonnes et VALUES. Ajoute des commentaires courts en
français pour chaque table. N’utilise ni boucle ni procédure. Ne supprime aucune donnée.
Donne toutes les lignes, sans points de suspension. Vérifie les quantités, les références, les contraintes,
les dates et les montants. Indique ensuite les vérifications réalisées et précise si le script a réellement été
exécuté.

Scénario d’utilisation
Le responsable du Grand Lotus utilise la base de données pour suivre les activités de l’hôtel, du restaurant et des tournois de poker. Il souhaite mieux connaître ses clients, consulter les prestations utilisées et suivre les paiements.

Pour cela, il recherche les informations suivantes :
Domaine	Informations recherchées
Clients	Les clients français triés par nom, les différentes nationalités et les clients dont le nom commence par M.
Fidélité	Les adhérents de niveau Or ou Platine et la moyenne des points pour chaque niveau.
Hôtel	Les séjours de chaque client, les chambres réservées et les tarifs convenus. Il souhaite aussi repérer les clients ayant effectué au moins deux séjours.
Restaurant	Les plats commandés et leurs quantités, les plats jamais commandés et les clients qui fréquentent le restaurant sans séjourner à l’hôtel.
Paiements et factures	Le total des paiements par mode de règlement et les factures sans aucun paiement. Il souhaite également comparer les montants des factures à celles du client numéro 1.
Tournois	Les clients inscrits, les tournois ayant au moins huit participants, ceux dont le buy-in est compris entre 200 et 400 euros et ceux dont le buy-in est le plus élevé.
Statistiques sur les clients	Le nombre de clients par nationalité et la liste de tous les clients avec leur niveau de fidélité lorsqu’ils en possèdent un.

Nous avons préparé 20 requêtes SQL pour répondre à ces besoins. Elles permettent au responsable de retrouver rapidement les informations utiles, de repérer les clients réguliers et de suivre les activités de l’établissement.
