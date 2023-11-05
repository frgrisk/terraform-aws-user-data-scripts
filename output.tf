output "base_script" {
  value = file("${path.module}/scripts/base.sh")
}

output "base_windows" {
  value = file("${path.module}/scripts/base.bat")
}

output "mssql_tools_script" {
  value = file("${path.module}/scripts/mssql_tools.sh")
}

output "mssql_odbc_script" {
  value = file("${path.module}/scripts/mssql_odbc.sh")
}

output "mssql_server" {
  value = file("${path.module}/scripts/mssql_server.sh")
}

output "disable_selinux_script" {
  value = file("${path.module}/scripts/disable_selinux.sh")
}

output "password_login_script" {
  value = file("${path.module}/scripts/password_login.sh")
}

output "useradd_template" {
  value = templatefile(
    "${path.module}/templates/useradd.sh.tftpl",
    {
      user  = var.useradd_template_user,
      group = var.useradd_template_group,
    }
  )
}

output "raid_template" {
  value = templatefile(
    "${path.module}/templates/raid.sh.tftpl",
    {
      volume_name = var.raid_template_volume_name,
      mount_point = var.raid_template_mount_point,
      mount_user  = var.raid_template_mount_user,
      mount_group = var.raid_template_mount_group,
      mount_perms = var.raid_template_mount_perms,
    }
  )
}
