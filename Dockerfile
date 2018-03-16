FROM selenium/node-chrome:latest

USER root

#====================================
# Scripts to run Selenium Standalone
#====================================

COPY entry_point.sh /opt/bin/entry_point.sh

RUN set -e \
  && apt-get update \
  && apt-get install -y --force-yes --no-install-recommends fonts-wqy-microhei ttf-wqy-zenhei \
  && apt-get update && apt-get install -y ffmpeg gpac && rm -rf /var/lib/apt/lists/* \
  && chmod +x /opt/bin/entry_point.sh

USER seluser

EXPOSE 4444
