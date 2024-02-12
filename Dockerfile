FROM node:20-alpine3.16 as core

ENV FOO=BAR
COPY main.js /main.js
COPY test.js /test.js

CMD node /main.js
