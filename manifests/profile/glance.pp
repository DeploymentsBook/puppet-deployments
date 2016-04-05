class deployments::profile::glance(
  $cirros_version = '0.3.4',
) {
  include ::glance
  include ::glance::api
  include ::glance::registry
  include ::glance::keystone::auth
  include ::glance::backend::file
  include ::glance::db::mysql
  include ::glance::notify::rabbitmq

  glance_image { 'cirros':
    location         => "https://download.cirros-cloud.net/${cirros_version}/cirros-${cirros_version}-x86_64-disk.img",
    name             => "Cirros ${cirros_version}",
    is_public        => 'Yes',
    container_format => 'bare',
    disk_format      => 'qcow2',
  }
}
