/* QUERIES Sortierung */

USE boo;

-- ASC / DESC
--  sortieren nach Sektor / aufsteigend (alphabetisch)
/*
SELECT
    ticker AS SYM,
    c_name AS "Unternehmen",
    CONCAT(sector," | ", industry) AS "Operations"
FROM ccc_list
#ORDER BY ticker ASC
#ORDER BY ticker DESC
#ORDER BY sector,industry ASC
ORDER BY sector ASC ,industry DESC
LIMIT 20;
*/

-- sortieren nach Aktienpreis aufsteigend /absteigend (numerisch)
SELECT
    ticker AS "SYMBOL",
    c_name "Unternehmen",
    CONCAT(sector, " | ", industry) "Operations",
    price "Kurs in $",
    payouts "Zahlungen p.a.",
    no_yrs "Jahre ++" 
FROM ccc_list
#ORDER BY price ASC #beginnend mit günstigster Aktie 
#ORDER BY price DESC #beginnend mit teuerster Aktie 
ORDER BY no_yrs DESC, sector ASC # Kombi. numerisch/alphabetisch(längste Div.-Historie + Sektor)
LIMIT 20;





