class deployments::profile::ceilometer
{
  include ::ceilometer
  include ::ceilometer::client
  include ::ceilometer::collector
  include ::ceilometer::agent::central
  include ::ceilometer::agent::notification
  include ::ceilometer::alarm::notifier
  include ::ceilometer::alarm::evaluator
  include ::ceilometer::api
  include ::ceilometer::config
  include ::ceilometer::db
  include ::ceilometer::db::mysql
  include ::ceilometer::keystone::auth
}
