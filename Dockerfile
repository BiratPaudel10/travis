FROM ubuntu:20.04

RUN apt update && apt install -y openssh-client curl tmate python3

COPY vps.sh /vps.sh
RUN chmod +x /vps.sh

CMD ["/vps.sh"]
