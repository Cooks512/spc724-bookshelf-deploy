variable "project_id" {
    type = string
    default = "cloud-course-nijat"
    description = "Project ID for the GCP project"
}

variable "region" {
    type = string
    default = "europe-west2"
    description = "Region for the GCP resources"
}

variable "zone" {
    type = string
    default = "europe-west2-a"
    description = "Zone for the GCP resources"
}

variable "instance_name" {
  type        = string
  default     = "app-server"
  description = "Name of the instance"
}

variable "machine_type" {
  type        = string
  default     = "e2-micro"
  description = "Machine type for the instance"
}

variable "image" {
  type        = string
  default     = "debian-cloud/debian-11"
  description = "Image for the instance"
}

