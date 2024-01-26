#Borrar comentarios si se va a correr docker composer
FROM openjdk:17-jdk-alpine
COPY target/dockerized.postgresql-0.0.1-SNAPSHOT.jar java-app.jar		#"java-app.jar" nombre de la raiz de la imagen, en vez de "target/dockerized.po...."
ENTRYPOINT ["java", "-jar", "java-app.jar"]								#Ejecutara el punto jar atravez de java cuando se levante el contenedor
#Esto creara una imagen para luego levantarla como un contenedor