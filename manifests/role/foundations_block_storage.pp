class deployments::role::foundations_block_storage {
  include deployments::role::foundations
  include deployments::profile::cinder
}

include deployments::role::foundations_block_storage
