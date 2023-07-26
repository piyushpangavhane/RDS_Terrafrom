output "rds_endpoint" {
  value = module.rds.db_endpoint
}

output "az" {
  value = module.rds.AZ1
}