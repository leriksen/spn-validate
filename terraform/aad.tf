resource "azuread_application_registration" "spn" {
  display_name = "spn"
 }

resource "azuread_service_principal" "spn" {
  application_id = azuread_application_registration.spn.client_id
  use_existing   = true
}