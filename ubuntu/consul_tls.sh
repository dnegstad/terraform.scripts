#!/bin/bash

sudo cat <<EOF >/opt/consul/tls/ca.pem
${ca}
EOF
sudo chown root:consul /opt/consul/tls/ca.pem
sudo chmod 640 /opt/consul/tls/ca.pem

sudo cat <<EOF >/opt/consul/tls/cert.pem
${cert}
EOF
sudo chown root:consul /opt/consul/tls/cert.pem
sudo chmod 640 /opt/consul/tls/cert.pem

sudo cat <<EOF >/opt/consul/tls/key.pem
${key}
EOF
sudo chown root:consul /opt/consul/tls/key.pem
sudo chmod 640 /opt/consul/tls/key.pem
