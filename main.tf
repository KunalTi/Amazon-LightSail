module "lightsail" {
  source            = "./module/lightsail"
  key_pair_name     = var.key_pair_name
  public_key        = file("~/.ssh/id_rsa.pub")
  server-name       = var.server-name
  availability_zone = var.availability_zone
  blueprint_id      = var.blueprint_id
  bundle_id         = var.bundle_id
  tag               = var.tag
  instance_name     = var.server-name
  port_info         = var.port_info
  protocol          = var.protocol
  ip_name           = var.ip_name
  user_data         = file("./userdata.sh")
}

# resource "aws_lightsail_key_pair" "main_key_pair" {
#   name       = var.key_pair_name
#   public_key = file("~/.ssh/id_rsa.pub")
# }

# resource "aws_lightsail_instance" "server0" {
#   name              = var.server-name
#   availability_zone = var.availability_zone
#   blueprint_id      = var.blueprint_id
#   bundle_id         = var.bundle_id
#   key_pair_name     = aws_lightsail_key_pair.main_key_pair.name
#   tags = {
#     Name = var.tag
#   }
# }

# resource "aws_lightsail_instance_public_ports" "server0" {
#   instance_name = aws_lightsail_instance.server0.name

#   dynamic "port_info" {
#     for_each = var.port_info
#     content {
#       from_port = port_info.value
#       to_port   = port_info.value
#       protocol  = var.protocol
#     }
#   }
# }
