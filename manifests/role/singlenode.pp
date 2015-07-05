class deployments::role::singlenode {
  include deployments::role::compute
  include deployments::role::control
}

include deployments::role::singlenode
