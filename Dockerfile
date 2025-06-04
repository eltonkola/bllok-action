FROM eclipse-temurin:20-jdk-alpine

COPY bllok.jar /app/bllok.jar
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
