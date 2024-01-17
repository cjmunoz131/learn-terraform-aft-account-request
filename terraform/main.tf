module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "cnoguera1106+4@gmail.com"
    AccountName               = "sandbox4-aft"
    ManagedOrganizationalUnit = "Learn AFT"
    SSOUserEmail              = "cnoguera1106@gmail.com"
    SSOUserFirstName          = "Sandbox4"
    SSOUserLastName           = "AFT4"
  }

  account_tags = {
    "Learn Tutorial" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "sandbox"
}
