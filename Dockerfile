FROM surgecloud/kicad-base:latest

MAINTAINER tomasz@napierala.org

WORKDIR /root

RUN apt-get update && apt-get install -y --no-install-recommends \
    tree \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*


COPY drone-ibom.sh /bin/
COPY InteractiveHtmlBom /usr/src/
RUN chmod +x /bin/drone-ibom.sh

ENTRYPOINT ["/bin/drone-ibom.sh"]
