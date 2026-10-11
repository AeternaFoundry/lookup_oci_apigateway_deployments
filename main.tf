data "oci_apigateway_deployments" "apigateway_deployments_lookup" {
  for_each = var.apigateway_deployments_lookup

  compartment_id = each.value.compartment_id
  display_name   = each.value.display_name
  gateway_id     = each.value.gateway_id
  state          = each.value.state

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

