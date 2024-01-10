FROM thomasweise/docker-texlive-thin

RUN echo "===> Install jq and curl" && \
    apt-get install -y curl jq && \
    echo "===> Clean up" && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
