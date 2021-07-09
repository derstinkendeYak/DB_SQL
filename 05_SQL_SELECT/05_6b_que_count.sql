/* QUERIES - count()*/

USE boo;

/* Links:
    https://dev.mysql.com/doc/refman/5.6/en/counting-rows.html
    https://dev.mysql.com/doc/refman/5.6/en/group-by-handling.html
    https://dev.mysql.com/doc/refman/5.6/en/aggregate-functions.html#function_count-distinct
*/

-- Welche VERSCHIEDENEN Sektoren ?
SELECT
    DISTINCT sector Industriesektoren
FROM ccc_list
ORDER BY sector ASC
;

-- Wieviele VERSCHIEDENE Sektoren ?
SELECT
    COUNT(DISTINCT sector) "Anzahl Sektoren"
FROM ccc_list
;








