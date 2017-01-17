# == Class: pure_postgres
#
# Module for doing postgres stuff with pure distribution.
class pure_postgres
(
  $repo              = $pure_postgres::params::repo,
  $version           = $pure_postgres::params::version,
  $package_name      = $pure_postgres::params::package_name,
  $package_version   = $pure_postgres::params::package_version,
  $do_initdb         = $pure_postgres::params::do_initdb,
) inherits pure_postgres::params
{
   class { 'pure_postgres::repo':
      repo              => $repo,
      version           => $version,
      package_name      => $package_name,
      package_version   => $package_version,
   }
   class { 'pure_postgres::install':
      pg_version        => $pg_version,
      do_initdb         => $do_initdb,
   }
   class { 'pure_postgres::config':
   }
}

