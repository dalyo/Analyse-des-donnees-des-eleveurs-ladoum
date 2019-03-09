#### Importation de la base de données
## Choix du dossier de travail
setwd("C:/Users/Sid Ousmane/Desktop/ADD/projet")
ladoum <- read.csv("ladoum.csv", sep = ";", header = T)

## Suppression de la variable religion car representant une seule modalité
ladoum <- ladoum[,-6]

## Transformation des variables qualitatives en factor
ladoum$sexe<- factor(ladoum$sexe, labels = c("H","F"))
ladoum$ethnie <- factor(ladoum$ethnie,labels = c("Peul", "Wolof","Serer", "Soce") )
ladoum$statut.matrimonial <- factor(ladoum$statut.matrimonial, labels = c("Marié", "Célibataire", "Veuf"))
ladoum$niveau_etude <- factor(ladoum$niveau_etude, labels = c("Primaire", "Moyen", "Secondaire", "Supérieur"))
ladoum$type_habitat <- factor(ladoum$type_habitat, labels = c("Maison", "Ferme"))
ladoum$type_propriete <- factor(ladoum$type_propriete, labels = c("Individuel", "Collectif", "Autrui"))
ladoum$act_princ <- factor(ladoum$act_princ, labels = c("AP1", "AP2", "AP3","AP4","AP7", "AP8"))
ladoum$raison_elev <- factor(ladoum$raison_elev, labels = c("Economique", "Heritage", "Affection"))
ladoum$localisatio_bergerie<- factor(ladoum$localisatio_bergerie, labels = c("Peri-urbain", "Urbain", "Campagne"))

## Transformation des variables quantitatives en classes d'intervalles
ladoum$age <- cut(ladoum$age, c(25,45,60, 71))
levels(ladoum$age) <- c("a:25-45", "a:45-60", "a:60 et +")
ladoum$duree_elevage <- cut(ladoum$duree_elevage, c(0,10,20,40))
levels(ladoum$duree_elevage) <- c("d:0-10", "d:10-20", "d:20-40")
ladoum$nbre_brebis <- cut(ladoum$nbre_brebis, c(0,10,20,30))
levels(ladoum$nbre_brebis) <- c("b:0-10", "b:10-20", "b:20-30")
ladoum$total_ovin <- cut(ladoum$total_ovin, c(0,10,30,61))
levels(ladoum$total_ovin) <- c("o:0-10", "d:10-30", "d:30 et +")


### Exploration des liaisons des variables de la base de données deux a deux
chisq.test()
fisher.test()


## tableau de contingence
table(ladoum$sexe, ladoum$age)
table(ladoum$sexe, ladoum$ethnie)
table(ladoum$sexe, ladoum$statut.matrimonial)
table(ladoum$sexe, ladoum$niveau_etude)
table(ladoum$sexe, ladoum$type_habitat)
table(ladoum$sexe, ladoum$type_propriete)
table(ladoum$sexe, ladoum$act_princ)
table(ladoum$sexe, ladoum$duree_elevage)
table(ladoum$sexe, ladoum$raison_elev)
table(ladoum$sexe, ladoum$localisatio_bergerie)
table(ladoum$sexe, ladoum$nbre_brebis)
table(ladoum$sexe, ladoum$total_ovin)

table(ladoum$age, ladoum$ethnie)
table(ladoum$age, ladoum$statut.matrimonial)
table(ladoum$age, ladoum$niveau_etude)
table(ladoum$age, ladoum$type_habitat)
table(ladoum$age, ladoum$type_propriete)
table(ladoum$age, ladoum$act_princ)
table(ladoum$age, ladoum$duree_elevage)
table(ladoum$age, ladoum$raison_elev)
table(ladoum$age, ladoum$localisatio_bergerie)
table(ladoum$age, ladoum$nbre_brebis)
table(ladoum$age, ladoum$total_ovin)


table(ladoum$ethnie, ladoum$statut.matrimonial)
table(ladoum$ethnie, ladoum$niveau_etude)
table(ladoum$ethnie, ladoum$type_habitat)
table(ladoum$ethnie, ladoum$type_propriete)
table(ladoum$ethnie, ladoum$act_princ)
table(ladoum$ethnie, ladoum$duree_elevage)
table(ladoum$ethnie, ladoum$raison_elev)
table(ladoum$ethnie, ladoum$localisatio_bergerie)
table(ladoum$ethnie, ladoum$nbre_brebis)
table(ladoum$ethnie, ladoum$total_ovin)


table(ladoum$statut.matrimonial, ladoum$niveau_etude)
table(ladoum$statut.matrimonial, ladoum$type_habitat)
table(ladoum$statut.matrimonial, ladoum$type_propriete)
table(ladoum$statut.matrimonial, ladoum$act_princ)
table(ladoum$statut.matrimonial, ladoum$duree_elevage)
table(ladoum$statut.matrimonial, ladoum$raison_elev)
table(ladoum$statut.matrimonial, ladoum$localisatio_bergerie)
table(ladoum$statut.matrimonial, ladoum$nbre_brebis)
table(ladoum$statut.matrimonial, ladoum$total_ovin)


