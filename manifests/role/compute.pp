class deployments::role::compute {
  include deployments::profile::compute
  include deployments::profile::base
}

include deployments::role::compute
