class deployments::role::foundations {
  include deployments::profile::base
  include deployments::profile::glance
  include deployments::profile::horizon
  include deployments::profile::keystone
  include deployments::profile::nova
  include deployments::profile::neutron
  include deployments::profile::rabbitmq
  include ::mysql::server
}

include deployments::role::foundations
