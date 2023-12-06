resource "huaweicloud_vpn_gateway" "default" {
  name               = var.name
  vpc_id             = var.vpc_id
  local_subnets      = var.local_subnets
  connect_subnet     = var.vpn_subnet
  availability_zones = var.az
  asn                = var.vpngw_asn_number

  master_eip {
    bandwidth_name = var.vpn_master_eip_name
    type           = "5_bgp"
    bandwidth_size = 5
    charge_mode    = "traffic"
  }

  slave_eip {
    bandwidth_name = var.vpn_slave_eip_name
    type           = "5_bgp"
    bandwidth_size = 5
    charge_mode    = "traffic"
  }
}