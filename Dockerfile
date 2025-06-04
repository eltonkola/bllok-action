FROM eclipse-temurin:20-jdk-alpine

# 🛠 Install Git
RUN apk add --no-cache git

COPY bllok.jar /app/bllok.jar
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
