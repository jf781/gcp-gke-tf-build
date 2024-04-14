# GKE Cluster Template

This repo defines GKE cluster in Terraform.  It will deploy a net new VPC and subnet in addition to configuring the GKE cluster.

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.14 |
| <a name="requirement_google"></a> [google](#requirement\_google) | 4.74.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_google"></a> [google](#provider\_google) | 4.74.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [google_compute_network.vpc](https://registry.terraform.io/providers/hashicorp/google/4.74.0/docs/resources/compute_network) | resource |
| [google_compute_subnetwork.subnet](https://registry.terraform.io/providers/hashicorp/google/4.74.0/docs/resources/compute_subnetwork) | resource |
| [google_container_cluster.primary](https://registry.terraform.io/providers/hashicorp/google/4.74.0/docs/resources/container_cluster) | resource |
| [google_container_node_pool.primary_nodes](https://registry.terraform.io/providers/hashicorp/google/4.74.0/docs/resources/container_node_pool) | resource |
| [google_container_engine_versions.gke_version](https://registry.terraform.io/providers/hashicorp/google/4.74.0/docs/data-sources/container_engine_versions) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_gke_cluster_name"></a> [gke\_cluster\_name](#input\_gke\_cluster\_name) | Defines the GKE cluster name | `any` | n/a | yes |
| <a name="input_gke_num_nodes"></a> [gke\_num\_nodes](#input\_gke\_num\_nodes) | Defines the initial number of GKE nodes | `number` | `2` | no |
| <a name="input_gke_username"></a> [gke\_username](#input\_gke\_username) | gke username | `string` | `"Defines the username for the GKE cluster"` | no |
| <a name="input_project_id"></a> [project\_id](#input\_project\_id) | Defines the GCP project ID to deploy into. | `any` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | Defines the region the to deploy resources into. | `any` | n/a | yes |
| <a name="input_subnet_name"></a> [subnet\_name](#input\_subnet\_name) | Defines the subnet name | `any` | n/a | yes |
| <a name="input_vpc_name"></a> [vpc\_name](#input\_vpc\_name) | Defines the VPN name | `any` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_kubernetes_cluster_host"></a> [kubernetes\_cluster\_host](#output\_kubernetes\_cluster\_host) | GKE Cluster Host |
| <a name="output_kubernetes_cluster_name"></a> [kubernetes\_cluster\_name](#output\_kubernetes\_cluster\_name) | GKE Cluster Name |
| <a name="output_project_id"></a> [project\_id](#output\_project\_id) | GCP Project ID |
| <a name="output_region"></a> [region](#output\_region) | GCP Region |
