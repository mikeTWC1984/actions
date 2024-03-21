FROM alpine:3.19

ENV FOO=BAR
WORKDIR /proj
COPY main.js /proj/main.js
COPY test.js /proj/test.js
COPY package.json /proj/package.json
RUN apk add nodejs npm esbuild
# RUN npm init -y && 
# RUN curl -fsSL https://bun.sh/install | bash
RUN npm i ssh2 dockerode
# RUN npm i esbuild -g
# RUN esbuild --bundle --platform=node --minify --outfile=main.min.js  /proj/main.js
RUN ls -lah node_modules/


CMD node /main.js
