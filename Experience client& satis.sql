/* Creation de la table custumer_reviews */
create table customer_reviews(
          Review_ID int primary key,
          Opinion_Date int,
          Product_Category varchar(200),
          Rating int,
		  Review_Text varchar(1000),
          Sentiment varchar(50),
          Response_Time int,
          Resolution_Status varchar(100),
          Return_Request varchar(50)
)

/* Quelle est la répartition des notes par sentiment? */
SELECT 
    CASE 
        WHEN Rating IN (1, 2) THEN 'Négative'
        WHEN Rating = 3 THEN 'Neutre'
        WHEN Rating IN (4, 5) THEN 'Positive'
    END AS Experience,
    COUNT(*) AS Nombre_Avis
FROM customer_reviews
GROUP BY Experience
ORDER BY Nombre_Avis DESC;

/* Quelle est l’évolution des avis dans le temps ? */
SELECT 
    CASE 
        WHEN Rating IN (1, 2) THEN 'Négative'
        WHEN Rating = 3 THEN 'Neutre'
        WHEN Rating IN (4, 5) THEN 'Positive'
    END AS Experience,
    COUNT(*) AS Nombre_Avis, 
    year(Opinion_Date) as annee, quarter(Opinion_Date) as trimestre
FROM customer_reviews
GROUP BY annee, trimestre, Experience
ORDER BY annee, trimestre, Nombre_Avis;

/* Classement des avis par categorie de produits */
SELECT Product_Category,
    CASE 
        WHEN Rating IN (1, 2) THEN 'Négative'
        WHEN Rating = 3 THEN 'Neutre'
        WHEN Rating IN (4, 5) THEN 'Positive'
    END AS Experience,
    COUNT(*) AS Nombre_Avis
FROM customer_reviews
GROUP BY Product_Category, Experience
ORDER BY Experience, Nombre_Avis DESC;

/* Quelle est la note moyenne pour chaque catégorie de produits ? */
SELECT Product_Category, ROUND(AVG(Rating), 2) AS Avg_Rating
FROM customer_reviews
GROUP BY Product_Category
ORDER BY Avg_Rating;

/* Quel est le pourcentage d’avis négatif ? */
SELECT 
    (COUNT(CASE WHEN Rating < 3 THEN 1 END) * 100.0 / COUNT(*)) AS Pourcentage_Avis_Negatifs
FROM customer_reviews;

/* Quelles categories de produits recoivent le plus d'avis négatifs ? */
SELECT Product_Category, COUNT(*) AS Nombre_Avis_Negatifs
FROM customer_reviews
WHERE Rating < 3
GROUP BY Product_Category
ORDER BY Nombre_Avis_Negatifs DESC;

/* Creation de la table temporaire */
CREATE VIEW Avis_mois AS 
SELECT YEAR(Opinion_Date) AS annee, MONTH(Opinion_Date) AS mois, 
       Review_ID, Product_Category,
       CASE 
        WHEN Rating IN (1, 2) THEN 'Négative'
        WHEN Rating = 3 THEN 'Neutre'
        WHEN Rating IN (4, 5) THEN 'Positive'
    END AS experience,
    COUNT(*) AS Nombre_Avis
FROM customer_reviews
GROUP BY annee, mois, Product_Category, experience, Review_ID
ORDER BY annee, mois
