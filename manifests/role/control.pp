class deployments::role::control {
  include deployments::profile::base
  include deployments::profile::cinder
  include deployments::profile::glance
  include deployments::profile::horizon
  include deployments::profile::keystone
  include deployments::profile::nova
  include deployments::profile::rabbitmq
  include deployments::profile::users
  include ::mysql::server
}

include deployments::role::control
