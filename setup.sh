#!/bin/bash
sudo sysctl -w vm.max_map_count=262144;

# Navega para o diretório /exporters/http
cd exporters/http/

# Constrói a imagem Docker
sudo docker build -f Dockerfile . -t chamada-http:0.1

# Navega para o diretório /exporters/apiastronauta
cd ../apiastronauta/

# Constrói a imagem Docker 
sudo docker build -f Dockerfile . -t api-astronauta:0.1

# Volta para o diretorio
cd ../../

sudo docker-compose up -d 

