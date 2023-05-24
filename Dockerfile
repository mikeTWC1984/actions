FROM node:20-alpine3.16 as core

COPY main.js /main.js
COPY test.js /test.js

CMD node /main.js
