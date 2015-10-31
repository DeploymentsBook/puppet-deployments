class deployments::role::swift {
  include deployments::profile::base
  include deployments::profile::keystone
  include deployments::profile::swift
  include ::mysql::server
}

include deployments::role::swift
