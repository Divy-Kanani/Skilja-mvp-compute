module "ec2_instance" {
  source = "terraform-aws-modules/ec2-instance/aws"

  name           = var.instance_name
  ami            = var.ami_id
  instance_type  = var.instance_type
  key_name       = var.instance_key_name
  subnet_id      = split(",", data.aws_ssm_parameter.private_subnets.value)[0]

  vpc_security_group_ids = [module.security_group.this_security_group_id]
  iam_instance_profile   = module.iam_assumable_role.iam_role_name

  tags = {
    Name = "web-instance"
  }
}
