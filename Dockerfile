FROM wiremock/wiremock:3.0.0-1

COPY wiremock /home/wiremock

ENTRYPOINT ["/bin/bash", "-c", "/docker-entrypoint.sh", "--global-response-templating", "--disable-gzip", "--verbose"]