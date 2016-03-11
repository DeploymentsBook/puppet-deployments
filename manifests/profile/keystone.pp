class deployments::profile::keystone {
  include ::apache
  include deployments::profile::users
  include ::keystone
  include ::keystone::cron::token_flush
  include ::keystone::roles::admin
  include ::keystone::endpoint
  include ::keystone::db::mysql
  include ::keystone::wsgi::apache
}
