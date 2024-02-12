module "components" {
  source          = "git::https://github.com/kalagaGangadhar/tf-module-basic-test.git"

  for_each = var.components

  zone_id         = var.zone_id
  security_groups = var.security_groups
  instance_type   = each.value["instance_type"]
  name            = each.value["name"]
}