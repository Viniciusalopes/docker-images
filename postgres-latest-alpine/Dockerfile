FROM postgres:alpine
LABEL mantainer = 'Vovolinux <vinicius@viniciusalopes.com.br>'

# UUID extension
COPY uuid.sql /docker-entrypoint-initdb.d

EXPOSE 5432
CMD ["postgres"]

# On my machine, it works!
# (Vovolinux)
