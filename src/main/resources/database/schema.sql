DROP TABLE IF EXISTS userss;

CREATE TABLE userss (
    id    BIGSERIAL PRIMARY KEY ,
    username  VARCHAR(20) NOT NULL ,
    password VARCHAR(20) NOT NULL
);