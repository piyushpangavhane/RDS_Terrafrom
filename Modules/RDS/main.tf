provider "aws" {
  access_key = ""
  secret_key = ""
  region     = "us-east-1"
}

data "aws_availability_zones" "AZ" {

}


data "aws_vpc" "default_us-east-1_VPC" {
  id = "vpc-05b94ec0dd3297efb"

}

resource "aws_security_group" "DB-SG" {
  name        = var.sg-name
  description = "Security Group For DB Instance"
  ingress {
    from_port   = var.from_port
    to_port     = var.to_port
    protocol    = var.protocol
    cidr_blocks = var.cidr_blocks
  }

  egress {
    from_port   = "0"
    to_port     = "0"
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

}


resource "aws_db_subnet_group" "DB_Subnet_Group" {
  subnet_ids = ["subnet-03ca7292e5b6cceeb", "subnet-08c84126565791585"]

}


resource "aws_db_instance" "DB" {
  identifier                  = var.Environment
  allocated_storage           = var.db_storage_size
  engine                      = var.db_engine
  manage_master_user_password = var.set_secret_manager_password ? true : null
  storage_type                = var.db_storage_type
  instance_class              = var.db_instance_class
  username                    = var.db_Username
  vpc_security_group_ids      = [aws_security_group.DB-SG.id]
  db_subnet_group_name        = aws_db_subnet_group.DB_Subnet_Group.name
  password                    = var.set_db_password ? var.db_password : null
  publicly_accessible         = var.db_publicly_accessible
  skip_final_snapshot         = var.db_skip_final_snapshot

}
