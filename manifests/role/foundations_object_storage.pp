class deployments::role::foundations_object_storage {
  include deployments::profile::foundations
  include deployments::profile::swift
}

include deployments::role::foundations_object_storage
