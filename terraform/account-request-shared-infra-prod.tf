module "shared_infra_prod_account" {
  source = "./modules/aft-account-request"

//Enrolling AFT-Provisioned Account in a Child OU
//https://www.reddit.com/r/Terraform/comments/1bf9ia0/enrolling_aftprovisioned_account_in_a_child_ou/

//Onboarding account requires two steps to move to different OU:
//https://github.com/aws-ia/terraform-aws-control_tower_account_factory/issues/374

  control_tower_parameters = {
    AccountEmail              = "shared-infra-prod-account@gmail.com"
    AccountName               = "shared-infra-prod-account"
    ManagedOrganizationalUnit = "Prod(ou-6vtm-8xv2vqfm)"
    SSOUserEmail              = "shared-infra-prod-account@gmail.com"
    SSOUserFirstName          = "infra"
    SSOUserLastName           = "AFT"
  }

  account_tags = {
    "infra-prod" = "shared-infra-prod-account@gmail.com"
  }

  change_management_parameters = {
    change_requested_by = "rihem"
    change_reason       = "provisioning a new account"
  }

  custom_fields = {
    group = "prod"
  }

  account_customizations_name = "Sandbox"
}





