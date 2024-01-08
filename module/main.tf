resource "azuredevops_project" "example" {
  name               = var.project_name_VV
  visibility         = "private"
  version_control    = "Git"
  work_item_template = "Agile"
  description        = "Managed by Terraform"
}

resource "azuredevops_git_repository" "example" {
  project_id = azuredevops_project.example.id
  name       = var.project_repository_name_VV
  initialization {
    init_type = "Clean"
  }
}

resource "azuredevops_build_definition" "example" {
  project_id = azuredevops_project.example.id
  name       = var.project_build_definition_name_VV
  path       = "\\ExampleFolder"

  ci_trigger {
    use_yaml = false
  }

  schedules {
    branch_filter {
      include = ["main"]
      exclude = ["test", "fix"]
    }
    days_to_build              = ["Sat", "Sun"]
    schedule_only_with_changes = true
    start_hours                = 10
    start_minutes              = 59
    time_zone                  = "(UTC) Coordinated Universal Time"
  }

  repository {
    repo_type   = "TfsGit"
    repo_id     = azuredevops_git_repository.example.id
    branch_name = azuredevops_git_repository.example.default_branch
    yml_path    = "azure-pipelines.yml"
  }
}

