FROM mcr.microsoft.com/openjdk/jdk:11-mariner
EXPOSE 8080
ARG JAR=spring-petclinic-2.6.0-SNAPSHOT.jar
COPY target/$JAR /app.jar
ENTRYPOINT ["java", "-XX:MaxRAMPercentage=75.0", "-jar", "/app.jar"]
## create a java entrypoint and make the MaxRAMPercentage it can use to 75% of the total ram available


