output "vpngw_id" {
  value       = huaweicloud_vpn_gateway.default.id
  description = "VPN Gateway ID"
}

output "vpngw_master_eip_config" {
  value       = huaweicloud_vpn_gateway.default.master_eip
  description = "VPN Gateway Master EIP Configuration"
}

output "vpngw_slave_eip_config" {
  value       = huaweicloud_vpn_gateway.default.slave_eip
  description = "VPN Gateway Slave EIP Configuration"
}