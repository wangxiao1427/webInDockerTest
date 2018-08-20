FROM mc2labs/nodejs
LABEL Name=mytest
# COPY package.json /tmp/package.json
# RUN cd /tmp \
#     && npm config set registry=https://registry.npm.taobao.org/ \
#     && npm install egg-scripts -g  \
#     && npm install \
#     && npm install -g typescript 
EXPOSE 7001
#CMD egg-scripts start --port 80 --daemon --title=APP_API
CMD node app.js