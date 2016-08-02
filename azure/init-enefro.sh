!/bin/bash
# Se lanzan todos los contenedores
docker --tls -H tcp://enefro.cloudapp.net:2376 run -—name=datos -v
/var/lib/postgresql/data ubuntu:14.04 echo "Contenedor de datos"
docker --tls -H tcp://enefro.cloudapp.net:2376 run -d-volumes-from=datos
—name=database enefro-database
docker --tls -H tcp://enefro.cloudapp.net:2376 run -d --link database:db
--name=aplicacion enefro-tomcat
docker --tls -H tcp://enefro.cloudapp.net:2376 run -p 80:80 --name=proxy
--link aplicacion:enefro -d enefro-proxy
# Se abre el Puerto 80
azure vm endpoint create enefro 80 80
