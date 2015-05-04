# == Class dns::server::install
#
class dns::server::install (
  $package = $dns::server::params::package
) inherits dns::server::params {

  package { $package:
    ensure => latest,
  }

}
