FROM odpi/apache-atlas:2.0.0

LABEL Elliot <myy92715@gmail.com>

USER root:root
RUN apk --no-cache add curl
COPY startup.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/startup.sh

USER atlas:atlas

ENTRYPOINT ["startup.sh"]
