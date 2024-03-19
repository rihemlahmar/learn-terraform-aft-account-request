module "network_test_account_01" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "network-test-account-01@gmail.com"
    AccountName               = "network-test-account-01"
    ManagedOrganizationalUnit = "Test(ou-6vtm-8lw52gek)"
    SSOUserEmail              = "network-test-account-01@gmail.com"
    SSOUserFirstName          = "network"
    SSOUserLastName           = "AFT"
  }

  account_tags = {
    "network-test" = "network-test-account-01@gmail.com"
  }

  change_management_parameters = {
    change_requested_by = "rihem"
    change_reason       = "provisioning a new account"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "Sandbox"
}





