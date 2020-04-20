FROM alpine:3.5
RUN apk add --no-cache --virtual .build-deps ca-certificates wget \
 && wget https://github.com/tindy2013/subconverter/releases/latest/download/subconverter_linux64.tar.gz \
 && tar -xvf subconverter_linux64.tar.gz 
RUN chmod +x subconverter
RUN ./subconverter
EXPOSE 25500
