output "frontend_repo_url" {
  value = module.ecr_frontend.repository_url
}

output "backend_repo_url" {
  value = module.ecr_backend.repository_url
}

output "database_repo_url" {
  value = module.ecr_database.repository_url
}
