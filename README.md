# Analyse sociodémographique et typologique des éleveurs de moutons Ladoum au Sénégal

## Contexte
Ce projet porte sur l’analyse statistique des données issues d’une enquête auprès des **éleveurs de moutons Ladoum** au Sénégal.  
L’objectif est de comprendre leurs caractéristiques sociodémographiques, leurs pratiques d’élevage et de dégager des typologies d’éleveurs.

---

## Objectifs
- Nettoyer et transformer les données pour les rendre exploitables.  
- Explorer les relations entre les variables sociodémographiques et les pratiques d’élevage.  
- Utiliser l’**Analyse des Correspondances Multiples (ACM)** pour identifier les dimensions principales expliquant les comportements d’élevage.  
- Réaliser une **classification des individus** (HCPC) afin de mettre en évidence des profils homogènes d’éleveurs.  

---

## Données
Le fichier `ladoum.csv` contient :  
- **Caractéristiques sociodémographiques** : sexe, âge, ethnie, statut matrimonial, niveau d’étude.  
- **Pratiques d’élevage** : nombre de brebis, taille du cheptel total, durée d’élevage, type d’habitat, type de propriété.  
- **Motivations** : économique, héritage, affection.  
- **Localisation de la bergerie** : urbain, péri-urbain, rural.  

---

## Méthodologie

1. **Prétraitement**
   - Suppression de variables peu informatives (ex. religion avec une seule modalité).  
   - Transformation des variables qualitatives en facteurs.  
   - Regroupement des variables quantitatives en classes d’intervalles (âge, durée, effectifs).  

2. **Analyse bivariée**
   - Tableaux de contingence entre toutes les variables qualitatives.  
   - Tests du **Chi-deux** et tests exacts de **Fisher** pour mesurer l’indépendance des variables.  

3. **Analyse des Correspondances Multiples (ACM)**
   - Réalisée avec le package `FactoMineR`.  
   - Sélection des axes principaux via l’analyse des valeurs propres.  
   - Représentation graphique des individus et des modalités.  

4. **Classification**
   - Méthode de **Classification Hiérarchique sur Composantes Principales (HCPC)**.  
   - Segmentation des éleveurs en groupes homogènes.  
   - Interprétation des classes par variables, modalités et axes principaux.  

---

## Prérequis

### Logiciel
- R (version ≥ 4.0 recommandé)  
- RStudio (optionnel mais conseillé)  

### Packages R
```R
install.packages("FactoMineR")
install.packages("dplyr")   # optionnel
