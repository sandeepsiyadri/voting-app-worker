FROM maven

WORKDIR /code

COPY pom.xml  /code/
COPY src/main /code/src/main

RUN mvn package

CMD java  -jar target/worker-jar-with-dependencies.jar
