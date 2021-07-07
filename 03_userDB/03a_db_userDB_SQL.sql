/* USER DB Vers. 1 */

/* DB */
DROP DATABASE IF EXISTS boo;
CREATE DATABASE IF NOT EXISTS boo;
USE boo;

/* Tabelle users*/

DROP TABLE IF EXISTS users;

CREATE TABLE IF NOT EXISTS users
(
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    user_name VARCHAR(20) UNIQUE NOT NULL,
    user_pwd VARCHAR(40) NOT NULL,
    first_name VARCHAR(20) NOT NULL,
    family_name VARCHAR(20) NOT NULL
);

DESCRIBE users;

/* Daten  - Nachteil: PWD offen lesbar!! 
INSERT INTO users(user_name,user_pwd,first_name,family_name) VALUES ("max","1234","Max","Mütze");
INSERT INTO users(user_name,user_pwd,first_name,family_name) VALUES ("maxine","#7Dx0","Maxine","Mütze");
INSERT INTO users(user_name,user_pwd,first_name,family_name) VALUES ("max2","user1234","Max","Mützerich");
*/

/* Daten  - Besser: PWD verschlüsselt!*/
INSERT INTO users(user_name,user_pwd,first_name,family_name) VALUES ("max",sha1("1234"),"Max","Mütze");
INSERT INTO users(user_name,user_pwd,first_name,family_name) VALUES ("maxine",sha1("#7Dx0"),"Maxine","Mütze");
INSERT INTO users(user_name,user_pwd,first_name,family_name) VALUES ("max2",sha1("user1234"),"Max","Mützerich");

SELECT * FROM users;
