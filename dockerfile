#Pulling a base image
FROM ubuntu
#Setting up workdir to copy all tha code inside tha container
WORKDIR /app
#To update ubuntu os
RUN apt-get update -y
#To install apache2 webserver
RUN apt-get apache2 -y
#Copy the code from local to inside the docker image
COPY . /var/www/html
#start apache start server
ENTRYPOINT apachect1 -D FOREGROUND
