data "azurerm_subscription" "subscription" {
  # Use current subscription
}

module "policy" {
  source                      = "git::https://github.com/daniel-liang/tfmodule.git?ref=v1.0.0"
  policy_definition_file_path = format("%s/%s", path.module, "allowed-location-policy.json")
}
