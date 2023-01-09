#!/bin/bash

echo "Starting SSH server..."

ID_RSA=$(docker run -d -p 22:22 ssh-server cat /root/.ssh/id_rsa)

echo "Private key: $ID_RSA"
echo "Connect to the server using: 'ssh -i $ID_RSA root@localhost' <-root@localhost is only example, use your own creditentials"
