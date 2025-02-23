FROM kong/kong-gateway:3.7.1.4-rhel-fips

# Directorio donde se ubicará el archivo declarativo
WORKDIR /kong

COPY ./kong ./
#COPY kong/declarative/kong.yml /kong/declarative/kong.yml


EXPOSE 8000 8443 8001 8444 8002 8445 8003 8004
