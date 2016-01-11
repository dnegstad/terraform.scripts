#!/bin/bash

echo "${cert}" | sudo tee /opt/vault/tls/cert.pem
sudo chmod 640 /opt/vault/tls/cert.pem

echo "${key}" | sudo tee /opt/vault/tls/key.pem
sudo chmod 640 /opt/vault/tls/key.pem
