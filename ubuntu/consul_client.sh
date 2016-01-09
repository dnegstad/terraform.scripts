#!/bin/bash

METADATA_INSTANCE_ID=`curl http://169.254.169.254/2014-02-25/meta-data/instance-id`

sed -i -- "s/{{ atlas_username }}/${atlas_username}/g" /etc/consul.d/config.json
sed -i -- "s/{{ atlas_environment }}/${atlas_environment}/g" /etc/consul.d/config.json
sed -i -- "s/{{ atlas_token }}/${atlas_token}/g" /etc/consul.d/config.json
sed -i -- "s/{{ datacenter }}/${datacenter}/g" /etc/consul.d/config.json

sed -i -- "s/{{ node_name }}/$METADATA_INSTANCE_ID/g" /etc/consul.d/config.json # Replace with instance id

sed -i -- "s/{{ encryption }}/${encryption}/g" /etc/consul.d/config.json
sed -i -- "s/{{ acl_datacenter }}/${acl_datacenter}/g" /etc/consul.d/config.json
sed -i -- "s/{{ acl_token }}/${acl_token}/g" /etc/consul.d/config.json

service consul restart

echo "Consul config updated"

exit 0
