variable "gke_username" {
  default     = "Defines the username for the GKE cluster"
  description = "gke username"
}

variable "gke_num_nodes" {
  default     = 2
  description = "Defines the initial number of GKE nodes"
}

variable "gke_cluster_name" {
  description = "Defines the GKE cluster name"
}

variable "vpc_name" {
  description = "Defines the VPN name"
}

variable "subnet_name" {
  description = "Defines the subnet name"
}

variable "project_id" {
  description = "Defines the GCP project ID to deploy into."
}

variable "region" {
  description = "Defines the region the to deploy resources into."
}

# variable "gcp_creds" {
#   description = "Defines the contents of the GCP credentials file"
# }