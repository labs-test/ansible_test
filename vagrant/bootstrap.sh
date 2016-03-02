#!/usr/bin/env bash 

set -ex

# Setup local user and add public key
adduser --disabled-password --gecos "" bach
sudo -H -u bach sh -c 'mkdir -m 700 ${HOME}/.ssh'
sudo -H -u bach sh -c 'echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDAZlbUJhMA/86mq99YjJKRehC4fYv0QUGbaxOiNnfPfp7UJm0sr8ZOVjlmf9dqIQbBUe2qn1C6N2EOZtf+hG2d2j6sKgi/I+SUD/2yUmcmHgI/sAjGUTx8KyrlzUiWzn5NmjvHt1YWn68Z9f7qup7cs8Tje3NDzPP5DDkzz9+c+UEgLjnkpfJKWdR7/M2GlsT+FIQC7hT/ETWu127Q6pLY+IQ88LFC8kWLy5RzJfltfXsPO+qS4PyZaCQe3oiYY69GJ6/p9+XrQ+/iwY61YFBEcdYLkRQi24W+Tt4P02YfhXjVreMZYOZKSNia3iOu2NQ3guBwDF3llWGshXOih0HL" > ${HOME}/.ssh/authorized_keys'
chmod 600 /home/bach/.ssh/authorized_keys
echo "bach ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/bach
