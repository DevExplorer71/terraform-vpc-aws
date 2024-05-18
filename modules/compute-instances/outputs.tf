output "instance-name" {
  description = "The name of the instance"
  value       = google_compute_instance.thecoolestinstance.name
}