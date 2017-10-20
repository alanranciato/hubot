FROM ubuntu:16.04
ENV APP_PATH /usr/src/app
ENV BOT_NAME "mybot"
ENV BOT_OWNER "No owner"
ENV BOT_DESC "hubot with shell adapter"
ENV BOT_TYPE "shell"

RUN apt-get update && \
    apt-get -y install python build-essential apt-utils curl git
RUN curl -sL https://deb.nodesource.com/setup_6.x| bash -
RUN apt-get -y install nodejs ruby-full
RUN npm install -g coffee-script yo generator-hubot \
      && useradd hubot -m -u 1000
COPY init.sh /init.sh
RUN chmod a+x /init.sh
## Initially create an app
RUN mkdir -p $APP_PATH /tmp && chown -R hubot:hubot $APP_PATH
USER hubot
WORKDIR $APP_PATH
RUN yo hubot --defaults --owner="$BOT_OWNER" --name="$BOT_NAME" --description="$BOT_DESC" && npm install coffee-script --save
USER root
RUN npm install && rm hubot-scripts.json

EXPOSE 8123
EXPOSE 5858

USER hubot
CMD ["/init.sh"]
