module "workloads_data_lake_prod" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "workloads_data_lake_prod-account@gmail.com"
    AccountName               = "workloads_data_lake_prod"
    ManagedOrganizationalUnit = "ou-6vtm-3e601ur7"
    SSOUserEmail              = "workloads_data_lake_prod@gmail.com"
    SSOUserFirstName          = "workloads_data_lake_prod"
    SSOUserLastName           = "prod"
  }

  account_tags = {
    "workloads_data_lake_prod@gmail.com" = "workloads_data_lake_prod@gmail.com"
  }

  change_management_parameters = {
    change_requested_by = "rihem"
    change_reason       = "add workloads prod account"
  }

  custom_fields = {
    group = "prod"
  }

  account_customizations_name = "sandbox"
}