data "azurerm_virtual_machine" "vms" {
  for_each            = azurerm_virtual_machine.example
  name                = each.value.name
  resource_group_name = each.value.resource_group_name
}

resource "azurerm_virtual_machine" "delete" {
  for_each            = { for vm in data.azurerm_virtual_machine.vms : vm.id => vm if vm.power_state == "stopped" }
  name                = each.value.name
  resource_group_name = each.value.resource_group_name
  location            = each.value.location

  lifecycle {
    prevent_destroy = false
  }
}

output "running_vms" {
  value = [for vm in data.azurerm_virtual_machine.vms : vm.name if vm.power_state != "stopped"]
}