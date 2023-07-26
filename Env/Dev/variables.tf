variable "sg-name" {
  description = "Security Group Name"
}

variable "from_port" {

}

variable "to_port" {

}

variable "cidr_blocks" {

}

variable "protocol" {

}

variable "region" {

}

variable "Environment" {

}
variable "db_storage_size" {

}

variable "db_engine" {

}

variable "db_storage_type" {

}

variable "db_instance_class" {

}
variable "db_Username" {

}

variable "db_password" {

}
variable "db_publicly_accessible" {

}

variable "db_skip_final_snapshot" {

}

variable "set_secret_manager_password" {
  description = "To enable master user password or not"
  type        = bool
  default     = false
}


variable "set_db_password" {
  description = "Condition to check for custom password"
  type        = string
}