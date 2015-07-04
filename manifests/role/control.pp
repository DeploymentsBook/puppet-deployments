class deployments::role::control {
  include deployments::profile::keystone
  include deployments::profile::glance
}

include deployments::role::control
