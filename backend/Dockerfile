FROM bitnami/java:1.8-prod
ADD ./jar/edms.jar /opt/bitnami/java/bin/
EXPOSE 8080
WORKDIR /opt/bitnami/java/bin
CMD java -Xmx1024M -jar edms.jar
