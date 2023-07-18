
data "aws_ssm_parameter" "public_subnet_ids" {
  name = "/vpc/private_subnets"
}