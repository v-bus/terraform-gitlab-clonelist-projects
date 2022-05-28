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

###########################################
# save git names list to file
###########################################
resource "local_file" "commit_and_push_projects" {
  depends_on = [data.gitlab_projects.group_projects]
  content    = <<EOT
#!/bin/bash
%{for project in data.gitlab_projects.group_projects.projects}
cd ${project.path} && git add . && git pull && git commit -m "LiveDoc YAML Updated" && git push && cd ..%{endfor}
EOT
  filename   = "commit_and_push_projects.sh"
}