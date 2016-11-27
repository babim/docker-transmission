FROM babim/alpinebase

Run apk add --no-cache transmission-daemon && \
    mkdir -p /data/download && \
    mkdir -p /data/watch && \
    mkdir -p /data/incomplete && \
    mkdir -p /data/config && \
    chmod 1777 /data

ENV TRANSMISSION_HOME /data/config
ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

#expose port
EXPOSE 9091
VOLUME ["/data"]
#run service
ENTRYPOINT ["/entrypoint.sh"]

#allow only local access
CMD [ "/usr/bin/transmission-daemon", "--allowed", "127.0.0.1,192.168.*.*,172.*.*.*,10.*.*.*", "--watch-dir", "/data/watch", "--encryption-preferred", "--foreground", "--config-dir", "/data/config", "--incomplete-dir", "/data/incomplete", "--dht", "--no-auth", "--download-dir", "/data/download"]
