FROM thomasweise/docker-texlive-thin

RUN \
    echo "===> Update repositories" && \
    sudo apt-get update && \
    echo "===> Install jq and curl" && \
    sudo apt-get install -y --no-install-recommends curl jq && \
    echo "===> Clean up" && \
    sudo apt-get clean && \
    rm -rf /var/lib/apt/lists/*

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
