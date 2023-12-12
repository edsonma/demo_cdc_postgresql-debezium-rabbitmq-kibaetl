# Demo - Postgres / Debezium / RabbitMQ 

This project was created with a focus on showcasing the utilization of the Debezium tool to implement a Change Data Capture (CDC) process. It effectively tracks data changes and synchronizes information with various destinations such as databases, indexers, private data stores, disks, etc.

Change Data Capture (CDC) is a technique used in databases to identify and capture changes (additions, updates, or deletions) made to the data. Instead of continuously scanning the entire database, CDC allows you to track and capture only the data that has changed since the last check. This helps in efficiently managing and replicating updates, reducing the workload on the database and improving overall performance.

Here, you'll discover setup files, docker-compose configurations, and additional resources intended to serve as a motivational starting point for your real-world projects.

## Getting Started

### Technologies
- What technologies will you find here?
  - postgresql sql database
  - debezium CDC platform
  - rabbitmq message broker
  

### Requirements

- you must have docker engine installed
  Here's an article introducing container tools for your local machine <linkit>
  Complete with installation instructions here <linkit>.

- Docker Compose <linkit> is used as a convenient method to effortlessly bootstrap this application.  

### Baby steps

- Clone this repo: 
```fish
  git clone <link>
```

- Walk to cloned directory:
```fish
  cd cdc_demo-rabbitmq-debezium-postgresql
```

- LGTM (use docker-compose)

```fish
docker compose up -d
```

## Contributing

Embrace collaboration with coding hands.
"Contribute your skills, create impact, and collaboratively shape the future of technology!"

### References

## Debezium connector for PostgreSQL
- https://debezium.io/documentation/reference/stable/connectors/postgresql.html

## Based on https://github.com/GabrielBueno200 CDC Demo
- https://github.com/GabrielBueno200/DemoCDCWithRabbitMQAndNetCore/tree/main

Thank you Man! 
