# Repository Information
output "repository_name" {
  description = "Name of the created repository"
  value       = github_repository.demo_repo.name
}

output "repository_full_name" {
  description = "Full name of the repository (owner/repo)"
  value       = github_repository.demo_repo.full_name
}

output "repository_url" {
  description = "URL of the repository"
  value       = github_repository.demo_repo.html_url
}

output "repository_ssh_clone_url" {
  description = "Clone URL for the repository (SSH)"
  value       = github_repository.demo_repo.ssh_clone_url
}

output "repository_git_clone_url" {
  description = "Clone URL for the repository (Git)"
  value       = github_repository.demo_repo.git_clone_url
}

# Repository Metadata
output "repository_id" {
  description = "GitHub ID of the repository"
  value       = github_repository.demo_repo.repo_id
}

output "repository_node_id" {
  description = "GraphQL Node ID of the repository"
  value       = github_repository.demo_repo.node_id
}

output "repository_visibility" {
  description = "Visibility of the repository"
  value       = github_repository.demo_repo.visibility
}

# Repository Features
output "repository_topics" {
  description = "Topics assigned to the repository"
  value       = github_repository.demo_repo.topics
}

# Summary
output "summary" {
  description = "Summary of the created resources"
  value = {
    repository_created = "✅ Repository '${github_repository.demo_repo.name}' created successfully"
    visibility        = "🔒 Visibility: ${github_repository.demo_repo.visibility}"
    features_enabled  = "⚙️ Features: Issues(${var.has_issues}), Projects(${var.has_projects}), Wiki(${var.has_wiki})"
    url              = "🌐 URL: ${github_repository.demo_repo.html_url}"
    topics           = "🏷️ Topics: ${join(", ", github_repository.demo_repo.topics)}"
  }
}
