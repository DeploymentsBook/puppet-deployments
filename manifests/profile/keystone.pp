class deployments::profile::keystone {
  include ::keystone
  include ::keystone::roles::admin
  include ::keystone::endpoint
  include ::keystone::db::mysql

  # This is required due to packaging issues with python-openstackclient
  # see LP: 1452025 et al
  $keystone_deps = ['python-pbr', 'python-tz']
  package { $keystone_deps:
    ensure => 'latest',
    before => [Service['keystone'], Package['python-openstackclient']],
  }
}
