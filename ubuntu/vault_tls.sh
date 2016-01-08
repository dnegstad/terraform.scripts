#!/bin/bash

sudo cat <<EOF >/opt/vault/tls/cert.pem
${cert}
EOF

sudo cat <<EOF >/opt/vault/tls/key.pem
${key}
EOF
