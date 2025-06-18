output "envId" {
  description = "environment Id"
  value       = module.appEnvironment.appEnvironmentId
}
output "logWorkSpaceId" {
  description = "logWorkSpaceId"
  value       = module.logWorkspace.logWorkSpaceId
}
output "apis_container_app_urls" {
  value = module.apiscontainerapp["apis"].containerAppUrl
}



