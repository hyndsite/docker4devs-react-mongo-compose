FROM mongo:latest

MAINTAINER Max McCarty

RUN apt-get update && apt-get install -y netcat-traditional netcat-openbsd

COPY ./.docker/mongo_scripts /mongo_scripts

RUN chmod +rx /mongo_scripts/*.sh
RUN touch /.firstrun

EXPOSE 27017

CMD ["/mongo_scripts/primer.sh"]