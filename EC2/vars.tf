variable "region" {
  type        = string
  description = "Region where resource will be created."
}

variable "count" {
  type        = number
  default     = 1
  description = "The number of EC2 instances to create."
}

variable "name" {
  type        = string
  default     = "node-1"
  description = "The name of the EC2 instance."
}

variable "instance_type" {
  type        = string
  default     = "t2.micro"
  description = "The type of EC2 instance to launch."
}

variable "key_name" {
  type        = string
  default     = "my-keypair"
  description = "The name of the key pair to use for SSH access."
}

variable "volume_size" {
  type        = number
  default     = 20
  description = "The size of the root volume in gigabytes (GB)."
}

variable "subnet_id" {
  type        = string
  default     = "subnet-12345678"
  description = "The ID of the subnet in which to launch the EC2 instance."
}

variable "sg_id" {
  type        = list(string)
  default     = ["sg-abcdefg"]
  description = "A list of security group IDs to associate with the EC2 instance."
}

variable "ami_id" {
  type        = string
  default     = "ami-12345678"
  description = "The ID of the Amazon Machine Image (AMI) to use for the EC2 instance."
}

variable "public_ip" {
  type        = bool
  default     = true
  description = "Whether to assign a public IP address to the EC2 instance."
}

