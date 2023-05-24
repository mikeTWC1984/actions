FROM alpine:3.16 as core

RUN echo 123 > /test

CMD cat /test
