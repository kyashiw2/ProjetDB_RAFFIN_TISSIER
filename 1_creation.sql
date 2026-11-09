
CREATE DATABASE IF NOT EXISTS Mini_projet2_Grand_lotus;
USE Mini_projet2_Grand_lotus;

-- Les informations des clients.
CREATE TABLE CLIENT (
    id_client INT PRIMARY KEY,
    NumClient VARCHAR(8) NOT NULL UNIQUE,
    NomClient VARCHAR(50) NOT NULL,
    PrenomClient VARCHAR(50) NOT NULL,
    DateNaissance DATE NOT NULL,
    Nationalite VARCHAR(50) NOT NULL
);

-- Les points et le niveau de fidelite de chaque adherent.
CREATE TABLE ADHESION_FIDELITE (
    id_fidelite INT PRIMARY KEY,
    PointsFidelite DECIMAL(9,0) NOT NULL,
    Niveau_Fidelite VARCHAR(10) NOT NULL,
    id_client INT NOT NULL UNIQUE,

    FOREIGN KEY (id_client) REFERENCES CLIENT(id_client)
        ON UPDATE CASCADE ON DELETE CASCADE
);

-- Les chambres de l'hotel.
CREATE TABLE CHAMBRE (
    id_chambre INT PRIMARY KEY,
    NumChambre VARCHAR(4) NOT NULL UNIQUE
);

-- Les tables du restaurant.
CREATE TABLE TABLE_RESTAURANT (
    id_table_restaurant INT PRIMARY KEY,
    NumTableRestaurant VARCHAR(4) NOT NULL UNIQUE
);

-- Les plats qu'on proposes.
CREATE TABLE PLAT (
    id_plat INT PRIMARY KEY,
    NomPlat VARCHAR(80) NOT NULL UNIQUE
);

-- Les éditions des tournois.
CREATE TABLE TOURNOI (
    id_tournoi INT PRIMARY KEY,
    NomEdition VARCHAR(100) NOT NULL UNIQUE,
    DateTournoi DATE NOT NULL,
    BuyIn DECIMAL(9,2) NOT NULL,
    DotationGarantie DECIMAL(11,2) NOT NULL
);

-- Les tables du casino.
CREATE TABLE TABLE_JEU (
    id_table_jeu INT PRIMARY KEY,
    NumTableJeu VARCHAR(6) NOT NULL UNIQUE,
    TypeJeu VARCHAR(20) NOT NULL
);

-- Les croupiers.
CREATE TABLE CROUPIER (
    id_croupier INT PRIMARY KEY,
    MatriculeCroupier VARCHAR(8) NOT NULL UNIQUE,
    NomCroupier VARCHAR(50) NOT NULL
);

-- Les dates de service.
CREATE TABLE JOUR_SERVICE (
    id_jour INT PRIMARY KEY,
    DateService DATE NOT NULL UNIQUE
);

-- Les factures des clients.
CREATE TABLE FACTURE (
    id_facture INT PRIMARY KEY,
    NumFacture VARCHAR(12) NOT NULL UNIQUE,
    MontantTotal DECIMAL(10,2) NOT NULL,
    id_client INT NOT NULL,

    FOREIGN KEY (id_client) REFERENCES CLIENT(id_client)
        ON UPDATE CASCADE ON DELETE CASCADE
);

-- Les dates et le titulaire de chaque sejour.
CREATE TABLE SEJOUR (
    id_sejour INT PRIMARY KEY,
    RefSejour VARCHAR(12) NOT NULL UNIQUE,
    DateArrivee DATE NOT NULL,
    DateDepart DATE NOT NULL,
    id_facture INT UNIQUE,
    id_client INT NOT NULL,

    FOREIGN KEY (id_facture) REFERENCES FACTURE(id_facture)
        ON UPDATE CASCADE ON DELETE SET NULL,

    FOREIGN KEY (id_client) REFERENCES CLIENT(id_client)
        ON UPDATE CASCADE ON DELETE CASCADE
);

-- Les chambres d un sejour et leur tarif par nuit.
CREATE TABLE COMPRENDRE (
    id_sejour INT,
    id_chambre INT,
    TarifNuitConvenu DECIMAL(8,2) NOT NULL,

    PRIMARY KEY (id_sejour, id_chambre),

    FOREIGN KEY (id_sejour) REFERENCES SEJOUR(id_sejour)
        ON UPDATE CASCADE ON DELETE CASCADE,

    FOREIGN KEY (id_chambre) REFERENCES CHAMBRE(id_chambre)
        ON UPDATE CASCADE ON DELETE CASCADE
);

