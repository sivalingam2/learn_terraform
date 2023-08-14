data "aws_ami" "example" {
  most_recent      = true
  name_regex       = "centos-*"
  owners           = ["973714476881"]
}
output "ami" {
  value = data.aws_ami.example
}