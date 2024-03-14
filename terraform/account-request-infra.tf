module "infra_account_test_01" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "infra-account-test-01@gmail.com"
    AccountName               = "infra-account-test-01"
    ManagedOrganizationalUnit = "ou-6vtm-8lw52gek"
    SSOUserEmail              = "infra-account-test-01@gmail.com"
    SSOUserFirstName          = "InfraTest1"
    SSOUserLastName           = "TEST1"
  }

  account_tags = {
    "infra-account-test-01" = "infra-account-test-01@gmail.com"
  }

  change_management_parameters = {
    change_requested_by = "rihem"
    change_reason       = "provisioning a new infra test account"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "Sandbox"
}
