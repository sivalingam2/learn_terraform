variable "comp" {
  default = {
    fronted = {
      name = "frontend-dev"
    }
    catalogue = {
      catalogue = "catalogue-dev"
    }
  }
}
output "siva" {
  value = lookup(var.comp,"frontend",null )
}