-- Les reservations de tables.
CREATE TABLE RESERVATION_RESTAURANT (
    id_reservation INT PRIMARY KEY,
    DateHeureReservation DATETIME NOT NULL,
    NbConvives DECIMAL(3,0) NOT NULL,
    id_table_restaurant INT NOT NULL,
    id_client INT NOT NULL,

    FOREIGN KEY (id_table_restaurant)
        REFERENCES TABLE_RESTAURANT(id_table_restaurant)
        ON UPDATE CASCADE ON DELETE CASCADE,

    FOREIGN KEY (id_client) REFERENCES CLIENT(id_client)
        ON UPDATE CASCADE ON DELETE CASCADE
);

-- Les commandes passees au restaurant.
CREATE TABLE COMMANDE (
    id_commande INT PRIMARY KEY,
    NumCommande VARCHAR(12) NOT NULL UNIQUE,
    id_facture INT,
    id_table_restaurant INT NOT NULL,
    id_client INT NOT NULL,

    FOREIGN KEY (id_facture) REFERENCES FACTURE(id_facture)
        ON UPDATE CASCADE ON DELETE SET NULL,

    FOREIGN KEY (id_table_restaurant)
        REFERENCES TABLE_RESTAURANT(id_table_restaurant)
        ON UPDATE CASCADE ON DELETE CASCADE,

    FOREIGN KEY (id_client) REFERENCES CLIENT(id_client)
        ON UPDATE CASCADE ON DELETE CASCADE
);

-- Les plats d une commande avec leur quantite et leur prix.
CREATE TABLE CONTENIR (
    id_commande INT,
    id_plat INT,
    Quantite DECIMAL(3,0) NOT NULL,
    PrixUnitaireApplique DECIMAL(7,2) NOT NULL,

    PRIMARY KEY (id_commande, id_plat),

    FOREIGN KEY (id_commande) REFERENCES COMMANDE(id_commande)
        ON UPDATE CASCADE ON DELETE CASCADE,

    FOREIGN KEY (id_plat) REFERENCES PLAT(id_plat)
        ON UPDATE CASCADE ON DELETE CASCADE
);

-- Les paiements effectues par les clients.
CREATE TABLE PAIEMENT (
    id_paiement INT PRIMARY KEY,
    DateHeurePaiement DATETIME NOT NULL,
    MontantPaiement DECIMAL(11,2) NOT NULL,
    ModeReglement VARCHAR(15) NOT NULL,
    id_facture INT,
    id_client INT NOT NULL,

    FOREIGN KEY (id_facture) REFERENCES FACTURE(id_facture)
        ON UPDATE CASCADE ON DELETE SET NULL,

    FOREIGN KEY (id_client) REFERENCES CLIENT(id_client)
        ON UPDATE CASCADE ON DELETE CASCADE
);

-- Les inscriptions aux tournois et les resultats.
CREATE TABLE INSCRIPTION (
    id_tournoi INT,
    id_inscription INT,
    RangFinal DECIMAL(5,0),
    GainAttribue DECIMAL(11,2),
    id_paiement INT UNIQUE,
    id_client INT NOT NULL,

    PRIMARY KEY (id_tournoi, id_inscription),

    UNIQUE (id_tournoi, id_client),
    UNIQUE (id_tournoi, RangFinal),

    FOREIGN KEY (id_tournoi) REFERENCES TOURNOI(id_tournoi)
        ON UPDATE CASCADE ON DELETE CASCADE,

    FOREIGN KEY (id_paiement) REFERENCES PAIEMENT(id_paiement)
        ON UPDATE CASCADE ON DELETE SET NULL,

    FOREIGN KEY (id_client) REFERENCES CLIENT(id_client)
        ON UPDATE CASCADE ON DELETE CASCADE
);

-- La table attribuee a un croupier pour un jour.
CREATE TABLE AFFECTER (
    id_table_jeu INT,
    id_croupier INT,
    id_jour INT,

    PRIMARY KEY (id_table_jeu, id_croupier, id_jour),

    UNIQUE (id_croupier, id_jour),

    FOREIGN KEY (id_table_jeu) REFERENCES TABLE_JEU(id_table_jeu)
        ON UPDATE CASCADE ON DELETE CASCADE,

    FOREIGN KEY (id_croupier) REFERENCES CROUPIER(id_croupier)
        ON UPDATE CASCADE ON DELETE CASCADE,

    FOREIGN KEY (id_jour) REFERENCES JOUR_SERVICE(id_jour)
        ON UPDATE CASCADE ON DELETE CASCADE
);

-- Les tables de jeu utilisees par un tournoi.
CREATE TABLE MOBILISER (
    id_tournoi INT,
    id_table_jeu INT,

    PRIMARY KEY (id_tournoi, id_table_jeu),

    FOREIGN KEY (id_tournoi) REFERENCES TOURNOI(id_tournoi)
        ON UPDATE CASCADE ON DELETE CASCADE,

    FOREIGN KEY (id_table_jeu) REFERENCES TABLE_JEU(id_table_jeu)
        ON UPDATE CASCADE ON DELETE CASCADE
);
