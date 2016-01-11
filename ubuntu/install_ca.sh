#!/bin/bash

echo "${ca}" | sudo tee /usr/local/share/ca-certificates/${name}.crt
sudo update-ca-certificates

echo "CA Updated"
