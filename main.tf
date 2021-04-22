terraform {
  backend "remote" {
    organization = "andyhatman"

    workspaces {
      name = "ah-workspace-management"
    }
  }
}

module "single_workspace" {
    source = "./modules/single_workspace"

    for_each           = toset(var.tfc_workspace_name)
    tfc_workspace_name = each.key
    tfc_org_name       = var.tfc_org_name
    env_vars           = {
        "GOOGLE_CREDENTIALS" = var.svc_GOOGLE_CREDENTIALS
    }
}