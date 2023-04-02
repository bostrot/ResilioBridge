FROM ubuntu:lunar

RUN apt-get update && apt-get install -y \
    wget \
    libc6 \
    ghdl

RUN wget https://github.com/bostrot/RustyFS/releases/download/v0.1.0/rustyfs-x86_64-unknown-linux-gnu -O /usr/local/bin/rustyfs && \
    chmod +x /usr/local/bin/rustyfs

CMD ["rustyfs", "--path", "/data", "--port", "8080", "--host", "0.0.0.0"]