terraform {
  backend "s3" {
    bucket = "sivalingamdevops"
    key    = "state/terraform.state"
    region = "us-east-1"
  }
}
variable "test" {
  default = "hello world"
}
output "test" {
  value = var.test
}
