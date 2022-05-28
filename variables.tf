# Gitlab Token https://docs.gitlab.com/ee/api/#authentication
variable "gitlab_token" {
  description = "Gitlab Token"
  type        = string
}

variable "gitlab_base_url" {
  description = "This is the target GitLab base API endpoint. Providing a value is a requirement when working with GitLab CE or GitLab Enterprise e.g. https://my.gitlab.server/api/v4/. It is optional to provide this value and it can also be sourced from the GITLAB_BASE_URL environment variable. The value must end with a slash."
  type        = string
}
# List of projects paramaters
# Name of the group where you get projects
variable "current_group" {
  description = "Name of the Gitlab group you have access to"
  type        = string
}

variable "order_by" {
  description = "Return projects ordered by id, name, path, created_at, updated_at, or last_activity_at fields"
  default     = "name"
}

variable "include_subgroups" {
  description = "Include projects in subgroups of this group"
  default     = false
}

variable "per_page" {
  description = "The number of results to return per page"
  default     = 100
}
