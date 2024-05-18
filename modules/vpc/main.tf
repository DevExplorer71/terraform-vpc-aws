resource "google_compute_network" "vpc_network" {
  name = "${var.network_name}-network"
  auto_create_subnetworks = false
}