module "shared-infra-test" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "shared-infra-test-account@gmail.com"
    AccountName               = "shared-infra-test-account"
    ManagedOrganizationalUnit = "Test(ou-6vtm-8lw52gek)"
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
//Test(Infra ID)
//Test(Test ID)

//Enrolling AFT-Provisioned Account in a Child OU
//https://www.reddit.com/r/Terraform/comments/1bf9ia0/enrolling_aftprovisioned_account_in_a_child_ou/

//Onboarding account requires two steps to move to different OU:
//https://github.com/aws-ia/terraform-aws-control_tower_account_factory/issues/374
