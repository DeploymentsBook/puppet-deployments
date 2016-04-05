class deployments::profile::swift
{
  include ::memcached
  include ::swift
  include ::swift::keystone::auth
  include ::swift::proxy
  include ::swift::proxy::account_quotas
  include ::swift::proxy::authtoken
  include ::swift::proxy::cache
  include ::swift::proxy::catch_errors
  include ::swift::proxy::container_quotas
  include ::swift::proxy::formpost
  include ::swift::proxy::healthcheck
  include ::swift::proxy::keystone
  include ::swift::proxy::proxy_logging
  include ::swift::proxy::ratelimit
  include ::swift::proxy::staticweb
  include ::swift::proxy::tempurl
  include ::swift::proxy::tempauth
  include ::swift::ringbuilder
  include ::swift::storage::all

  $swift_components = ['account', 'container', 'object']
  swift::storage::filter::recon { $swift_components : }
  swift::storage::filter::healthcheck { $swift_components : }

  file { '/srv/node':
    ensure  => directory,
    owner   => 'swift',
    group   => 'swift',
    require => Package['swift'],
  }

  # XXX might need to enforce some ordering here so that this runs
  # before services start
  $loopback_devices = hiera('swift_loopback_devices', {})
  if ! empty($loopback_devices) {
    create_resources('swift::storage::loopback', $loopback_devices)
  }

  $object_devices = hiera('swift_ring_object_devices', {})
  if ! empty($object_devices) {
    create_resources('ring_object_device', $object_devices)
  }
  $container_devices = hiera('swift_ring_container_devices', {})
  if ! empty($container_devices) {
    create_resources('ring_container_device', $container_devices)
  }
  $account_devices = hiera('swift_ring_account_devices', {})
  if ! empty($account_devices) {
    create_resources('ring_account_device', $account_devices)
  }

}
