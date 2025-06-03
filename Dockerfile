FROM eclipse-temurin:17-jdk-alpine

COPY bllok-1.0-SNAPSHOT.jar /app/bllok.jar
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
