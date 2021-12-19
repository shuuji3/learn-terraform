terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "3.63.0"
    }
  }
}

provider "google" {
  credentials = file("tf-test-335615-796e6bac81f9.json")

  project = "tf-test-335615"
  region  = "us-central1"
  zone    = "us-central1-c"
}

resource "google_compute_network" "vpc_network" {
  name = "tf-net"
}
