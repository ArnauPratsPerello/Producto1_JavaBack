# Usa una imagen de Java 17 como base
FROM openjdk:17-alpine

# Copia el archivo JAR compilado en el contenedor en el directorio /app
COPY Producto1-0.0.1.jar /app/Producto1.jar

# Exponer el puerto 8080 para que pueda ser accesible desde fuera del contenedor
EXPOSE 8080

# Comando para ejecutar la aplicación Spring Boot cuando se inicie el contenedor
CMD ["java", "-jar", "/app/Producto1.jar"]