#!/bin/bash

sudo cat <<EOF >/opt/consul/tls/ca.pem
${ca}
EOF

sudo cat <<EOF >/opt/consul/tls/cert.pem
${cert}
EOF

sudo cat <<EOF >/opt/consul/tls/key.pem
${key}
EOF