variable "zone_id" {
  default = "Z02456543UCI8DLI5F070"
}
variable "vpc_security_group_ids" {
  default = [ "sg-07bf8bea064a5f22c" ]
}
variable "components" {
  default = {
    frontend = {
      name = "frontend"
      instance_type = "t3.micro"
    }
    mongodb = {
      name = "mongodb"
      instance_type = "t3.micro"
    }
  }
}