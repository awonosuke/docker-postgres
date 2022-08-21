# docker-postgresql

this is practice repository (Docker and PostgreSQL).

# License
MIT License.


### how to get into container
```
$ docker compose exec service_name bash
```
or
```
$ docker exec -it container_name /bin/sh
```
then, we can use psql command and others.
```
# psql -h localhost -U POSTGRES_USER
```
