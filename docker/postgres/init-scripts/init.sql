CREATE DATABASE source_dev;

CREATE TABLE IF NOT EXISTS test (
    id SERIAL,
    name VARCHAR(255) NOT NULL,
    age INT NOT NULL,
    city VARCHAR(255) NOT NULL,
    PRIMARY KEY(id)
);

ALTER TABLE test REPLICA IDENTITY FULL;

ALTER ROLE "pguser" WITH REPLICATION LOGIN;
GRANT SELECT ON TABLE test TO "pguser";

CREATE PUBLICATION publication_role FOR ALL TABLES;

INSERT INTO test (name, age, city) VALUES ('Mike Tyson', 57, 'Las Vegas');
INSERT INTO test (name, age, city) VALUES ('Floyd Mayweather Jr', 46, 'Las Vegas');
INSERT INTO test (name, age, city) VALUES ('Canelo Alvarez', 33, 'Jalisco');
INSERT INTO test (name, age, city) VALUES ('Ryan Garcia', 25, 'Los Angeles');

