variable "linux_ami_id" {
  description = "AMI ID for EC2 instances"
  type        = string
  default     = "ami-0ae8f15ae66fe8cda" # Amazon Linux 2 AMI (Change as needed)
}
variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}
variable "public_subnet" {
  description = "Default public subnet"
  type = string
  default = "value"
}