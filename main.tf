output "ubuntu_consul_tls_setup" { value = "${path.module}/ubuntu/consul/tls.sh"}
output "ubuntu_consul_setup"     { value = "${path.module}/ubuntu/consul/setup.sh" }
output "ubuntu_consul_client_setup" { value = "${path.module}/ubuntu/consul/client_setup.sh" }
output "ubuntu_vault_tls_setup"  { value = "${path.module}/ubuntu/vault/tls.sh" }
output "ubuntu_vault_setup"      { value = "${path.module}/ubuntu/vault/setup.sh" }
output "ubuntu_install_ca"       { value = "${path.module}/ubuntu/install_ca.sh" }
