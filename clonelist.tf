###########################################
# save git path list to file
###########################################
resource "local_file" "cloneprojects" {
  depends_on = [data.gitlab_projects.group_projects]
  content    = <<EOT
#!/bin/bash
%{for project in data.gitlab_projects.group_projects.projects}
git clone ${project.ssh_url_to_repo}%{endfor}
EOT
  filename   = "cloneprojects.sh"
}