FROM node:20-alpine3.19 as core

ENV FOO=BAR
COPY main.js /main.js
COPY test.js /test.js
RUN npm init -y
RUN apk add esbuild 
RUN esbuild --bundle --minify  /main.js


CMD node /main.js
