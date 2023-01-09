FROM ubuntu
RUN apt-get update && apt-get install -y openssh-server
RUN mkdir /var/run/sshd
RUN ssh-keygen -t rsa -N '' -f /root/.ssh/id_rsa
RUN cat /root/.ssh/id_rsa.pub >> /root/.ssh/authorized_keys
EXPOSE 22
CMD ["/usr/sbin/sshd", "-D"]
