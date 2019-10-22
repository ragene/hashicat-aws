module "ecs-fargate" {
  source                       = "app.terraform.io/rdixon-sbx-disfox/ecs-fargate/aws"
  version                      = "2.0.5"
  name_preffix                 = "${var.prefix}"
  profile                      = "aws_profile"
  region                       = "${var.region}"
  vpc_id                       = "${module.networking.vpc_id}"
  availability_zones           = "${module.networking.availability_zones}"
  public_subnets_ids           = "${module.networking.public_subnets_ids}"
  private_subnets_ids          = "${module.networking.private_subnets_ids}"
  container_name               = "${var.prefix}"
  container_image              = "scarolan/palacearcade:latest"
  essential                    = true
  container_port               = 80
  environment                  = []
}
output "lb_dns_name" {
    value = "${module.ecs-fargate.lb_dns_name}"
}