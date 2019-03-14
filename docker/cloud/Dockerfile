FROM openjdk:8-jdk
MAINTAINER Simon <shuang@coremail.cn>

COPY docker/cloud/_root /

RUN sh /home/mailtech/bin/image-init.sh
RUN chmod a+x /home/mailtech/bin/entrypoint.sh
RUN apt-get update && apt-get -y install cron && apt-get install -y vim
CMD cron

LABEL name="Coremail Cloud Base Image" \
    vendor="Coremail Lunkr" \
    license="(None)" \
    build-date="20190314"

#ENTRYPOINT ["/home/mailtech/bin/entrypoint.sh"]
