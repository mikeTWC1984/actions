FROM photon

ENV FOO=BAR
WORKDIR /proj
COPY main.js /proj/main.js
COPY test.js /proj/test.js
COPY package.json /proj/package.json
RUN yum install nodejs
# RUN npm init -y && 
# RUN curl -fsSL https://bun.sh/install | bash
RUN npm i
# RUN esbuild --bundle --platform=node --minify --outfile=main.min.js  /proj/main.js


CMD node /main.js
