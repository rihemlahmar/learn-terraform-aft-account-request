module "shared_cicd_test_account" {
  source = "./modules/aft-account-request"


//Enrolling AFT-Provisioned Account in a Child OU
//https://www.reddit.com/r/Terraform/comments/1bf9ia0/enrolling_aftprovisioned_account_in_a_child_ou/

//Onboarding account requires two steps to move to different OU:
//https://github.com/aws-ia/terraform-aws-control_tower_account_factory/issues/374

  control_tower_parameters = {
    AccountEmail              = "shared-cicd-test-account@gmail.com"
    AccountName               = "shared-cicd-test-account"
    ManagedOrganizationalUnit = "Test(ou-6vtm-0gji2q28)"
    SSOUserEmail              = "shared-cicd-test-account@gmail.com"
    SSOUserFirstName          = "infra"
    SSOUserLastName           = "AFT"
  }

  account_tags = {
    "shared-cicd-test-account@gmail.com" = "shared-cicd-test-account@gmail.com"
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



