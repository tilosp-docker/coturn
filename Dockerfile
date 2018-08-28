FROM debian:stretch

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive \
    apt-get install -y \
            coturn \
            curl \
            procps \
            --no-install-recommends \
    && rm -rf /var/lib/apt/lists/*

EXPOSE 3478 3478/udp
CMD ["turnserver"]
