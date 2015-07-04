class deployments::profile::glance {
  include ::glance
  include ::glance::api
  include ::glance::registry
  include ::glance::keystone::auth
  include ::glance::backend::file

  include ::mysql::server
  include ::glance::db::mysql
}
