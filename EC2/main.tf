locals {
  sg_id     = var.sg_id
  subnet_id = var.subnet_id
}

module "ec2-instance" {
  source  = "OT-CLOUD-KIT/ec2-instance/aws"
  version         = "0.0.3"
  count           = var.instance_count
  name            = var.name
  tags            = local.tags_map
  instance_type   = var.instance_type
  key_name        = var.key_name
  volume_size     = var.volume_size
  subnet          = var.subnet_id
  security_groups = var.sg_id
  ami_id          = var.ami_id
  public_ip       = var.public_ip
}

