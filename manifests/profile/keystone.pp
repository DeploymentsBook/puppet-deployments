class deployments::profile::keystone {
  include ::keystone
  include ::keystone::roles::admin
  include ::keystone::endpoint
  include ::mysql::server
  include ::keystone::db::mysql

  $keystone_deps = ['python-pbr', 'python-tz']
  package { $keystone_deps:
    ensure => 'latest',
    before => Service['keystone']
  }
}