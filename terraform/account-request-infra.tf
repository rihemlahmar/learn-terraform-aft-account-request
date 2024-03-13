module "infra_account_prod_01" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "infra-account-prod-01@gmail.com"
    AccountName               = "infra-account-prod-0"
    ManagedOrganizationalUnit = "ou-6vtm-2mjw9h87"
    SSOUserEmail              = "infra-account-prod-01@gmail.com"
    SSOUserFirstName          = "Infra"
    SSOUserLastName           = "PROD"
  }

  account_tags = {
    "infra-account-prod-01" = "infra-account-prod-01@gmail.com"
  }

  change_management_parameters = {
    change_requested_by = "rihem"
    change_reason       = "provisioning a new infra prod account"
  }

  custom_fields = {
    group = "prod"
  }

  account_customizations_name = "infraProd"
}
