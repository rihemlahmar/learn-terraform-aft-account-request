module "sandbox_account_02" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "sandbox-account-02@gmail.com"
    AccountName               = "sandbox-account-02"
    ManagedOrganizationalUnit = "ou-6vtm-z7id5vca"
    SSOUserEmail              = "sandbox-account-02@gmail.com"
    SSOUserFirstName          = "Sandbox"
    SSOUserLastName           = "AFT"
  }

  account_tags = {
    "Sandbox_account_02" = "sandbox-account-02@gmail.com"
  }

  change_management_parameters = {
    change_requested_by = "rihem"
    change_reason       = "provisioning a new sandbox account"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "Sandbox"
}
