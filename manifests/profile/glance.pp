class deployments::profile::glance {
  include ::glance
  include ::glance::api
  include ::glance::registry
  include ::glance::keystone::auth
  include ::glance::db::mysql
  include ::glance::backend::file

  include ::mysql::server
}
