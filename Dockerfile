FROM alpine:3.19

ENV FOO=BAR
WORKDIR /proj
COPY main.js /proj/main.js
COPY test.js /proj/test.js
RUN apk add esbuild nodejs npm
RUN npm init -y && npm i ssh2 dockerode

RUN esbuild --bundle --minify --outfile=main.min.js  main.js


CMD node /main.js
