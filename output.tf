output "base_script" {
  value = file("${path.module}/scripts/base.sh")
}

output "base_windows" {
  value = file("${path.module}/scripts/base.bat")
}

output "github_actions_runner_template" {
  value = templatefile(
    "${path.module}/templates/github_actions_runner.sh.tftpl",
    { directory = var.github_actions_runner_directory },
  )
}

output "mssql_tools_script" {
  value = file("${path.module}/scripts/mssql_tools.sh")
}

output "mssql_odbc_script" {
  value = file("${path.module}/scripts/mssql_odbc.sh")
}

output "mssql_server_template" {
  value = templatefile(
    "${path.module}/templates/mssql_server.sh.tftpl",
    { password = var.mssql_server_template_password },
  )
  sensitive = true
}

output "disable_selinux_script" {
  value = file("${path.module}/scripts/disable_selinux.sh")
}

output "password_login_script" {
  value = file("${path.module}/scripts/password_login.sh")
}

output "certbot_template" {
  value = templatefile(
    "${path.module}/templates/certbot.sh.tftpl",
    {
      email     = var.certbot_template_email,
      domain    = var.certbot_template_domain,
      test_cert = var.certbot_template_test_cert,
    }
  )
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

output "river_guide_template" {
  value = templatefile(
    "${path.module}/templates/river_guide.sh.tftpl",
    {
      tags   = var.river_guide_template_tags,
      title  = var.river_guide_template_title,
      color  = var.river_guide_template_color,
      region = var.river_guide_template_region,
    }
  )
}

output "raid_template" {
  value = templatefile(
    "${path.module}/templates/raid.sh.tftpl",
    {
      volume_name  = var.raid_template_volume_name,
      mount_point  = var.raid_template_mount_point,
      mount_user   = var.raid_template_mount_user,
      mount_group  = var.raid_template_mount_group,
      mount_perms  = var.raid_template_mount_perms,
      raid_devices = var.raid_template_raid_devices,
    }
  )
}

output "zsh_setup_template" {
  value = templatefile(
    "${path.module}/templates/zsh_setup.sh.tftpl",
    {
      user = var.zsh_setup_template_user,
    }
  )
}
