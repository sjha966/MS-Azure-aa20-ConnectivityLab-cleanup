module "vmdelete" {
  source              = "../modules/vm_cleanup"
  resource_group_name = var.resource_group_name
  location            = var.location
}