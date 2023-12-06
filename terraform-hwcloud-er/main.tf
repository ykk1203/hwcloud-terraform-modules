resource "huaweicloud_er_vpc_attachment" "vpc_attachment" {
  instance_id = var.instance_id
  vpc_id      = var.vpc_id
  subnet_id   = var.subnet_id
  name        = var.attachment_name
  auto_create_vpc_routes = true
  tags = merge(
    { (var.tagkey) = var.tagvalue },
    var.tags,
  )
}

resource "huaweicloud_er_association" "association" {
  instance_id    = var.instance_id
  route_table_id = var.custom_rtb_id
  attachment_id  = huaweicloud_er_vpc_attachment.vpc_attachment.id
  depends_on     = [
    huaweicloud_er_vpc_attachment.vpc_attachment
  ]
}

resource "huaweicloud_er_propagation" "propagation" {
  instance_id    = var.instance_id
  route_table_id = var.custom_rtb_id
  attachment_id  = huaweicloud_er_vpc_attachment.vpc_attachment.id
  depends_on     = [ 
    huaweicloud_er_association.association
  ]
}