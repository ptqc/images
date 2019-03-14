FROM openjdk:8-jdk
MAINTAINER Simon <shuang@coremail.cn>

COPY _root /

RUN sh /home/mailtech/bin/image-init.sh
RUN chmod a+x /home/mailtech/bin/entrypoint.sh

LABEL name="Coremail Cloud Base Image" \
    vendor="Coremail Lunkr" \
    license="(None)" \
    build-date="20190314"

ENTRYPOINT ["/home/mailtech/bin/entrypoint.sh"]
