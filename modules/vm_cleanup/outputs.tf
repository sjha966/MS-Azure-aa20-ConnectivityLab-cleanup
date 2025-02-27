output "deleted_vm_ids" {
  description = "IDs of the deleted VMs"
  value       = azurerm_virtual_machine.delete.*.id
}

output "running" {
  description = "Names of the running VMs"
  value       = [for vm in data.azurerm_virtual_machine.vms : vm.name if vm.power_state != "stopped"]
}