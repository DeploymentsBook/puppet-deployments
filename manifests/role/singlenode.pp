class deployments::role::singlenode {
  include deployments::role::foundations
  include deployments::role::foundations_compute
  include deployments::profile::swift
}

include deployments::role::singlenode
