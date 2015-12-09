class deployments::profile::ironic(
) {
  include ::ironic
  include ::ironic::api
  include ::ironic::client
  include ::ironic::conductor
  include ::ironic::keystone::auth
  include ::ironic::logging
  include ::ironic::db
  include ::ironic::db::mysql
}
