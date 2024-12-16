# Service Architecture Overview

This repository defines the architecture of a microservices-based environment using Docker Compose. The setup includes various services related to databases, message brokers, monitoring, and web services.

## Services Overview

### 1. **Application Service (app)**
- **Description**: The core application service. It is responsible for the main business logic and entry point.
- **Dependencies**: MySQL
- **Volumes**: `backup`, `logs`
- **Networks**: `network_shared`

### 2. **Message Brokers**
- **Kafka**: Apache Kafka is used for stream processing and messaging.
  - Ports: `9092:9092`, `9093:9093`
  - **Healthcheck**: Checks the availability of Kafka.
- **RabbitMQ**: A message broker with a web-based UI.
  - Ports: `5672:5672`, `15672:15672`
  - **Healthcheck**: Checks the availability of RabbitMQ.

### 3. **Message Brokers Management Tools**
- **Kafdrop**: Kafka monitoring and management UI.
  - Ports: `9001:9000`
  - Depends on: Kafka

### 4. **Databases**

- **MySQL**: A relational database management system.
  - Ports: `3306:3306`
  - **Healthcheck**: Verifies MySQL is running.
- **MongoDB**: A NoSQL database for unstructured data.
  - Ports: `27017:27017`
  - **Healthcheck**: Verifies MongoDB is running.
- **PostgreSQL**: A relational database management system with advanced features.
  - Ports: `5432:5432`
  - **Healthcheck**: Verifies PostgreSQL is running.
- **Cassandra**: A NoSQL distributed database designed for scalability.
  - Ports: `9042:9042`
- **Clickhouse**: A columnar database management system designed for online analytical processing (OLAP).
  - Ports: `9000:9000`, `8123:8123`
- **Redis**: An in-memory data store used as a cache or message broker.
  - Ports: `6379:6379`
- **InfluxDB**: A time-series database designed for monitoring.
  - Ports: `8086:8086`
- **Neo4j**: A graph database.
  - Ports: `7474:7474`, `7687:7687`
- **CouchDB**: A document-oriented NoSQL database.
  - Ports: `5984:5984`

### 5. **Database Management Tools**
- **MySQL UI (phpMyAdmin)**: A web interface for managing MySQL databases.
  - Ports: `8081:80`
  - Depends on: MySQL
- **Mongo UI (mongo-express)**: A web interface for managing MongoDB databases.
  - Ports: `8083:8081`
  - Depends on: MongoDB
- **PostgreSQL UI (pgAdmin)**: A web interface for managing PostgreSQL databases.
  - Ports: `8084:80`
  - Depends on: PostgreSQL
- **DBeaver**: A database management tool for multiple databases.
  - Ports: `8085:8080`
  - Depends on: MySQL, MongoDB, PostgreSQL, Cassandra, Redis, InfluxDB, Elasticsearch

### 6. **Elasticsearch Services**
- **Elasticsearch**: A search engine and analytics platform.
  - Ports: `9200:9200`, `9300:9300`
- **Kibana**: A UI for interacting with Elasticsearch.
  - Ports: `5601:5601`

### 7. **Monitoring Services**
- **Prometheus**: A monitoring system and time series database.
  - Ports: `9090:9090`
  - Volume: `/etc/prometheus/prometheus.yml`
- **Grafana**: A visualization tool for monitoring data.
  - Ports: `3000:3000`
  - Depends on: Prometheus

### 8. **Exporter Services (For Monitoring)**
- **MySQL Exporter**: Exports metrics from MySQL to Prometheus.
  - Ports: `9104:9104`
  - Depends on: MySQL
- **MongoDB Exporter**: Exports metrics from MongoDB to Prometheus.
  - Ports: `9216:9216`
  - Depends on: MongoDB
- **PostgreSQL Exporter**: Exports metrics from PostgreSQL to Prometheus.
  - Ports: `9187:9187`
  - Depends on: PostgreSQL
- **Kafka Exporter**: Exports metrics from Kafka to Prometheus.
  - Ports: `9308:9308`
  - Depends on: Kafka
- **Redis Exporter**: Exports metrics from Redis to Prometheus.
  - Ports: `9121:9121`
  - Depends on: Redis

### 9. **Web Services**
- **Nginx**: A web server for serving frontend content or acting as a reverse proxy.
  - Ports: `80:80`
  - Volume: `./web/nginx/nginx.conf`

## Volumes
The following named volumes are defined for persistent data storage:
- `backup`
- `logs`
- `data_kafka`
- `data_mysql`
- `data_mongodb`
- `data_postgresql`
- `data_clickhouse`
- `data_redis`
- `data_influxdb`
- `data_neo4j`
- `data_couchdb`

## Networks
The `network_shared` network is used by all services to allow communication between containers.

- **External Network**: `network_shared` is expected to be available externally or created manually.

## How to Use
1. Clone this repository.
2. Ensure that Docker and Docker Compose are installed.
3. Run the following command to start the services:
    ```
    docker-compose up -d
    ```
4. Services will be accessible via the exposed ports.

## Health Checks
Each service includes a health check configuration to monitor its availability. These checks are used to ensure services are running properly.

## Conclusion
This setup enables a fully functional microservices architecture with scalable database solutions, message brokers, monitoring, and web services. It is suitable for environments requiring extensive data management and real-time data processing.