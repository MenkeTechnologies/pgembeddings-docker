# pgembeddings-docker

## To build and run

```sh
docker build -t pgembedding-img .
docker run -v pgdata:/var/lib/postgresql/data -p 5432:5432 pgembedding-img
```

## To connect CLI to instance

```sh
psql -U pgembeddings_user -h localhost -d pgembeddings_db
```
# created by MenkeTechnologies

