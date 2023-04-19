locals {
  default_network_inbound_rules = {
    default_inbound = {
      name                       = "application_gateway_health_check_inbound"
      priority                   = 100
      access                     = "Allow"
      protocol                   = "Udp"
      source_port_range          = "*"
      destination_port_range     = "65200-65535"
      source_address_prefix      = "*"
      destination_address_prefix = "*"
    }
  }


  inbound_security_rules = merge(local.default_network_inbound_rules, var.network_security_group_inbound_rules)

  default_network_outbound_rules = {
    default_outbound = {
      name                       = "application_gateway_health_check_outbound"
      priority                   = 100
      access                     = "Allow"
      protocol                   = "Udp"
      source_port_range          = "*"
      destination_port_range     = "65200-65535"
      source_address_prefix      = "*"
      destination_address_prefix = "*"
    }
  }
  outbound_security_rules = merge(local.default_network_outbound_rules, var.network_security_group_outbound_rules)
}