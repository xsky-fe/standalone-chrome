docker build -t standalone-chrome . \
  && docker tag standalone-chrome xskyfe/standalone-chrome \
  && docker push xskyfe/standalone-chrome