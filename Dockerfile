FROM openjdk:11-jre-slim

RUN apt-get update && apt-get install -y git

ADD https://repo1.maven.org/maven2/com/madgag/bfg/1.13.0/bfg-1.13.0.jar /usr/local/bin/bfg.jar

ENTRYPOINT ["java", "-jar", "/usr/local/bin/bfg.jar"]
