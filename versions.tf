# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.74.0"
    }
  }

  required_version = ">= 0.14"

  cloud {
    organization = "___TFC_ORG_NAME___"
    workspaces {
      name = "___WORKSPACE_NAME___"
    }
  }
}

provider "google" {
  # credentials = jsondecode(base64decode(var.gcp_creds))
  project     = var.project_id
  region      = var.region
}