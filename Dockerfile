FROM alpine:3.19

ENV FOO=BAR
WORKDIR /proj
COPY main.js /proj/main.js
COPY test.js /proj/test.js
RUN apk add esbuild nodejs npm
RUN npm init -y && npm i ssh2 dockerode

RUN esbuild --bundle --platform=node --minify --outfile=main.min.js  /proj/main.js


CMD node /main.js
