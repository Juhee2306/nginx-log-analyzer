FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive


LABEL maintainer="Juhee Lavanya"
LABEL description="A CLI tool to analyze NGINX access logs using Bash"


RUN apt-get update && \
    apt-get install -y --no-install-recommends bash coreutils gawk && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*


WORKDIR /app


COPY analyze-log.sh .


RUN chmod +x analyze-log.sh


ENTRYPOINT ["./analyze-log.sh"]
