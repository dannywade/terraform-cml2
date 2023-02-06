output "node_ids" {
    description = "Print out of all lab node IDs"
    value = keys(cml2_lifecycle.ios_lab.nodes)
}

output "node_interface_details" {
  description = "A list of lab device names and their associated interfaces"
  value = {for node_id, node_details in cml2_lifecycle.ios_lab.nodes: node_details.label => [for intf in node_details.interfaces: intf.label]}
}