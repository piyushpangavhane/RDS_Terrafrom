output "AZ" {
  value = data.aws_availability_zones.AZ.names
}

output "AZ1" {
  value = data.aws_availability_zones.AZ.zone_ids

}


output "db_endpoint" {
    value = aws_db_instance.DB.endpoint
  
}

output "rds_master_user_secret" {
  value = aws_db_instance.DB.master_user_secret[0].secret_arn
}

# output "subnet_id" {
#   value = data.aws_vpc.default_us-east-1_VPC
  
# }