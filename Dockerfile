FROM mc2labs/nodejs
LABEL Name=mytest
COPY package.json /tmp/package.json
RUN cd /tmp \
    && npm config set registry=https://registry.npm.taobao.org/ \
    && npm install egg-scripts -g  \
    && npm install \
    && npm install -g typescript 

RUN mkdir -p /usr/src/app && mv /tmp/node_modules /usr/src/app
WORKDIR /usr/src/app
COPY . /usr/src/app
EXPOSE 7001
#CMD egg-scripts start --port 80 --daemon --title=APP_API
CMD npm run dev