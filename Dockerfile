FROM interactor/api-autoflow:nostart
USER root
ADD . /app/data
WORKDIR /app
RUN ["chmod", "+x", "/app/data/entry.sh"]
ENTRYPOINT ["/app/data/entry.sh"]
