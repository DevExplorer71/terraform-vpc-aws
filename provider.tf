terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "4.51.0"
    }
  }
}

provider "google" {
  credentials = file("developer-project.json")

  project = "developer-project-414108"
  region  = "us-central1"
  zone    = "us-central1-c"
}