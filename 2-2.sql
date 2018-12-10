# Exercice 1

SELECT *
FROM film
WHERE Titre = 'Speed 2' ;

SELECT p.Titre, s.Nom, p.Horaire
FROM programme p
INNER JOIN salle s
ON p.Nom_Cine = s.Nom_Cine
WHERE p.Titre = 'Eyes wide Halam' AND p.Horaire > 14.00 ;

SELECT p.Titre, s.Nom, p.Horaire
FROM programme p
INNER JOIN salle s
ON p.Nom_Cine = s.Nom_Cine
WHERE p.Titre = 'Marion' OR s.Nom > 'Diagonal Centre';

SELECT f.Acteur, f,Titre, p.Nom_Cine
FROM film f
INNER JOIN programme p
ON f.Titre = p.Titre
WHERE f.acteur = 'MF Pisier' ;

SELECT f.Acteur, f.Titre, f.Metteur_en_scene
FROM film f
LEFT OUTER JOIN film f
ON f.Acteur = f.Metteur_en_scene ;

SELECT COUNT(f.Titre), f.Metteur_en_scene
FROM film f
GROUP BY f.Metteur_en_scene
HAVING 1 >= 2 ;

SELECT f.Metteur_en_scene
FROM film f
WHERE f.titre = 'Marion'
UNION 
SELECT f.Acteur
FROM film f 
WHERE f.titre = 'Marion' ;

-- Exercie 2

SELECT d.Dragon
FROM dragon d
WHERE CracheDuFeu = 'oui' ;

SELECT d.Dragon
FROM dragon d
WHERE CracheDuFeu = 'oui' AND Sexe = 'M' ;

SELECT d.Dragon
FROM dragon d
WHERE CracheDuFeu = 'non' AND Sexe = 'F' ;

SELECT d.DragonAimant
FROM aime a ;

SELECT d.DragonAimant, d.DragonAime
FROM aime a ;
WHERE Force = 'passionnement' ;

SELECT Dragon
FROM repas
WHERE Produit = 'oeuf' ;

SELECT d.Dragon
FROM dragon d
LEFT OUTER JOIN aime a
ON d.Dragon = a.DragonAimant
WHERE d.Dragon IS NULL ;

SELECT a.DragonAimant, a,DragronAime
FROM aime a
INNER JOIN aime a
ON d.DragonAime = a.DragonAimant ;

SELECT d.Dragon
FROM dragon d
LEFT OUTER JOIN repas r
ON d.Dragon = r.Dragon
WHERE d.Dragon IS NULL ;

SELECT d.Dragon
FROM dragon d
LEFT OUTER JOIN repas r
ON d.Dragon = r.Dragon
LEFT OUTER JOIN aime a
ON d.Dragon = a.DragonAimant
WHERE d.Dragon IS NULL AND WHERE d.Dragon IS NULL ;







 


