# Etapa 1: Build com JDK 21
FROM eclipse-temurin:21-jdk-alpine AS build

WORKDIR /app

# Copia os arquivos do projeto para dentro do container
COPY . .

# Executa o build Maven usando o Maven Wrapper (./mvnw)
RUN ./mvnw clean package -DskipTests

# Etapa 2: Executar a aplicação
FROM eclipse-temurin:21-jre-alpine

WORKDIR /app

# Copia o .jar gerado na etapa de build para a imagem final
COPY --from=build /app/target/medicalconsult-0.0.1-SNAPSHOT.jar app.jar

# Expõe a porta (ajuste conforme sua aplicação)
EXPOSE 8080

# Comando para rodar a aplicação
ENTRYPOINT ["java", "-jar", "app.jar"]
