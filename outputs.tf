output "apigateway_deployments_lookup_id" {
  description = "Map of id values across all apigateway_deployments_lookup, keyed the same as var.apigateway_deployments_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_apigateway_deployments.apigateway_deployments_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "apigateway_deployments_lookup_compartment_id" {
  description = "Map of compartment_id values across all apigateway_deployments_lookup, keyed the same as var.apigateway_deployments_lookup except keys with no compartment_id are omitted"
  value       = { for k, v in data.oci_apigateway_deployments.apigateway_deployments_lookup : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "apigateway_deployments_lookup_deployment_collection" {
  description = "Map of deployment_collection values across all apigateway_deployments_lookup, keyed the same as var.apigateway_deployments_lookup except keys with no deployment_collection are omitted"
  value       = { for k, v in data.oci_apigateway_deployments.apigateway_deployments_lookup : k => v.deployment_collection if v.deployment_collection != null && length(v.deployment_collection) > 0 }
}
output "apigateway_deployments_lookup_display_name" {
  description = "Map of display_name values across all apigateway_deployments_lookup, keyed the same as var.apigateway_deployments_lookup except keys with no display_name are omitted"
  value       = { for k, v in data.oci_apigateway_deployments.apigateway_deployments_lookup : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "apigateway_deployments_lookup_filter" {
  description = "Map of filter values across all apigateway_deployments_lookup, keyed the same as var.apigateway_deployments_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_apigateway_deployments.apigateway_deployments_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "apigateway_deployments_lookup_gateway_id" {
  description = "Map of gateway_id values across all apigateway_deployments_lookup, keyed the same as var.apigateway_deployments_lookup except keys with no gateway_id are omitted"
  value       = { for k, v in data.oci_apigateway_deployments.apigateway_deployments_lookup : k => v.gateway_id if v.gateway_id != null && length(v.gateway_id) > 0 }
}
output "apigateway_deployments_lookup_state" {
  description = "Map of state values across all apigateway_deployments_lookup, keyed the same as var.apigateway_deployments_lookup except keys with no state are omitted"
  value       = { for k, v in data.oci_apigateway_deployments.apigateway_deployments_lookup : k => v.state if v.state != null && length(v.state) > 0 }
}

