module "jx" {
  source = "jenkins-x/jx/google"
  gcp_project = "jenkins-x-gcp"
  cluster_name = "jenkins-x-cluster"
}

terraform {
  backend "gcs" {
    bucket = "jx-terraform-state-files"
    prefix = "terraform/state"
  }
}