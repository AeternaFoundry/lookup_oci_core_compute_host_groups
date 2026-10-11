data "oci_core_compute_host_groups" "core_compute_host_groups_lookup" {
  for_each = var.core_compute_host_groups_lookup

  compartment_id = each.value.compartment_id

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

