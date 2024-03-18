FROM alpine:3.19

ENV FOO=BAR
WORKDIR /proj
COPY main.js main.js
COPY test.js test.js
RUN apk add esbuild nodejs
RUN npm init -y && npm i ssh2 dockerode

RUN esbuild --bundle --minify  main.js


CMD node /main.js
