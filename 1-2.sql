-- Contraintes d'integrites fonctionnelles 

ALTER TABLE artiste
ADD CONSTRAINT pk_artiste PRIMARY KEY artiste(nom) ;

ALTER TABLE film
ADD CONSTRAINT pk_film PRIMARY KEY film(titre) ;

ALTER TABLE joue
ADD CONSTRAINT pk_joue PRIMARY KEY joue(titre, acteur) ;

ALTER TABLE avu
ADD CONSTRAINT pk_avu PRIMARY KEY avu(spectateur) ;

ALTER TABLE aime
ADD CONSTRAINT pk_aime PRIMARY KEY aime(spectateur, titre) ;


-- Contraintes d'integrites referentielles

ALTER TABLE film
ADD CONSTRAINT fk_film_realise 
FOREIGN KEY film(realisateur) 
REFERENCES artiste(nom) ;

ALTER TABLE joue
ADD CONSTRAINT fk_joue_film
FOREIGN KEY joue(titre)
REFERENCES artiste(nom) ;

ALTER TABLE seance
ADD CONSTRAINT fk_seance_titre
FOREIGN KEY seance(titre)
REFERENCES film(titre) ;

ALTER TABLE avu
ADD CONSTRAINT fk_avu_film
FOREIGN KEY avu(titre)
REFERENCES film(titre) ;

ALTER TABLE aime
ADD CONSTRAINT fk_aime_film
FOREIGN KEY aime(titre)
REFERENCES film(titre) ;

-- Contrainte de domaine

ALTER TABLE seance
ADD CONSTRAINT nb_salles
CHECK id <= 10 ;

ALTER TABLE seance
ADD CONSTRAINT heure_ouverture
CHECK horaire >= 10 AND horaire <= 00 ;

