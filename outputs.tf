output "instance_name" {
    description = "Name of the created instance"
    value       = google_compute_instance.app_server.name
}

output "instance_zone" {
  value       = google_compute_instance.app_server.zone
  description = "Zone of the created instance"
}

output "instance_public_ip" {
  value       = google_compute_instance.app_server.network_interface[0].access_config[0].nat_ip
  description = "Public IP address of the created instance"
}

output "app_url" {
  value       = "http://${google_compute_instance.app_server.network_interface[0].access_config[0].nat_ip}"
  description = "URL to access the app"
}

