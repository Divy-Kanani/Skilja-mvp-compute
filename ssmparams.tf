resource "aws_ssm_parameter" "instance_id" {
  name  = "/vpc/${var.unique_id}-instance_id"
  type  = "String"
  value = module.ec2_instance.id
}


resource "aws_ssm_parameter" "security_group_name" {
  name  = "/vpc/${var.unique_id}-security_group_name"
  type  = "String"
  value = module.security_group.name
}

resource "aws_ssm_parameter" "nlb_id" {
  name  = "/vpc/${var.unique_id}-nlb_id"
  type  = "String"
  value =  module.nlb.id
}
