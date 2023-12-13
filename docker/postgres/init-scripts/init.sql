CREATE DATABASE source_dev;

CREATE TABLE IF NOT EXISTS test (
    id SERIAL,
    name VARCHAR(255) NOT NULL,
    age INT NOT NULL,
    city VARCHAR(255) NOT NULL,
    PRIMARY KEY(id)
);

ALTER TABLE test REPLICA IDENTITY FULL;
CREATE PUBLICATION publication_role FOR ALL TABLES;

ALTER ROLE "pguser" WITH REPLICATION LOGIN;

GRANT SELECT ON TABLE test TO "pguser";
GRANT CONNECT ON DATABASE "source_db" TO "pguser";

GRANT USAGE ON SCHEMA "public" TO  "pguser";
GRANT TEMPORARY ON DATABASE "source_db" TO "pguser";
GRANT USAGE ON SCHEMA pg_catalog TO pguser;

GRANT pg_read_all_settings TO pguser;
GRANT pg_read_all_stats TO pguser;

INSERT INTO test (name, age, city) VALUES ('Mike Tyson', 57, 'Las Vegas');
INSERT INTO test (name, age, city) VALUES ('Floyd Mayweather Jr', 46, 'Las Vegas');
INSERT INTO test (name, age, city) VALUES ('Canelo Alvarez', 33, 'Jalisco');
INSERT INTO test (name, age, city) VALUES ('Ryan Garcia', 25, 'Los Angeles');

