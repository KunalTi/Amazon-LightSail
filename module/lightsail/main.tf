resource "aws_lightsail_key_pair" "main_key" {
  name       = var.key_pair_name
  public_key = var.public_key
}

resource "aws_lightsail_instance" "instance" {
  name              = var.server-name
  availability_zone = var.availability_zone
  blueprint_id      = var.blueprint_id
  bundle_id         = var.bundle_id
  key_pair_name     = var.key_pair_name
  user_data         = var.user_data
  tags = {
    Name = var.tag
  }
  depends_on = [
    resource.aws_lightsail_key_pair.main_key
  ]
}

resource "aws_lightsail_instance_public_ports" "security" {
  instance_name = var.instance_name

  dynamic "port_info" {
    for_each = var.port_info
    content {
      from_port = port_info.value
      to_port   = port_info.value
      protocol  = var.protocol
    }
  }
  depends_on = [
    resource.aws_lightsail_instance.instance
  ]
}

resource "aws_lightsail_static_ip" "static_ip" {
  name = var.ip_name
}
resource "aws_lightsail_static_ip_attachment" "instance" {
  static_ip_name = aws_lightsail_static_ip.static_ip.name
  instance_name  = aws_lightsail_instance.instance.name
}
