# pgembeddings-docker

## To build and run

```sh
docker build -t pgembedding-db .
docker run -v pgdata:/var/lib/postgresql/data -p 5432:5432 pgembedding-db
psql -U pgembeddings -h localhost pgembeddings
```

## To connect CLI to instance

```sh
psql -U pgembeddings -h localhost pgembeddings
```
# created by MenkeTechnologies

