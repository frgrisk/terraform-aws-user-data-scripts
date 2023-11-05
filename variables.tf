variable "useradd_template_user" {
  type    = string
  default = ""
}

variable "useradd_template_group" {
  type    = string
  default = ""
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
