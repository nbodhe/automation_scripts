#!/bin/bash

yum install java-1.8.0-openjdk.x86_64 -y
wget https://downloads.apache.org/tomcat/tomcat-8/v8.5.54/bin/apache-tomcat-8.5.54.zip
unzip apache-tomcat-8.5.54.zip
service firewalld stop
#ufw disable
cd apache-tomcat-8.5.54/bin/
bash catalina.sh start
cd ../webapps/
wget https://github.com/AKSarav/SampleWebApp/raw/master/dist/SampleWebApp.war


##Open port 8080 in NSG in Azure/AWS
##URL to Open Sample App- ip:8080/SampleWebApp

