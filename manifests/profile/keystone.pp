class deployments::profile::keystone {
  include ::keystone
  include ::keystone::roles::admin
  include ::keystone::endpoint
  include ::keystone::db::mysql
}
