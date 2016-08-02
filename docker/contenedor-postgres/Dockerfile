FROM postgres
RUN mkdir -p /opt/POSTGRESDB/TS_ENEFRO_SEVILLAROCIO_TMP /opt/POSTGRESDB/TS_ENEFRO_SEVILLAROCIO_DATOS /opt/POSTGRESDB/TS_ENEFRO_SEVILLAROCIO_IDX
RUN chown postgres:postgres -R /opt/*
RUN echo "listen_addresses='*'" >> /var/lib/postgresql/data/postgresql.conf
ADD scripts/ /docker-entrypoint-initdb.d
