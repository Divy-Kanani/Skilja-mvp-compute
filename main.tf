module "ec2"{
    source = "./ec2"
}

module "sg"{
    source = "./sg"
}

module "iam"{
    source = "./iam"
}