# Utiliza una imagen base de OpenJDK 11
FROM openjdk:17-jre-slim

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia el archivo JAR de la aplicación Spring Boot desde la máquina anfitriona al contenedor
COPY target/springboot-servicio-productos-0.0.1-SNAPSHOT.jar /app/springboot-servicio-productos-0.0.1-SNAPSHOT.jar

# Puerto en el que se ejecutará la aplicación Spring Boot dentro del contenedor
EXPOSE 8080

# Comando para ejecutar la aplicación Spring Boot
CMD ["java", "-jar", "springboot-servicio-productos-0.0.1-SNAPSHOT.jar"]
