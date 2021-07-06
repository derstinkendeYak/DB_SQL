/* -------  Strukturen ----- */


/* DB boo löschen, falls vorhanden*/
DROP DATABASE IF EXISTS boo;

/* DB boo anlegen, falls noch nicht vorhanden*/
CREATE DATABASE IF NOT EXISTS boo;

/* DB auswählen */
USE boo;

/* Tabelle test löschen, falls vorhanden*/
DROP TABLE IF EXISTS boo.test;

/* 	 
	Tabelle mit id als PRIMARY KEY --> KEINE Duplikate moeglich
    DEFAULT-Werte eintragen
*/

/* Tabelle anlegen, falls noch nicht vorhanden */
CREATE TABLE IF NOT EXISTS boo.test
(
    id INT NOT NULL PRIMARY KEY,
    name VARCHAR(20) NOT NULL DEFAULT "TBA",
    age INT NOT NULL DEFAULT 0
);

/* Struktur der Tabelle anzeigen */
DESCRIBE test;

/* --------  Daten ------------ */
INSERT INTO test(id,name,age) VALUES (1,"Grizabella",29);
INSERT INTO test(id,age,name) VALUES (2,35,"Alonzo");
INSERT INTO test(id,age,name) VALUES (3,35,"Alonzo");
#INSERT INTO test(id,age,name) VALUES (4);

# Doppelte Datensätze werden zugelassen !
#INSERT INTO test(age,name) VALUES (35,"Big Alonzo");


/* -- Tabelleninhalte anzeigen -- */
SELECT * FROM test;



