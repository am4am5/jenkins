#EDMS
#git@git.icdc.io:gov/govby.git  
#branch */aismv-dev
cd ./aismv/EDMS
mvn clean
mvn package
mv ./target/edms-0.0.1-SNAPSHOT.jar ./target/edms.jar
rm -rf /opt/dockerImages/aismv/EDMS/jar/*
/bin/cp -rf ./target/edms.jar /opt/dockerImages/aismv/EDMS/jar/

#EDMS-Image
cd /opt/dockerImages/aismv/EDMS/ 
docker build -t 172.16.9.49:30020/micro/aismv-edms-jar:latest . && docker push 172.16.9.49:30020/micro/aismv-edms-jar:latest  && docker rmi 172.16.9.49:30020/micro/aismv-edms-jar:latest

#ssh jenkins@172.16.9.47:22
kubectl rollout restart deployment/aismv-edms-jar
