class deployments::role::control {
  include deployments::profile::keystone
  include deployments::profile::glance
  include deployments::profile::uca
}

include deployments::role::control
