module "workloads" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "workloads-test-account-01@gmail.com"
    AccountName               = "workloads-test"
    ManagedOrganizationalUnit = "ou-6vtm-znwwg2rw"
    SSOUserEmail              = "workloads-test-account-01@gmail.com"
    SSOUserFirstName          = "workloads-test"
    SSOUserLastName           = "AFT"
  }

  account_tags = {
    "workloads-test-account-01@gmail.com" = "workloads-test-account-01@gmail.com"
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

