## Installation der Bachelorarbeit

**Voraussetzung**: Docker und Docker-Compose >= 2.13, Python >= 3.10

Bauen der Images für das Frontend, Backend und den Service.
```bash
    $ sudo docker compose -f '/mnt/c/.../docker-compose.build.yml' build 
```
Starten der MySQL Datenbank, Redis Cache, RabbitMQ, Elasticsearch und Grafana.
```bash
    $ sudo docker compose -f '/mnt/c/.../docker-compose.core.yml' up -d 
```
Starten des Backends und Frontends.
```bash
    $ sudo docker compose -f '/mnt/c/.../docker-compose.worker.yml' up -d 
```
Der Service kann unter Docker nicht ausgeführt werden. 
Dieser muss direkt auf dem Hostsystem gestartet werden. 
Dazu müssen der Python Umgebung folgende Environment-Variablen 
zur Verfügung gestellt werden:

| Key         | Value                 |
|:------------|:----------------------|
| RABBIT_HOST | localhost             |
| ELASTIC_URL | http://localhost:9200 |

In Pycharm können die Environments beim Staten des Skripts wie folgt festgelegt werden:
```RABBIT_HOST=localhost;ELASTIC_URL=http://localhost:9200```

Anschließend kann das Frontend unter der URL http://localhost:4200 erreicht werden.