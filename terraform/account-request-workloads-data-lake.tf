module "workloads_data_lake_test" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "workloads_data_lake_test-account@gmail.com"
    AccountName               = "workloads_data_lake_test"
    ManagedOrganizationalUnit = "ou-6vtm-3e601ur7"
    SSOUserEmail              = "workloads_data_lake_test@gmail.com"
    SSOUserFirstName          = "workloads_data_lake_test"
    SSOUserLastName           = "AFT"
  }

  account_tags = {
    "workloads_data_lake_test@gmail.com" = "workloads_data_lake_test@gmail.com"
  }

  change_management_parameters = {
    change_requested_by = "rihem"
    change_reason       = "add workloads test account"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "sandbox"
}