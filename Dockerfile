FROM docker.io/library/alpine
LABEL maintainer=cybergavin@gmail.com
RUN apk update
RUN apk upgrade
RUN apk add bash curl jq util-linux
COPY whois.sh /
RUN chmod +x /whois.sh
ENTRYPOINT ["/whois.sh"]
