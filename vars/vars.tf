variable "software" {
  default = "hardware"
}
#  access plain variables
output "software" {
  value = var.software
}
# list variables

variable "domains" {
  default = [ "frontend", " backend", "fullstack", "devops"]
}
output "domains" {
  value = var.domains[0]
}

# some other ways to create list variables

variable "domain" {
  default = [
    "frontend",
    " backend",
    "fullstack",
    "devops"
  ]
}
# access list variables
output "domain" {
  value = var.domain[0]
}

# map varables
variable "course" {
  default = {
    frontend = {
      price = 20000
      duration = 10
    }
    backend = {
      price = 20000
      duration = "10 days"
    }
  }
}
# access map variables
# output "course" {
#   value = var.course["backend"].price
# }
output "course" {
  value = var.course["backend"]
}
