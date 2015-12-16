class deployments::role::foundations_public_cloud {
  include deployments::role::foundations
  include deployments::profile::ceilometer
}

include deployments::role::foundations_public_cloud
