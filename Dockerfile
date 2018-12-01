FROM surgecloud/kicad-base:latest

MAINTAINER tomasz@napierala.org

WORKDIR /root

COPY drone-ibom.sh /bin/
COPY InteractiveHtmlBom /usr/src/
RUN chmod +x /bin/drone-ibom.sh

ENTRYPOINT ["/bin/drone-ibom.sh"]
