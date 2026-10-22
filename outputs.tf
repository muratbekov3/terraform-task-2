output "instance_name" {
  description = "Name of the VM."
  value       = google_compute_instance.vm.name
}

output "instance_external_ip" {
  description = "External IP address of the VM."
  value       = google_compute_instance.vm.network_interface[0].access_config[0].nat_ip
}