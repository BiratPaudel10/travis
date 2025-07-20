FROM ubuntu:20.04

RUN apt update && apt install -y openssh-client curl tmate

CMD curl -s https://raw.githubusercontent.com/BiratPaudel10/travis/main/vps.sh | bash
