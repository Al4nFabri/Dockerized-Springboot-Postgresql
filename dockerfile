#Borrar comentarios si se va a correr docker composer
FROM openjdk:17-jdk-alpine
COPY target/dockerized.postgresql-0.0.1-SNAPSHOT.jar java-app.jar		
ENTRYPOINT ["java", "-jar", "java-app.jar"]								
#Esto creara una imagen para luego levantarla como un contenedor