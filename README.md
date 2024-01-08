# Description
Here, In this template, we will authorize the Project to access the particular group in ADO using the terraform module. 


---

### Pre-Requisite
* Azure Account
* Pre Login into your Azure Account

---
### Steps
* Login into your Azure portal.
* You can either use a portal or use the service principal to login using your credentials.
* Clone the Repository and switch to module directory.
* Then run the terraform commands to create the resource.

```
Commands :
-  terraform init
-  terraform plan
-  terraform apply
```
* You can create your own `terraform.auto.tfvars` file to define the values of the variables like `vi terraform.auto.tfvars`
  E.g:-
  `variable_name = value`
---

## Configuration

The following table lists the configurable parameters of the service-connection-permissions module with their default values.

| Parameters                         | Description                                        | Default | Type   | Required |
|------------------------------------|----------------------------------------------------|---------|--------|----------|
| adotoken_VV                        | Personal Access Token                              |         | string | Yes      |  
| organization_service_url_VV        | Organisation Service URL                           |         | string | Yes      |  
| project_name_VV                    | Name of Project                                    |         | string | Yes      |
| project_repository_name_VV         | Name of Project Repository                         |         | string | Yes      |
| project_build_definition_name_VV   | Name of Project Build Definition                   |         | string | Yes      |

---
