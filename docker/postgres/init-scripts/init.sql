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