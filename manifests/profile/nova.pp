class deployments::profile::nova
{
  include ::nova
  include ::nova::api
  include ::nova::scheduler
  include ::nova::scheduler::filter
  include ::nova::objectstore
  include ::nova::cert
  include ::nova::consoleauth
  include ::nova::conductor
  include ::nova::vncproxy
  include ::nova::keystone::auth

  include ::mysql::server
  include ::nova::db::mysql

}
