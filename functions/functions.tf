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
output "comp" {
  value = lookup(var.comp, each.value["name"], null )
}