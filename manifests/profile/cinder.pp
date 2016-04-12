class deployments::profile::cinder
{
  include ::cinder
  include ::cinder::api
  include ::cinder::ceilometer
  include ::cinder::config
  include ::cinder::db::mysql
  include ::cinder::keystone::auth
  include ::cinder::scheduler
  include ::cinder::volume
  include ::cinder::setup_test_volume

  file { '/etc/init/cinder-loopback.conf':
    owner  => 'root',
    group  => 'root',
    mode   => '0644',
    content => template('deployments/cinder-loopback.conf.erb'),
  }
}
