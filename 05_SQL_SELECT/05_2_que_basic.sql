/* QUERIES Basic */

USE boo;

/*
Felder abfragen
Felder kombinieren
Ausgabe beschränken
*/

-- Abfrage aller Spalten der Tab
#SELECT * FROM boo.ccc_list;

-- Begrenzung: 5 Zeilen ab 0
SELECT 
    * 
FROM ccc_list
#LIMIT 5 # 5 Zeilen ab Anfang (1)
LIMIT 200,10 # 10 Zeilen ab 200
;

