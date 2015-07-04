class deployments::role::compute {
  include deployments::profile::compute
  include deployments::profile::uca
}

include deployments::role::compute
