#!/bin/bash

echo "${ca}" | sudo tee /opt/consul/tls/ca.pem
sudo chmod 640 /opt/consul/tls/ca.pem

echo "${cert}" | sudo tee /opt/consul/tls/cert.pem
sudo chmod 640 /opt/consul/tls/cert.pem

echo "${key}" | sudo tee /opt/consul/tls/key.pem
sudo chmod 640 /opt/consul/tls/key.pem
