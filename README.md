# Create clone shell script for Gitlab group projects

## Input

Example  

```tfvars
gitlab_base_url = "https://gitlab.ru/api/v4/"
gitlab_token    = "yR8zNpo34624rj5JZ-f"
current_group = "mycode"
include_subgroups = true
```

## Output

Script with `git clone git@<gitlab-server>/namespace/path/project.git` lines

## Run

Install terraform

```bash
terraform init
terraform plan
terraform apply
./cloneprojects.sh
```

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_gitlab"></a> [gitlab](#requirement\_gitlab) | 3.14.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_gitlab"></a> [gitlab](#provider\_gitlab) | 3.14.0 |
| <a name="provider_local"></a> [local](#provider\_local) | 2.2.3 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [local_file.openssh_config](https://registry.terraform.io/providers/hashicorp/local/latest/docs/resources/file) | resource |
| [gitlab_group.cur_group](https://registry.terraform.io/providers/gitlabhq/gitlab/3.14.0/docs/data-sources/group) | data source |
| [gitlab_projects.group_projects](https://registry.terraform.io/providers/gitlabhq/gitlab/3.14.0/docs/data-sources/projects) | data source |
| [gitlab_user.users](https://registry.terraform.io/providers/gitlabhq/gitlab/3.14.0/docs/data-sources/user) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_current_group"></a> [current\_group](#input\_current\_group) | Name of the Gitlab group you have access to | `string` | n/a | yes |
| <a name="input_gitlab_base_url"></a> [gitlab\_base\_url](#input\_gitlab\_base\_url) | This is the target GitLab base API endpoint. Providing a value is a requirement when working with GitLab CE or GitLab Enterprise e.g. https://my.gitlab.server/api/v4/. It is optional to provide this value and it can also be sourced from the GITLAB\_BASE\_URL environment variable. The value must end with a slash. | `string` | n/a | yes |
| <a name="input_gitlab_token"></a> [gitlab\_token](#input\_gitlab\_token) | Gitlab Token | `string` | n/a | yes |
| <a name="input_include_subgroups"></a> [include\_subgroups](#input\_include\_subgroups) | Include projects in subgroups of this group | `bool` | `false` | no |
| <a name="input_order_by"></a> [order\_by](#input\_order\_by) | Return projects ordered by id, name, path, created\_at, updated\_at, or last\_activity\_at fields | `string` | `"name"` | no |
| <a name="input_per_page"></a> [per\_page](#input\_per\_page) | The number of results to return per page | `number` | `100` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_project_list"></a> [project\_list](#output\_project\_list) | n/a |
| <a name="output_project_list_length"></a> [project\_list\_length](#output\_project\_list\_length) | n/a |
<!-- END_TF_DOCS -->