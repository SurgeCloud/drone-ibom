FROM surgecloud/kicad-base

MAINTAINER tomasz@napierala.org

COPY drone-ibom.sh /bin/
RUN chmod +x /bin/drone-ibom.sh

ENTRYPOINT ["/bin/drone-ibom.sh"]
