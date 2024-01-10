FROM thomasweise/docker-texlive-thin

RUN \
    echo "===> Update repositories" && \
    sudo apt-get update && \
    echo "===> Install jq and curl" && \
    apt-get install -y --no-install-recommends curl jq && \
    echo "===> Clean up" && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
