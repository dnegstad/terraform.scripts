#!/bin/bash

METADATA_INSTANCE_ID=`curl http://169.254.169.254/2014-02-25/meta-data/instance-id`

sudo sed -i -- "s/{{ address }}/${private_ip}/g" /opt/vault/vault_config.hcl

sudo service vault restart

echo "Vault config updated"

exit 0
