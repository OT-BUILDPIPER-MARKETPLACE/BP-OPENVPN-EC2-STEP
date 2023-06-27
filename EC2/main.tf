locals {
  sg_id     = var.sg_ids
  subnet_id = var.subnet_id
}

module "ec2_instance" {
  source               = "OT-CLOUD-KIT/ec2-instance/aws"
  version              = "0.0.3"
  count                = var.instance_count
  ami_id               = var.ami_id
  instance_type        = var.instance_type
  public_ip            = var.public_ip
  key_name             = var.key_name
  subnet               = var.subnet_id
  security_groups      = var.sg_ids
  volume_size          = var.volume_size
  volume_type          = var.volume_type
  encrypted_volume     = var.encrypted_volume
  iam_instance_profile = var.iam_instance_profile
  ec2_name             = var.ec2_name
  tags                 = var.tags
}

