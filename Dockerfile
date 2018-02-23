FROM java:openjdk-8-alpine

WORKDIR /usr/src/app
COPY ./target/*.jar ./app.jar

ENTRYPOINT ["/usr/local/bin/java.sh","-jar","./app.jar", "--port=80"]
