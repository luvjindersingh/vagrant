# == Class: rsyslog
#
# Meta class to install rsyslog with a basic configuration. You probably want rsyslog::client or rsyslog::server
#
# === Parameters
#
# === Variables
#
# === Examples
#
#  class { 'rsyslog': }
#
class rsyslog (
  $rsyslog_package_name   = $rsyslog::params::rsyslog_package_name,
  $relp_package_name      = $rsyslog::params::relp_package_name,
  $mysql_package_name     = $rsyslog::params::mysql_package_name,
  $pgsql_package_name     = $rsyslog::params::pgsql_package_name,
  $package_status         = $rsyslog::params::package_status,
  $rsyslog_d              = $rsyslog::params::rsyslog_d,
  $purge_rsyslog_d        = $rsyslog::params::purge_rsyslog_d,
  $rsyslog_conf           = $rsyslog::params::rsyslog_conf,
  $rsyslog_default        = $rsyslog::params::rsyslog_default,
  $run_user               = $rsyslog::params::run_user,
  $run_group              = $rsyslog::params::run_group,
  $log_user               = $rsyslog::params::log_user,
  $log_group              = $rsyslog::params::log_group,
  $log_style              = $rsyslog::params::log_style,
  $perm_file              = $rsyslog::params::perm_file,
  $perm_dir               = $rsyslog::params::perm_dir,
  $spool_dir              = $rsyslog::params::spool_dir,
  $service_name           = $rsyslog::params::service_name,
  $client_conf            = $rsyslog::params::client_conf,
  $server_conf            = $rsyslog::params::server_conf
) inherits rsyslog::params {
  class { 'rsyslog::install': }
  class { 'rsyslog::config': }
  class { 'rsyslog::service': }
}