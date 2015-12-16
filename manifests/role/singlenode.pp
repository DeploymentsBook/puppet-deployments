class deployments::role::singlenode {
  include deployments::role::compute
  include deployments::role::compute
  include deployments::role::swift
}

include deployments::role::singlenode
