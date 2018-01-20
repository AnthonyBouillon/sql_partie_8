SQL - Partie 8 : Les jointures
-- Toutes les tables à utiliser sont dans le fichier bdd.sql
-- Ligne de commande : USE development; 
Ligne de commande : SOURCE /home/bouillon/Documents/sql/sql_partie_8/bdd.sql;


Exercice 1
-- Afficher tous les frameworks associés à leurs langages. Si un langage n'a pas de framework l'afficher aussi.
Ligne de commande : 
SELECT
   `frameworks` .  `name` AS `frameworks` , `languages` . `name` AS `languages`
FROM
    `frameworks` 
     RIGHT JOIN `languages` ON frameworks.languagesId = languages.id;


Exercice 2
-- Afficher tous les frameworks associés à leurs langages. Si un langage n'a pas de framework ne pas l'afficher.
Ligne de commande : 
SELECT 
    `framework`, `languages`
FROM  
    `frameworks` 
INNER JOIN `languages` ON frameworks.languagesId = languages.id;

Exercice 3
-- Afficher le nombre de framework qu a un langage.
Ligne de commande : 
SELECT 
	`languages`.`name` AS `nameLanguage`, COUNT(`frameworks`.`name`) AS `frameworksNumber`
FROM 
	`languages` 
	LEFT JOIN `frameworks` ON `languages`.`id` = `frameworks`.`languagesId`
GROUP BY 
	`languages`.`name`;



Exercice 4
-- Afficher les langages ayant plus de 3 frameworks.
Ligne de commande : 
SELECT 
	`languages`.`name` AS `nameLanguage`, COUNT(`frameworks`.`name`) AS `frameworksNumber`
FROM 
	`languages` 
	LEFT JOIN `frameworks` ON `languages`.`id` = `frameworks`.`languagesId`
GROUP BY 
	`languages`.`name`;
HAVING COUNT(`frameworks`.`name`) < 4;