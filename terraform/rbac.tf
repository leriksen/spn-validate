resource "azurerm_role_assignment" "contributor" {
  principal_id         = azuread_service_principal.spn.object_id
  scope                = azurerm_resource_group.spn.id

  role_definition_name = "Contributor"
}
