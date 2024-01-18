resource "null_resource" "vagrant" {
  provisioner "local-exec" {
    command = "vagrant up"
  }
}
resource "null_resource" "ansible_start" {
  provisioner "local-exec" {
    command = "ansible-playbook -i hosts.yml main.yml"
  }
  depends_on = [
    null_resource.vagrant
  ]
}