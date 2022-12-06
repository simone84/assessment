FROM mysql:latest
COPY script.sql script.sql
EXPOSE 3306