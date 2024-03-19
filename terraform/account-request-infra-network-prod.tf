module "network-prod-account" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "network-prod-account@gmail.com"
    AccountName               = "network-prod-account"
    ManagedOrganizationalUnit = "ou-6vtm-h9ghuud0" 
    SSOUserEmail              = "network-prod-account@gmail.com"
    SSOUserFirstName          = "network"
    SSOUserLastName           = "prod"
  }

  account_tags = {
    "network-prod" = "network-prod-account@gmail.com"
  }

  change_management_parameters = {
    change_requested_by = "rihem"
    change_reason       = "provisioning new infra prod account"
  }

  custom_fields = {
    group = "prod"
  }

  account_customizations_name = "sandbox"
}

