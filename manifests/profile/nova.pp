class deployments::profile::nova
{
  include ::nova
  include ::nova::api
  include ::nova::cert
  include ::nova::db::mysql
  include ::nova::conductor
  include ::nova::consoleauth
  include ::nova::keystone::auth
  include ::nova::objectstore
  include ::nova::rabbitmq
  include ::nova::scheduler
  include ::nova::scheduler::filter
  include ::nova::vncproxy
}
