FROM ubuntu:latest
LABEL key="adnan"
RUN apt update
RUN sudo apt install nginx unzip -y
RUN sudo apt install 
WORKDIR /var/www/html/
COPY endgame-master.zip
RUN sudo unzip endgame-master.zip -y
MV endgame-master/* .
EXPOSE 80
CMD [ "nginx " "-g" "deamon off" ]