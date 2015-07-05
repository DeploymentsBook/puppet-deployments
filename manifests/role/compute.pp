class deployments::role::compute {
  include deployments::profile::base
  include deployments::profile::compute
}

include deployments::role::compute
