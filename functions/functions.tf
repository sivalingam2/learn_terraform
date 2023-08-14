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
#output "siva" {
#  for_each = var.comp
#  name = lookup(each.key,"frontend",null)
#