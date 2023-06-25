provider "google" {
  project = "ahmed-sayed-387907"
  region  = "us-central1"
}

terraform {
  backend "gcs" {
    bucket = "iti-project-tf-state"
    prefix = "terraform/state"
  }
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.0"
    }
  }
}