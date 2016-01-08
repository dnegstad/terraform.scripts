#!/bin/bash

METADATA_INSTANCE_ID=`curl http://169.254.169.254/2014-02-25/meta-data/instance-id`

sed -i -- "s/{{ address }}/${private_ip}/g" /etc/vault.d/vault_config.hcl

service vault restart

echo "Vault config updated"

exit 0
