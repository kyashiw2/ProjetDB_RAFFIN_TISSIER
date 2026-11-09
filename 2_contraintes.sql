
USE Mini_projet2_Grand_lotus;

ALTER TABLE ADHESION_FIDELITE
ADD CHECK (Points_Fidelite >= 0);

ALTER TABLE ADHESION_FIDELITE
ADD CHECK (
    (Points_Fidelite BETWEEN 0 AND 999
        AND Niveau_Fidelite = 'Bronze')
    OR
    (PointsFidelite BETWEEN 1000 AND 4999
        AND Niveau_Fidelite = 'Argent')
    OR
    (Points_Fidelite BETWEEN 5000 AND 14999
        AND Niveau_Fidelite = 'Or')
    OR
    (Points_Fidelite >= 15000
        AND Niveau_Fidelite = 'Platine')
);

-- Le départ doit être après l'arrivée.

ALTER TABLE SEJOUR
ADD CHECK (Date_Depart > Date_Arrivee);

-- Le tarif d'une nuit doit être positif.
ALTER TABLE COMPRENDRE
ADD CHECK (Tarif_NuitConvenu > 0);

-- Une réservation doit prévoir au moins une personne.
ALTER TABLE RESERVATION_RESTAURANT
ADD CHECK (Nb_Convives > 0);

-- Le prix ne peut pas être négatif.
ALTER TABLE CONTENIR
ADD CHECK (Quantite > 0);

ALTER TABLE CONTENIR
ADD CHECK (Prix_Unitaire_Applique >= 0);

-- Le montant d'une facture ne peut pas être négatif.
ALTER TABLE FACTURE
ADD CHECK (Montant_Total >= 0);

-- Le montant d'un paiement doit être positif.
-- Les modes de règlement autorisés.
ALTER TABLE PAIEMENT
ADD CHECK (Montant_Paiement > 0);

ALTER TABLE PAIEMENT
ADD CHECK (
    ModeReglement IN ('Carte', 'Especes', 'Virement', 'Cheque')
);

-- Le prix d'entrée et la dotation ne peuvent pas être négatifs.
ALTER TABLE TOURNOI
ADD CHECK (BuyIn >= 0);

ALTER TABLE TOURNOI
ADD CHECK (Dotation_Garantie >= 0);

-- Le numéro d'inscription et le rang doivent être positifs.
-- Le gain ne peut pas être négatif.

ALTER TABLE INSCRIPTION
ADD CHECK (id_inscription > 0);

ALTER TABLE INSCRIPTION
ADD CHECK (Rang_Final IS NULL OR Rang_Final > 0);

ALTER TABLE INSCRIPTION
ADD CHECK (Gain_Attribue IS NULL OR GainAttribue >= 0);

-- Le nom et le prénom ne doivent pas être vide.

ALTER TABLE CLIENT
ADD CHECK (TRIM(Nom_Client) <> '');

ALTER TABLE CLIENT
ADD CHECK (TRIM(Prenom_Client) <> '');

-- Le nom du plat ne doit pas être vide.
ALTER TABLE PLAT
ADD CHECK (TRIM(Nom_Plat) <> '');

-- Le nom du tournoi ne doit pas être vide.
ALTER TABLE TOURNOI
ADD CHECK (TRIM(Nom_Edition) <> '');

-- Le nom du croupier ne doit pas être vide.

ALTER TABLE CROUPIER
ADD CHECK (TRIM(Nom_Croupier) <> '');

-- Le type de jeu ne doit pas être vide.

ALTER TABLE TABLE_JEU
ADD CHECK (TRIM(Type_Jeu) <> '');
