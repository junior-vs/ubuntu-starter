#!/bin/bash

#verificar se nao ha versao mais recente
wget --quiet http://mirror.nbtelecom.com.br/apache/maven/maven-3/3.6.3/binaries/apache-maven-3.6.3-bin.tar.gz -P /tmp

sudo tar xf /tmp/apache-maven-*.tar.gz -C /opt
sudo ln -s /opt/apache-maven-3.6.3 /opt/maven

#Setup environment variables
#Automatizar esse passo

# > sudo nano /etc/profile.d/maven.sh


#export JAVA_HOME=/usr/lib/jvm/java-14-oracle
#export M2_HOME=/opt/maven
#export MAVEN_HOME=/opt/maven
#export PATH=${M2_HOME}/bin:${PATH}
#sudo chmod +x /etc/profile.d/maven.sh
#source /etc/profile.d/maven.sh
#mvn -version
