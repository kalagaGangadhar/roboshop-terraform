module "components" {
  source = "git::https://github.com/kalagaGangadhar/tf-module-basic-test.git"
  for_each = var.components

  zone_id = var.zone_id
  security_group = var.security_group
  name = each.value["name"]
  instance_type = each.value["instance_type"]
}