CREATE EXTENSION if not exists pgcrypto;

update userss set password = crypt(password, gen_salt('bf', 8));