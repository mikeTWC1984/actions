FROM node:20-bullseye

ENV FOO=BAR
WORKDIR /proj
COPY main.js /proj/main.js
COPY test.js /proj/test.js
COPY package.json /proj/package.json
# RUN yum install nodejs -y
# RUN npm init -y && 
# RUN curl -fsSL https://bun.sh/install | bash
RUN npm i esbuild
# RUN npm i esbuild -g
# RUN ./node_modules/esbuild/bin/esbuild --bundle --platform=node --minify --outfile=main.min.js  /proj/main.js
RUN ls -lah node_modules/


CMD node /main.js
