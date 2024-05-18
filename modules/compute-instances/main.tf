#resource "google_service_account" "default" {
#  account_id   = "my-custom-sa"
#  display_name = "Custom SA for VM Instance"
#}

resource "google_compute_instance" "thecoolestinstance" {
  name         = "${var.instance_name}"
  machine_type = "e2-micro"
  zone         = "us-central1-a"

  tags = ["foo", "bar"]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
      labels = {
        my_label = "value"
      }
    }
  }


  network_interface {
    #network = "${var.network}"
    subnetwork = "${var.subnetwork}"
  }

  metadata = {
    foo = "bar"
  }

  metadata_startup_script = "echo hi > /test.txt"

  #service_account {
    # Google recommends custom service accounts that have cloud-platform scope and permissions granted via IAM Roles.
    #email  = google_service_account.default.email
    #scopes = ["cloud-platform"]
  #}
}