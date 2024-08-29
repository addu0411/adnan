FROM ubuntu:latest
LABEL key="adnan"
RUN apt update
RUN sudo apt install nginx unzip -y
RUN sudo apt install 
WORKDIR /var/www/html/
COPY endgame-master.s