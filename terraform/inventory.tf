resource "local_file" "ansible_inventory" {
  filename = "${path.module}/../ansible/inventory.ini"
  content = <<EOF
[frontend]
c8.local ansible_host=${aws_instance.frontend.public_ip} ansible_user=ec2-user

[backend]
u21.local ansible_host=${aws_instance.backend.public_ip} ansible_user=ubuntu

EOF
}