table(ladoum$niveau_etude, ladoum$type_habitat)
table(ladoum$niveau_etude, ladoum$type_propriete)
table(ladoum$niveau_etude, ladoum$act_princ)
table(ladoum$niveau_etude, ladoum$duree_elevage)
table(ladoum$niveau_etude, ladoum$raison_elev)
table(ladoum$niveau_etude, ladoum$localisatio_bergerie)
table(ladoum$niveau_etude, ladoum$nbre_brebis)
table(ladoum$niveau_etude, ladoum$total_ovin)


table(ladoum$type_habitat, ladoum$type_propriete)
table(ladoum$type_habitat, ladoum$act_princ)
table(ladoum$type_habitat, ladoum$duree_elevage)
table(ladoum$type_habitat, ladoum$raison_elev)
table(ladoum$type_habitat, ladoum$localisatio_bergerie)
table(ladoum$type_habitat, ladoum$nbre_brebis)
table(ladoum$type_habitat, ladoum$total_ovin)


table(ladoum$type_propriete, ladoum$act_princ)
table(ladoum$type_propriete, ladoum$duree_elevage)
table(ladoum$type_propriete, ladoum$raison_elev)
table(ladoum$type_propriete, ladoum$localisatio_bergerie)
table(ladoum$type_propriete, ladoum$nbre_brebis)
table(ladoum$type_propriete, ladoum$total_ovin)


table(ladoum$act_princ, ladoum$duree_elevage)
table(ladoum$act_princ, ladoum$raison_elev)
table(ladoum$act_princ, ladoum$localisatio_bergerie)
table(ladoum$act_princ, ladoum$nbre_brebis)
table(ladoum$act_princ, ladoum$total_ovin)


table(ladoum$duree_elevage, ladoum$raison_elev)
table(ladoum$duree_elevage, ladoum$localisatio_bergerie)
table(ladoum$duree_elevage, ladoum$nbre_brebis)
table(ladoum$duree_elevage, ladoum$total_ovin)

table(ladoum$raison_elev, ladoum$localisatio_bergerie)
table(ladoum$raison_elev, ladoum$nbre_brebis)
table(ladoum$raison_elev, ladoum$total_ovin)


table(ladoum$localisatio_bergerie, ladoum$nbre_brebis)
table(ladoum$localisatio_bergerie, ladoum$total_ovin)

table(ladoum$nbre_brebis, ladoum$total_ovin)


## fisher.test entre les deux variable qualitatives deux à deux 
fisher.test(ladoum$sexe, ladoum$age)
fisher.test(ladoum$sexe, ladoum$ethnie)
fisher.test(ladoum$sexe, ladoum$statut.matrimonial)
fisher.test(ladoum$sexe, ladoum$niveau_etude)
fisher.test(ladoum$sexe, ladoum$type_habitat)
fisher.test(ladoum$sexe, ladoum$type_propriete)
fisher.test(ladoum$sexe, ladoum$act_princ)
fisher.test(ladoum$sexe, ladoum$duree_elevage)
fisher.test(ladoum$sexe, ladoum$raison_elev)
fisher.test(ladoum$sexe, ladoum$localisatio_bergerie)
fisher.test(ladoum$sexe, ladoum$nbre_brebis)
fisher.test(ladoum$sexe, ladoum$total_ovin)

fisher.test(ladoum$age, ladoum$ethnie)
fisher.test(ladoum$age, ladoum$statut.matrimonial)
fisher.test(ladoum$age, ladoum$niveau_etude)
fisher.test(ladoum$age, ladoum$type_habitat)
fisher.test(ladoum$age, ladoum$type_propriete)
fisher.test(ladoum$age, ladoum$act_princ)
fisher.test(ladoum$age, ladoum$duree_elevage)
fisher.test(ladoum$age, ladoum$raison_elev)
fisher.test(ladoum$age, ladoum$localisatio_bergerie)
fisher.test(ladoum$age, ladoum$nbre_brebis)
fisher.test(ladoum$age, ladoum$total_ovin)


fisher.test(ladoum$ethnie, ladoum$statut.matrimonial)
fisher.test(ladoum$ethnie, ladoum$niveau_etude)
fisher.test(ladoum$ethnie, ladoum$type_habitat)
fisher.test(ladoum$ethnie, ladoum$type_propriete)
fisher.test(ladoum$ethnie, ladoum$act_princ)
fisher.test(ladoum$ethnie, ladoum$duree_elevage)
fisher.test(ladoum$ethnie, ladoum$raison_elev)
fisher.test(ladoum$ethnie, ladoum$localisatio_bergerie)
fisher.test(ladoum$ethnie, ladoum$nbre_brebis)
fisher.test(ladoum$ethnie, ladoum$total_ovin)


