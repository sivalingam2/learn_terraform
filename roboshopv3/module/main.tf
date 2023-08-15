resource "aws_instance" "instance" {
  ami                    = data.aws_ami.ami.id
  instance_type          = var.instance_type
  vpc_security_group_ids = var.vpc_security_group_ids

  tags = {
    Name = var.name
  }
}
resource "aws_route53_record" "records" {
  zone_id = var.zone_id
  name    = "${var.name}-dev.sivadevops22.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.instance.private_ip]
}

resource "null_resource" "ansible" {

  depends_on = [
    aws_route53_record.records
  ]

  provisioner "local-exec" {
    command = <<EOF
cd /home/centos/ansible-rboshop1
git pull
sleep 30
ansible-playbook -i ${var.name}-dev.sivadevops22.online, main.yml -e ansible_user=centos -e ansible_password=DevOps321 -e component=${var.name}
EOF
  }
}