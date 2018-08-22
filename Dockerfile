FROM mhart/alpine-node:8.9.3
LABEL Name=mytest
  RUN npm config set registry=https://registry.npm.taobao.org/ \
      && npm install egg-scripts -g  \
      && npm install \
      && npm install -g typescript 
EXPOSE 7001
#CMD egg-scripts start --port 80 --daemon --title=APP_API
CMD npm run dev