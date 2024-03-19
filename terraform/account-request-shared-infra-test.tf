module "shared-infra-test" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "shared-infra-test-account@gmail.com"
    AccountName               = "shared-infra-test-account"
    ManagedOrganizationalUnit = "Test(Infrastructure)"
    SSOUserEmail              = "shared-infra-test-account@gmail.com"
    SSOUserFirstName          = "shared-infra"
    SSOUserLastName           = "AFT"
  }

  account_tags = {
    "network-test" = "shared-infra-test-account@gmail.com"
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



//ManagedOrganisationUnit = OU name ( parent OU ID )
//ManagedOrganisationUnit = OU name ( child OU ID )

//Test(Infrastructure)

