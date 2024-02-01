module "ec2_instance" {
  source = "terraform-aws-modules/ec2-instance/aws"

  name = "${var.env_name}-instance"

  instance_type = var.instance_type
  ami = var.ami_id
  key_name = aws_key_pair.ec2-key.key_name
  monitoring = var.monitoring_flag
  vpc_security_group_ids = [module.ec2_sg.security_group_id]
  subnet_id = module.vpc.public_subnets[0]
}

resource "aws_key_pair" "ec2-key" {
  key_name   = "${var.env_name}-key"
  public_key = var.ec2_keypair_public_key
}

module "ec2_sg" {
  source = "terraform-aws-modules/security-group/aws"

  name = "${var.env_name}-instance-sg"
  vpc_id = module.vpc.vpc_id

  ingress_cidr_blocks = var.ingress_cidr_blocks
  ingress_rules = var.ingress_rules

  egress_rules = var.egress_rules
}