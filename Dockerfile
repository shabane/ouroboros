FROM ubuntu
RUN apt-get update && apt-get install openssh-server -y
COPY ./sshd_config /etc/ssh/sshd_config
COPY ./shadow /etc/shadow
COPY ./main.sh /code/
CMD ["/usr/bin/bash", "/code/main.sh"]