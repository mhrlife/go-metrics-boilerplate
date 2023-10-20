# GoMetricsStack
A robust boilerplate equipped with Golang, Redis, MySQL, Grafana, and Prometheus, ensuring a seamless and monitored backend setup.

## Features
- **Golang Application**: Core application to jump-start your project.
- **Redis**: High-speed in-memory data structure store.
- **MySQL**: Widely-used relational database.
- **Grafana**: Monitoring solution with pre-configured dashboards for Redis and MySQL.
- **Prometheus**: Monitoring toolkit collecting metrics from Redis and MySQL.
## Setup and Usage
#### Clone the Repository 
```bash
git clone https://github.com/mhrlife/go-metrics-boilerplate.git
cd go-metrics-boilerplate
```
#### Build & Run Services
Use the following command to start all associated services:

```bash
docker-compose up --build
```
## Accessing Services
- **Grafana**: Navigate to http://localhost:3000 in your browser. Default credentials are **admin** for both username and password, but remember to change these later.
- **Prometheus**: It's available at http://localhost:9090. 

## Monitoring
   Once the services are up, Prometheus begins collecting metrics from Redis and MySQL. Visualize and analyze this data in Grafana with the included dashboards.

## Database Configurations
By default, the MySQL database name is set to **dbname** and the root password is **a-random-mysql-password**.

#### Changing Database Credentials

Update the `MYSQL_DATABASE` and `MYSQL_ROOT_PASSWORD` values in `docker-compose.yml` and 
the credentials in `./config/mysql-exporter/.my.cnf` to reflect your changes.
---
Your insights, enhancements, and contributions are highly valued and appreciated. Feel free to open issues or submit pull requests to help make this project even better!