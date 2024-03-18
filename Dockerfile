FROM alpine:3.19

ENV FOO=BAR
WORKDIR /proj
COPY main.js /proj/main.js
COPY test.js /proj/test.js
COPY package.json /proj/package.json
RUN apk add esbuild nodejs npm
# RUN npm init -y && 
RUN npm i
RUN esbuild --bundle --platform=node --minify --outfile=main.min.js  /proj/main.js


CMD node /main.js
