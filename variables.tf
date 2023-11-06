variable "useradd_template_user" {
  type    = string
  default = ""
}

variable "useradd_template_group" {
  type    = string
  default = ""
}

variable "raid_template_raid_devices" {
  type    = string
  default = "/dev/nvme1n1 /dev/nvme2n1 /dev/nvme3n1 /dev/nvme4n1 /dev/nvme5n1 /dev/nvme6n1 /dev/nvme7n1 /dev/nvme8n1 /dev/nvme9n1 /dev/nvme10n1"
}

variable "raid_template_volume_name" {
  type    = string
  default = ""
}

variable "raid_template_mount_point" {
  type    = string
  default = "/mnt"
}

variable "raid_template_mount_user" {
  type    = string
  default = "root"
}

variable "raid_template_mount_group" {
  type    = string
  default = "root"
}

variable "raid_template_mount_perms" {
  type    = string
  default = "0755"
}

variable "zsh_setup_template_user" {
  type    = string
  default = "ec2-user"
}

variable "certbot_template_email" {
  type    = string
  default = ""
}

variable "certbot_template_domain" {
  type    = string
  default = ""
}

variable "certbot_template_test_cert" {
  type        = bool
  default     = false
  description = "Request a certificate from Let's Encrypt staging servers to prevent rate limiting."
}

variable "river_guide_template_tags" {
  type    = string
  default = null
}

variable "river_guide_template_title" {
  type    = string
  default = "Environment Control"
}

variable "river_guide_template_color" {
  type    = string
  default = "#000000"
}

variable "river_guide_template_region" {
  type    = string
  default = "us-east-1"
}
