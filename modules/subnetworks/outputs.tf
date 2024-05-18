output "output_subnetwork_name" {
  description = "The name of the subnet"
  value       = google_compute_subnetwork.first_subnetwork.name
}