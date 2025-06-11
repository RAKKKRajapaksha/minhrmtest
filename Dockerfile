FROM php:8.2-cli-alpine

RUN adduser -D -g '' minhrmnewuser

WORKDIR /app

COPY index.php .

RUN chown -R minhrmnewuser:minhrmnewuser /app
USER minhrmnewuser

CMD ["php", "-S", "0.0.0.0:80", "index.php"]
