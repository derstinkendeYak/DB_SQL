/* QUERIES Filtern mit WHERE */

USE boo;

-- Index
/*
    Eingrenzen/Filtern WHERE & AND/OR etc.
    Eingrenzen/Filtern WHERE & LIKE + Parameter
    Eingrenzen/Filtern WHERE & RegEx
    Eingrenzen/Filtern WHERE & IN / NOT IN
    Eingrenzen/Filtern WHERE & BETWEEN / NOT BETWEEN
*/


--  Eingrenzen/Filtern WHERE & AND/OR etc.
SELECT
    ticker AS "SYMBOL",
    c_name "Unternehmen",
    CONCAT(sector, " | ", industry) "Operations",
    price "Kurs in $",
    payouts "Zahlungen p.a.",
    dividend "Dividende" 
FROM ccc_list
-- Einzeldaten / Strings
WHERE sector = "Communication Services"
#ORDER BY price ASC #beginnend mit günstigster Aktie 
ORDER BY industry ASC
LIMIT 20;





