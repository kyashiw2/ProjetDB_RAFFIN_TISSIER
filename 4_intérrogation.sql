USE Mini_projet2_Grand_lotus;

SELECT NomClient, PrenomClient
FROM CLIENT
WHERE Nationalite = 'Francaise'
ORDER BY NomClient;

SELECT DISTINCT Nationalite
FROM CLIENT;


SELECT NomClient, PrenomClient
FROM CLIENT
WHERE NomClient LIKE 'M%';


SELECT id_client, Niveau_Fidelite
FROM ADHESION_FIDELITE
WHERE Niveau_Fidelite IN ('Or', 'Platine');


SELECT NomEdition, BuyIn
FROM TOURNOI
WHERE BuyIn BETWEEN 200 AND 400;


SELECT Nationalite, COUNT(*) AS NombreClients
FROM CLIENT
GROUP BY Nationalite;


SELECT ModeReglement, SUM(MontantPaiement) AS Total
FROM PAIEMENT
GROUP BY ModeReglement;


SELECT Niveau_Fidelite, AVG(PointsFidelite) AS MoyennePoints
FROM ADHESION_FIDELITE
GROUP BY Niveau_Fidelite;


SELECT id_client, COUNT(*) AS NombreSejours
FROM SEJOUR
GROUP BY id_client
HAVING COUNT(*) >= 2;


SELECT id_tournoi, COUNT(*) AS NombreInscrits
FROM INSCRIPTION
GROUP BY id_tournoi
HAVING COUNT(*) >= 8;


SELECT c.NomClient, s.RefSejour
FROM CLIENT c
JOIN SEJOUR s ON c.id_client = s.id_client;


SELECT c.NomClient, a.Niveau_Fidelite
FROM CLIENT c
LEFT JOIN ADHESION_FIDELITE a ON c.id_client = a.id_client;


SELECT s.RefSejour, ch.NumChambre, co.TarifNuitConvenu
FROM SEJOUR s
JOIN COMPRENDRE co ON s.id_sejour = co.id_sejour
JOIN CHAMBRE ch ON co.id_chambre = ch.id_chambre;


SELECT c.NumCommande, p.NomPlat, co.Quantite
FROM COMMANDE c
JOIN CONTENIR co ON c.id_commande = co.id_commande
JOIN PLAT p ON co.id_plat = p.id_plat;


SELECT f.NumFacture, f.MontantTotal
FROM FACTURE f
LEFT JOIN PAIEMENT p ON f.id_facture = p.id_facture
WHERE p.id_paiement IS NULL;


SELECT NomClient, PrenomClient
FROM CLIENT
WHERE id_client IN (
    SELECT id_client
    FROM INSCRIPTION
);


SELECT NomPlat
FROM PLAT
WHERE id_plat NOT IN (
    SELECT id_plat
    FROM CONTENIR
);


SELECT c.NomClient, c.PrenomClient
FROM CLIENT c
WHERE EXISTS (
    SELECT 1
    FROM COMMANDE co
    WHERE co.id_client = c.id_client
)
AND NOT EXISTS (
    SELECT 1
    FROM SEJOUR s
    WHERE s.id_client = c.id_client
);


SELECT NumFacture, MontantTotal
FROM FACTURE
WHERE MontantTotal > ANY (
    SELECT MontantTotal
    FROM FACTURE
    WHERE id_client = 1
);


SELECT NomEdition, BuyIn
FROM TOURNOI
WHERE BuyIn >= ALL (
    SELECT BuyIn
    FROM TOURNOI
);