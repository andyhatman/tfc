variable "tfc_org_name" {
    type = string
    description = "TFC Organization name"
}

variable "tfc_workspace_name" {
    type = string
    description = "List of workspace names"
}

variable "env_vars" {
    type = map(string)
    description = "Map of variables to be created in the workspace"
    default = {}
}