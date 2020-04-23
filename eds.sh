#EDS

TZ=Europe/Minsk
H 7 * * *

cd aismv/Router/Eds
mvn clean package
cp -f ./application/target/eds-0.0.1-SNAPSHOT.jar ./eds.jar
docker build -t 172.16.9.49:30020/aismv/router/aismv-router-eds:$BUILD_NUMBER -f Dockerfile_aismv . && docker push 172.16.9.49:30020/aismv/router/aismv-router-eds:$BUILD_NUMBER && docker rmi 172.16.9.49:30020/aismv/router/aismv-router-eds:$BUILD_NUMBER

aismv/Router/Eds/eds_aismv.yml

aismv/Router/Eds/application/target/eds-0.0.1-SNAPSHOT.jar
