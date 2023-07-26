FROM postgres

ENV POSTGRES_USER pgembeddings_user
ENV POSTGRES_PASSWORD pgembeddings
ENV POSTGRES_DB pgembeddings_db

RUN apt update
RUN apt install -y git make gcc g++ postgresql-server-dev-15 bash
RUN git clone https://github.com/neondatabase/pg_embedding && cd pg_embedding && make && cp embedding.so $(pg_config --pkglibdir) && cp embedding.control $(pg_config --sharedir)/extension && cp embedding--*.sql $(pg_config --sharedir)/extension
COPY init-embeddings.sh /docker-entrypoint-initdb.d/

ENV LC_CTYPE en_US.UTF-8
USER postgres
EXPOSE 5432
ENTRYPOINT ["/bin/bash", "-x", "/usr/local/bin/docker-entrypoint.sh", "postgres"]



