resource "google_compute_subnetwork" "first_subnetwork" {
  name          = "${var.subnetwork_name}-subnetwork"
  ip_cidr_range = "10.2.0.0/16"
  region        = "us-central1"
  network       = "${var.network}"
}
