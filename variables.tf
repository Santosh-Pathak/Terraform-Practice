variable "ec2_instance_name" {
  description = "This varaibles holds EC2 instance name"
  default ="terraform-ec2-instance"
  type = string
}

variable "ec2_volume_size" {
  description = "This variables holds the size of the EC2 volume"
  default = 20
  type = number
}

variable "ec2_instance_state" {
  description = "This variable holds the state of the EC2 instance"
  default = "running"
    type = string
}
