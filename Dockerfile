FROM alpine:3.12

RUN set -xe \
    && apk add --no-cache mpd alsa-utils \
    && setcap -r /usr/bin/mpd

VOLUME /var/lib/mpd

EXPOSE 6600
CMD ["mpd", "--stdout", "--no-daemon"]
