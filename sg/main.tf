module "security_group" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "~> 5.1"

  name        = var.security_group_name
  description = "Skilja instance security group"
  vpc_id      = data.aws_ssm_parameter.vpc_id.value

  ingress_cidr_blocks = ["0.0.0.0/0"]

  egress = [
    {
      from_port   = 0
      to_port     = 0
      protocol    = "-1"
      cidr_blocks = ["0.0.0.0/0"]
    }
  ]

  tags = {
    Name = "app-instance-security-group"
  }
}