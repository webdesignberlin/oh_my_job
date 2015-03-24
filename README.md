#Oh My Job : Job Teaser test

Use is online : <https://young-ocean-9975.herokuapp.com/>

To use the project you need to have :

* postgresql
* ruby =>2.1
* rails 4.2

To install it :

* `git clone https://github.com/benoittgt/oh_my_job && cd oh_my_job`
* `bundle install`
* `rake test` if you want to run the test
* `rails s` to start the project

## Le projet

L'idée du projet était de présenter un site où l'on pouvait chercher parmis un dataset fournis, des offres d'emplois.

### Choix techniques

Pour faire rapidement une app et en même temps une api json, j'ai préféré utiliser rails. En quelques heures il me paraissait plus compliqué d'utiliser une api json plus un framework js car il faut plus de recule sur l'architecture.

J'ai eu pas mal de soucis avec le dataset, qui m'a fait beaucoup perdre de temps (1h30) car c'est la première chose que j'ai essayé de faire.Le fait que le dataset soient paginé a compliqué mon import dans postgres et mes essais rapides dans mongo (avec mongoimport) n'étaient pas concluant également.

Je suis donc bloqué avec seulement 200 offres, j'ai préféré avancer sur le reste pour rester sur un format de 5h. Pour faire l'import j'ai écris rapidement un script que j'ai lancé du coup avec `rails r json_postgres_import.rb`. Le script n'est pas très beau mais remplis ça mission pour insérer les données dans postgres. J'ai choisis postgres pour faciliter le déploiement sur heroku.

Par manque de temps je suis resté sur un front plus statique et pas très sexy. Je regrette de ne pas avoir branché un framework plus adapté (j'ai tenté de prendre en compte le développement de l'api json pendant le developpement de l'app rails). J'ai voulu utiliser [pg_search](https://github.com/Casecommons/pg_search) mais le **generate** (`rails g pg_search:migration:multisearch`) ne fonctionnait pas me bloquant pour ecrire au mieux mes fonctions de recherche multiple dans mon model (j'ai [ouvert une issue à ce sujet](https://github.com/Casecommons/pg_search/issues/230).

Côté interface, j'aurais préféré proposer moins d'informations sur la page de recherche et laisser le "show" réaliser cette action, ou masquer la partie du Dom en question avec du JS de même pour la pagination, actuellement il y a 200 offres mais seul 25 sont affichées, c'est un gros soucis d'UX.

### Améliorations / Erreurs

* J'ai perdu trop de temps sur le dataset
* J'aurais préféré brancher Angular en front
* Le manque de temps ne m'a pas forcement aidé à choisir les meilleurs techno/gem
* J'aurais préféré faire mes tests avec du rspec, débugger avec better_errors et pry
* Utiliser [rails-api](https://github.com/rails-api/rails-api).
* Permettre à l'utilisateur de filtrer les éléments par salairmax/min ou par date de parution de l'annonce.
* Rendre plus lisible le front en affichant moins d'élément et en séparant le résultat de l'annonce et l'annonce en elle même.
* Pas eu le temps de réfléchir à l'affichage de statistique. 

## Conclusion

Avec mon niveau de junior, j'ai trouvé le projet difficile et très ambitieux en 4-5h. J'ai bloqué sur des points gourmands en temps. J'ai passé en tout 5h pour réaliser ceci avec une perte de temps importante pour la recherche postgres et l'import du dataset.
C'est tout de même un exercice formateur et intéressant mais j'ai encore du travail pour réaliser ce test correctement.

