
# Network vars
sg-name = "db_SG"
from_port = "3306"
to_port = "3306"
cidr_blocks = ["0.0.0.0/0"]
protocol = "tcp"
region = "us-east-1"
Environment = "dev"

# DB Vars
db_storage_size = "20"
db_engine = "mysql"
db_storage_type = "gp2"
db_instance_class = "db.t2.micro"
db_Username = ""
db_password = ""
db_publicly_accessible = "true"
db_skip_final_snapshot = "true"
set_db_password = "false"
set_secret_manager_password = "true"