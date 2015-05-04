# == Class dns::server::install::dnssec
#
class dns::server::install::dnssec (
  $dnssec_packages = $dns::server::params::dnssec_packages
) inherits dns::server::params {

  package { $dnssec_packages :
    ensure => latest,
  }

}