fisher.test(ladoum$statut.matrimonial, ladoum$niveau_etude)
fisher.test(ladoum$statut.matrimonial, ladoum$type_habitat)
fisher.test(ladoum$statut.matrimonial, ladoum$type_propriete)
fisher.test(ladoum$statut.matrimonial, ladoum$act_princ)
fisher.test(ladoum$statut.matrimonial, ladoum$duree_elevage)
fisher.test(ladoum$statut.matrimonial, ladoum$raison_elev)
fisher.test(ladoum$statut.matrimonial, ladoum$localisatio_bergerie)
fisher.test(ladoum$statut.matrimonial, ladoum$nbre_brebis)
fisher.test(ladoum$statut.matrimonial, ladoum$total_ovin)


fisher.test(ladoum$niveau_etude, ladoum$type_habitat)
fisher.test(ladoum$niveau_etude, ladoum$type_propriete)
fisher.test(ladoum$niveau_etude, ladoum$act_princ)
fisher.test(ladoum$niveau_etude, ladoum$duree_elevage)
fisher.test(ladoum$niveau_etude, ladoum$raison_elev)
fisher.test(ladoum$niveau_etude, ladoum$localisatio_bergerie)
fisher.test(ladoum$niveau_etude, ladoum$nbre_brebis)
fisher.test(ladoum$niveau_etude, ladoum$total_ovin)


fisher.test(ladoum$type_habitat, ladoum$type_propriete)
fisher.test(ladoum$type_habitat, ladoum$act_princ)
fisher.test(ladoum$type_habitat, ladoum$duree_elevage)
fisher.test(ladoum$type_habitat, ladoum$raison_elev)
fisher.test(ladoum$type_habitat, ladoum$localisatio_bergerie)
fisher.test(ladoum$type_habitat, ladoum$nbre_brebis)
fisher.test(ladoum$type_habitat, ladoum$total_ovin)


fisher.test(ladoum$type_propriete, ladoum$act_princ)
fisher.test(ladoum$type_propriete, ladoum$duree_elevage)
fisher.test(ladoum$type_propriete, ladoum$raison_elev)
fisher.test(ladoum$type_propriete, ladoum$localisatio_bergerie)
fisher.test(ladoum$type_propriete, ladoum$nbre_brebis)
fisher.test(ladoum$type_propriete, ladoum$total_ovin)


fisher.test(ladoum$act_princ, ladoum$duree_elevage)
fisher.test(ladoum$act_princ, ladoum$raison_elev)
fisher.test(ladoum$act_princ, ladoum$localisatio_bergerie)
fisher.test(ladoum$act_princ, ladoum$nbre_brebis)
fisher.test(ladoum$act_princ, ladoum$total_ovin)


fisher.test(ladoum$duree_elevage, ladoum$raison_elev)
fisher.test(ladoum$duree_elevage, ladoum$localisatio_bergerie)
fisher.test(ladoum$duree_elevage, ladoum$nbre_brebis)
fisher.test(ladoum$duree_elevage, ladoum$total_ovin)

fisher.test(ladoum$raison_elev, ladoum$localisatio_bergerie)
fisher.test(ladoum$raison_elev, ladoum$nbre_brebis)
fisher.test(ladoum$raison_elev, ladoum$total_ovin)


fisher.test(ladoum$localisatio_bergerie, ladoum$nbre_brebis)
fisher.test(ladoum$localisatio_bergerie, ladoum$total_ovin)

fisher.test(ladoum$nbre_brebis, ladoum$total_ovin)

## Utilisation de l'analyse en composante Multiple
## chargement du packages FactoMineR
library("FactoMineR")
res.mca <- MCA(ladoum)
## Affichons le diagramme des valeurs propres pour determiner le nombre d'axes.
barplot(res.mca$eig[,1])

######### typologie des individus
summary(res.mca, ncp=2, nbelements = Inf)

## ACM après retrait des individus extrème
ext.mca <- MCA(ladoum[-c(45,68,69,74,81,82,83),], ncp =3)

## Typologie des individus
plot(ext.mca, title="Graphes des individus après suppression des individus extrèmes", invisible = c("var"), autoLab = "yes")
summary(ext.mca, ncp = 2, nbelements = Inf)
#affichage des contributions

######## Typologie des modalités
dimdesc(ext.mca)

##### Classification
res.hcpc  <- HCPC(ext.mca)

## descriptiion des classes

# Description par les variables et des modalités
res.hcpc$desc.var$test.chi2
res.hcpc$desc.var$category

# Description par les composantes principales
res.hcpc$desc.axes



#4)	Visualisation les classes et le dendrogramme sur le premier plan principal de l'ACM.
plot(res.hcpc)

## 5)	Effectuation de la méthode des k-means sur ce tableau et comparaison des résultats avec ceux de la CAH.
 