output "core_compute_host_groups_lookup_id" {
  description = "Map of id values across all core_compute_host_groups_lookup, keyed the same as var.core_compute_host_groups_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_core_compute_host_groups.core_compute_host_groups_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "core_compute_host_groups_lookup_compartment_id" {
  description = "Map of compartment_id values across all core_compute_host_groups_lookup, keyed the same as var.core_compute_host_groups_lookup except keys with no compartment_id are omitted"
  value       = { for k, v in data.oci_core_compute_host_groups.core_compute_host_groups_lookup : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "core_compute_host_groups_lookup_compute_host_group_collection" {
  description = "Map of compute_host_group_collection values across all core_compute_host_groups_lookup, keyed the same as var.core_compute_host_groups_lookup except keys with no compute_host_group_collection are omitted"
  value       = { for k, v in data.oci_core_compute_host_groups.core_compute_host_groups_lookup : k => v.compute_host_group_collection if v.compute_host_group_collection != null && length(v.compute_host_group_collection) > 0 }
}
output "core_compute_host_groups_lookup_filter" {
  description = "Map of filter values across all core_compute_host_groups_lookup, keyed the same as var.core_compute_host_groups_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_core_compute_host_groups.core_compute_host_groups_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}

