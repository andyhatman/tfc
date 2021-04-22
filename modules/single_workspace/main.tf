resource "tfe_workspace" "workspace" {
    name         = var.tfc_workspace_name
    organization = var.tfc_org_name
}

resource "tfe_variable" "env_var" {
    for_each     = var.env_vars
    key          = each.key
    value        = each.value
    category     = "env"
    workspace_id = tfe_workspace.workspace.id
    sensitive    = true
}