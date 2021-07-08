/* CRUD Create | Read | Update | Delete */  

# CREATE --> siehe 04a ....

# UPDATE --> Änderung in bestehender Tab.

#UPDATE cats SET cat_name = "Alonzo"; # Achtung, gesamte Spalte wird überschrieben!
#UPDATE cats SET cat_name = "Alonzo" WHERE id = 2; #Besser!
#UPDATE cats SET cat_name = "Big Alonzo" WHERE fur_color = "grey";
#SELECT * FROM cats;

/* READ - SELECT : NEUE Ergebnistabelle wird erstellt */
SELECT * FROM cats; #gesamte Tabelle
SELECT cat_name FROM cats; #Feld
SELECT cat_name,age FROM cats; #2 Felder kombiniert
SELECT age,cat_name FROM cats; #2 Felder kombiniert
SELECT cat_name AS "Name" , age AS "Alter" FROM cats; #2 Felder / neue Namen

/*Restriktionen durch WHERE*/
SELECT 
	cat_name AS "Name", 
	age AS "Alter" 
FROM cats
#WHERE id = 1
#WHERE fur_color = "red"
WHERE age > 35
;

/* Delete - DS löschen | Vorsicht!! */
#DELETE FROM cats;  # Alle Daten sind weg!!
DELETE FROM cats WHERE id = 2; #Sicher --> KEY
SELECT * FROM cats; #gesamte Tabelle

#DESCRIBE cats;