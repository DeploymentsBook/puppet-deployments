class deployments::role::foundations_object_storage {
  include deployments::profile::base
  include deployments::profile::keystone
  include deployments::profile::swift
  include ::mysql::server
}

include deployments::role::foundations_object_storage
