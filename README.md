# 📊 Projet de Satisfaction Client & Avis

## 📖 Description
Ce projet vise à analyser les avis clients pour identifier les principaux facteurs d’insatisfaction et proposer des améliorations afin d'optimiser l’expérience utilisateur. La satisfaction client étant un KPI clé, cette analyse permet de détecter les tendances, de mieux comprendre les attentes des clients et d'ajuster les stratégies commerciales et marketing.

---

## 📂 Données
Le jeu de données utilisé a été généré via ChatGPT et contient des avis clients sur divers produits et services. Il inclut des informations telles que les notes, les commentaires, les catégories de produits, les tendances dans le temps et des indicateurs de satisfaction.

### **📌 Colonnes du dataset :**
- **Review_ID** : Identifiant unique de l’avis
- **Customer_ID** : Identifiant du client
- **Date** : Date de l’avis
- **Product_Category** : Catégorie du produit/service (Électronique, Beauté, Mode...)
- **Rating** : Note donnée (1 à 5 étoiles)
- **Review_Text** : Commentaire laissé par le client
- **Sentiment** : Analyse du sentiment (Positif, Neutre, Négatif)
- **Response_Time** : Temps de réponse du service client (en heures)
- **Resolution_Status** : Statut de résolution du problème (Résolu, En attente, Non résolu)
- **Return_Request** : Demande de remboursement ou retour (Oui/Non)

---

## 🎯 Problématique
Quels sont les principaux facteurs influençant la satisfaction client et comment optimiser l’expérience client ?

---

## 🎯 Objectifs Business
✔️ Identifier les motifs d’insatisfaction et de satisfaction.
✔️ Détecter les tendances générales des avis clients (positifs, neutres, négatifs).
✔️ Segmenter les avis selon les produits, services ou catégories de clients.
✔️ Proposer des actions correctives basées sur les insights.

---

## 🛠 Outils Utilisés
- **Excel 2016 & Google Sheet** : Nettoyage des données et formatage des dates.
- **MySQL WorkBench 8.0 CE** : Stockage et transformation des données.
- **Power BI Desktop** : Analyse et visualisation des données.

---

## 📊 Méthodologie

### **1️⃣ Nettoyage des données** *(Excel & Google Sheet)*
✔️ Correction des caractères spéciaux et suppression des espaces dans les en-têtes.  
✔️ Conversion du format de date en `YYYY-MM-DD`.  

### **2️⃣ Stockage & Préparation des Données** *(MySQL WorkBench)*
✔️ Importation des données nettoyées dans **MySQL**.  
✔️ Création d’une **table temporaire** pour analyser la répartition des avis par sentiment et catégorie de produits.

### **3️⃣ Exploration & Analyse des Données**
- **Répartition des notes par sentiment** → Détecter une tendance d'avis négatifs sur une catégorie.
- **Évolution des avis dans le temps** → Identifier des variations liées à des événements spécifiques.
- **Classement des avis par catégorie de produits** → Identifier les performances des différentes catégories.
- **Note moyenne par catégorie** → Prioriser les améliorations sur les produits les moins bien notés.
- **Pourcentage d’avis négatifs** → Identifier les produits problématiques.
- **Fréquence des avis négatifs par catégorie** → Détecter les problèmes récurrents pour des actions ciblées.

### **4️⃣ Importation & Préparation des Données** *(Power BI)*
✔️ Installation de **MySQL Connector SDBC** pour connecter **MySQL** à Power BI.  
✔️ Chargement des **bases de données et tables** dans Power BI.  

### **5️⃣ Définition des métriques et conception du Dashboard** *(Power BI)*
- **Filtre par ressenti client** → *Segment*.
- **Pourcentage du ressenti client sélectionné** → *Scorecard*.
- **Répartition des avis par mois** → *Histogramme*.
- **Répartition des avis par catégorie de produits** → *Tableau*.

### **6️⃣ Création du Dashboard Power BI**
✔️ Mise en place des visualisations interactives pour explorer les données efficacement.

### **7️⃣ Recommandations & Actions Correctives**
🔹 **Analyser les mois critiques** *(Janvier et Décembre 2023 & Décembre 2024)* → Comprendre la hausse des avis négatifs et ajuster les stratégies.  
🔹 **Optimiser la catégorie Sport** *(plus d’avis négatifs)* → Comparer avec la stratégie de la catégorie Maison *(la mieux notée)* et appliquer les bonnes pratiques.  

---

## 🚀 Résultats & Insights
Ce projet a permis de :
- Mettre en évidence les tendances des avis clients.
- Détecter les catégories nécessitant des améliorations.
- Fournir des recommandations concrètes pour améliorer l'expérience client.

---

## 📩 Contact
📧 Vous pouvez me contacter via **LinkedIn** pour échanger sur mes compétences en **Analyse de Données et Power BI**. 😊
