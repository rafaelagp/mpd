FROM debian:buster-slim

RUN apt-get update
RUN apt-get install mpd alsa-utils -y
RUN rm -rf /var/lib/apt/lists/*

VOLUME /var/lib/mpd

EXPOSE 6600
CMD ["mpd", "--stdout", "--no-daemon"]
