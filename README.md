# Demo - Postgres / Debezium / RabbitMQ / KibaETL

This project was created with a focus on showcasing the utilization of the Debezium tool to implement a Change Data Capture (CDC) process. It effectively tracks data changes and synchronizes information with various destinations such as databases, indexers, private data stores, disks, etc.

Change Data Capture (CDC) is a technique used in databases to identify and capture changes (additions, updates, or deletions) made to the data. Instead of continuously scanning the entire database, CDC allows you to track and capture only the data that has changed since the last check. This helps in efficiently managing and replicating updates, reducing the workload on the database and improving overall performance.

Here, you'll discover setup files, docker-compose configurations, and additional resources intended to serve as a motivational starting point for your real-world projects.

## Getting Started

<img width="788" alt="Screenshot 2023-12-26 at 11 25 11" src="https://github.com/edsonma/demo_cdc_postgresql-debezium-rabbitmq-kibaetl/assets/711579/a134867b-ae11-41f1-a51b-f6c43013b297">


### Technologies
- What technologies will you find here?
  - postgresql sql database
  - debezium CDC platform
  - rabbitmq Message broker
  - kibaETL (Extract Transform and Load)
  

### Requirements

- you must have docker engine installed
  Here's an article introducing container tools for your local machine.
  [Beyond Docker: Emulation, Orchestration and Virtualization in Apple Silicon](https://oramind.com/using-docker-kubernetes-efficiently-on-macos/)

  I am Mac user, so I like [OrbStack](https://orbstack.dev/download)

- [Docker Compose](https://docs.docker.com/compose/) is used as a convenient method to effortlessly bootstrap this application.  

### Baby steps

- Clone this repo: 
```fish
  git clone [git@github.com:edsonma/demo_cdc_postgresql-debezium-rabbitmq-kibaetl.git](git@github.com:edsonma/demo_cdc_postgresql-debezium-rabbitmq-kibaetl.git)
```

- Walk to cloned directory:
```fish
  cd demo_cdc_postgresql-debezium-rabbitmq-kibaetl
```

- [LGTM](https://www.urbandictionary.com/define.php?term=Let%27s%20Get%20This%20Money) (use docker-compose)

```fish
docker compose up -d
```

## Contributing

Embrace collaboration with coding hands.
"Contribute your skills, create impact, and collaboratively shape the future of technology!"

### References

#### PostgreSQL to RabbitMQ CDC using Debezium Server
- https://blog.devops.dev/postgresql-to-rabbitmq-cdc-using-debezium-server-5c7c70de8afd
#### Debezium connector for PostgreSQL
- https://debezium.io/documentation/reference/stable/connectors/postgresql.html
#### KibaETL Page
- https://www.kiba-etl.org/

#### Based on [Gabriel Bueno](https://github.com/GabrielBueno200) CDC Demo 

- https://github.com/GabrielBueno200/DemoCDCWithRabbitMQAndNetCore/tree/main

--- 
Thank you Man! 
```
Prosit!

.~~~~.
i====i_
|cccc|_)
|cccc|
`-==-'
```
