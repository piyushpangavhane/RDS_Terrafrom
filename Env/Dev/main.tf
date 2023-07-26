provider "aws" {
  access_key = ""
  secret_key = ""
  region     = var.region
}


module "rds" {
  source                      = "../../Modules/RDS"
  region                      = var.region
  sg-name                     = var.sg-name
  from_port                   = var.from_port
  to_port                     = var.to_port
  protocol                    = var.protocol
  cidr_blocks                 = var.cidr_blocks
  Environment                 = var.Environment
  db_engine                   = var.db_engine
  db_instance_class           = var.db_instance_class
  db_password                 = var.db_password
  db_publicly_accessible      = var.db_publicly_accessible
  db_skip_final_snapshot      = var.db_skip_final_snapshot
  db_storage_size             = var.db_storage_size
  db_storage_type             = var.db_storage_type
  db_Username                 = var.db_Username
  set_db_password             = var.set_db_password
  set_secret_manager_password = var.set_secret_manager_password

}