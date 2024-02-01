######################################################################
## Core
variable "name_prefix" {
  type = string
  default = "demo-env"
}

variable "aws_region" {
  type = string
  default = "us-east-1"
}

variable "env_name" {
  type = string
  default = "study"
}

variable "provisioner" {
  type = string
  default = "terraform"
}

######################################################################
## Network
variable "vpc_cidr" {
  type = string
  default = "10.0.0.0/16"
}

variable "public_subnets_cidr_root_newbits" {
  type = number
  default = 4
}

variable "public_subnets_cidr_sub_newbits" {
  type = number
  default = 4
}

######################################################################
## EC2
variable "instance_type" {
  type = string
  default = "t3a.micro"
}

variable "ami_id" {
  type = string
  default = "ami-0e9107ed11be76fde"
}

variable "monitoring_flag" {
  type = bool
  default = true
}

variable "ec2_keypair_public_key" {
  type = string
}

variable "ingress_rules" {
  type = list
  default = ["http-80-tcp", "ssh-tcp"]
}

variable "ingress_cidr_blocks" {
  type = list
  default = ["0.0.0.0/0"]
}

variable "egress_rules" {
  type = list
  default = ["all-all"]
}