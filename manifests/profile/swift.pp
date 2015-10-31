class deployments::profile::swift
{
  include ::memcached
  include ::swift
  include ::swift::keystone::auth
  include ::swift::proxy
  include ::swift::proxy::catch_errors
  include ::swift::proxy::healthcheck
  include ::swift::proxy::proxy_logging
  include ::swift::proxy::cache
  include ::swift::proxy::tempurl
  include ::swift::proxy::ratelimit
  include ::swift::proxy::authtoken
  include ::swift::proxy::keystone
  include ::swift::proxy::formpost
  include ::swift::proxy::staticweb
  include ::swift::proxy::container_quotas
  include ::swift::proxy::account_quotas
  include ::swift::proxy::tempauth
  include ::swift::ringbuilder
  include ::swift::storage::all

  $swift_components = ['account', 'container', 'object']
  swift::storage::filter::recon { $swift_components : }
  swift::storage::filter::healthcheck { $swift_components : }

  # XXX what creates the loopbacks?

  file { '/srv/node':
    ensure  => directory,
    owner   => 'swift',
    group   => 'swift',
    require => Package['swift'],
  }

  # move to hiera?
  # XXX add more than one
  ring_object_device { '127.0.0.1:6000/1':
    zone   => 1,
    weight => 1,
  }
  ring_container_device { '127.0.0.1:6001/1':
    zone   => 1,
    weight => 1,
  }
  ring_account_device { '127.0.0.1:6002/1':
    zone   => 1,
    weight => 1,
  }
}
