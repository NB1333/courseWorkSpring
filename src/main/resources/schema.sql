DROP TABLE IF EXISTS TBL_EMPLOYEES;

CREATE TABLE TBL_EMPLOYEES (
    id INT AUTO_INCREMENT  PRIMARY KEY,
    login VARCHAR(40) NOT NULL,
    password VARCHAR(40) NOT NULL,
);