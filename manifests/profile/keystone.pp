class deployments::profile::keystone {
  include ::apache
  include ::keystone
  include ::keystone::roles::admin
  include ::keystone::endpoint
  include ::keystone::db::mysql
  include ::keystone::wsgi::apache
}
