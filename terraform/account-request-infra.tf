module "network-test" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "network-test@gmail.com"
    AccountName               = "network-test"
    ManagedOrganizationalUnit = "Test" 
    SSOUserEmail              = "network-test@gmail.com"
    SSOUserFirstName          = "Infra"
    SSOUserLastName           = "AFT"
  }

  account_tags = {
    "network-test" = "network-test@gmail.com"
  }

  change_management_parameters = {
    change_requested_by = "rihem"
    change_reason       = "provisioning new infra test account"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "Infra"
}


